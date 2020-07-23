# LlamaVideoSwitcher

## Scott Lawrence
### yorgle@gmail.com
### @yorgle on twitter
### 2020-07-23

LlamaVideoSwitcher is a simple RS232-snooping device that changes between
composite video inputs specifically for the Adventures In Videoland,
"Rollercoaster" interactive BASIC game for the Apple ][ computer.


Here's a demo video of it:
https://www.youtube.com/watch?v=kJ-zJK_JRp8

I'll make a more in-depth video of it sometime soon, probably, but I needed to get 
this one up in time for the HackFest deadline. :)

# Overview

The original version of this program/game required the Aurora Systems Omniscan
Videodisc Controller, which communicated to a Pioneer VP-1000 via its 
wired remote port.

The '2018' version of the game that Kay Savetz made is what I am basing 
this all on, which was rewritten to communicate via standard serial using the 
Pioneer Level III commands, found on the LD-V4400, or my CLD-V2400 player.  That 
base version removed all of the commands that swapped the video display around, since
that feature was no longer applicable.

To be honest, I hadn't known was a feature of
the original version until earlier this week... which is where this project came
from.  It coincidentally lined up with the 2020 KansasFest HackFest timing... 
so that's essentially the seed for why I made the prototype in 3 days.

My goal with this project is to make a functional prototype version of this... 
This repo contains any design/circuit diagrams, references, code patches, and 
Arduino code for it.  It is not meant to be a how-to, or a finished product.

Yet!

My hardware and testing is done with my newly repaired Apple IIc,
a Pioneer CLD-V2400 Laserdisc player, and the 1978 DiscoVision LaserDisc release 
of the film "Rollercoaster", which is 5 CAV sides.  Such opulence!


# References

- AdventuresInVideoland - contains the BASIC program. Look for the one with the ".vs.txt" extension
    https://github.com/BleuLlama/AdventuresInVideoland
- Original Magazine article: https://archive.org/stream/creativecomputing-1982-01/Creative_Computing_v08_n01_1982_January#page/n56/mode/1up (Page 56)


# Hardware Interface

I was originally going to use the second serial port on my IIc to communicate with 
this device, however, Kay suggested that for maximum compatibility, I should not
require a second serial port.  Instead, the device snoops on the Level III commands 
and responses sent back and forth on the Apple's existing serial connection to
the LaserDisc player. 

The hardware connects to just the TX line out from the computer, and watches for a certain
sequence of characters to change the video input shown on the computer's display.

The serial connection is between an Apple IIc and a Pioneer LD-V2200 (or 
equivalent), running at at 4800 baud, 8N1.  The base micro used in the prototype 
is an Arduino Uno R3.  I'm running the SoftwareSerial library at 4800 baud for 
the connection to the serial snoop tap.

For the RS232 level conversion, I'm using the equivalent of the standard MAX232 interface,
which converts TTL to RS232 signal levels.  The transmit pin from this connection is 
not connected.  Only the Receive is; and it's connected to both the Apple IIc's 
transmit and serial, so we can see the communications in both directions.

For the video switching, I first tried a simpler design but it didn't work.  Instead
I dug up a couple of 5v reed relays, and i'm switching them via 2N3906 transistors. 
Each of the two inputs implemented are controlled from a single pin output from the 
Arduino.


# Runtime Interface

The next task was to find some way to send commands to our device that would be ignored
by the LDP, or at least some commands that will have no responses or affect on the 
existing code or playback routines.  The L3 protocol sends an "R<C/R>" (C/R being a 
carraige return), as an acknowledgement of a command, or it will send "Exx" with an error 
code.  It can also respond with values if you query the values of registers.  The 
BASIC code expects some amount of response but not too much.  So what I came up with was:

  - Turn off 'R' responses
  - Send our command text to the on-screen user text area, which is not enabled for this game
  - Turn on 'R' responses

And this sequence looks like this:

    2CM<C/R>
    1PR<C/R>
    1RV<C/R>
    3CM<C/R>

And annotated:

    2CM<C/R>	Disable 'R' acknowledgements (send nothing on acknowledgement)
    1PR<C/R>	Print the next text to line 1 of the user on screen display
    1RV<C/R>	Print the text "1RV"
    3CM<C/R>	Enable 'R' acknowledgements


Altghough now that i'm thinking about it, we doe not need to eliminate the R responses,
since the BASIC program handles these command-responses just like all of the others it
sends.

My Arduino code looks for commands being sent, one carriage-return-delimited line 
at a time, and searches for three commands in particular; all others being ignored.
In the format of the Pioneer Level 3 docs:

		0RV<C/R>		R<C/R>
			Switch to video input 0 - Apple ][

		1RV<C/R>		R<C/R>
			Switch to video input 1 - LDP

		XRV<C/R>		R<C/R>
			Switch to the "other" video input

For the "Adventures..." BASIC program, this means that just including in the VS$
command strings, "1PR/0RV/"  will switch to Apple IIc video.  Or "1PR/1RV/" will
switch to the LaserDisc Player's video input.


# Hardware Design

For the prototype, i had considered a few different ways of building it up:
	
	- 4051/4061/4066 analog switches

		- The 74HC4051 is known to work, and recommended for switching video. 
		- It was questionable if i could get them in time 
		- https://www.ti.com/lit/an/slyt098/slyt098.pdf?ts=1595267415922&ref_url=https%253A%252F%252Fwww.google.com%252F
		- 74HC4051 mux breakout at sparkfun https://www.sparkfun.com/products/13906

	-  CD74HC4067

		- unknown if it would work to switch video
		- I do have some of these in my old Mayhew labs mux shield
		  http://mayhewlabs.com/products/arduino-mux-shield

	- Relay(s)

		- would definitely work
		- I have the parts to make these. (1 relay, 1 diode, 1 transistor per video input)
		- a bit complicated to make

	- "El Cheapo #2" video switching circuit

		- requres 1 resistor and 1 NPN general purpose transistor for each video input.
		- known to work (years ago)
		- Probably not the best video quality, but this isn't a concern right now.
		- I definitely have the parts to make this, and it's super simple

	I implemented first the "El Cheapo #2" version, but it didn't work, so I dug
	up some 5v reed relays and implemented that version instead... which didn't work
	at first, but I figured out why it wasn;t working.  In retrospect, the other 
	circuit probably would have worked, but oh well.

	

# Additional: Aurora Omniscan Videodisc Controller Code Table

	Ch	Function

	V	Screen Set
	X	Screen Flip
	Z	Pause
	P	Play

	N	Fast Reverse
	M	Fast Forward
	H	Scan Reverse
	J	Scan Forward
	Y	Slow Reverse
	U	Slow Forward
	T	Step Reverse
	I	Step Forward
	L	Left Audio
	R	Right Audio
	S	Search
	Q	Reject
	C	Chapter
	F	Frame
	0
	:	Numbers
	9


# Additional: Misc L3 commands

		cs		clear screen
		1ds		display on, chapter display
		7ra		show user text
		3pr		output to line 3
		hello	


# Additional: L3 on-screen font lookup table:

	20 sp    21  !    22  "    23  #    24  $    25  %    26  &    27  '
	28  (    29  )    2a  *    2b  +    2c  ,    2d  -    2e  .    2f  /

	30  0    31  1    32  2    33  3    34  4    35  5    36  6    37  7
	38  8    39  9    3a  :    3b  ;    3c  <    3d  =    3e  >    3f  ?

	40  @    41  A    42  B    43  C    44  D    45  E    46  F    47  G
	48  H    49  I    4a  J    4b  K    4c  L    4d  M    4e  N    4f  O
	50  P    51  Q    52  R    53  S    54  T    55  U    56  V    57  W
	58  X    59  Y    5a  Z    5b  LT[  5c  YEN\ 5d  RT]  5e  BLK^ 5f  _

	60  `    61  a    62  b    63  c    64  d    65  e    66  f    67  g
	68  h    69  i    6a  j    6b  k    6c  l    6d  m    6e  n    6f  o
	70  p    71  q    72  r    73  s    74  t    75  u    76  v    77  w
	78  x    79  y    7a  z    7b  UP{  7c  |    7d  DN}  7e   ~   7f   del

