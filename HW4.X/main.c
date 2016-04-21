#include<xc.h>           // processor SFR definitions
#include<sys/attribs.h>  // __ISR macro
#include<math.h>

// DEVCFG0
#pragma config DEBUG = OFF // no debugging
#pragma config JTAGEN = OFF // no jtag
#pragma config ICESEL = ICS_PGx1 // use PGED1 and PGEC1
#pragma config PWP = OFF // no write protect
#pragma config BWP = OFF // no boot write protect
#pragma config CP = OFF // no code protect

// DEVCFG1
#pragma config FNOSC = PRIPLL // use primary oscillator with pll
#pragma config FSOSCEN = OFF // turn off secondary oscillator
#pragma config IESO = OFF // no switching clocks
#pragma config POSCMOD = HS // high speed crystal mode
#pragma config OSCIOFNC = OFF // free up secondary osc pins
#pragma config FPBDIV = DIV_1 // divide CPU freq by 1 for peripheral bus clock
#pragma config FCKSM = CSDCMD // do not enable clock switch
#pragma config WDTPS = PS1048576 // slowest wdt
#pragma config WINDIS = OFF // no wdt window
#pragma config FWDTEN = OFF // wdt off by default
#pragma config FWDTWINSZ = WINSZ_25 // wdt window at 25%

// DEVCFG2 - get the CPU clock to 48MHz
#pragma config FPLLIDIV = DIV_2 // divide input clock to be in range 4-5MHz
#pragma config FPLLMUL = MUL_24 // multiply clock after FPLLIDIV
#pragma config FPLLODIV = DIV_2 // divide clock after FPLLMUL to get 48MHz
#pragma config UPLLIDIV = DIV_2 // divider for the 8MHz input clock, then multiply by 12 to get 48MHz for USB
#pragma config UPLLEN = ON // USB clock on

// DEVCFG3
#pragma config USERID = 0 // some 16bit userid, doesn't matter what
#pragma config PMDL1WAY = OFF // allow multiple reconfigurations
#pragma config IOL1WAY = OFF // allow multiple reconfigurations
#pragma config FUSBIDIO = ON // USB pins controlled by USB module
#pragma config FVBUSONIO = ON // USB BUSON controlled by USB module

#define CS LATBbits.LATB7

static volatile float SineWave[200];   // sine waveform
static volatile float TriangleWave[200];   // triangle waveform

void MakeWave() {
    int i;
    for(i = 0; i < 200; i++) {
		TriangleWave[i] = 255 * i / 200;
		SineWave[i] = 127.5 + 127.5 * sin(2 * 3.1415926 * 10 * (i % 100) / 1000);
	}       
}

char SPI1_IO(short write) {
    SPI1BUF = write;
    while(!SPI1STATbits.SPIRBF) // wait to receive the byte
        ;
    return SPI1BUF; 
}

void SetVoltage(char channel, float voltage) {
    int temp = voltage;
	CS = 0;
	SPI1_IO((channel << 15) | 0x7000 | (temp << 4)); 
	CS = 1;
}

void initSPI1() {
    TRISBbits.TRISB7 = 0;
    CS = 1; 
    SS1Rbits.SS1R = 0b0100; 
    SDI1Rbits.SDI1R = 0b0100;
    RPB13Rbits.RPB13R = 0b0011;  
    SPI1CON = 0;              // turn off the SPI1 module and reset it
    SPI1BUF;                  // clear the rx buffer by reading from it
    SPI1BRG = 0x1;            // baud rate to 12 MHz [SPI4BRG = (48000000/(2*desired))-1]
    SPI1STATbits.SPIROV = 0;  // clear the overflow bit
    SPI1CONbits.MODE32 = 0;   // use 8 bit mode
    SPI1CONbits.MODE16 = 1;
    SPI1CONbits.CKE = 1; 
    SPI1CONbits.MSTEN = 1;    // master operation  
    SPI1CONbits.ON = 1;       // turn on spi 1
}

void i2c_master_setup(void) {
  I2C2BRG = 233;            // I2CBRG = [1/(2*Fsck) - PGD]*Pblck - 2    53
                                    // look up PGD for your PIC32
  I2C2CONbits.ON = 1;               // turn on the I2C1 module
}

// Start a transmission on the I2C bus
void i2c_master_start(void) {
    I2C2CONbits.SEN = 1;            // send the start bit
    while(I2C2CONbits.SEN) { ; }    // wait for the start bit to be sent
}

void i2c_master_restart(void) {     
    I2C2CONbits.RSEN = 1;           // send a restart 
    while(I2C2CONbits.RSEN) { ; }   // wait for the restart to clear
}

void i2c_master_send(char byte) { // send a byte to slave
  I2C2TRN = byte;                   // if an address, bit 0 = 0 for write, 1 for read
  while(I2C2STATbits.TRSTAT) { ; }  // wait for the transmission to finish
  //if(I2C2STATbits.ACKSTAT) {        // if this is high, slave has not acknowledged
      // ("I2C2 Master: failed to receive ACK\r\n");
  //}
}

unsigned char i2c_master_recv(void) { // receive a byte from the slave
    I2C2CONbits.RCEN = 1;             // start receiving data
    while(!I2C2STATbits.RBF) { ; }    // wait to receive the data
    return I2C2RCV;                   // read and return the data
}

void i2c_master_ack(int val) {        // sends ACK = 0 (slave should send another byte)
                                      // or NACK = 1 (no more bytes requested from slave)
    I2C2CONbits.ACKDT = val;          // store ACK/NACK in ACKDT
    I2C2CONbits.ACKEN = 1;            // send ACKDT
    while(I2C2CONbits.ACKEN) { ; }    // wait for ACK/NACK to be sent
}

void i2c_master_stop(void) {          // send a STOP:
  I2C2CONbits.PEN = 1;                // comm is complete and master relinquishes bus
  while(I2C2CONbits.PEN) { ; }        // wait for STOP to complete
}

void initI2C2() {
    ANSELBbits.ANSB2 = 0;
    ANSELBbits.ANSB3 = 0;
    i2c_master_setup();
}

void initExpander() {
    i2c_master_start(); // make the start bit
    i2c_master_send(0x40); // write the address
    i2c_master_send(0x00); // the register to write to
    i2c_master_send(0xF0); // the value to put in the register
    i2c_master_stop(); // make the stop bit
}

char getExpander() {   
    i2c_master_start(); // make the start bit
    i2c_master_send(0x40); // write the address, shifted left by 1, or'ed with a 0 to indicate writing
    i2c_master_send(0x09); // the register to read from
    i2c_master_restart(); // make the restart bit
    i2c_master_send(0x41); // write the address, shifted left by 1, or'ed with a 1 to indicate reading
    char r = i2c_master_recv() >> 7; // save the value returned
    i2c_master_ack(1); // make the ack so the slave knows we got it
    i2c_master_stop(); // make the stop bit
    return r;
}

void setExpander(char pin, char level) {
    i2c_master_start(); // make the start bit
    i2c_master_send(0x40); // write the address
    i2c_master_send(0x0A); // the register to write to
    if (level == 1)
        i2c_master_send(0b1);
    else if (level == 0)
        i2c_master_send(0b0);
    i2c_master_stop(); // make the stop bit
}

int main() {
	TRISAbits.TRISA4 = 0;  
	LATAbits.LATA4 = 0;
    TRISBbits.TRISB4 = 1; 
    //__builtin_disable_interrupts();
    // set the CP0 CONFIG register to indicate that kseg0 is cacheable (0x3)
    //__builtin_mtc0(_CP0_CONFIG, _CP0_CONFIG_SELECT, 0xa4210583);
    // 0 data RAM access wait states
    //BMXCONbits.BMXWSDRM = 0x0;
    // enable multi vector interrupts
    //INTCONbits.MVEC = 0x1;
    // disable JTAG to get pins back
    //DDPCONbits.JTAGEN = 0;   
    // do your TRIS and LAT commands here 
    //__builtin_enable_interrupts();
    initSPI1();
    MakeWave();
    
    initI2C2();
    initExpander();
    
    while(1) {
        static int count = 0;
        if (_CP0_GET_COUNT() >= 24000) {
            _CP0_SET_COUNT(0);
            SetVoltage(0,SineWave[count]);   
            SetVoltage(1,TriangleWave[count]);
            count++;
            if (count > 199)	
            	count = 0;
        }
        if(getExpander() < 1)
            setExpander(0, 1);
        else 
            setExpander(0, 0);
    }
}

