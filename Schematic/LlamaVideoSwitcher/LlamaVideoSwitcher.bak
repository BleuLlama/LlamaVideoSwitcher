EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "LlamaVideoSwitcher"
Date "2020-07-21"
Rev "1.00"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Module:Arduino_UNO_R3 A?
U 1 1 5F1784A2
P 5500 4350
F 0 "A?" H 5500 5528 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 5500 5437 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 5650 3300 50  0001 L CNN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 5300 5400 50  0001 C CNN
	1    5500 4350
	1    0    0    -1  
$EndComp
$Comp
L Connector:DIN-5_180degree J?
U 1 1 5F178659
P 4550 1500
F 0 "J?" H 4550 1226 50  0000 C CNN
F 1 "DIN-5/180 (Male to IIc)" H 4550 1135 50  0000 C CNN
F 2 "" H 4550 1500 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 4550 1500 50  0001 C CNN
	1    4550 1500
	1    0    0    -1  
$EndComp
Text Notes 7075 1725 0    50   ~ 0
DIN 5/180 pinout\n1 DTR\n4 TX (from IIc)\n2 GND\n5 RX (to IIc)\n3 DSR
Text Notes 4550 2200 0    50   ~ 0
Notes:\n- Apple seems to label their port as 1,2,3,4,5 instead of 1,4,2,5,3\n- For the LD interface, only TX, RX and GND are needed.
$Comp
L Connector:DIN-5_180degree J?
U 1 1 5F178BB9
P 6450 1500
F 0 "J?" H 6450 1226 50  0000 C CNN
F 1 "DIN-5/180 (Female to LDP)" H 6450 1135 50  0000 C CNN
F 2 "" H 6450 1500 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 6450 1500 50  0001 C CNN
	1    6450 1500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4850 1500 6150 1500
Wire Wire Line
	4850 1400 6150 1400
Wire Wire Line
	4550 1200 4550 1050
Wire Wire Line
	4550 1050 5500 1050
Wire Wire Line
	6450 1050 6450 1200
Wire Wire Line
	4250 1400 4150 1400
Wire Wire Line
	4150 1400 4150 950 
Wire Wire Line
	4150 950  6850 950 
Wire Wire Line
	6850 950  6850 1400
Wire Wire Line
	6850 1400 6750 1400
Wire Wire Line
	6950 1500 6950 850 
Wire Wire Line
	6950 850  4050 850 
Wire Wire Line
	4050 850  4050 1500
Wire Wire Line
	4050 1500 4250 1500
$Comp
L power:+5V #PWR?
U 1 1 5F179CC1
P 5700 2950
F 0 "#PWR?" H 5700 2800 50  0001 C CNN
F 1 "+5V" H 5715 3123 50  0000 C CNN
F 2 "" H 5700 2950 50  0001 C CNN
F 3 "" H 5700 2950 50  0001 C CNN
	1    5700 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3350 5700 2950
$Comp
L power:GND #PWR?
U 1 1 5F17A013
P 5500 1175
F 0 "#PWR?" H 5500 925 50  0001 C CNN
F 1 "GND" H 5505 1002 50  0000 C CNN
F 2 "" H 5500 1175 50  0001 C CNN
F 3 "" H 5500 1175 50  0001 C CNN
	1    5500 1175
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1050 5500 1175
Connection ~ 5500 1050
Wire Wire Line
	5500 1050 6450 1050
$Comp
L power:GND #PWR?
U 1 1 5F17A22C
P 5500 5700
F 0 "#PWR?" H 5500 5450 50  0001 C CNN
F 1 "GND" H 5505 5527 50  0000 C CNN
F 2 "" H 5500 5700 50  0001 C CNN
F 3 "" H 5500 5700 50  0001 C CNN
	1    5500 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 5450 5400 5575
Wire Wire Line
	5400 5575 5500 5575
Wire Wire Line
	5600 5575 5600 5450
Wire Wire Line
	5500 5450 5500 5575
Connection ~ 5500 5575
Wire Wire Line
	5500 5575 5600 5575
Wire Wire Line
	5500 5575 5500 5700
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 5F17B295
P 3250 3450
F 0 "J?" H 3170 3767 50  0000 C CNN
F 1 "Conn_01x04" H 3170 3676 50  0000 C CNN
F 2 "" H 3250 3450 50  0001 C CNN
F 3 "~" H 3250 3450 50  0001 C CNN
	1    3250 3450
	-1   0    0    -1  
$EndComp
Text Notes 2775 3625 0    50   ~ 0
1 VCC\n2 TX\n3 RX\n4 GND
$Comp
L power:+5V #PWR?
U 1 1 5F17BE34
P 3650 3225
F 0 "#PWR?" H 3650 3075 50  0001 C CNN
F 1 "+5V" H 3665 3398 50  0000 C CNN
F 2 "" H 3650 3225 50  0001 C CNN
F 3 "" H 3650 3225 50  0001 C CNN
	1    3650 3225
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3225 3650 3350
Wire Wire Line
	3650 3350 3450 3350
$Comp
L power:GND #PWR?
U 1 1 5F17C200
P 3650 3775
F 0 "#PWR?" H 3650 3525 50  0001 C CNN
F 1 "GND" H 3655 3602 50  0000 C CNN
F 2 "" H 3650 3775 50  0001 C CNN
F 3 "" H 3650 3775 50  0001 C CNN
	1    3650 3775
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3775 3650 3650
Wire Wire Line
	3650 3650 3450 3650
Text Notes 1375 2100 0    50   ~ 0
TTL-RS232 Interface
$Comp
L Connector:DB9_Female J?
U 1 1 5F17E150
P 2700 2450
F 0 "J?" V 2573 3005 50  0000 L CNN
F 1 "DB9_Female" V 2664 3005 50  0000 L CNN
F 2 "" H 2700 2450 50  0001 C CNN
F 3 " ~" H 2700 2450 50  0001 C CNN
	1    2700 2450
	0    1    1    0   
$EndComp
Text Notes 1450 3275 0    50   ~ 0
DE9 Serial Pinout\n(Male on PC)\n1 CD\n2 RX\n3 TX\n4 DTR\n5 GND\n6 DSR\n7 RTS\n8 CTS\n9 RI
Wire Wire Line
	4150 1400 2900 1400
Wire Wire Line
	2900 1400 2900 2150
Connection ~ 4150 1400
$Comp
L Transistor_BJT:2N3904 Q?
U 1 1 5F181272
P 8300 3950
F 0 "Q?" H 8491 3996 50  0000 L CNN
F 1 "2N3904" H 8491 3905 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8500 3875 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 8300 3950 50  0001 L CNN
	1    8300 3950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J?
U 1 1 5F18184E
P 8400 3450
F 0 "J?" V 8637 3380 50  0000 C CNN
F 1 "Video 0 In" V 8546 3380 50  0000 C CNN
F 2 "" H 8400 3450 50  0001 C CNN
F 3 " ~" H 8400 3450 50  0001 C CNN
	1    8400 3450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F181B4A
P 7800 3950
F 0 "R?" V 7593 3950 50  0000 C CNN
F 1 "4K7" V 7684 3950 50  0000 C CNN
F 2 "" V 7730 3950 50  0001 C CNN
F 3 "~" H 7800 3950 50  0001 C CNN
	1    7800 3950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F181F5F
P 8700 3550
F 0 "#PWR?" H 8700 3300 50  0001 C CNN
F 1 "GND" H 8705 3377 50  0000 C CNN
F 2 "" H 8700 3550 50  0001 C CNN
F 3 "" H 8700 3550 50  0001 C CNN
	1    8700 3550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J?
U 1 1 5F183C6B
P 9500 4700
F 0 "J?" H 9600 4676 50  0000 L CNN
F 1 "Video Output" H 9600 4585 50  0000 L CNN
F 2 "" H 9500 4700 50  0001 C CNN
F 3 " ~" H 9500 4700 50  0001 C CNN
	1    9500 4700
	1    0    0    -1  
$EndComp
Text GLabel 7450 3950 0    50   Input ~ 0
Vid0Select
Wire Wire Line
	7450 3950 7650 3950
Wire Wire Line
	7950 3950 8100 3950
Wire Wire Line
	8400 3750 8400 3650
$Comp
L Transistor_BJT:2N3904 Q?
U 1 1 5F191997
P 8300 5300
F 0 "Q?" H 8491 5346 50  0000 L CNN
F 1 "2N3904" H 8491 5255 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8500 5225 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 8300 5300 50  0001 L CNN
	1    8300 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F1919A3
P 7800 5300
F 0 "R?" V 7593 5300 50  0000 C CNN
F 1 "4K7" V 7684 5300 50  0000 C CNN
F 2 "" V 7730 5300 50  0001 C CNN
F 3 "~" H 7800 5300 50  0001 C CNN
	1    7800 5300
	0    1    1    0   
$EndComp
Text GLabel 7450 5300 0    50   Input ~ 0
Vid1Select
Wire Wire Line
	7450 5300 7650 5300
Wire Wire Line
	7950 5300 8100 5300
Wire Wire Line
	8600 3450 8700 3450
Wire Wire Line
	8700 3450 8700 3550
$Comp
L Connector:Conn_Coaxial J?
U 1 1 5F198B35
P 8400 4800
F 0 "J?" V 8637 4730 50  0000 C CNN
F 1 "Video 1 In" V 8546 4730 50  0000 C CNN
F 2 "" H 8400 4800 50  0001 C CNN
F 3 " ~" H 8400 4800 50  0001 C CNN
	1    8400 4800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F198B3B
P 8700 4900
F 0 "#PWR?" H 8700 4650 50  0001 C CNN
F 1 "GND" H 8705 4727 50  0000 C CNN
F 2 "" H 8700 4900 50  0001 C CNN
F 3 "" H 8700 4900 50  0001 C CNN
	1    8700 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 5100 8400 5000
Wire Wire Line
	8600 4800 8700 4800
Wire Wire Line
	8700 4800 8700 4900
Wire Wire Line
	8400 4150 8400 4250
Wire Wire Line
	8400 4250 9100 4250
Wire Wire Line
	9100 4250 9100 4700
Wire Wire Line
	9100 5650 8400 5650
Wire Wire Line
	8400 5650 8400 5500
Wire Wire Line
	9300 4700 9100 4700
Wire Wire Line
	9100 4700 9100 5650
$Comp
L power:GND #PWR?
U 1 1 5F19F449
P 9500 5050
F 0 "#PWR?" H 9500 4800 50  0001 C CNN
F 1 "GND" H 9505 4877 50  0000 C CNN
F 2 "" H 9500 5050 50  0001 C CNN
F 3 "" H 9500 5050 50  0001 C CNN
	1    9500 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 4900 9500 5050
Connection ~ 9100 4700
Text GLabel 4800 4450 0    50   Input ~ 0
Vid0Select
Text GLabel 4800 4550 0    50   Input ~ 0
Vid1Select
Wire Wire Line
	4800 4550 5000 4550
Wire Wire Line
	5000 4450 4800 4450
Wire Wire Line
	5000 3950 4750 3950
Wire Wire Line
	4750 3950 4750 3450
Wire Wire Line
	3450 3450 4750 3450
Wire Wire Line
	5000 4050 4650 4050
Wire Wire Line
	4650 4050 4650 3550
Wire Wire Line
	4650 3550 3450 3550
$Comp
L power:+5V #PWR?
U 1 1 5F1AE724
P 2400 4600
F 0 "#PWR?" H 2400 4450 50  0001 C CNN
F 1 "+5V" H 2415 4773 50  0000 C CNN
F 2 "" H 2400 4600 50  0001 C CNN
F 3 "" H 2400 4600 50  0001 C CNN
	1    2400 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4600 2400 4700
Wire Wire Line
	2400 5300 2400 5400
$Comp
L power:GND #PWR?
U 1 1 5F1B0A0E
P 2400 5400
F 0 "#PWR?" H 2400 5150 50  0001 C CNN
F 1 "GND" H 2405 5227 50  0000 C CNN
F 2 "" H 2400 5400 50  0001 C CNN
F 3 "" H 2400 5400 50  0001 C CNN
	1    2400 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 5000 3050 5000
Wire Wire Line
	3050 5000 3050 4150
Wire Wire Line
	3050 4150 5000 4150
$Comp
L Switch:SW_Push SW?
U 1 1 5F1B7FA8
P 4050 5050
F 0 "SW?" V 4004 5198 50  0000 L CNN
F 1 "Mode" V 4095 5198 50  0000 L CNN
F 2 "" H 4050 5250 50  0001 C CNN
F 3 "" H 4050 5250 50  0001 C CNN
	1    4050 5050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F1B8D33
P 4050 5400
F 0 "#PWR?" H 4050 5150 50  0001 C CNN
F 1 "GND" H 4055 5227 50  0000 C CNN
F 2 "" H 4050 5400 50  0001 C CNN
F 3 "" H 4050 5400 50  0001 C CNN
	1    4050 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 5400 4050 5250
Wire Wire Line
	5000 4250 4050 4250
Wire Wire Line
	6750 1500 6950 1500
Text Notes 2125 3025 0    50   ~ 0
Note: We’re tapping into pin 2 on \nthis interface board.  We’re only\nusing it for level conversion, \nnot its 9 pin connector.
Wire Bus Line
	1350 2000 4000 2000
Wire Bus Line
	4000 2000 4000 4050
Wire Bus Line
	4000 4050 1350 4050
Wire Bus Line
	1350 4050 1350 2000
Wire Wire Line
	4050 4250 4050 4850
Text Notes 1750 5550 0    50   ~ 0
(flat side)\n4 Data In\n3 +5v\n2 Ground\n1 Data Out
Text Notes 2625 5275 0    50   ~ 0
WS2881 LED
$Comp
L LED:NeoPixel_THT D?
U 1 1 5F1F2C5C
P 2400 5000
F 0 "D?" H 2175 4925 50  0000 R CNN
F 1 "NeoPixel_THT" H 2175 4850 50  0000 R CNN
F 2 "" H 2450 4700 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1938" H 2500 4625 50  0001 L TNN
	1    2400 5000
	-1   0    0    -1  
$EndComp
$Comp
L Connector:DB9_Female J?
U 1 1 5F1FA942
P 2450 7150
F 0 "J?" H 2370 6458 50  0000 C CNN
F 1 "DB9_Female (to computer)" H 2370 6549 50  0000 C CNN
F 2 "" H 2450 7150 50  0001 C CNN
F 3 " ~" H 2450 7150 50  0001 C CNN
	1    2450 7150
	-1   0    0    1   
$EndComp
$Comp
L Connector:DB9_Female J?
U 1 1 5F1FAF34
P 3950 7150
F 0 "J?" H 3869 6458 50  0000 C CNN
F 1 "DB9_Male (to LDP)" H 3869 6549 50  0000 C CNN
F 2 "" H 3950 7150 50  0001 C CNN
F 3 " ~" H 3950 7150 50  0001 C CNN
	1    3950 7150
	1    0    0    1   
$EndComp
Wire Wire Line
	2750 7150 3150 7150
Wire Wire Line
	3150 7150 3150 6150
Wire Wire Line
	3150 6150 3700 6150
Text GLabel 3700 6150 2    50   Input ~ 0
SerialTap
Text Notes 4275 7500 0    50   ~ 0
1 CD\n2 RX\n3 TX\n4 DTR\n5 GND\n6 DSR\n7 RTS\n8 CTS\n9 RI
Wire Wire Line
	2750 6750 3300 6750
$Comp
L power:GND #PWR?
U 1 1 5F20A083
P 4550 6400
F 0 "#PWR?" H 4550 6150 50  0001 C CNN
F 1 "GND" H 4555 6227 50  0000 C CNN
F 2 "" H 4550 6400 50  0001 C CNN
F 3 "" H 4550 6400 50  0001 C CNN
	1    4550 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 6750 3300 6300
Wire Wire Line
	3300 6300 4550 6300
Wire Wire Line
	4550 6300 4550 6400
Connection ~ 3300 6750
Wire Wire Line
	3300 6750 3650 6750
Wire Wire Line
	3150 7150 3650 7150
Connection ~ 3150 7150
Wire Wire Line
	3650 7350 2750 7350
Wire Wire Line
	2750 6850 3650 6850
Wire Wire Line
	3650 6950 2750 6950
Wire Wire Line
	2750 7050 3650 7050
Wire Wire Line
	3650 7250 2750 7250
Wire Wire Line
	2750 7450 3650 7450
Wire Wire Line
	3650 7550 2750 7550
Text Notes 1850 7800 0    50   ~ 0
If using a 9 pin cable for the tap instead of Apple ][c DIN, use this.
Text GLabel 2500 1400 0    50   Input ~ 0
SerialTap
Wire Wire Line
	2500 1400 2900 1400
Connection ~ 2900 1400
$EndSCHEMATC
