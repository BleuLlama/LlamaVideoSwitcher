
#include <Adafruit_NeoPixel.h>

#include <SoftwareSerial.h>


#define kLED_NeoPixel    (4)

#define kButton_Action  (5)

#define kVideo_0      (6)
#define kVideo_1      (7)

Adafruit_NeoPixel strip(1, kLED_NeoPixel, NEO_RGB + NEO_KHZ800);


// all arduinos (uno, mega, leonardo) seem to work with D10/D11
SoftwareSerial mySerial(2,3); // RX, TX

// or use pro micro/leonardo and use standard serial D0/D1
// or ATTiny85?
// or ATmega 168/


int vinput = 0;

void VideoSelect( int i )
{
  if( i == 0 ) {
    vinput = 0;
    strip.setPixelColor(0, strip.Color( 16, 0, 0 ));
    strip.show();
    digitalWrite( kVideo_0, HIGH );
    digitalWrite( kVideo_1, LOW );
  } else {
    vinput = 1;
    strip.setPixelColor(0, strip.Color( 16, 16, 16 ));
    strip.show();
    digitalWrite( kVideo_0, LOW );
    digitalWrite( kVideo_1, HIGH );
  }
}

void VideoToggle()
{
  if( vinput ) { VideoSelect( 0 ); }
  else         { VideoSelect( 1 ); }
}

void setup() {
  // initialize Neopixel
  strip.begin();           // INITIALIZE NeoPixel strip object (REQUIRED)
  strip.show();            // Turn OFF all pixels ASAP
  //strip.setBrightness(50); // Set BRIGHTNESS to about 1/5 (max = 255)
  strip.setPixelColor(0, strip.Color( 0, 32, 0 ));
  strip.show();


  pinMode( kVideo_0, OUTPUT );
  pinMode( kVideo_1, OUTPUT );
  VideoSelect( vinput );

  
  // initialize button
  pinMode( kButton_Action, INPUT_PULLUP );

  // start up the second serial port at 4800 baud to
  // match the 
  mySerial.begin( 4800 );  // 4800 baud 8N1

  Serial.begin( 115200 );
  Serial.println( "Ready." );

}

#define kAccLen   (20)
char acc[kAccLen];
int accpos = 0;

void serial_gotline()
{
  Serial.print( "RX: ");
  Serial.println( acc );
  accpos = 0;

  if( !strcmp( acc, "XRV") ) {
    VideoToggle();
    Serial.println( "    Swap Video Source" );
  }

  if( !strcmp( acc, "0RV") ) {
    VideoSelect( 0 );
    Serial.println( "    Video 0: ][c" );
  }


  if( !strcmp( acc, "1RV") ) {
    VideoSelect( 1 );
    Serial.println( "    Video 1: LDP" );
  }

  /*
  if( !strcmp( acc, "R" )) {
      VideoSelect( 0 );
  } else {
      VideoSelect( 1 );
  }
  */
}

void serial_loop()
{
  if( mySerial.available() ) {
    while( mySerial.available() ) {
      char ch = mySerial.read();
      if( ch == 0x0d || ch == 0x0a ) {
        acc[ accpos ] = '\0';
        serial_gotline();
      } else {
        acc[ accpos++ ] = ch;
        
      }
    }
  }
}


void button_loop()
{
  if( digitalRead( kButton_Action ) == LOW ) {
    while( digitalRead( kButton_Action ) == LOW );
    vinput++;
    VideoSelect( vinput & 1 );
  }  
}

void loop() 
{
  button_loop();
  serial_loop();
}
