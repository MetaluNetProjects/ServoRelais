EESchema Schematic File Version 4
LIBS:ServoRelais-cache
EELAYER 26 0
EELAYER END
$Descr User 5906 5119
encoding utf-8
Sheet 1 1
Title "ServoRelais"
Date "2020-11-12"
Rev "1"
Comp "metalu.net"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_01x05_Female J2
U 1 1 5FAAD158
P 3900 2700
F 0 "J2" H 3928 2726 50  0000 L CNN
F 1 "ISCP" H 3928 2635 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05_Pitch2.54mm" H 3900 2700 50  0001 C CNN
F 3 "~" H 3900 2700 50  0001 C CNN
	1    3900 2700
	1    0    0    -1  
$EndComp
Text Label 3700 2500 2    50   ~ 0
Vpp
Text Label 3700 2800 2    50   ~ 0
PGD
Text Label 3700 2900 2    50   ~ 0
PGC
Text Label 1800 1350 2    50   ~ 0
PGD
Text Label 1800 1550 2    50   ~ 0
PGC
Text Label 3000 1350 0    50   ~ 0
Vpp
$Comp
L Connector:Conn_01x03_Female J1
U 1 1 5FAAD2A2
P 1050 1450
F 0 "J1" H 944 1125 50  0000 C CNN
F 1 "Conn_01x03_Female" H 1050 1250 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-03_03x2.54mm_Straight" H 1050 1450 50  0001 C CNN
F 3 "~" H 1050 1450 50  0001 C CNN
	1    1050 1450
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5FAAD364
P 1250 1550
F 0 "#PWR0101" H 1250 1300 50  0001 C CNN
F 1 "GND" H 1255 1377 50  0000 C CNN
F 2 "" H 1250 1550 50  0001 C CNN
F 3 "" H 1250 1550 50  0001 C CNN
	1    1250 1550
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0102
U 1 1 5FAAD3B9
P 1250 1450
F 0 "#PWR0102" H 1250 1300 50  0001 C CNN
F 1 "VCC" V 1267 1578 50  0000 L CNN
F 2 "" H 1250 1450 50  0001 C CNN
F 3 "" H 1250 1450 50  0001 C CNN
	1    1250 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 1350 1300 1350
$Comp
L power:GND #PWR0103
U 1 1 5FAAD403
P 2400 2050
F 0 "#PWR0103" H 2400 1800 50  0001 C CNN
F 1 "GND" H 2405 1877 50  0000 C CNN
F 2 "" H 2400 2050 50  0001 C CNN
F 3 "" H 2400 2050 50  0001 C CNN
	1    2400 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5FAAD507
P 1900 3050
F 0 "#PWR0104" H 1900 2800 50  0001 C CNN
F 1 "GND" H 1905 2877 50  0000 C CNN
F 2 "" H 1900 3050 50  0001 C CNN
F 3 "" H 1900 3050 50  0001 C CNN
	1    1900 3050
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0105
U 1 1 5FAAD51A
P 1600 2750
F 0 "#PWR0105" H 1600 2600 50  0001 C CNN
F 1 "VCC" V 1650 2800 50  0000 L CNN
F 2 "" H 1600 2750 50  0001 C CNN
F 3 "" H 1600 2750 50  0001 C CNN
	1    1600 2750
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 5FAAD590
P 2200 2750
F 0 "#PWR0106" H 2200 2600 50  0001 C CNN
F 1 "+5V" V 2150 2800 50  0000 L CNN
F 2 "" H 2200 2750 50  0001 C CNN
F 3 "" H 2200 2750 50  0001 C CNN
	1    2200 2750
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 5FAAD5AE
P 2400 850
F 0 "#PWR0107" H 2400 700 50  0001 C CNN
F 1 "+5V" H 2400 1000 50  0000 C CNN
F 2 "" H 2400 850 50  0001 C CNN
F 3 "" H 2400 850 50  0001 C CNN
	1    2400 850 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5FAAD643
P 3700 2700
F 0 "#PWR0108" H 3700 2450 50  0001 C CNN
F 1 "GND" V 3705 2572 50  0000 R CNN
F 2 "" H 3700 2700 50  0001 C CNN
F 3 "" H 3700 2700 50  0001 C CNN
	1    3700 2700
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 5FAAD65A
P 3700 2600
F 0 "#PWR0109" H 3700 2450 50  0001 C CNN
F 1 "+5V" H 3700 2750 50  0000 C CNN
F 2 "" H 3700 2600 50  0001 C CNN
F 3 "" H 3700 2600 50  0001 C CNN
	1    3700 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5FAAD8C6
P 3950 1200
F 0 "R1" V 3850 1200 50  0000 C CNN
F 1 "330" V 4050 1200 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3880 1200 50  0001 C CNN
F 3 "~" H 3950 1200 50  0001 C CNN
	1    3950 1200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5FAAD9FE
P 4000 1400
F 0 "#PWR0110" H 4000 1150 50  0001 C CNN
F 1 "GND" H 3900 1250 50  0000 C CNN
F 2 "" H 4000 1400 50  0001 C CNN
F 3 "" H 4000 1400 50  0001 C CNN
	1    4000 1400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J3
U 1 1 5FAADA7D
P 5100 1300
F 0 "J3" H 4993 975 50  0000 C CNN
F 1 "Conn_01x02_Female" V 5150 1350 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 5100 1300 50  0001 C CNN
F 3 "~" H 5100 1300 50  0001 C CNN
	1    5100 1300
	1    0    0    1   
$EndComp
$Comp
L ServoRelais-rescue:ASSR-1611-ServoRelais U3
U 1 1 5FAAEFDE
P 4400 1300
F 0 "U3" H 4400 1625 50  0000 C CNN
F 1 "ASSR-1611" H 4400 1534 50  0000 C CNN
F 2 "Housings_DIP:DIP-6_W7.62mm_LongPads" H 4700 900 50  0001 L CIN
F 3 "" H 4350 1300 50  0001 L CNN
	1    4400 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 1400 4000 1400
Wire Wire Line
	4700 1200 4750 1200
Wire Wire Line
	4750 1200 4750 1400
Wire Wire Line
	4750 1400 4700 1400
Wire Wire Line
	4900 1200 4750 1200
Connection ~ 4750 1200
Wire Wire Line
	4700 1300 4900 1300
$Comp
L Device:C C1
U 1 1 5FAAF3D2
P 2550 2850
F 0 "C1" H 2665 2896 50  0000 L CNN
F 1 "100n" H 2665 2805 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 2588 2700 50  0001 C CNN
F 3 "~" H 2550 2850 50  0001 C CNN
	1    2550 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5FAAF4A0
P 3000 2850
F 0 "C2" H 3118 2896 50  0000 L CNN
F 1 "4.7u" H 3118 2805 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D4.0mm_P1.50mm" H 3038 2700 50  0001 C CNN
F 3 "~" H 3000 2850 50  0001 C CNN
	1    3000 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 2700 2800 2700
Wire Wire Line
	2550 3000 2800 3000
$Comp
L power:+5V #PWR0111
U 1 1 5FAAF674
P 2800 2700
F 0 "#PWR0111" H 2800 2550 50  0001 C CNN
F 1 "+5V" H 2815 2873 50  0000 C CNN
F 2 "" H 2800 2700 50  0001 C CNN
F 3 "" H 2800 2700 50  0001 C CNN
	1    2800 2700
	1    0    0    -1  
$EndComp
Connection ~ 2800 2700
Wire Wire Line
	2800 2700 3000 2700
$Comp
L power:GND #PWR0112
U 1 1 5FAAF6AE
P 2800 3000
F 0 "#PWR0112" H 2800 2750 50  0001 C CNN
F 1 "GND" H 2805 2827 50  0000 C CNN
F 2 "" H 2800 3000 50  0001 C CNN
F 3 "" H 2800 3000 50  0001 C CNN
	1    2800 3000
	1    0    0    -1  
$EndComp
Connection ~ 2800 3000
Wire Wire Line
	2800 3000 3000 3000
$Comp
L Device:CP C3
U 1 1 5FAAF85B
P 850 2850
F 0 "C3" H 968 2896 50  0000 L CNN
F 1 "10u" H 968 2805 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D4.0mm_P1.50mm" H 888 2700 50  0001 C CNN
F 3 "~" H 850 2850 50  0001 C CNN
	1    850  2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5FAAF895
P 850 3000
F 0 "#PWR0113" H 850 2750 50  0001 C CNN
F 1 "GND" H 855 2827 50  0000 C CNN
F 2 "" H 850 3000 50  0001 C CNN
F 3 "" H 850 3000 50  0001 C CNN
	1    850  3000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0114
U 1 1 5FAAF8B4
P 850 2700
F 0 "#PWR0114" H 850 2550 50  0001 C CNN
F 1 "VCC" H 867 2873 50  0000 C CNN
F 2 "" H 850 2700 50  0001 C CNN
F 3 "" H 850 2700 50  0001 C CNN
	1    850  2700
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_PIC10:PIC10F320-IP U2
U 1 1 5FABC240
P 2400 1450
F 0 "U2" H 2200 2000 50  0000 C CNN
F 1 "PIC10F320-IP" H 2100 1900 50  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_LongPads" H 2450 2100 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/41585A.pdf" H 2400 1450 50  0001 C CNN
	1    2400 1450
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L78L05_SOT89 U1
U 1 1 5FABC9C1
P 1900 2750
F 0 "U1" H 1900 2992 50  0000 C CNN
F 1 "L78L05_SOT89" H 1900 2901 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-89-3_Handsoldering" H 1900 2950 50  0001 C CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/15/55/e5/aa/23/5b/43/fd/CD00000446.pdf/files/CD00000446.pdf/jcr:content/translations/en.CD00000446.pdf" H 1900 2700 50  0001 C CNN
	1    1900 2750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5FABD6D3
P 4450 2800
F 0 "H2" H 4550 2846 50  0000 L CNN
F 1 "MountingHole" H 4550 2755 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 4450 2800 50  0001 C CNN
F 3 "~" H 4450 2800 50  0001 C CNN
	1    4450 2800
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5FABD73B
P 4450 2550
F 0 "H1" H 4550 2596 50  0000 L CNN
F 1 "MountingHole" H 4550 2505 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3" H 4450 2550 50  0001 C CNN
F 3 "~" H 4450 2550 50  0001 C CNN
	1    4450 2550
	1    0    0    -1  
$EndComp
Wire Notes Line
	700  2400 3300 2400
Wire Notes Line
	3300 2400 3300 3300
Wire Notes Line
	3300 3300 700  3300
Wire Notes Line
	700  3300 700  2400
Wire Notes Line
	4250 2400 5100 2400
Wire Notes Line
	5100 2400 5100 2950
Wire Notes Line
	5100 2950 4250 2950
Wire Notes Line
	4250 2950 4250 2400
Wire Notes Line
	3400 2400 3400 3000
Wire Notes Line
	3400 3000 4150 3000
Wire Notes Line
	4150 3000 4150 2400
Wire Notes Line
	4150 2400 3400 2400
Wire Notes Line
	700  600  3400 600 
Wire Notes Line
	3400 600  3400 2300
Wire Notes Line
	3400 2300 700  2300
Wire Notes Line
	700  2300 700  600 
$Comp
L Connector:Conn_01x03_Female J4
U 1 1 5FAC0FFE
P 900 1500
F 0 "J4" H 950 1500 50  0000 C CNN
F 1 "Conn_01x03_Female" H 700 1850 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-03_03x2.54mm_Straight" H 900 1500 50  0001 C CNN
F 3 "~" H 900 1500 50  0001 C CNN
	1    900  1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	1100 1400 1300 1400
Wire Wire Line
	1300 1400 1300 1350
Wire Wire Line
	1100 1500 1250 1500
Wire Wire Line
	1250 1500 1250 1450
Connection ~ 1250 1450
Wire Wire Line
	1250 1600 1250 1550
Wire Wire Line
	1100 1600 1250 1600
Connection ~ 1250 1550
Text Label 1800 1650 2    50   ~ 0
RELAIS_ON
Wire Wire Line
	1800 1650 1800 1550
Text Label 3800 1200 1    50   ~ 0
RELAIS_ON
Wire Notes Line
	3700 600  3700 2300
Wire Notes Line
	3700 2300 5350 2300
Wire Notes Line
	5350 2300 5350 600 
Wire Notes Line
	5350 600  3700 600 
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5FAD1E15
P 3000 1700
F 0 "JP1" V 2954 1768 50  0000 L CNN
F 1 "Config" V 3045 1768 50  0000 L CNN
F 2 "Connect:GS2" H 3000 1700 50  0001 C CNN
F 3 "~" H 3000 1700 50  0001 C CNN
	1    3000 1700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5FAD1E8A
P 3000 1850
F 0 "#PWR0115" H 3000 1600 50  0001 C CNN
F 1 "GND" H 3005 1677 50  0000 C CNN
F 2 "" H 3000 1850 50  0001 C CNN
F 3 "" H 3000 1850 50  0001 C CNN
	1    3000 1850
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5FAD3A5B
P 850 3000
F 0 "#FLG0101" H 850 3075 50  0001 C CNN
F 1 "PWR_FLAG" V 850 3128 50  0000 L CNN
F 2 "" H 850 3000 50  0001 C CNN
F 3 "~" H 850 3000 50  0001 C CNN
	1    850  3000
	0    1    1    0   
$EndComp
Connection ~ 850  3000
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5FAD3AFB
P 850 2700
F 0 "#FLG0102" H 850 2775 50  0001 C CNN
F 1 "PWR_FLAG" V 800 2750 50  0000 L CNN
F 2 "" H 850 2700 50  0001 C CNN
F 3 "~" H 850 2700 50  0001 C CNN
	1    850  2700
	0    1    1    0   
$EndComp
Connection ~ 850  2700
$Comp
L Device:R R2
U 1 1 5FAE5A28
P 1500 1350
F 0 "R2" V 1400 1350 50  0000 C CNN
F 1 "470" V 1500 1350 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1430 1350 50  0001 C CNN
F 3 "~" H 1500 1350 50  0001 C CNN
	1    1500 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 1350 1350 1350
Connection ~ 1300 1350
Wire Wire Line
	1650 1350 1800 1350
$Comp
L Device:R R3
U 1 1 5FAE63BB
P 4000 2050
F 0 "R3" V 3900 2050 50  0000 C CNN
F 1 "1k" V 4100 2050 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3930 2050 50  0001 C CNN
F 3 "~" H 4000 2050 50  0001 C CNN
	1    4000 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 1200 3800 2050
Wire Wire Line
	3800 2050 3850 2050
$Comp
L Device:LED D1
U 1 1 5FAE68AF
P 4300 2050
F 0 "D1" H 4292 1795 50  0000 C CNN
F 1 "LED" H 4292 1886 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 4300 2050 50  0001 C CNN
F 3 "~" H 4300 2050 50  0001 C CNN
	1    4300 2050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 5FAE6927
P 4450 2050
F 0 "#PWR0116" H 4450 1800 50  0001 C CNN
F 1 "GND" H 4350 1900 50  0000 C CNN
F 2 "" H 4450 2050 50  0001 C CNN
F 3 "" H 4450 2050 50  0001 C CNN
	1    4450 2050
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
