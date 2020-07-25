EESchema Schematic File Version 4
LIBS:LlamaVideoSwitcher-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "LlamaVideoSwitcher"
Date "2020-07-25"
Rev "1.4"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Module:Arduino_UNO_R3 A1
U 1 1 5F1784A2
P 5450 4550
F 0 "A1" H 5800 5600 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 6050 5500 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 5600 3500 50  0001 L CNN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 5250 5600 50  0001 C CNN
	1    5450 4550
	1    0    0    -1  
$EndComp
$Comp
L Connector:DIN-5_180degree J5
U 1 1 5F178659
P 5975 1450
F 0 "J5" V 5750 1300 50  0000 C CNN
F 1 "DIN-5/180" V 5650 1200 50  0000 C CNN
F 2 "" H 5975 1450 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 5975 1450 50  0001 C CNN
	1    5975 1450
	0    -1   -1   0   
$EndComp
Text Notes 7625 1250 0    50   ~ 0
DIN 5/180 pinout\n1 DTR\n4 TX (from IIc)\n2 GND\n5 RX (to IIc)\n3 DSR
Text Notes 7800 1950 0    50   Italic 0
Notes:\n- Male DIN cable plugs into Apple ][c\n- Female DIN socket is for LD Player connection\n- Apple seems to label their port as 1,2,3,4,5 instead of 1,4,2,5,3\n- For the LD interface, only TX, RX and GND are needed.
$Comp
L Connector:DIN-5_180degree J6
U 1 1 5F178BB9
P 7325 1450
F 0 "J6" V 7100 1125 50  0000 C CNN
F 1 "DIN-5/180" V 7000 1200 50  0000 C CNN
F 2 "" H 7325 1450 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 7325 1450 50  0001 C CNN
	1    7325 1450
	0    1    -1   0   
$EndComp
Wire Wire Line
	7725 1450 7725 2300
$Comp
L power:+5V #PWR08
U 1 1 5F179CC1
P 5650 3150
F 0 "#PWR08" H 5650 3000 50  0001 C CNN
F 1 "+5V" H 5665 3323 50  0000 C CNN
F 2 "" H 5650 3150 50  0001 C CNN
F 3 "" H 5650 3150 50  0001 C CNN
	1    5650 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3550 5650 3150
$Comp
L power:GND #PWR07
U 1 1 5F17A22C
P 5450 5900
F 0 "#PWR07" H 5450 5650 50  0001 C CNN
F 1 "GND" H 5455 5727 50  0000 C CNN
F 2 "" H 5450 5900 50  0001 C CNN
F 3 "" H 5450 5900 50  0001 C CNN
	1    5450 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 5650 5350 5775
Wire Wire Line
	5350 5775 5450 5775
Wire Wire Line
	5550 5775 5550 5650
Wire Wire Line
	5450 5650 5450 5775
Connection ~ 5450 5775
Wire Wire Line
	5450 5775 5550 5775
Wire Wire Line
	5450 5775 5450 5900
$Comp
L Connector_Generic:Conn_01x04 J3
U 1 1 5F17B295
P 3600 3650
F 0 "J3" H 3520 3967 50  0000 C CNN
F 1 "Interface" H 3520 3876 50  0000 C CNN
F 2 "" H 3600 3650 50  0001 C CNN
F 3 "~" H 3600 3650 50  0001 C CNN
	1    3600 3650
	-1   0    0    -1  
$EndComp
Text Notes 3275 3850 0    50   ~ 0
1 VCC\n2 TX\n3 RX\n4 GND
$Comp
L power:+5V #PWR03
U 1 1 5F17BE34
P 4000 3425
F 0 "#PWR03" H 4000 3275 50  0001 C CNN
F 1 "+5V" H 4015 3598 50  0000 C CNN
F 2 "" H 4000 3425 50  0001 C CNN
F 3 "" H 4000 3425 50  0001 C CNN
	1    4000 3425
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3425 4000 3550
Wire Wire Line
	4000 3550 3800 3550
$Comp
L power:GND #PWR04
U 1 1 5F17C200
P 4000 3975
F 0 "#PWR04" H 4000 3725 50  0001 C CNN
F 1 "GND" H 4005 3802 50  0000 C CNN
F 2 "" H 4000 3975 50  0001 C CNN
F 3 "" H 4000 3975 50  0001 C CNN
	1    4000 3975
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 3975 4000 3850
Wire Wire Line
	4000 3850 3800 3850
Text Notes 1350 2700 0    50   ~ 0
TTL-RS232 Interface
$Comp
L Connector:DB9_Female J1
U 1 1 5F17E150
P 2400 3075
F 0 "J1" V 2375 3675 50  0000 L CNN
F 1 "DB9_Female" V 2500 3575 50  0000 L CNN
F 2 "" H 2400 3075 50  0001 C CNN
F 3 " ~" H 2400 3075 50  0001 C CNN
	1    2400 3075
	0    -1   1    0   
$EndComp
Text Notes 1700 3975 0    50   ~ 0
DE9 Serial Pinout\n(Male on PC)\n1 CD\n2 RX\n3 TX\n4 DTR\n5 GND
$Comp
L Connector:Conn_Coaxial J7
U 1 1 5F18184E
P 10050 3100
F 0 "J7" H 9950 3325 50  0000 C CNN
F 1 "Video 0 In: ][c" H 10100 3225 50  0000 C CNN
F 2 "" H 10050 3100 50  0001 C CNN
F 3 " ~" H 10050 3100 50  0001 C CNN
	1    10050 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5F181B4A
P 7750 2950
F 0 "R1" V 7543 2950 50  0000 C CNN
F 1 "1K" V 7634 2950 50  0000 C CNN
F 2 "" V 7680 2950 50  0001 C CNN
F 3 "~" H 7750 2950 50  0001 C CNN
	1    7750 2950
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_Coaxial J8
U 1 1 5F183C6B
P 10050 4550
F 0 "J8" H 9925 4800 50  0000 L CNN
F 1 "Video Output" H 9900 4700 50  0000 L CNN
F 2 "" H 10050 4550 50  0001 C CNN
F 3 " ~" H 10050 4550 50  0001 C CNN
	1    10050 4550
	1    0    0    -1  
$EndComp
Text GLabel 7400 2950 0    50   Input ~ 0
Vid0Select
Text GLabel 7400 4800 0    50   Input ~ 0
Vid1Select
Text GLabel 4750 4550 0    50   Input ~ 0
Vid0Select
Text GLabel 4750 4650 0    50   Input ~ 0
Vid1Select
Wire Wire Line
	4750 4650 4950 4650
Wire Wire Line
	4950 4150 4700 4150
Wire Wire Line
	4700 4150 4700 3650
Wire Wire Line
	3800 3650 4700 3650
Wire Wire Line
	4600 4250 4600 3750
$Comp
L power:+5V #PWR01
U 1 1 5F1AE724
P 2400 4800
F 0 "#PWR01" H 2400 4650 50  0001 C CNN
F 1 "+5V" H 2415 4973 50  0000 C CNN
F 2 "" H 2400 4800 50  0001 C CNN
F 3 "" H 2400 4800 50  0001 C CNN
	1    2400 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4800 2400 4900
Wire Wire Line
	2400 5500 2400 5600
$Comp
L power:GND #PWR02
U 1 1 5F1B0A0E
P 2400 5600
F 0 "#PWR02" H 2400 5350 50  0001 C CNN
F 1 "GND" H 2405 5427 50  0000 C CNN
F 2 "" H 2400 5600 50  0001 C CNN
F 3 "" H 2400 5600 50  0001 C CNN
	1    2400 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 5200 3050 5200
Wire Wire Line
	3050 5200 3050 4350
$Comp
L Switch:SW_Push SW1
U 1 1 5F1B7FA8
P 4025 5250
F 0 "SW1" V 3979 5398 50  0000 L CNN
F 1 "Manual Control" V 4070 5398 50  0000 L CNN
F 2 "" H 4025 5450 50  0001 C CNN
F 3 "" H 4025 5450 50  0001 C CNN
	1    4025 5250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5F1B8D33
P 4025 5600
F 0 "#PWR05" H 4025 5350 50  0001 C CNN
F 1 "GND" H 4030 5427 50  0000 C CNN
F 2 "" H 4025 5600 50  0001 C CNN
F 3 "" H 4025 5600 50  0001 C CNN
	1    4025 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4025 5600 4025 5450
Text Notes 3000 3150 0    50   Italic 0
Note: We’re tapping into pin 2 on \nthis interface board.  We’re only\nusing it for level conversion, \nnot its 9 pin connector.
Wire Bus Line
	1300 2600 4400 2600
Wire Bus Line
	4400 4250 1300 4250
Wire Wire Line
	4025 4450 4025 5050
Text Notes 1750 5750 0    50   ~ 0
(flat side)\n4 Data In\n3 +5v\n2 Ground\n1 Data Out
Text Notes 2625 5475 0    50   ~ 0
WS2881 LED
$Comp
L LED:NeoPixel_THT LED1
U 1 1 5F1F2C5C
P 2400 5200
F 0 "LED1" H 2175 5125 50  0000 R CNN
F 1 "NeoPixel_THT" H 2175 5050 50  0000 R CNN
F 2 "" H 2450 4900 50  0001 L TNN
F 3 "https://www.adafruit.com/product/1938" H 2500 4825 50  0001 L TNN
	1    2400 5200
	-1   0    0    -1  
$EndComp
$Comp
L Connector:DB9_Female J2
U 1 1 5F1FA942
P 2450 7150
F 0 "J2" H 2370 6458 50  0000 C CNN
F 1 "DE9 Female (to computer)" H 2370 6549 50  0000 C CNN
F 2 "" H 2450 7150 50  0001 C CNN
F 3 " ~" H 2450 7150 50  0001 C CNN
	1    2450 7150
	-1   0    0    1   
$EndComp
$Comp
L Connector:DB9_Female J4
U 1 1 5F1FAF34
P 3950 7150
F 0 "J4" H 3869 6458 50  0000 C CNN
F 1 "DE9 Male (to LDP)" H 3869 6549 50  0000 C CNN
F 2 "" H 3950 7150 50  0001 C CNN
F 3 " ~" H 3950 7150 50  0001 C CNN
	1    3950 7150
	1    0    0    1   
$EndComp
Wire Wire Line
	2750 7150 3200 7150
Wire Wire Line
	3200 7150 3200 6150
Wire Wire Line
	3200 6150 3700 6150
Text GLabel 3700 6150 2    50   Input ~ 0
SerialTapA
Text Notes 4275 7500 0    50   ~ 0
1 CD\n2 RX\n3 TX\n4 DTR\n5 GND\n6 DSR\n7 RTS\n8 CTS\n9 RI
Wire Wire Line
	2750 6750 3300 6750
Wire Wire Line
	3300 6750 3300 6300
Wire Wire Line
	3300 6300 3700 6300
Connection ~ 3300 6750
Wire Wire Line
	3300 6750 3650 6750
Wire Wire Line
	3200 7150 3650 7150
Connection ~ 3200 7150
Wire Wire Line
	3650 7350 3100 7350
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
Text Notes 1850 7800 0    50   Italic 0
If using a 9 pin cable for the tap instead of Apple ][c DIN, use this.
$Comp
L Device:Q_PNP_CBE Q1
U 1 1 5F1950B9
P 8350 2950
F 0 "Q1" H 8541 2904 50  0000 L CNN
F 1 "2N3906" H 8541 2995 50  0000 L CNN
F 2 "" H 8550 3050 50  0001 C CNN
F 3 "~" H 8350 2950 50  0001 C CNN
	1    8350 2950
	1    0    0    1   
$EndComp
$Comp
L Device:D D3
U 1 1 5F1953CC
P 8450 3550
F 0 "D3" V 8475 3200 50  0000 L CNN
F 1 "1N4001" V 8575 3200 50  0000 L CNN
F 2 "" H 8450 3550 50  0001 C CNN
F 3 "~" H 8450 3550 50  0001 C CNN
	1    8450 3550
	0    1    1    0   
$EndComp
$Comp
L Relay:MSxx-1Axx-75 K1
U 1 1 5F198F91
P 9100 3550
F 0 "K1" H 8700 3900 50  0000 L CNN
F 1 "5V Reed" H 8500 3825 50  0000 L CNN
F 2 "Relay_THT:Relay_SPST_StandexMeder_MS_Form1AB" H 9450 3500 50  0001 L CNN
F 3 "https://standexelectronics.com/de/produkte/ms-reed-relais/" H 9100 3550 50  0001 C CNN
	1    9100 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 3100 9300 3250
Wire Wire Line
	9300 3850 9300 4550
$Comp
L power:GND #PWR011
U 1 1 5F1A144B
P 8900 4025
F 0 "#PWR011" H 8900 3775 50  0001 C CNN
F 1 "GND" H 8905 3852 50  0000 C CNN
F 2 "" H 8900 4025 50  0001 C CNN
F 3 "" H 8900 4025 50  0001 C CNN
	1    8900 4025
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 3850 8900 3950
Wire Wire Line
	8450 3700 8450 3950
Wire Wire Line
	8450 3950 8900 3950
Wire Wire Line
	8450 3400 8450 3150
Wire Wire Line
	8450 3150 8900 3150
Wire Wire Line
	8900 3150 8900 3250
Connection ~ 8450 3150
Wire Wire Line
	8150 2950 7950 2950
Wire Wire Line
	7600 2950 7400 2950
$Comp
L power:+5V #PWR09
U 1 1 5F1B4A9E
P 8450 2450
F 0 "#PWR09" H 8450 2300 50  0001 C CNN
F 1 "+5V" H 8465 2623 50  0000 C CNN
F 2 "" H 8450 2450 50  0001 C CNN
F 3 "" H 8450 2450 50  0001 C CNN
	1    8450 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2775 2800 2300
$Comp
L Device:R R3
U 1 1 5F1C2622
P 8200 2550
F 0 "R3" V 7993 2550 50  0000 C CNN
F 1 "10K" V 8084 2550 50  0000 C CNN
F 2 "" V 8130 2550 50  0001 C CNN
F 3 "~" H 8200 2550 50  0001 C CNN
	1    8200 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8350 2550 8450 2550
Wire Wire Line
	8450 2450 8450 2550
Connection ~ 8450 2550
Wire Wire Line
	8450 2550 8450 2750
Wire Wire Line
	8050 2550 7950 2550
Wire Wire Line
	7950 2550 7950 2950
Connection ~ 7950 2950
Wire Wire Line
	7950 2950 7900 2950
Wire Wire Line
	9300 3100 9700 3100
Wire Wire Line
	10050 3300 10050 3400
$Comp
L power:GNDA #PWR013
U 1 1 5F1CF3A7
P 10050 3400
F 0 "#PWR013" H 10050 3150 50  0001 C CNN
F 1 "GNDA" H 10055 3227 50  0000 C CNN
F 2 "" H 10050 3400 50  0001 C CNN
F 3 "" H 10050 3400 50  0001 C CNN
	1    10050 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J9
U 1 1 5F221A2D
P 9800 5800
F 0 "J9" H 9700 6025 50  0000 C CNN
F 1 "Video 1 In: LDP" H 9850 5925 50  0000 C CNN
F 2 "" H 9800 5800 50  0001 C CNN
F 3 " ~" H 9800 5800 50  0001 C CNN
	1    9800 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5F221A33
P 7750 4800
F 0 "R2" V 7543 4800 50  0000 C CNN
F 1 "1K" V 7634 4800 50  0000 C CNN
F 2 "" V 7680 4800 50  0001 C CNN
F 3 "~" H 7750 4800 50  0001 C CNN
	1    7750 4800
	0    1    1    0   
$EndComp
$Comp
L Device:Q_PNP_CBE Q2
U 1 1 5F221A3F
P 8350 4800
F 0 "Q2" H 8541 4754 50  0000 L CNN
F 1 "2N3906" H 8541 4845 50  0000 L CNN
F 2 "" H 8550 4900 50  0001 C CNN
F 3 "~" H 8350 4800 50  0001 C CNN
	1    8350 4800
	1    0    0    1   
$EndComp
$Comp
L Device:D D4
U 1 1 5F221A45
P 8450 5400
F 0 "D4" V 8450 5050 50  0000 L CNN
F 1 "1N4001" V 8550 5050 50  0000 L CNN
F 2 "" H 8450 5400 50  0001 C CNN
F 3 "~" H 8450 5400 50  0001 C CNN
	1    8450 5400
	0    1    1    0   
$EndComp
$Comp
L Relay:MSxx-1Axx-75 K2
U 1 1 5F221A4B
P 9100 5400
F 0 "K2" H 8700 5750 50  0000 L CNN
F 1 "5V Reed" H 8500 5675 50  0000 L CNN
F 2 "Relay_THT:Relay_SPST_StandexMeder_MS_Form1AB" H 9450 5350 50  0001 L CNN
F 3 "https://standexelectronics.com/de/produkte/ms-reed-relais/" H 9100 5400 50  0001 C CNN
	1    9100 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5F221A54
P 8900 5900
F 0 "#PWR012" H 8900 5650 50  0001 C CNN
F 1 "GND" H 8905 5727 50  0000 C CNN
F 2 "" H 8900 5900 50  0001 C CNN
F 3 "" H 8900 5900 50  0001 C CNN
	1    8900 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 5550 8450 5800
Wire Wire Line
	8450 5800 8900 5800
Wire Wire Line
	8450 5250 8450 5000
Wire Wire Line
	8450 5000 8900 5000
Wire Wire Line
	8900 5000 8900 5100
Connection ~ 8450 5000
Wire Wire Line
	8150 4800 7950 4800
Wire Wire Line
	7600 4800 7400 4800
$Comp
L power:+5V #PWR010
U 1 1 5F221A65
P 8450 4300
F 0 "#PWR010" H 8450 4150 50  0001 C CNN
F 1 "+5V" H 8465 4473 50  0000 C CNN
F 2 "" H 8450 4300 50  0001 C CNN
F 3 "" H 8450 4300 50  0001 C CNN
	1    8450 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5F221A6B
P 8200 4400
F 0 "R4" V 7993 4400 50  0000 C CNN
F 1 "10K" V 8084 4400 50  0000 C CNN
F 2 "" V 8130 4400 50  0001 C CNN
F 3 "~" H 8200 4400 50  0001 C CNN
	1    8200 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8350 4400 8450 4400
Wire Wire Line
	8450 4300 8450 4400
Connection ~ 8450 4400
Wire Wire Line
	8450 4400 8450 4600
Wire Wire Line
	8050 4400 7950 4400
Wire Wire Line
	7950 4400 7950 4800
Connection ~ 7950 4800
Wire Wire Line
	7950 4800 7900 4800
Wire Wire Line
	9800 6000 9800 6050
$Comp
L power:GNDA #PWR015
U 1 1 5F221A7B
P 9800 6050
F 0 "#PWR015" H 9800 5800 50  0001 C CNN
F 1 "GNDA" H 9805 5877 50  0000 C CNN
F 2 "" H 9800 6050 50  0001 C CNN
F 3 "" H 9800 6050 50  0001 C CNN
	1    9800 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 5700 9300 5800
Wire Wire Line
	9300 5800 9600 5800
$Comp
L power:GNDA #PWR014
U 1 1 5F22DB31
P 10050 4850
F 0 "#PWR014" H 10050 4600 50  0001 C CNN
F 1 "GNDA" H 10055 4677 50  0000 C CNN
F 2 "" H 10050 4850 50  0001 C CNN
F 3 "" H 10050 4850 50  0001 C CNN
	1    10050 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 4750 10050 4850
Connection ~ 8900 3950
Connection ~ 9300 4550
$Comp
L Device:Jumper JP1
U 1 1 5F19699F
P 3450 800
F 0 "JP1" H 3200 925 50  0000 C CNN
F 1 "Select A In" H 3450 725 50  0000 C CNN
F 2 "" H 3450 800 50  0001 C CNN
F 3 "~" H 3450 800 50  0001 C CNN
	1    3450 800 
	1    0    0    -1  
$EndComp
$Comp
L Device:D D1
U 1 1 5F1A8C96
P 2850 800
F 0 "D1" H 2775 975 50  0000 R CNN
F 1 "1N4918" H 2975 900 50  0000 R CNN
F 2 "" H 2850 800 50  0001 C CNN
F 3 "~" H 2850 800 50  0001 C CNN
	1    2850 800 
	1    0    0    -1  
$EndComp
Wire Bus Line
	1300 4250 1300 2600
Wire Bus Line
	4400 2600 4400 4250
Wire Wire Line
	4950 4250 4600 4250
Wire Wire Line
	4950 4450 4025 4450
Wire Wire Line
	4950 4550 4750 4550
Wire Wire Line
	3050 4350 4950 4350
$Comp
L Device:Jumper JP2
U 1 1 5F2586D3
P 3450 1950
F 0 "JP2" H 3200 2075 50  0000 C CNN
F 1 "Select B In" H 3450 1875 50  0000 C CNN
F 2 "" H 3450 1950 50  0001 C CNN
F 3 "~" H 3450 1950 50  0001 C CNN
	1    3450 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:D D2
U 1 1 5F2586D9
P 2850 1950
F 0 "D2" H 2775 2125 50  0000 R CNN
F 1 "1N4918" H 2975 2050 50  0000 R CNN
F 2 "" H 2850 1950 50  0001 C CNN
F 3 "~" H 2850 1950 50  0001 C CNN
	1    2850 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 800  3150 800 
Wire Wire Line
	2700 1950 2200 1950
Wire Wire Line
	3000 1950 3150 1950
Wire Wire Line
	7725 1450 7625 1450
Wire Wire Line
	5675 1450 5575 1450
Wire Wire Line
	5975 1750 5975 1850
Wire Wire Line
	5975 1850 7325 1850
Wire Wire Line
	7325 1850 7325 1750
Wire Wire Line
	7425 1750 7425 1950
Wire Wire Line
	7425 1950 5875 1950
Wire Wire Line
	5875 1950 5875 1750
Wire Wire Line
	5975 1150 5975 1050
Wire Wire Line
	5975 1050 7325 1050
Wire Wire Line
	7325 1050 7325 1150
Wire Wire Line
	7425 1150 7425 800 
Wire Wire Line
	7425 800  5875 800 
Wire Wire Line
	5875 800  5875 1150
Wire Wire Line
	3750 800  3900 800 
Wire Wire Line
	2800 2300 5575 2300
Wire Wire Line
	5575 1450 5575 2300
Connection ~ 5575 2300
Wire Wire Line
	5575 2300 6650 2300
Connection ~ 5875 1950
Text GLabel 3700 6000 2    50   Input ~ 0
SerialTapB
Wire Wire Line
	3700 6000 3100 6000
Wire Wire Line
	3100 6000 3100 7350
Connection ~ 3100 7350
Wire Wire Line
	3100 7350 2750 7350
Text GLabel 4025 650  2    50   Input ~ 0
SerialTapA
Wire Wire Line
	2200 800  2700 800 
Text GLabel 4025 1825 2    50   Input ~ 0
SerialTapB
Wire Wire Line
	4025 650  3900 650 
Wire Wire Line
	3900 650  3900 800 
Wire Wire Line
	4025 1825 3900 1825
Wire Wire Line
	3900 1825 3900 1950
Connection ~ 3900 1950
Wire Wire Line
	3900 1950 3750 1950
Connection ~ 3900 800 
Text Notes 2300 1500 0    50   ~ 0
JP1 - Snoop on LDP Commands sent from the Apple ][\nJP2 - Snoop on LDP Responses “R”\n(both can be enabled)
Text Notes 7750 6575 0    50   Italic 0
This circuit uses a PNP transistor since that’s what I had.\nThis is an adaptation of a few circuits I found with NPN transistors.\nThe video switch circuit can be repeated as many times as you want.
Text Notes 5725 5850 0    50   Italic 0
Arduino UNO used since I had a spare.\nAny Arduino (Leonardo, Mega, Micro, etc)\nor other micro (PIC) can be used.
Connection ~ 5875 800 
Text Notes 4500 1075 0    50   ~ 0
From ][c\nTo LDP\n(LDP Commands)
Text Notes 4525 1900 0    50   ~ 0
From LDP\nTo ][c\n(LDP Responses)
Text Notes 2100 3925 0    50   ~ 0
6 DSR\n7 RTS\n8 CTS\n9 RI
Wire Wire Line
	4600 3750 3800 3750
$Comp
L power:GNDS #PWR017
U 1 1 5F278061
P 6650 2450
F 0 "#PWR017" H 6650 2200 50  0001 C CNN
F 1 "GNDS" H 6655 2277 50  0000 C CNN
F 2 "" H 6650 2450 50  0001 C CNN
F 3 "" H 6650 2450 50  0001 C CNN
	1    6650 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 2450 6650 2300
Wire Wire Line
	6650 2300 7725 2300
$Comp
L power:GNDS #PWR06
U 1 1 5F284244
P 3700 6300
F 0 "#PWR06" H 3700 6050 50  0001 C CNN
F 1 "GNDS" V 3705 6172 50  0000 R CNN
F 2 "" H 3700 6300 50  0001 C CNN
F 3 "" H 3700 6300 50  0001 C CNN
	1    3700 6300
	0    -1   -1   0   
$EndComp
Connection ~ 6650 2300
Text Notes 6325 7050 0    50   Italic 0
Component Notes:\n- D1, D2, D3, D4 can be any similar diodes\n- Q1, Q2 can be any switching PNP transistor
Wire Wire Line
	3900 800  5875 800 
NoConn ~ 2400 2775
Connection ~ 2200 1950
Wire Wire Line
	2200 1950 2200 2775
Wire Wire Line
	2200 800  2200 1950
Wire Wire Line
	3900 1950 5875 1950
$Comp
L Device:LED_ALT LED2
U 1 1 5F1E9CFC
P 6300 4550
F 0 "LED2" H 6291 4295 50  0000 C CNN
F 1 "Indicator" H 6291 4386 50  0000 C CNN
F 2 "" H 6300 4550 50  0001 C CNN
F 3 "~" H 6300 4550 50  0001 C CNN
	1    6300 4550
	1    0    0    1   
$EndComp
$Comp
L Device:R R5
U 1 1 5F1F61AE
P 6600 4250
F 0 "R5" H 6500 4100 50  0000 C CNN
F 1 "220R" H 6450 4175 50  0000 C CNN
F 2 "" V 6530 4250 50  0001 C CNN
F 3 "~" H 6600 4250 50  0001 C CNN
	1    6600 4250
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR016
U 1 1 5F1F6CD8
P 6600 3875
F 0 "#PWR016" H 6600 3725 50  0001 C CNN
F 1 "+5V" H 6615 4048 50  0000 C CNN
F 2 "" H 6600 3875 50  0001 C CNN
F 3 "" H 6600 3875 50  0001 C CNN
	1    6600 3875
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 3875 6600 4100
Wire Wire Line
	6600 4400 6600 4550
Wire Wire Line
	6600 4550 6450 4550
Wire Wire Line
	6150 4550 5950 4550
Wire Wire Line
	8900 3950 8900 4025
Wire Wire Line
	9300 4550 9300 5100
$Comp
L Switch:SW_SPST SW2
U 1 1 5F2382B5
P 9700 3850
F 0 "SW2" V 9654 3948 50  0000 L CNN
F 1 "Bypass" V 9745 3948 50  0000 L CNN
F 2 "" H 9700 3850 50  0001 C CNN
F 3 "" H 9700 3850 50  0001 C CNN
	1    9700 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	9700 3650 9700 3100
Connection ~ 9700 3100
Wire Wire Line
	9700 3100 9850 3100
Wire Wire Line
	9700 4050 9700 4550
Wire Wire Line
	9300 4550 9700 4550
Connection ~ 9700 4550
Wire Wire Line
	9700 4550 9850 4550
Wire Wire Line
	8900 5700 8900 5800
Connection ~ 8900 5800
Wire Wire Line
	8900 5800 8900 5900
$EndSCHEMATC
