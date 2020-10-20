EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 15 17
Title "CANnect Reader | Single Wire CAN Transceiver"
Date "2020-10-20"
Rev "0.0.1"
Comp "CANtech"
Comment1 "Created by Choong Jin Ng | jin8383@gmail.com"
Comment2 "Taken from STN21xx's datasheet for recommended configuration"
Comment3 ""
Comment4 "Component Identifier: SWCAN"
$EndDescr
Text HLabel 1550 2650 0    50   BiDi ~ 0
SW_CAN
Text HLabel 9650 2550 2    50   Input ~ 0
SW_CAN_TX
Text HLabel 9650 2850 2    50   Output ~ 0
SW_CAN_RX
Text HLabel 9650 2650 2    50   Input ~ 0
SW_CAN_MODE0
Text HLabel 9650 2750 2    50   Input ~ 0
SW_CAN_MODE1
$Comp
L TH8056KDCAAA014RE:TH8056KDC-AAA-014-RE IC6
U 1 1 5FBCC1E0
P 7150 2450
F 0 "IC6" H 8350 2837 60  0000 C CNN
F 1 "TH8056KDC-AAA-014-RE" H 8350 2731 60  0000 C CNN
F 2 "footprints:TH8056KDC-AAA-014-RE" H 8350 2690 60  0001 C CNN
F 3 "" H 7150 2450 60  0000 C CNN
	1    7150 2450
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C_SWCAN_1
U 1 1 5FBCCFA6
P 2050 3050
F 0 "C_SWCAN_1" H 2165 3096 50  0000 L CNN
F 1 "150pF" H 2165 3005 50  0000 L CNN
F 2 "footprints:CAPC1005X55N" H 2088 2900 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/mlcc/UPY-GP_NP0_16V-to-50V_18.pdf" H 2050 3050 50  0001 C CNN
	1    2050 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2650 2050 2650
Wire Wire Line
	2050 2650 2050 2900
Connection ~ 2050 2650
$Comp
L power:GND #PWR0182
U 1 1 5FBCD97D
P 2050 3550
F 0 "#PWR0182" H 2050 3300 50  0001 C CNN
F 1 "GND" H 2055 3377 50  0000 C CNN
F 2 "" H 2050 3550 50  0001 C CNN
F 3 "" H 2050 3550 50  0001 C CNN
	1    2050 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0183
U 1 1 5FBCDB6B
P 3650 4500
F 0 "#PWR0183" H 3650 4250 50  0001 C CNN
F 1 "GND" H 3655 4327 50  0000 C CNN
F 2 "" H 3650 4500 50  0001 C CNN
F 3 "" H 3650 4500 50  0001 C CNN
	1    3650 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3200 2050 3550
$Comp
L Device:R_Small R_SWCAN_6
U 1 1 5FBCE6CE
P 2650 4100
F 0 "R_SWCAN_6" H 2709 4146 50  0000 L CNN
F 1 "130" H 2709 4055 50  0000 L CNN
F 2 "footprints:RESC0603X26N" H 2650 4100 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 2650 4100 50  0001 C CNN
F 4 "RC0201FR-07130RL" H 2650 4100 50  0001 C CNN "Part Name"
	1    2650 4100
	1    0    0    -1  
$EndComp
Text HLabel 1550 4700 0    50   BiDi ~ 0
SW_CAN_LOAD
$Comp
L NX7002AK_215:NX7002AK,215 Q_SWCAN_1
U 1 1 5FBCED49
P 2550 4600
F 0 "Q_SWCAN_1" H 2748 4596 50  0000 L CNN
F 1 "NX7002AK,215" H 2748 4505 50  0000 L CNN
F 2 "footprints:RESC0603X26N" H 2550 4600 50  0001 L BNN
F 3 "1.1mm" H 2550 4600 50  0001 L BNN
F 4 "Nexperia" H 2550 4600 50  0001 L BNN "Field4"
F 5 "7" H 2550 4600 50  0001 L BNN "Field5"
F 6 "IPC-7351B" H 2550 4600 50  0001 L BNN "Field6"
	1    2550 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R_SWCAN_7
U 1 1 5FBCFFA6
P 2000 4950
F 0 "R_SWCAN_7" H 2059 4996 50  0000 L CNN
F 1 "10k" H 2059 4905 50  0000 L CNN
F 2 "footprints:RESC1608X55N" H 2000 4950 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RT_1-to-0.01_RoHS_L_12.pdf" H 2000 4950 50  0001 C CNN
F 4 "RT0603FRE0710KL" H 2000 4950 50  0001 C CNN "Part Name"
	1    2000 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 4700 2000 4700
Wire Wire Line
	2000 4850 2000 4700
Connection ~ 2000 4700
Wire Wire Line
	2000 4700 2350 4700
Wire Wire Line
	2650 4400 2650 4200
Wire Wire Line
	2050 2650 2650 2650
$Comp
L Device:Jumper_NO_Small JP_SWCAN_1
U 1 1 5FBD0A1B
P 2650 3400
F 0 "JP_SWCAN_1" V 2604 3448 50  0000 L CNN
F 1 "Jumper_NO_Small" V 2695 3448 50  0000 L CNN
F 2 "" H 2650 3400 50  0001 C CNN
F 3 "~" H 2650 3400 50  0001 C CNN
	1    2650 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 3300 2650 2650
Connection ~ 2650 2650
Wire Wire Line
	2650 2650 2850 2650
Wire Wire Line
	2650 3500 2650 4000
$Comp
L power:GND #PWR0184
U 1 1 5FBD183F
P 2650 5200
F 0 "#PWR0184" H 2650 4950 50  0001 C CNN
F 1 "GND" H 2655 5027 50  0000 C CNN
F 2 "" H 2650 5200 50  0001 C CNN
F 3 "" H 2650 5200 50  0001 C CNN
	1    2650 5200
	1    0    0    -1  
$EndComp
Wire Notes Line
	2450 3150 3400 3150
Wire Notes Line
	3400 3150 3400 5600
Wire Notes Line
	3400 5600 950  5600
Wire Notes Line
	950  5600 950  4200
Wire Notes Line
	950  4200 2450 4200
Wire Notes Line
	2450 4200 2450 3150
Text Notes 3050 5550 2    50   ~ 0
High-Speed Load Circuit - Omit this for Read-only
Wire Wire Line
	2650 4900 2650 5100
Wire Wire Line
	2000 5050 2000 5100
Wire Wire Line
	2000 5100 2650 5100
Connection ~ 2650 5100
Wire Wire Line
	2650 5100 2650 5200
$Comp
L Device:R_Small R_SWCAN_1
U 1 1 5FBD3FD7
P 2850 2850
F 0 "R_SWCAN_1" H 2909 2896 50  0000 L CNN
F 1 "6.49k 0.12W" H 2909 2805 50  0000 L CNN
F 2 "footprints:RESC1608X55N" H 2850 2850 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RT_1-to-0.01_RoHS_L_12.pdf" H 2850 2850 50  0001 C CNN
F 4 "RC0805FR-076K49L" H 2850 2850 50  0001 C CNN "Part Name"
	1    2850 2850
	1    0    0    -1  
$EndComp
NoConn ~ 4750 2950
$Comp
L power:GND #PWR0185
U 1 1 5FBD540B
P 6600 3600
F 0 "#PWR0185" H 6600 3350 50  0001 C CNN
F 1 "GND" H 6605 3427 50  0000 C CNN
F 2 "" H 6600 3600 50  0001 C CNN
F 3 "" H 6600 3600 50  0001 C CNN
	1    6600 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0186
U 1 1 5FBD58BC
P 4450 2000
F 0 "#PWR0186" H 4450 1750 50  0001 C CNN
F 1 "GND" H 4455 1827 50  0000 C CNN
F 2 "" H 4450 2000 50  0001 C CNN
F 3 "" H 4450 2000 50  0001 C CNN
	1    4450 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 2450 3900 2450
Wire Wire Line
	3900 2450 3900 1900
Wire Wire Line
	3900 1900 4450 1900
Wire Wire Line
	4450 1900 4450 2000
Wire Wire Line
	2850 2650 2850 2750
Connection ~ 2850 2650
Wire Wire Line
	2850 2650 4750 2650
Wire Wire Line
	2850 2950 2850 3050
Wire Wire Line
	2850 3050 3450 3050
Wire Wire Line
	3450 3050 3450 2750
Wire Wire Line
	3450 2750 4750 2750
$Comp
L Device:C C_SWCAN_2
U 1 1 5FBD6B6E
P 4000 3900
F 0 "C_SWCAN_2" V 3748 3900 50  0000 C CNN
F 1 "4.7uF 25V" V 3839 3900 50  0000 C CNN
F 2 "footprints:C1206C475K3RACAUTO" H 4038 3750 50  0001 C CNN
F 3 "https://api.kemet.com/component-edge/download/specsheet/C1206C475K3RACAUTO.pdf" H 4000 3900 50  0001 C CNN
F 4 "C1206C475K3RACAUTO" H 4000 3900 50  0001 C CNN "Part Name"
	1    4000 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	4150 3900 4250 3900
Wire Wire Line
	4250 3900 4250 2850
$Comp
L power:+12V #PWR0187
U 1 1 5FBD853C
P 4500 3500
F 0 "#PWR0187" H 4500 3350 50  0001 C CNN
F 1 "+12V" H 4515 3673 50  0000 C CNN
F 2 "" H 4500 3500 50  0001 C CNN
F 3 "" H 4500 3500 50  0001 C CNN
	1    4500 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3900 4500 3900
Wire Wire Line
	4500 3900 4500 3500
Connection ~ 4250 3900
Wire Wire Line
	4250 2850 4750 2850
Wire Wire Line
	3650 3050 4750 3050
Wire Wire Line
	3650 3050 3650 3900
Wire Wire Line
	3650 3900 3850 3900
Connection ~ 3650 3900
Wire Wire Line
	3650 3900 3650 4500
$Comp
L power:GND #PWR0188
U 1 1 5FBDCE7D
P 7400 1900
F 0 "#PWR0188" H 7400 1650 50  0001 C CNN
F 1 "GND" H 7405 1727 50  0000 C CNN
F 2 "" H 7400 1900 50  0001 C CNN
F 3 "" H 7400 1900 50  0001 C CNN
	1    7400 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 3050 7150 3400
Wire Wire Line
	7150 3400 6600 3400
Wire Wire Line
	6600 3400 6600 3600
Wire Wire Line
	7150 2450 7250 2450
Wire Wire Line
	7250 2450 7250 1800
Wire Wire Line
	7250 1800 7400 1800
Wire Wire Line
	7400 1800 7400 1900
Wire Wire Line
	7150 2650 7550 2650
$Comp
L power:+5V #PWR0189
U 1 1 5FBE0112
P 8950 1900
F 0 "#PWR0189" H 8950 1750 50  0001 C CNN
F 1 "+5V" H 8965 2073 50  0000 C CNN
F 2 "" H 8950 1900 50  0001 C CNN
F 3 "" H 8950 1900 50  0001 C CNN
	1    8950 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0190
U 1 1 5FBE0764
P 8350 1900
F 0 "#PWR0190" H 8350 1750 50  0001 C CNN
F 1 "+3.3V" H 8365 2073 50  0000 C CNN
F 2 "" H 8350 1900 50  0001 C CNN
F 3 "" H 8350 1900 50  0001 C CNN
	1    8350 1900
	1    0    0    -1  
$EndComp
$Comp
L CANtech:+5V_SW #PWR0191
U 1 1 5FBE0C6A
P 8750 3100
F 0 "#PWR0191" H 8750 3350 50  0001 C CNN
F 1 "+5V_SW" H 8808 3137 50  0000 L CNN
F 2 "" H 8000 3900 50  0001 C CNN
F 3 "" H 8000 3900 50  0001 C CNN
	1    8750 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R_SWCAN_4
U 1 1 5FBE106C
P 7550 3150
F 0 "R_SWCAN_4" H 7491 3104 50  0000 R CNN
F 1 "10k" H 7491 3195 50  0000 R CNN
F 2 "footprints:RESC1608X55N" H 7550 3150 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RT_1-to-0.01_RoHS_L_12.pdf" H 7550 3150 50  0001 C CNN
F 4 "RT0603FRE0710KL" H 7550 3150 50  0001 C CNN "Part Name"
	1    7550 3150
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R_SWCAN_2
U 1 1 5FBE18B8
P 8350 2200
F 0 "R_SWCAN_2" H 8291 2154 50  0000 R CNN
F 1 "1k" H 8291 2245 50  0000 R CNN
F 2 "footprints:RC1608F102CS" H 8350 2200 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Samsung%20PDFs/RC_Series_ds.pdf" H 8350 2200 50  0001 C CNN
F 4 "RC1608F102CS" H 8350 2200 50  0001 C CNN "Part Name"
	1    8350 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	8350 2100 8350 1900
Wire Wire Line
	8950 2100 8950 1900
Wire Wire Line
	8350 2300 8350 2850
Wire Wire Line
	8950 2300 8950 2550
Wire Wire Line
	7550 2650 7550 3050
Wire Wire Line
	7550 3250 7550 3600
Wire Wire Line
	8750 3600 8750 3100
Wire Wire Line
	7150 2850 8350 2850
$Comp
L Device:R_Small R_SWCAN_3
U 1 1 5FBE16BD
P 8950 2200
F 0 "R_SWCAN_3" H 8891 2154 50  0000 R CNN
F 1 "1.5k" H 8891 2245 50  0000 R CNN
F 2 "footprints:RESC1607X60N" H 8950 2200 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RC_Group_51_RoHS_L_11.pdf" H 8950 2200 50  0001 C CNN
F 4 "RC0603FR-071K5L" H 8950 2200 50  0001 C CNN "Part Name"
	1    8950 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	7150 2550 8950 2550
Wire Wire Line
	8350 2850 9650 2850
Connection ~ 8350 2850
Connection ~ 7550 2650
Wire Wire Line
	7550 2650 9650 2650
Connection ~ 8950 2550
Wire Wire Line
	8950 2550 9650 2550
Wire Wire Line
	7550 3600 8150 3600
Wire Wire Line
	8150 3250 8150 3600
$Comp
L Device:R_Small R_SWCAN_5
U 1 1 5FBE14F5
P 8150 3150
F 0 "R_SWCAN_5" H 8091 3104 50  0000 R CNN
F 1 "10k" H 8091 3195 50  0000 R CNN
F 2 "footprints:RESC1608X55N" H 8150 3150 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RT_1-to-0.01_RoHS_L_12.pdf" H 8150 3150 50  0001 C CNN
F 4 "RT0603FRE0710KL" H 8150 3150 50  0001 C CNN "Part Name"
	1    8150 3150
	-1   0    0    1   
$EndComp
Wire Wire Line
	7150 2750 8150 2750
Wire Wire Line
	8150 2750 8150 3050
Connection ~ 8150 2750
Connection ~ 8150 3600
Wire Wire Line
	8150 2750 9650 2750
Wire Wire Line
	8150 3600 8750 3600
$EndSCHEMATC