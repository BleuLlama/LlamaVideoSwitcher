#include <SoftwareSerial.h>


#define kLED_In1    (2)
#define kLED_In2    (3)
#define kLED_InAuto (4)

#define kButton_Action  (5)

// all arduinos (uno, mega, leonardo) seem to work with D10/D11
SoftwareSerial mySerial(10, 11); // RX, TX

// or use pro micro/leonardo and use standard serial D0/D1
// or ATTiny85?
// or ATmega 168/

void setup() {

  pinMode( kLED_In1, OUTPUT );
  pinMode( kLED_In2, OUTPUT );
  pinMode( kLED_InAuto, OUTPUT );
  
  pinMode( kButton_Action, INPUT_PULLUP );

  // start up the second serial port at 4800 baud to
  // match the 
  Serial1.begin( 4800 );  // 4800 baud 8N1

}

void loop() {
  // put your main code here, to run repeatedly:

}
