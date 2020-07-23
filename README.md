# LlamaVideoSwitcher
A simple RS232-snooping device that changes between composite video inputs

This specifically is for an implementation of the Adventures In Videoland,
"Rollercoaster" interactive game.  

# Overview

The original version of this program/game required the Aurora Systems 
Videodisc Controller, (ref: 
https://archive.org/stream/creativecomputing-1982-01/Creative_Computing_v08_n01_1982_January#page/n56/mode/1up  page 56 ) which communicated to a Pioneer VP-1000 via its 
wired remote port.

The '2018' version of the game that Kay Savetz made is what I am basing 
this all on, which was rewritten to communicate via standard serial using the 
Pioneer Level III commands, found on the LD-V4400, or my CLD-V2400 player.

Here's my branch of the git repo for it:
	https://github.com/BleuLlama/AdventuresInVideoland

Anyway, ohe one thing that was lost from switching from the Aurora controller to the 
serial is the video switching, which, to be honest, I hadn't known was a feature of
the original version until earlier this week... which is where this project came
from.  It coincidentally lined up with the 2020 KansasFest HackFest timing... 
so that's that.

My goal with this project is to make a functional prototype version of this... 
This repo contains any design/circuit diagrams, references, code patches, and 
Arduino code for it.  It is not meant to be a how-to, or a finished product.

My hardware and testing is done with my newly repaired Apple IIc (with 4x ROM),
a Pioneer CLD-V2400 Laserdisc player, and the 1978 DiscoVision LaserDisc release 
of the film "Rollercoaster", which is 5 CAV sides.  Such opulence!


# Hardware Interface

Since we're already a step removed from the original setup; lacking the Aurora card and 
the original LD player... and one step more 
simplified, since we're using a plain serial port taling with more modern LD players,
it would make sense for this video switcher to also have an extremely low barrier for 
entry.  At Kay's suggestion, I am not requiring the use of the second serial port of the IIc, 

My version of the video switcher for this game will hang off of the serial port
of the Apple II that we're already using for the LD communications, since that's 
obviously guaranteed to be there, as we're using it to command the LaserDisc player.

But it's already occupied!  Not a problem!

This version connects to just the TX line out from the computer, and watches for a certain
sequence of characters to change the video input shown on the computer's display.

The serial connection is between an Apple IIc and a Pioneer LD-V2200 or 
equivalent, at 4800 baud, 8N1.  The Arduino will be hooked up with a second (software)
serial port, and only passively reading from the port.


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


Altghough now that i'm thinking about it, we might need to not disable the R responses
since the BASIC code sends the line and waits for a reply. Hmmm.

Our code in the Arduino will look for the sequence, for this example, "1PR<C/R>1RV<C/R>",
and when it sees that, will switch to video input 1.

The additional opcodes that we will look for are:

	<integer>RV<C/R>		switch to the specified video input
	eg:
		0RV<C/R>			Switch to video input 0 - Apple ][
		1RV<C/R>			Switch to video input 1 - LDP
		XRV<C/R>			Toggle to the previous video input

This should have minimal affect on the game program requirements.

I should note that the 2CM, 3CM wrapper may be unnecessary, initial tests will be without it.


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

	

# Additional Reference

	- various L3 commands

		cs		clear screen
		1ds		display on, chapter display
		7ra		show user text
		3pr		output to line 3
		hello	

	- L3 on-screen font lookup table:


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

