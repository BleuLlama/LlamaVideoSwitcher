EESchema Schematic File Version 4
LIBS:LlamaVideoSwitcher-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "LlamaVideoSwitcher"
Date "2020-07-22"
Rev "1.01"
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
$Comp
L Connector:Conn_Coaxial J?
U 1 1 5F18184E
P 9600 3075
F 0 "J?" H 9500 3300 50  0000 C CNN
F 1 "Video 0 In" H 9650 3200 50  0000 C CNN
F 2 "" H 9600 3075 50  0001 C CNN
F 3 " ~" H 9600 3075 50  0001 C CNN
	1    9600 3075
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F181B4A
P 7750 2925
F 0 "R?" V 7543 2925 50  0000 C CNN
F 1 "740R" V 7634 2925 50  0000 C CNN
F 2 "" V 7680 2925 50  0001 C CNN
F 3 "~" H 7750 2925 50  0001 C CNN
	1    7750 2925
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_Coaxial J?
U 1 1 5F183C6B
P 9800 4550
F 0 "J?" H 9675 4800 50  0000 L CNN
F 1 "Video Output" H 9650 4700 50  0000 L CNN
F 2 "" H 9800 4550 50  0001 C CNN
F 3 " ~" H 9800 4550 50  0001 C CNN
	1    9800 4550
	1    0    0    -1  
$EndComp
Text GLabel 7400 2925 0    50   Input ~ 0
Vid0Select
Text GLabel 7400 5225 0    50   Input ~ 0
Vid1Select
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
Text GLabel 2800 1400 0    50   Input ~ 0
SerialTap
Connection ~ 4150 1400
Wire Wire Line
	2800 1400 2900 1400
Wire Wire Line
	2900 1400 2900 1550
Connection ~ 2900 1400
Wire Wire Line
	2900 1400 4150 1400
Wire Wire Line
	2900 1850 2900 2150
$Comp
L Device:Q_PNP_CBE Q?
U 1 1 5F1950B9
P 8350 2925
F 0 "Q?" H 8541 2879 50  0000 L CNN
F 1 "2N3906" H 8541 2970 50  0000 L CNN
F 2 "" H 8550 3025 50  0001 C CNN
F 3 "~" H 8350 2925 50  0001 C CNN
	1    8350 2925
	1    0    0    1   
$EndComp
$Comp
L Device:D D?
U 1 1 5F1953CC
P 8450 3525
F 0 "D?" V 8404 3604 50  0000 L CNN
F 1 "D" V 8495 3604 50  0000 L CNN
F 2 "" H 8450 3525 50  0001 C CNN
F 3 "~" H 8450 3525 50  0001 C CNN
	1    8450 3525
	0    1    1    0   
$EndComp
$Comp
L Device:D D?
U 1 1 5F195AF6
P 2900 1700
F 0 "D?" V 2946 1621 50  0000 R CNN
F 1 "D" V 2855 1621 50  0000 R CNN
F 2 "" H 2900 1700 50  0001 C CNN
F 3 "~" H 2900 1700 50  0001 C CNN
	1    2900 1700
	0    -1   -1   0   
$EndComp
$Comp
L Relay:MSxx-1Axx-75 K?
U 1 1 5F198F91
P 9100 3525
F 0 "K?" H 8700 3875 50  0000 L CNN
F 1 "5V Reed" H 8500 3800 50  0000 L CNN
F 2 "Relay_THT:Relay_SPST_StandexMeder_MS_Form1AB" H 9450 3475 50  0001 L CNN
F 3 "https://standexelectronics.com/de/produkte/ms-reed-relais/" H 9100 3525 50  0001 C CNN
	1    9100 3525
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 3075 9300 3225
Wire Wire Line
	9300 3825 9300 4550
Wire Wire Line
	9300 4550 9600 4550
$Comp
L power:GND #PWR?
U 1 1 5F1A144B
P 8900 4025
F 0 "#PWR?" H 8900 3775 50  0001 C CNN
F 1 "GND" H 8905 3852 50  0000 C CNN
F 2 "" H 8900 4025 50  0001 C CNN
F 3 "" H 8900 4025 50  0001 C CNN
	1    8900 4025
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 3825 8900 3925
Wire Wire Line
	8450 3675 8450 3925
Wire Wire Line
	8450 3925 8900 3925
Wire Wire Line
	8900 3925 8900 4025
Wire Wire Line
	8450 3375 8450 3125
Wire Wire Line
	8450 3125 8900 3125
Wire Wire Line
	8900 3125 8900 3225
Connection ~ 8450 3125
Wire Wire Line
	8150 2925 7950 2925
Wire Wire Line
	7600 2925 7400 2925
$Comp
L power:+5V #PWR?
U 1 1 5F1B4A9E
P 8450 2425
F 0 "#PWR?" H 8450 2275 50  0001 C CNN
F 1 "+5V" H 8465 2598 50  0000 C CNN
F 2 "" H 8450 2425 50  0001 C CNN
F 3 "" H 8450 2425 50  0001 C CNN
	1    8450 2425
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 2150 2300 1050
Wire Wire Line
	2300 1050 4550 1050
Connection ~ 4550 1050
Wire Wire Line
	4550 1050 6450 1050
$Comp
L Device:R R?
U 1 1 5F1C2622
P 8200 2525
F 0 "R?" V 7993 2525 50  0000 C CNN
F 1 "10K" V 8084 2525 50  0000 C CNN
F 2 "" V 8130 2525 50  0001 C CNN
F 3 "~" H 8200 2525 50  0001 C CNN
	1    8200 2525
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8350 2525 8450 2525
Wire Wire Line
	8450 2425 8450 2525
Connection ~ 8450 2525
Wire Wire Line
	8450 2525 8450 2725
Wire Wire Line
	8050 2525 7950 2525
Wire Wire Line
	7950 2525 7950 2925
Connection ~ 7950 2925
Wire Wire Line
	7950 2925 7900 2925
Wire Wire Line
	9300 3075 9400 3075
Wire Wire Line
	9600 3275 9600 3375
$Comp
L power:GNDA #PWR?
U 1 1 5F1CF3A7
P 9600 3375
F 0 "#PWR?" H 9600 3125 50  0001 C CNN
F 1 "GNDA" H 9605 3202 50  0000 C CNN
F 2 "" H 9600 3375 50  0001 C CNN
F 3 "" H 9600 3375 50  0001 C CNN
	1    9600 3375
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J?
U 1 1 5F221A2D
P 9600 6200
F 0 "J?" H 9500 6425 50  0000 C CNN
F 1 "Video 0 In" H 9650 6325 50  0000 C CNN
F 2 "" H 9600 6200 50  0001 C CNN
F 3 " ~" H 9600 6200 50  0001 C CNN
	1    9600 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F221A33
P 7750 5225
F 0 "R?" V 7543 5225 50  0000 C CNN
F 1 "740R" V 7634 5225 50  0000 C CNN
F 2 "" V 7680 5225 50  0001 C CNN
F 3 "~" H 7750 5225 50  0001 C CNN
	1    7750 5225
	0    1    1    0   
$EndComp
$Comp
L Device:Q_PNP_CBE Q?
U 1 1 5F221A3F
P 8350 5225
F 0 "Q?" H 8541 5179 50  0000 L CNN
F 1 "2N3906" H 8541 5270 50  0000 L CNN
F 2 "" H 8550 5325 50  0001 C CNN
F 3 "~" H 8350 5225 50  0001 C CNN
	1    8350 5225
	1    0    0    1   
$EndComp
$Comp
L Device:D D?
U 1 1 5F221A45
P 8450 5825
F 0 "D?" V 8404 5904 50  0000 L CNN
F 1 "D" V 8495 5904 50  0000 L CNN
F 2 "" H 8450 5825 50  0001 C CNN
F 3 "~" H 8450 5825 50  0001 C CNN
	1    8450 5825
	0    1    1    0   
$EndComp
$Comp
L Relay:MSxx-1Axx-75 K?
U 1 1 5F221A4B
P 9100 5825
F 0 "K?" H 8700 6175 50  0000 L CNN
F 1 "5V Reed" H 8500 6100 50  0000 L CNN
F 2 "Relay_THT:Relay_SPST_StandexMeder_MS_Form1AB" H 9450 5775 50  0001 L CNN
F 3 "https://standexelectronics.com/de/produkte/ms-reed-relais/" H 9100 5825 50  0001 C CNN
	1    9100 5825
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F221A54
P 8900 6325
F 0 "#PWR?" H 8900 6075 50  0001 C CNN
F 1 "GND" H 8905 6152 50  0000 C CNN
F 2 "" H 8900 6325 50  0001 C CNN
F 3 "" H 8900 6325 50  0001 C CNN
	1    8900 6325
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 6125 8900 6225
Wire Wire Line
	8450 5975 8450 6225
Wire Wire Line
	8450 6225 8900 6225
Connection ~ 8900 6225
Wire Wire Line
	8900 6225 8900 6325
Wire Wire Line
	8450 5675 8450 5425
Wire Wire Line
	8450 5425 8900 5425
Wire Wire Line
	8900 5425 8900 5525
Connection ~ 8450 5425
Wire Wire Line
	8150 5225 7950 5225
Wire Wire Line
	7600 5225 7400 5225
$Comp
L power:+5V #PWR?
U 1 1 5F221A65
P 8450 4725
F 0 "#PWR?" H 8450 4575 50  0001 C CNN
F 1 "+5V" H 8465 4898 50  0000 C CNN
F 2 "" H 8450 4725 50  0001 C CNN
F 3 "" H 8450 4725 50  0001 C CNN
	1    8450 4725
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F221A6B
P 8200 4825
F 0 "R?" V 7993 4825 50  0000 C CNN
F 1 "10K" V 8084 4825 50  0000 C CNN
F 2 "" V 8130 4825 50  0001 C CNN
F 3 "~" H 8200 4825 50  0001 C CNN
	1    8200 4825
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8350 4825 8450 4825
Wire Wire Line
	8450 4725 8450 4825
Connection ~ 8450 4825
Wire Wire Line
	8450 4825 8450 5025
Wire Wire Line
	8050 4825 7950 4825
Wire Wire Line
	7950 4825 7950 5225
Connection ~ 7950 5225
Wire Wire Line
	7950 5225 7900 5225
Wire Wire Line
	9600 6400 9600 6500
$Comp
L power:GNDA #PWR?
U 1 1 5F221A7B
P 9600 6500
F 0 "#PWR?" H 9600 6250 50  0001 C CNN
F 1 "GNDA" H 9605 6327 50  0000 C CNN
F 2 "" H 9600 6500 50  0001 C CNN
F 3 "" H 9600 6500 50  0001 C CNN
	1    9600 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 6125 9300 6200
Wire Wire Line
	9300 6200 9400 6200
$Comp
L power:GNDA #PWR?
U 1 1 5F22DB31
P 9800 4850
F 0 "#PWR?" H 9800 4600 50  0001 C CNN
F 1 "GNDA" H 9805 4677 50  0000 C CNN
F 2 "" H 9800 4850 50  0001 C CNN
F 3 "" H 9800 4850 50  0001 C CNN
	1    9800 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 4750 9800 4850
Wire Wire Line
	9300 4550 9300 5525
Connection ~ 8900 3925
Connection ~ 9300 4550
$EndSCHEMATC
