EESchema Schematic File Version 4
LIBS:ServoRelais-cache
EELAYER 26 0
EELAYER END
$Descr User 7874 5119
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
Text Label 1600 1250 2    50   ~ 0
PGD
Text Label 1600 1450 2    50   ~ 0
PGC
Text Label 2800 1250 0    50   ~ 0
Vpp
$Comp
L Connector:Conn_01x03_Female J1
U 1 1 5FAAD2A2
P 850 1350
F 0 "J1" H 744 1025 50  0000 C CNN
F 1 "Conn_01x03_Female" H 850 1150 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-03_03x2.54mm_Straight" H 850 1350 50  0001 C CNN
F 3 "~" H 850 1350 50  0001 C CNN
	1    850  1350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5FAAD364
P 1050 1450
F 0 "#PWR0101" H 1050 1200 50  0001 C CNN
F 1 "GND" H 1055 1277 50  0000 C CNN
F 2 "" H 1050 1450 50  0001 C CNN
F 3 "" H 1050 1450 50  0001 C CNN
	1    1050 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1250 1100 1250
$Comp
L power:GND #PWR0103
U 1 1 5FAAD403
P 2200 1950
F 0 "#PWR0103" H 2200 1700 50  0001 C CNN
F 1 "GND" H 2205 1777 50  0000 C CNN
F 2 "" H 2200 1950 50  0001 C CNN
F 3 "" H 2200 1950 50  0001 C CNN
	1    2200 1950
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
L power:GND #PWR0110
U 1 1 5FAAD9FE
P 3600 1750
F 0 "#PWR0110" H 3600 1500 50  0001 C CNN
F 1 "GND" H 3750 1700 50  0000 C CNN
F 2 "" H 3600 1750 50  0001 C CNN
F 3 "" H 3600 1750 50  0001 C CNN
	1    3600 1750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J3
U 1 1 5FAADA7D
P 5850 1150
F 0 "J3" H 5800 950 50  0000 C CNN
F 1 "Conn_01x02_Female" V 5900 1200 50  0000 C CNN
F 2 "Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 5850 1150 50  0001 C CNN
F 3 "~" H 5850 1150 50  0001 C CNN
	1    5850 1150
	1    0    0    1   
$EndComp
$Comp
L Device:C C1
U 1 1 5FAAF3D2
P 900 2900
F 0 "C1" H 1015 2946 50  0000 L CNN
F 1 "100n" H 1015 2855 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 938 2750 50  0001 C CNN
F 3 "~" H 900 2900 50  0001 C CNN
	1    900  2900
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5FAAF4A0
P 1350 2900
F 0 "C2" H 1468 2946 50  0000 L CNN
F 1 "4.7u" H 1468 2855 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D4.0mm_P1.50mm" H 1388 2750 50  0001 C CNN
F 3 "~" H 1350 2900 50  0001 C CNN
	1    1350 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  3050 1150 3050
$Comp
L power:GND #PWR0112
U 1 1 5FAAF6AE
P 1150 3050
F 0 "#PWR0112" H 1150 2800 50  0001 C CNN
F 1 "GND" H 1155 2877 50  0000 C CNN
F 2 "" H 1150 3050 50  0001 C CNN
F 3 "" H 1150 3050 50  0001 C CNN
	1    1150 3050
	1    0    0    -1  
$EndComp
Connection ~ 1150 3050
Wire Wire Line
	1150 3050 1350 3050
$Comp
L MCU_Microchip_PIC10:PIC10F320-IP U2
U 1 1 5FABC240
P 2200 1350
F 0 "U2" H 2000 1900 50  0000 C CNN
F 1 "PIC10F320-IP" H 1900 1800 50  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_LongPads" H 2250 2000 50  0001 L CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/41585A.pdf" H 2200 1350 50  0001 C CNN
	1    2200 1350
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
	3350 2400 3350 3000
Wire Notes Line
	3350 3000 4150 3000
Wire Notes Line
	4150 3000 4150 2400
Wire Notes Line
	4150 2400 3350 2400
Wire Notes Line
	500  500  3200 500 
Wire Notes Line
	3200 500  3200 2200
Wire Notes Line
	3200 2200 500  2200
Wire Notes Line
	500  2200 500  500 
$Comp
L Connector:Conn_01x03_Female J4
U 1 1 5FAC0FFE
P 700 1400
F 0 "J4" H 750 1400 50  0000 C CNN
F 1 "Conn_01x03_Female" H 500 1750 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-03_03x2.54mm_Straight" H 700 1400 50  0001 C CNN
F 3 "~" H 700 1400 50  0001 C CNN
	1    700  1400
	-1   0    0    1   
$EndComp
Wire Wire Line
	900  1300 1100 1300
Wire Wire Line
	1100 1300 1100 1250
Wire Wire Line
	900  1400 1050 1400
Wire Wire Line
	1050 1400 1050 1350
Wire Wire Line
	1050 1500 1050 1450
Wire Wire Line
	900  1500 1050 1500
Connection ~ 1050 1450
Text Label 1600 1550 2    50   ~ 0
RELAIS_ON
Wire Wire Line
	1600 1550 1600 1450
Text Label 3450 1450 1    50   ~ 0
RELAIS_ON
Wire Notes Line
	3250 500  3250 2200
Wire Notes Line
	3250 2200 6100 2200
Wire Notes Line
	6100 2200 6100 500 
Wire Notes Line
	6100 500  3250 500 
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5FAD1E15
P 2800 1600
F 0 "JP1" V 2754 1668 50  0000 L CNN
F 1 "Config" V 2845 1668 50  0000 L CNN
F 2 "Connect:GS2" H 2800 1600 50  0001 C CNN
F 3 "~" H 2800 1600 50  0001 C CNN
	1    2800 1600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5FAD1E8A
P 2800 1750
F 0 "#PWR0115" H 2800 1500 50  0001 C CNN
F 1 "GND" H 2805 1577 50  0000 C CNN
F 2 "" H 2800 1750 50  0001 C CNN
F 3 "" H 2800 1750 50  0001 C CNN
	1    2800 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5FAE5A28
P 1300 1250
F 0 "R2" V 1200 1250 50  0000 C CNN
F 1 "470" V 1300 1250 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1230 1250 50  0001 C CNN
F 3 "~" H 1300 1250 50  0001 C CNN
	1    1300 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	1100 1250 1150 1250
Connection ~ 1100 1250
Wire Wire Line
	1450 1250 1600 1250
$Comp
L Device:R R3
U 1 1 5FAE63BB
P 5050 1250
F 0 "R3" V 5150 1350 50  0000 C CNN
F 1 "2.2k" V 5150 1150 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4980 1250 50  0001 C CNN
F 3 "~" H 5050 1250 50  0001 C CNN
	1    5050 1250
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D1
U 1 1 5FAE68AF
P 5050 1600
F 0 "D1" H 5150 1550 50  0000 C CNN
F 1 "LED" H 5100 1700 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 5050 1600 50  0001 C CNN
F 3 "~" H 5050 1600 50  0001 C CNN
	1    5050 1600
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_FET:IRLB8721PBF Q2
U 1 1 5FB262E7
P 5400 1100
F 0 "Q2" H 5350 1450 50  0000 L CNN
F 1 "IRLB8721PBF" H 5200 1350 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:TO-252-2" H 5650 1025 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/irlb8721pbf.pdf?fileId=5546d462533600a40153566056732591" H 5400 1100 50  0001 L CNN
	1    5400 1100
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:IRLB8721PBF Q1
U 1 1 5FB26337
P 3650 1450
F 0 "Q1" H 3855 1496 50  0000 L CNN
F 1 "IRLB8721PBF" H 3855 1405 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:TO-252-2" H 3900 1375 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/irlb8721pbf.pdf?fileId=5546d462533600a40153566056732591" H 3650 1450 50  0001 L CNN
	1    3650 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5FB28A6B
P 5150 1250
F 0 "R4" V 5050 1350 50  0000 C CNN
F 1 "1k" V 5050 1200 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5080 1250 50  0001 C CNN
F 3 "~" H 5150 1250 50  0001 C CNN
	1    5150 1250
	-1   0    0    1   
$EndComp
$Comp
L power:GNDPWR #PWR0116
U 1 1 5FB2966B
P 5350 1750
F 0 "#PWR0116" H 5350 1550 50  0001 C CNN
F 1 "GNDPWR" H 5354 1596 50  0000 C CNN
F 2 "" H 5350 1700 50  0001 C CNN
F 3 "" H 5350 1700 50  0001 C CNN
	1    5350 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5FB29972
P 3450 1600
F 0 "R1" V 3550 1650 50  0000 C CNN
F 1 "1k" V 3550 1500 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3380 1600 50  0001 C CNN
F 3 "~" H 3450 1600 50  0001 C CNN
	1    3450 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	3750 1650 3750 1750
Wire Wire Line
	3750 1750 3600 1750
Wire Wire Line
	3450 1750 3600 1750
Connection ~ 3600 1750
Wire Wire Line
	4750 1250 4750 1750
Wire Wire Line
	5050 1750 5150 1750
Wire Wire Line
	5500 1750 5500 1300
Wire Wire Line
	5050 1400 5050 1450
Wire Wire Line
	5150 1400 5150 1750
Connection ~ 5150 1750
Wire Wire Line
	5150 1750 5350 1750
Wire Wire Line
	5200 1100 5150 1100
Wire Wire Line
	5150 1100 5050 1100
Connection ~ 5150 1100
Connection ~ 5350 1750
Wire Wire Line
	5350 1750 5500 1750
Wire Wire Line
	5650 1150 5650 1750
Wire Wire Line
	5650 1750 5500 1750
Connection ~ 5500 1750
Wire Wire Line
	5650 1050 5650 900 
Wire Wire Line
	5650 900  5500 900 
$Comp
L power:+3.3V #PWR02
U 1 1 5FB3FC34
P 1150 2750
F 0 "#PWR02" H 1150 2600 50  0001 C CNN
F 1 "+3.3V" H 1165 2923 50  0000 C CNN
F 2 "" H 1150 2750 50  0001 C CNN
F 3 "" H 1150 2750 50  0001 C CNN
	1    1150 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  2750 1150 2750
Connection ~ 1150 2750
Wire Wire Line
	1150 2750 1350 2750
$Comp
L power:+3.3V #PWR01
U 1 1 5FB4090A
P 1050 1350
F 0 "#PWR01" H 1050 1200 50  0001 C CNN
F 1 "+3.3V" V 1065 1478 50  0000 L CNN
F 2 "" H 1050 1350 50  0001 C CNN
F 3 "" H 1050 1350 50  0001 C CNN
	1    1050 1350
	0    1    1    0   
$EndComp
Connection ~ 1050 1350
$Comp
L power:+3.3V #PWR03
U 1 1 5FB4095D
P 2200 750
F 0 "#PWR03" H 2200 600 50  0001 C CNN
F 1 "+3.3V" H 2215 923 50  0000 C CNN
F 2 "" H 2200 750 50  0001 C CNN
F 3 "" H 2200 750 50  0001 C CNN
	1    2200 750 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR04
U 1 1 5FB40A3A
P 3750 1100
F 0 "#PWR04" H 3750 950 50  0001 C CNN
F 1 "+3.3V" H 3765 1273 50  0000 C CNN
F 2 "" H 3750 1100 50  0001 C CNN
F 3 "" H 3750 1100 50  0001 C CNN
	1    3750 1100
	1    0    0    -1  
$EndComp
$Comp
L ServoRelais:MurataMEE1 U1
U 1 1 5FB3FB31
P 4250 900
F 0 "U1" H 4250 965 50  0000 C CNN
F 1 "MEE1-0309" H 4250 874 50  0000 C CNN
F 2 "Converters_DCDC_ACDC:DCDC-Conv_muRata_CRE1xxxxxxSC" H 4250 900 50  0001 C CNN
F 3 "" H 4250 900 50  0001 C CNN
	1    4250 900 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0102
U 1 1 5FB41C76
P 3700 2600
F 0 "#PWR0102" H 3700 2450 50  0001 C CNN
F 1 "+3.3V" V 3700 2800 50  0000 C CNN
F 2 "" H 3700 2600 50  0001 C CNN
F 3 "" H 3700 2600 50  0001 C CNN
	1    3700 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C3
U 1 1 5FB434BB
P 4850 1450
F 0 "C3" H 4750 1550 50  0000 L CNN
F 1 "100n" H 4650 1350 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 4888 1300 50  0001 C CNN
F 3 "~" H 4850 1450 50  0001 C CNN
	1    4850 1450
	1    0    0    -1  
$EndComp
Connection ~ 5050 1100
Wire Wire Line
	4750 1100 4850 1100
Connection ~ 5050 1750
Wire Wire Line
	4750 1750 4850 1750
Wire Wire Line
	4850 1300 4850 1100
Connection ~ 4850 1100
Wire Wire Line
	4850 1100 5050 1100
Wire Wire Line
	4850 1600 4850 1750
Connection ~ 4850 1750
Wire Wire Line
	4850 1750 5050 1750
$EndSCHEMATC
