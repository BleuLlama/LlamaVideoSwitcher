/*
 * LlamaVideoSwitcher
 * 
 * Made to snoop the serial line, and when certain text streams appear,
 * switch video inputs
 * 
 * 
 * V1.01  2020-08-02 - Support for D15/realSerial, softwareserial and neopixel are options now
 * V1.00  2020-07-24 - Initial version (for KansasFest 2020)
 */
 
#define kPlatform_Uno
#undef kPlatform_D15


#ifdef kPlatform_D15
  /* D15 pinout: (ATmega 168p)
   D15  ARD   Func  FTDI
    1   D1    TX    yel
    2   D0    RX    orn
    3   A2
    4   RST         .1uf to green, 10k to red
    5   D13   SCK
    6   D12   MISO
    7   D11~  MOSI
    8   D10~  SS
    
    9   D3~
    10  GND         black
    11  GND
    12  GND
    13  +5v         red
    14  +5v
    15  +5v


    FTDI
      1  BLK  GROUND
      2  BRN  CTS#
      3  RED  VCC +5V
      4  ORN  TXD
      5  YEL  RXD
      6  GRN  RTS# (RESET) (DTR)

   */

  #define kLED_LED        (10)
  
  #define kButton_Action  (11)
  
  #define kVideo_0      (12)
  #define kVideo_1      (13)
  
  #undef kUseSoftwareSerial
  #undef kUseNeoPixel
#endif

#ifdef kPlatform_Uno
  #define kUseNeoPixel
  #define kLED_NeoPixel    (4)
  
  #define kLED_LED (A0)
  
  #define kButton_Action  (5)
  
  #define kVideo_0      (6)
  #define kVideo_1      (7)

  #define kUseSoftwareSerial    ( 1 )
  #define kSerial_RX    (2)
  #define kSerial_TX    (3)
#endif

#ifdef kUseNeoPixel
  #include <Adafruit_NeoPixel.h>
  Adafruit_NeoPixel strip(1, kLED_NeoPixel, NEO_RGB + NEO_KHZ800);
#endif


#ifdef kUseSoftwareSerial
  #include <SoftwareSerial.h>
  // all arduinos (uno, mega, leonardo) seem to work with D10/D11
  SoftwareSerial mySerial( kSerial_RX, kSerial_TX ); // RX, TX
#endif

// or use pro micro/leonardo and use standard serial D0/D1
// or ATTiny85?
// or ATmega 168/


void led_blink( int count )
{
  for( int i=0 ; i < count ; i++ )
  {
    digitalWrite( kLED_LED, HIGH );
    delay( 75 );
    digitalWrite( kLED_LED, LOW );
    if( i < count-1 ) delay( 75 );
  }
}


int vinput = 0;

void VideoSelect( int i )
{
  if( i == 0 ) {
    vinput = 0;
#ifdef kUseNeoPixel
    strip.setPixelColor(0, strip.Color( 16, 0, 0 ));
    strip.show();
#endif
    digitalWrite( kVideo_0, HIGH );
    digitalWrite( kVideo_1, LOW );
    led_blink( 1 );
    
  } else {
    vinput = 1;
#ifdef kUseNeoPixel
    strip.setPixelColor(0, strip.Color( 16, 16, 16 ));
    strip.show();
#endif
    digitalWrite( kVideo_0, LOW );
    digitalWrite( kVideo_1, HIGH );
    led_blink( 2 );
  }
}

void VideoToggle()
{
  if( vinput ) { VideoSelect( 0 ); }
  else         { VideoSelect( 1 ); }
}

void setup() {
  // setup LED
  pinMode( kLED_LED, OUTPUT );
  digitalWrite( kLED_LED, LOW ); // LED ON!

#ifdef kUseNeoPixel
  // initialize Neopixel
  strip.begin();           // INITIALIZE NeoPixel strip object (REQUIRED)
  strip.show();            // Turn OFF all pixels ASAP
  //strip.setBrightness(50); // Set BRIGHTNESS to about 1/5 (max = 255)
  strip.setPixelColor(0, strip.Color( 0, 32, 0 ));
  strip.show();
#endif

  pinMode( kVideo_0, OUTPUT );
  pinMode( kVideo_1, OUTPUT );
  VideoSelect( vinput );
  
  // initialize button
  pinMode( kButton_Action, INPUT_PULLUP );

  // start up the second serial port at 4800 baud to
  // match the LDP

#ifdef kUseSoftwareSerial
  mySerial.begin( 4800 );  // 4800 baud 8N1

  Serial.begin( 115200 );
#else
  Serial.begin( 4800 );   // main connection is 4800 baud
#endif
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
}

void serial_loop()
{
#ifdef kUseSoftwareSerial
  if( mySerial.available() ) {
    while( mySerial.available() ) {
      char ch = mySerial.read();
#else
  if( Serial.available() ) {
    while( Serial.available() ) {
      char ch = Serial.read();
#endif

      
      if( ch == 0x0d || ch == 0x0a ) {
        acc[ accpos ] = '\0';
        serial_gotline();
      } else {
        acc[ accpos++ ] = ch;
      }
    }
  }

#ifdef kUseSoftwareSerial
  // forward content if we're using software serial
  if( Serial.available() ) {
    while( Serial.available() ) {
      char ch2 = Serial.read();
      mySerial.write( ch2 );
    }
  }
#endif
}


void button_loop()
{
  if( digitalRead( kButton_Action ) == LOW ) {
    delay( 50 ); // cheezo debounce 
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
