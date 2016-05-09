#include<xc.h>           // processor SFR definitions
#include<sys/attribs.h>  // __ISR macro
#include<math.h>
#include"ILI9163C.h"

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
#pragma config FVBUSONIO = ON // USB BUSON controlled by USB module                                                    //

char DataAlltemp[14];              // save 14 8 bit data?
short DataAll[7] = {0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0};
float DataValue[7] = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0};
char Message[26];

void i2c_master_setup(void) {
  I2C2BRG = 53;            // I2CBRG = [1/(2*Fsck) - PGD]*Pblck - 2    53 233
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

void initSensor() {
    i2c_master_start(); // make the start bit
    i2c_master_send(0b11010110); // write the address
    i2c_master_send(0x10); // the register to write to
    i2c_master_send(0x80); // the value to put in the register
    i2c_master_stop(); // make the stop bit
    i2c_master_start(); // make the start bit
    i2c_master_send(0b11010110); // write the address
    i2c_master_send(0x11); // the register to write to
    i2c_master_send(0x80); // the value to put in the register
    i2c_master_stop(); // make the stop bit
	i2c_master_start(); // make the start bit
    i2c_master_send(0b11010110); // write the address
    i2c_master_send(0x12); // the register to write to
    i2c_master_send(0x04); // the value to put in the register
    i2c_master_stop(); // make the stop bit
}
    
void I2C_read_multiple(char address, char regadd, char * data, char length) {
    unsigned char * temp;
    int j;
    temp = data;
    i2c_master_start(); // make the start bit
    i2c_master_send(address << 1 | 0b0); // write the address, shifted left by 1, or'ed with a 0 to indicate writing
    i2c_master_send(regadd); // the register to read from
    i2c_master_restart(); // make the restart bit
    i2c_master_send(address << 1 | 0b1); // write the address, shifted left by 1, or'ed with a 1 to indicate reading  
    for (j = 0; j < (length - 1); j++) {
        * (temp + j) = i2c_master_recv();
        i2c_master_ack(0);
    }
    * (temp + j)= i2c_master_recv();
    i2c_master_ack(1); // make the ack so the slave knows we got it
    i2c_master_stop(); // make the stop bit
}

void display_char (unsigned short x, unsigned short y, char c, unsigned short color) {
    int m, n;
    char temp;
    if ((x < 122) & (y < 119)) {
        for (m = 0; m < 5; m++){
            temp = ASCII[c - 32][m];
            for (n = 0; n < 8; n++) {              
                if (temp % 2 == 1)
                    LCD_drawPixel(x + m, y + n, color);
                temp = temp / 2;
            }         
        } 
    }
}

void display_message (unsigned short x, unsigned short y, char * array, unsigned short color) {
    int p = 0; 
    while (* (array + p)) {
        display_char ((x + 5 * p), y, * (array + p), color); 
        p++;
    }
}

void __ISR(_TIMER_3_VECTOR, IPL5SOFT) PWMcontroller(void) {                       //?
    int i;
    I2C_read_multiple(0b1101011, 0x20, DataAlltemp, 14); 
    LCD_setAddr(58, 41, 90, 121);
	for (i = 0;i < (32 * 80); i++){
		LCD_data16(BLACK);
	}
    for (i = 0; i < 7; i++) {
        sprintf(Message, "%6.2f", DataValue[i]);
        display_message (58, (41 + 9 * i), Message, RED); 
        DataAll[i] = ((DataAlltemp[2 * i + 1] << 8) | DataAlltemp[2 * i]);
    } 
        DataValue[0] = 25 + (DataAll[0] / 16.0);
    for (i = 0; i < 3; i++) {
        DataValue[i + 1] = 245 * DataAll[i + 1] / 32768.0;
        DataValue[i + 4] = 2 * 10 * DataAll[i + 4] / 32768.0;
    }
     
    IFS0bits.T3IF = 0;
}

int main() {
    __builtin_disable_interrupts();
    
    // set the CP0 CONFIG register to indicate that kseg0 is cacheable (0x3)
    __builtin_mtc0(_CP0_CONFIG, _CP0_CONFIG_SELECT, 0xa4210583);
    // 0 data RAM access wait states
    BMXCONbits.BMXWSDRM = 0x0;
    // enable multi vector interrupts
    INTCONbits.MVEC = 0x1;
    // disable JTAG to get pins back
    DDPCONbits.JTAGEN = 0;    
    // do your TRIS and LAT commands here
    TRISAbits.TRISA4 = 0;  
	LATAbits.LATA4 = 0;
    TRISBbits.TRISB4 = 1; 
    
    //T3CONbits.TCKPS = 0b111;     // Timer3 prescaler  (1:64)
	//PR3 = 14999;                    //             set period register
    T3CONbits.TCKPS = 0b111;     // Timer3 prescaler  (1:256)
	PR3 = 9374;                    //             set period register   20hz
    
	TMR3 = 0;                      //             initialize count to 0
	T3CONbits.ON = 1;          //             turn on Timer3
	
	IPC3bits.T3IP = 5;              // INT step 4: priority
	IPC3bits.T3IS = 0;              //             subpriority
	IFS0bits.T3IF = 0;              // INT step 5: clear interrupt flag
	IEC0bits.T3IE = 1;              // INT step 6: enable interrupt
 
    initI2C2(); 
    initSensor();
   
    SPI1_init();
    LCD_init();
    
    LCD_clearScreen(BLACK);
    sprintf(Message, "Hello world %d!" , 1337);   
    display_message (28, 32, Message, BLUE);      
    display_message (28, 41, "T:", BLUE);
    display_message (28, 50, "w: x:", BLUE);
    display_message (43, 59, "y:", BLUE);   
    display_message (43, 68, "z:", BLUE);
    display_message (28, 77, "a: x:", BLUE);
    display_message (43, 86, "y:", BLUE);   
    display_message (43, 95, "z:", BLUE);
    
    __builtin_enable_interrupts();
    
    while(1){
        
    }
}