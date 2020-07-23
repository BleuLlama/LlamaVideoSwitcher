EESchema Schematic File Version 4
LIBS:LlamaVideoSwitcher-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "LlamaVideoSwitcher"
Date "2020-07-23"
Rev "1.3"
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
P 9800 3075
F 0 "J7" H 9700 3300 50  0000 C CNN
F 1 "Video 0 In: ][c" H 9850 3200 50  0000 C CNN
F 2 "" H 9800 3075 50  0001 C CNN
F 3 " ~" H 9800 3075 50  0001 C CNN
	1    9800 3075
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5F181B4A
P 7750 2925
F 0 "R1" V 7543 2925 50  0000 C CNN
F 1 "1K" V 7634 2925 50  0000 C CNN
F 2 "" V 7680 2925 50  0001 C CNN
F 3 "~" H 7750 2925 50  0001 C CNN
	1    7750 2925
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_Coaxial J8
U 1 1 5F183C6B
P 9800 4550
F 0 "J8" H 9675 4800 50  0000 L CNN
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
P 8350 2925
F 0 "Q1" H 8541 2879 50  0000 L CNN
F 1 "2N3906" H 8541 2970 50  0000 L CNN
F 2 "" H 8550 3025 50  0001 C CNN
F 3 "~" H 8350 2925 50  0001 C CNN
	1    8350 2925
	1    0    0    1   
$EndComp
$Comp
L Device:D D3
U 1 1 5F1953CC
P 8450 3525
F 0 "D3" V 8475 3175 50  0000 L CNN
F 1 "1N4001" V 8575 3175 50  0000 L CNN
F 2 "" H 8450 3525 50  0001 C CNN
F 3 "~" H 8450 3525 50  0001 C CNN
	1    8450 3525
	0    1    1    0   
$EndComp
$Comp
L Relay:MSxx-1Axx-75 K1
U 1 1 5F198F91
P 9100 3525
F 0 "K1" H 8700 3875 50  0000 L CNN
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
L power:+5V #PWR09
U 1 1 5F1B4A9E
P 8450 2425
F 0 "#PWR09" H 8450 2275 50  0001 C CNN
F 1 "+5V" H 8465 2598 50  0000 C CNN
F 2 "" H 8450 2425 50  0001 C CNN
F 3 "" H 8450 2425 50  0001 C CNN
	1    8450 2425
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2775 2800 2300
$Comp
L Device:R R3
U 1 1 5F1C2622
P 8200 2525
F 0 "R3" V 7993 2525 50  0000 C CNN
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
	9300 3075 9600 3075
Wire Wire Line
	9800 3275 9800 3375
$Comp
L power:GNDA #PWR013
U 1 1 5F1CF3A7
P 9800 3375
F 0 "#PWR013" H 9800 3125 50  0001 C CNN
F 1 "GNDA" H 9805 3202 50  0000 C CNN
F 2 "" H 9800 3375 50  0001 C CNN
F 3 "" H 9800 3375 50  0001 C CNN
	1    9800 3375
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_Coaxial J9
U 1 1 5F221A2D
P 9800 6200
F 0 "J9" H 9700 6425 50  0000 C CNN
F 1 "Video 1 In: LDP" H 9850 6325 50  0000 C CNN
F 2 "" H 9800 6200 50  0001 C CNN
F 3 " ~" H 9800 6200 50  0001 C CNN
	1    9800 6200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5F221A33
P 7750 5225
F 0 "R2" V 7543 5225 50  0000 C CNN
F 1 "1K" V 7634 5225 50  0000 C CNN
F 2 "" V 7680 5225 50  0001 C CNN
F 3 "~" H 7750 5225 50  0001 C CNN
	1    7750 5225
	0    1    1    0   
$EndComp
$Comp
L Device:Q_PNP_CBE Q2
U 1 1 5F221A3F
P 8350 5225
F 0 "Q2" H 8541 5179 50  0000 L CNN
F 1 "2N3906" H 8541 5270 50  0000 L CNN
F 2 "" H 8550 5325 50  0001 C CNN
F 3 "~" H 8350 5225 50  0001 C CNN
	1    8350 5225
	1    0    0    1   
$EndComp
$Comp
L Device:D D4
U 1 1 5F221A45
P 8450 5825
F 0 "D4" V 8450 5475 50  0000 L CNN
F 1 "1N4001" V 8550 5475 50  0000 L CNN
F 2 "" H 8450 5825 50  0001 C CNN
F 3 "~" H 8450 5825 50  0001 C CNN
	1    8450 5825
	0    1    1    0   
$EndComp
$Comp
L Relay:MSxx-1Axx-75 K2
U 1 1 5F221A4B
P 9100 5825
F 0 "K2" H 8700 6175 50  0000 L CNN
F 1 "5V Reed" H 8500 6100 50  0000 L CNN
F 2 "Relay_THT:Relay_SPST_StandexMeder_MS_Form1AB" H 9450 5775 50  0001 L CNN
F 3 "https://standexelectronics.com/de/produkte/ms-reed-relais/" H 9100 5825 50  0001 C CNN
	1    9100 5825
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5F221A54
P 8900 6325
F 0 "#PWR012" H 8900 6075 50  0001 C CNN
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
L power:+5V #PWR010
U 1 1 5F221A65
P 8450 4725
F 0 "#PWR010" H 8450 4575 50  0001 C CNN
F 1 "+5V" H 8465 4898 50  0000 C CNN
F 2 "" H 8450 4725 50  0001 C CNN
F 3 "" H 8450 4725 50  0001 C CNN
	1    8450 4725
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5F221A6B
P 8200 4825
F 0 "R4" V 7993 4825 50  0000 C CNN
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
	9800 6400 9800 6500
$Comp
L power:GNDA #PWR015
U 1 1 5F221A7B
P 9800 6500
F 0 "#PWR015" H 9800 6250 50  0001 C CNN
F 1 "GNDA" H 9805 6327 50  0000 C CNN
F 2 "" H 9800 6500 50  0001 C CNN
F 3 "" H 9800 6500 50  0001 C CNN
	1    9800 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 6125 9300 6200
Wire Wire Line
	9300 6200 9600 6200
$Comp
L power:GNDA #PWR014
U 1 1 5F22DB31
P 9800 4850
F 0 "#PWR014" H 9800 4600 50  0001 C CNN
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
L Device:Jumper JP3
U 1 1 5F2586D3
P 3450 1650
F 0 "JP3" H 3200 1775 50  0000 C CNN
F 1 "Select B In" H 3450 1575 50  0000 C CNN
F 2 "" H 3450 1650 50  0001 C CNN
F 3 "~" H 3450 1650 50  0001 C CNN
	1    3450 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:D D2
U 1 1 5F2586D9
P 2850 1650
F 0 "D2" H 2775 1825 50  0000 R CNN
F 1 "1N4918" H 2975 1750 50  0000 R CNN
F 2 "" H 2850 1650 50  0001 C CNN
F 3 "~" H 2850 1650 50  0001 C CNN
	1    2850 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 800  3150 800 
Wire Wire Line
	2700 1650 2200 1650
Wire Wire Line
	3000 1650 3150 1650
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
Wire Wire Line
	5875 1950 5250 1950
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
Text GLabel 4025 1525 2    50   Input ~ 0
SerialTapB
Wire Wire Line
	4025 650  3900 650 
Wire Wire Line
	3900 650  3900 800 
Wire Wire Line
	3900 800  4450 800 
Wire Wire Line
	4025 1525 3900 1525
Wire Wire Line
	3900 1525 3900 1650
Connection ~ 3900 1650
Wire Wire Line
	3900 1650 3750 1650
Connection ~ 3900 800 
Wire Wire Line
	5250 1650 4450 1650
Text Notes 575  1300 0    50   ~ 0
JP1 - Snoop on LDP Commands\n          sent from the Apple ][\n\nJP2 - Micro can send to the LDP\n\nJP3 - Snoop on LDP Responses “R”\n\nJP4 - Micro can send to the Apple ][\n          (for ADTPro, etc)
Text Notes 6475 4425 0    50   Italic 0
This circuit uses a PNP transistor since that’s what I had.\nThis is an adaptation of a few circuits I found with NPN transistors.\nThe video switch circuit can be repeated as many times as you want.
Text Notes 5725 5850 0    50   Italic 0
Arduino UNO used since I had a spare.\nAny Arduino (Leonardo, Mega, Micro, etc)\nor other micro (PIC) can be used.
Connection ~ 5875 800 
$Comp
L Device:Jumper JP2
U 1 1 5F1DA2ED
P 3800 1150
F 0 "JP2" H 3550 1275 50  0000 C CNN
F 1 "Select A Out" H 3800 1075 50  0000 C CNN
F 2 "" H 3800 1150 50  0001 C CNN
F 3 "~" H 3800 1150 50  0001 C CNN
	1    3800 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP4
U 1 1 5F1DB0BF
P 3825 2000
F 0 "JP4" H 3575 2125 50  0000 C CNN
F 1 "Select B Out" H 3825 1925 50  0000 C CNN
F 2 "" H 3825 2000 50  0001 C CNN
F 3 "~" H 3825 2000 50  0001 C CNN
	1    3825 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 2775 2400 2000
Wire Wire Line
	2400 1150 3500 1150
Wire Wire Line
	3525 2000 2400 2000
Wire Wire Line
	4100 1150 4450 1150
Wire Wire Line
	4450 1150 4450 800 
Connection ~ 4450 800 
Wire Wire Line
	4450 800  5875 800 
Wire Wire Line
	4125 2000 4450 2000
Wire Wire Line
	4450 2000 4450 1650
Connection ~ 4450 1650
Wire Wire Line
	4450 1650 3900 1650
Text Notes 4600 1050 0    50   ~ 0
From ][c\nTo LDP\n(LDP Commands)
Text Notes 4575 1925 0    50   ~ 0
From LDP\nTo ][c\n(LDP Responses)
Text Notes 675  2275 0    50   ~ 0
       VS    AD   LD\nJP1:  ON    ON   OFF\nJP2:  OFF   OFF  ON\nJP3:  ON    OFF  ON\nJP4:  OFF   ON   OFF\n\nVS: Video Switch Mode\nAD: ADTPro Mode  (Unplug LDP)\nLD: LDP Command Mode (Unplug ][c)
Text Notes 2100 3925 0    50   ~ 0
6 DSR\n7 RTS\n8 CTS\n9 RI
Wire Wire Line
	4600 3750 3800 3750
$Comp
L power:GNDS #PWR?
U 1 1 5F278061
P 6650 2450
F 0 "#PWR?" H 6650 2200 50  0001 C CNN
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
L power:GNDS #PWR?
U 1 1 5F284244
P 3700 6300
F 0 "#PWR?" H 3700 6050 50  0001 C CNN
F 1 "GNDS" V 3705 6172 50  0000 R CNN
F 2 "" H 3700 6300 50  0001 C CNN
F 3 "" H 3700 6300 50  0001 C CNN
	1    3700 6300
	0    -1   -1   0   
$EndComp
Connection ~ 6650 2300
Connection ~ 2200 1650
Wire Wire Line
	2200 1650 2200 2775
Connection ~ 2400 2000
Wire Wire Line
	5250 1650 5250 1950
Wire Wire Line
	2200 800  2200 1650
Wire Wire Line
	2400 1150 2400 2000
Text Notes 6275 6725 0    50   Italic 0
Component Notes:\n- D1, D2, D3, D4 can be any similar diodes\n- Q1, Q2 can be any switching PNP transistor
$EndSCHEMATC
