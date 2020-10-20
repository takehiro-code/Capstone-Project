EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 16 17
Title "CANnect Reader | OBDII Chip (STN2110)"
Date "2020-10-20"
Rev "0.0.1"
Comp "CANtech"
Comment1 "Created by Choong Jin Ng | jin8383@gmail.com"
Comment2 "Taken from STN21xx's datasheet for recommended configuration"
Comment3 ""
Comment4 "Component Identifier: STN"
$EndDescr
$Comp
L CANtech:STN2120 U?
U 1 1 5FC0708B
P 6050 3350
AR Path="/5F95F80B/5FC0708B" Ref="U?"  Part="1" 
AR Path="/5F95F80B/5FC0631B/5FC0708B" Ref="IC2"  Part="1" 
F 0 "IC2" H 6250 3050 50  0000 L CNB
F 1 "STN2120" H 6250 2950 50  0000 L CNB
F 2 "" H 6350 3000 50  0000 C CNN
F 3 "https://www.scantool.net/scantool/downloads/206/stn21xx_ds_c.pdf" H 6250 2850 50  0000 L CNN
	1    6050 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R_STN_1
U 1 1 5FC0B04F
P 3500 3250
F 0 "R_STN_1" H 3559 3296 50  0000 L CNN
F 1 "1k" H 3559 3205 50  0000 L CNN
F 2 "footprints:RC1608F102CS" H 3500 3250 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Samsung%20PDFs/RC_Series_ds.pdf" H 3500 3250 50  0001 C CNN
F 4 "RC1608F102CS" H 3500 3250 50  0001 C CNN "Part Name"
	1    3500 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3350 3500 3500
Wire Wire Line
	3500 3500 4750 3500
Text HLabel 1550 3500 0    50   Output ~ 0
UART_TX
Text HLabel 1550 3600 0    50   Input ~ 0
UART_RX
$Comp
L power:+3.3V #PWR0192
U 1 1 5FC0B98A
P 3500 2950
F 0 "#PWR0192" H 3500 2800 50  0001 C CNN
F 1 "+3.3V" H 3515 3123 50  0000 C CNN
F 2 "" H 3500 2950 50  0001 C CNN
F 3 "" H 3500 2950 50  0001 C CNN
	1    3500 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3150 3500 2950
$Comp
L Device:CP CP_STN_1
U 1 1 5FC0C31C
P 2900 4050
F 0 "CP_STN_1" H 3018 4141 50  0000 L CNN
F 1 "10uF" H 3018 4050 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.8" H 2938 3900 50  0001 C CNN
F 3 "https://industrial.panasonic.com/ww/products/capacitors/aluminum-capacitors/aluminum-cap-smd/models/EEEFP1E100AR" H 2900 4050 50  0001 C CNN
F 4 "ESR<1" H 3018 3959 50  0000 L CNN "Comments"
	1    2900 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3800 2900 3800
Wire Wire Line
	2900 4350 2600 4350
Wire Wire Line
	2600 3700 4400 3700
Wire Wire Line
	4750 3200 4400 3200
Wire Wire Line
	4400 3200 4400 3300
Connection ~ 4400 3700
Wire Wire Line
	4400 3700 4750 3700
Wire Wire Line
	4750 3300 4400 3300
Connection ~ 4400 3300
Wire Wire Line
	4400 3300 4400 3400
Wire Wire Line
	4750 3400 4400 3400
Connection ~ 4400 3400
Wire Wire Line
	4400 3400 4400 3700
$Comp
L power:GND #PWR0193
U 1 1 5FC0D5B0
P 2900 4500
F 0 "#PWR0193" H 2900 4250 50  0001 C CNN
F 1 "GND" H 2905 4327 50  0000 C CNN
F 2 "" H 2900 4500 50  0001 C CNN
F 3 "" H 2900 4500 50  0001 C CNN
	1    2900 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 4500 2900 4350
Text HLabel 4150 3900 0    50   Output ~ 0
HS_CAN_TX
Text HLabel 4150 4000 0    50   Output ~ 0
MS_CAN_TX
Text HLabel 4150 4100 0    50   Input ~ 0
HS_CAN_RX
Text HLabel 4150 4200 0    50   Input ~ 0
MS_CAN_RX
Wire Wire Line
	4150 3900 4750 3900
Wire Wire Line
	4150 4000 4750 4000
Wire Wire Line
	4150 4100 4750 4100
Wire Wire Line
	4150 4200 4750 4200
$Comp
L Device:Jumper JP_STN_1
U 1 1 5FC0F0F4
P 5350 5600
F 0 "JP_STN_1" H 5350 5864 50  0000 C CNN
F 1 "\"HW Reset\"" H 5350 5773 50  0000 C CNN
F 2 "" H 5350 5600 50  0001 C CNN
F 3 "~" H 5350 5600 50  0001 C CNN
	1    5350 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0194
U 1 1 5FC1071B
P 5050 5700
F 0 "#PWR0194" H 5050 5450 50  0001 C CNN
F 1 "GND" H 5055 5527 50  0000 C CNN
F 2 "" H 5050 5700 50  0001 C CNN
F 3 "" H 5050 5700 50  0001 C CNN
	1    5050 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R_STN_5
U 1 1 5FC10F0A
P 5650 5950
F 0 "R_STN_5" H 5709 5996 50  0000 L CNN
F 1 "100k" H 5709 5905 50  0000 L CNN
F 2 "footprints:RESC1608X55N" H 5650 5950 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RT_1-to-0.01_RoHS_L_12.pdf" H 5650 5950 50  0001 C CNN
F 4 "RT0603DRE07100KL" H 5650 5950 50  0001 C CNN "Part Name"
	1    5650 5950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0195
U 1 1 5FC11757
P 5200 6300
F 0 "#PWR0195" H 5200 6150 50  0001 C CNN
F 1 "+3.3V" H 5215 6473 50  0000 C CNN
F 2 "" H 5200 6300 50  0001 C CNN
F 3 "" H 5200 6300 50  0001 C CNN
	1    5200 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:LED LED_STN_2
U 1 1 5FC12D78
P 2600 6600
F 0 "LED_STN_2" V 2502 6680 50  0000 L CNN
F 1 "\"OBD Activity\"" V 2600 6700 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 2600 6600 50  0001 C CNN
F 3 "https://katalog.we-online.de/led/datasheet/150060YS75000.pdf" H 2600 6600 50  0001 C CNN
F 4 "" V 2684 6680 50  0000 L CNN "LED Colour"
F 5 "150060YS75000" H 2600 6600 50  0001 C CNN "Part Name"
	1    2600 6600
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R_STN_3
U 1 1 5FC13627
P 2600 6250
F 0 "R_STN_3" H 2541 6204 50  0000 R CNN
F 1 "330" H 2541 6295 50  0000 R CNN
F 2 "footprints:RESC3216X70N" H 2600 6250 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDA0000/AOA0000C304.pdf" H 2600 6250 50  0001 C CNN
F 4 "ERJ-8ENF3300V" H 2600 6250 50  0001 C CNN "Part Name"
	1    2600 6250
	-1   0    0    1   
$EndComp
Wire Wire Line
	2600 6350 2600 6450
$Comp
L power:+3.3V #PWR0196
U 1 1 5FC1B34E
P 2300 6650
F 0 "#PWR0196" H 2300 6500 50  0001 C CNN
F 1 "+3.3V" H 2315 6823 50  0000 C CNN
F 2 "" H 2300 6650 50  0001 C CNN
F 3 "" H 2300 6650 50  0001 C CNN
	1    2300 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 6300 5200 6500
Wire Wire Line
	5200 6500 5650 6500
Wire Wire Line
	2600 6750 2600 6900
Wire Wire Line
	2300 6900 2300 6650
Wire Wire Line
	2900 3900 2900 3800
Wire Wire Line
	2600 4350 2600 3700
Wire Wire Line
	2900 4350 2900 4200
Connection ~ 2900 4350
$Comp
L Device:LED LED_STN_1
U 1 1 5FC2D12E
P 1550 6600
F 0 "LED_STN_1" V 1452 6680 50  0000 L CNN
F 1 "\"Status\"" V 1550 6700 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 1550 6600 50  0001 C CNN
F 3 "https://katalog.we-online.de/led/datasheet/150060RS75000.pdf" H 1550 6600 50  0001 C CNN
F 4 "" V 1634 6680 50  0000 L CNN "LED Colour"
F 5 "150060RS75000" H 1550 6600 50  0001 C CNN "Part Name"
	1    1550 6600
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R_STN_2
U 1 1 5FC2D134
P 1550 6250
F 0 "R_STN_2" H 1491 6204 50  0000 R CNN
F 1 "330" H 1491 6295 50  0000 R CNN
F 2 "footprints:RESC3216X70N" H 1550 6250 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDA0000/AOA0000C304.pdf" H 1550 6250 50  0001 C CNN
F 4 "ERJ-8ENF3300V" H 1550 6250 50  0001 C CNN "Part Name"
	1    1550 6250
	-1   0    0    1   
$EndComp
Wire Wire Line
	1550 6350 1550 6450
$Comp
L power:+3.3V #PWR0197
U 1 1 5FC2D13B
P 1250 6650
F 0 "#PWR0197" H 1250 6500 50  0001 C CNN
F 1 "+3.3V" H 1265 6823 50  0000 C CNN
F 2 "" H 1250 6650 50  0001 C CNN
F 3 "" H 1250 6650 50  0001 C CNN
	1    1250 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 6750 1550 6900
Wire Wire Line
	1250 6900 1250 6650
Connection ~ 5050 5600
Wire Wire Line
	5050 5600 5050 5700
Connection ~ 5650 5600
$Comp
L Device:LED LED_STN_3
U 1 1 5FC463FB
P 3700 6600
F 0 "LED_STN_3" V 3602 6680 50  0000 L CNN
F 1 "\"Host Activity\"" V 3700 6700 50  0000 L CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 3700 6600 50  0001 C CNN
F 3 "https://www.we-online.de/katalog/datasheet/150060VS75000.pdf" H 3700 6600 50  0001 C CNN
F 4 "" V 3784 6680 50  0000 L CNN "LED Colour"
F 5 "150060VS75000" H 3700 6600 50  0001 C CNN "Part Name"
	1    3700 6600
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R_STN_4
U 1 1 5FC46401
P 3700 6250
F 0 "R_STN_4" H 3641 6204 50  0000 R CNN
F 1 "330" H 3641 6295 50  0000 R CNN
F 2 "footprints:RESC3216X70N" H 3700 6250 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDA0000/AOA0000C304.pdf" H 3700 6250 50  0001 C CNN
F 4 "ERJ-8ENF3300V" H 3700 6250 50  0001 C CNN "Part Name"
	1    3700 6250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3700 6350 3700 6450
$Comp
L power:+3.3V #PWR0198
U 1 1 5FC46408
P 3400 6650
F 0 "#PWR0198" H 3400 6500 50  0001 C CNN
F 1 "+3.3V" H 3415 6823 50  0000 C CNN
F 2 "" H 3400 6650 50  0001 C CNN
F 3 "" H 3400 6650 50  0001 C CNN
	1    3400 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 6750 3700 6900
Wire Wire Line
	3400 6900 3400 6650
Wire Wire Line
	5650 6500 5650 6050
Wire Wire Line
	5650 5600 5650 5850
Wire Wire Line
	1550 5200 1550 6150
Wire Wire Line
	2600 5000 2600 6150
Wire Wire Line
	3700 5000 3700 6150
Wire Wire Line
	3700 6900 3400 6900
Wire Wire Line
	2600 6900 2300 6900
Wire Wire Line
	5050 4600 5050 5600
Wire Wire Line
	5650 5000 5650 5600
Connection ~ 5650 5000
Wire Wire Line
	5750 4600 5750 5100
Wire Wire Line
	5850 4600 5850 5200
Text Notes 3900 6900 0    50   ~ 0
LED Indicators
$Comp
L power:GND #PWR0199
U 1 1 5FC652FD
P 8300 5000
F 0 "#PWR0199" H 8300 4750 50  0001 C CNN
F 1 "GND" H 8305 4827 50  0000 C CNN
F 2 "" H 8300 5000 50  0001 C CNN
F 3 "" H 8300 5000 50  0001 C CNN
	1    8300 5000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0200
U 1 1 5FC68371
P 7700 5450
F 0 "#PWR0200" H 7700 5300 50  0001 C CNN
F 1 "+3.3V" H 7715 5623 50  0000 C CNN
F 2 "" H 7700 5450 50  0001 C CNN
F 3 "" H 7700 5450 50  0001 C CNN
	1    7700 5450
	1    0    0    -1  
$EndComp
Text HLabel 7450 5150 2    50   Input ~ 0
RESET_SW
Text HLabel 7450 5050 2    50   Input ~ 0
ANALOG_IN
$Comp
L Device:C C_STN_2
U 1 1 5FC6BE46
P 7700 6150
F 0 "C_STN_2" H 7815 6196 50  0000 L CNN
F 1 "1uF" H 7815 6105 50  0000 L CNN
F 2 "footprints:0603" H 7738 6000 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1002_X7R_SMD.pdf" H 7700 6150 50  0001 C CNN
	1    7700 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 4600 6350 5050
Wire Wire Line
	6350 5050 7450 5050
Wire Wire Line
	6250 4600 6250 5150
Wire Wire Line
	6250 5150 7450 5150
$Comp
L Device:R R_STN_6
U 1 1 5FC6FB41
P 6900 5550
F 0 "R_STN_6" V 6693 5550 50  0000 C CNN
F 1 "10k" V 6784 5550 50  0000 C CNN
F 2 "footprints:RESC1608X55N" V 6830 5550 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RT_1-to-0.01_RoHS_L_12.pdf" H 6900 5550 50  0001 C CNN
F 4 "RT0603FRE0710KL" H 6900 5550 50  0001 C CNN "Part Name"
	1    6900 5550
	0    1    1    0   
$EndComp
$Comp
L Device:R R_STN_7
U 1 1 5FC6FCEB
P 6900 5900
F 0 "R_STN_7" V 6693 5900 50  0000 C CNN
F 1 "10" V 6784 5900 50  0000 C CNN
F 2 "footprints:RESC1005X40N" V 6830 5900 50  0001 C CNN
F 3 "https://www.bourns.com/docs/product-datasheets/CRxxxxx.pdf" H 6900 5900 50  0001 C CNN
	1    6900 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	7050 5550 7700 5550
Wire Wire Line
	7700 5550 7700 5450
Wire Wire Line
	7050 5900 7700 5900
Connection ~ 7700 5550
Wire Wire Line
	6150 4600 6150 5900
Wire Wire Line
	6150 5900 6750 5900
$Comp
L power:GND #PWR0201
U 1 1 5FC7689D
P 7700 6450
F 0 "#PWR0201" H 7700 6200 50  0001 C CNN
F 1 "GND" H 7705 6277 50  0000 C CNN
F 2 "" H 7700 6450 50  0001 C CNN
F 3 "" H 7700 6450 50  0001 C CNN
	1    7700 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 6450 7700 6300
$Comp
L power:VDDA #PWR0202
U 1 1 5FC78554
P 6650 6250
F 0 "#PWR0202" H 6650 6100 50  0001 C CNN
F 1 "VDDA" H 6665 6423 50  0000 C CNN
F 2 "" H 6650 6250 50  0001 C CNN
F 3 "" H 6650 6250 50  0001 C CNN
	1    6650 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 5550 6750 5550
Wire Wire Line
	7700 5900 7700 5550
Wire Wire Line
	7700 5900 7700 6000
Connection ~ 7700 5900
Wire Wire Line
	6150 5900 6150 6400
Connection ~ 6150 5900
Wire Wire Line
	6650 6250 6650 6400
Connection ~ 6250 5150
Wire Wire Line
	6250 5150 6250 5550
Text HLabel 7650 4800 2    50   Input ~ 0
~ISO_RX~
Text HLabel 7650 4700 2    50   Input ~ 0
~VPW_RX~
Wire Wire Line
	5950 4600 5950 4900
Wire Wire Line
	5950 4900 6050 4900
Wire Wire Line
	8300 4900 8300 5000
Wire Wire Line
	6050 4600 6050 4900
Connection ~ 6050 4900
Wire Wire Line
	6050 4900 6450 4900
Wire Wire Line
	6550 4600 6550 4800
Wire Wire Line
	6550 4800 7650 4800
Wire Wire Line
	7650 4700 6650 4700
Wire Wire Line
	6650 4700 6650 4600
Wire Wire Line
	6450 4600 6450 4900
Connection ~ 6450 4900
Wire Wire Line
	6450 4900 8300 4900
Text HLabel 7850 3600 2    50   Input ~ 0
PWM_RX
Text HLabel 7850 3500 2    50   Output ~ 0
J1850_BUS+_TX
Text HLabel 7850 3400 2    50   Output ~ 0
~J1850_BUS+_VH~
Wire Wire Line
	7100 3400 7850 3400
Wire Wire Line
	7100 3500 7850 3500
Wire Wire Line
	7100 3600 7850 3600
$Comp
L power:GND #PWR0203
U 1 1 5FCB385E
P 9400 3550
F 0 "#PWR0203" H 9400 3300 50  0001 C CNN
F 1 "GND" H 9405 3377 50  0000 C CNN
F 2 "" H 9400 3550 50  0001 C CNN
F 3 "" H 9400 3550 50  0001 C CNN
	1    9400 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3100 7350 3100
Wire Wire Line
	7350 3100 7350 3300
Wire Wire Line
	7100 3300 7350 3300
Connection ~ 7350 3300
Text HLabel 7850 2600 2    50   Output ~ 0
J1850_BUS-_TX
Text HLabel 7850 2700 2    50   Output ~ 0
~PWR_CTRL~
Wire Wire Line
	7100 2700 7850 2700
Wire Wire Line
	7100 2600 7850 2600
$Comp
L Device:R R_STN_8
U 1 1 5FCC1888
P 9450 2700
F 0 "R_STN_8" H 9520 2746 50  0000 L CNN
F 1 "100k" H 9520 2655 50  0000 L CNN
F 2 "footprints:RESC1608X55N" V 9380 2700 50  0001 C CNN
F 3 "https://www.yageo.com/upload/media/product/productsearch/datasheet/rchip/PYu-RT_1-to-0.01_RoHS_L_12.pdf" H 9450 2700 50  0001 C CNN
F 4 "RT0603DRE07100KL" H 9450 2700 50  0001 C CNN "Part Name"
	1    9450 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0204
U 1 1 5FCC6E89
P 9450 2150
F 0 "#PWR0204" H 9450 2000 50  0001 C CNN
F 1 "+3.3V" H 9465 2323 50  0000 C CNN
F 2 "" H 9450 2150 50  0001 C CNN
F 3 "" H 9450 2150 50  0001 C CNN
	1    9450 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C_STN_5
U 1 1 5FCC9B8F
P 9950 2700
F 0 "C_STN_5" H 10065 2746 50  0000 L CNN
F 1 "1uF" H 10065 2655 50  0000 L CNN
F 2 "footprints:0603" H 9988 2550 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1002_X7R_SMD.pdf" H 9950 2700 50  0001 C CNN
	1    9950 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0205
U 1 1 5FCCCD41
P 9950 2950
F 0 "#PWR0205" H 9950 2700 50  0001 C CNN
F 1 "GND" H 9955 2777 50  0000 C CNN
F 2 "" H 9950 2950 50  0001 C CNN
F 3 "" H 9950 2950 50  0001 C CNN
	1    9950 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 2950 9950 2850
Wire Wire Line
	9950 2300 9950 2550
Text HLabel 4400 1800 0    50   Output ~ 0
~ISO_L_TX~
Text HLabel 4400 1700 0    50   Output ~ 0
~ISO_K_TX~
Text HLabel 4350 1600 0    50   Input ~ 0
SW_CAN_RX
Text HLabel 4350 1500 0    50   Output ~ 0
SW_CAN_TX
Wire Wire Line
	4950 2250 4950 1800
Wire Wire Line
	4950 1800 4400 1800
Wire Wire Line
	4400 1700 5050 1700
Wire Wire Line
	5050 1700 5050 2250
Wire Wire Line
	5150 2250 5150 1600
Wire Wire Line
	5150 1600 4350 1600
Wire Wire Line
	4350 1500 5250 1500
Wire Wire Line
	5250 1500 5250 2250
$Comp
L power:+3.3V #PWR0206
U 1 1 5FCF4C00
P 5350 850
F 0 "#PWR0206" H 5350 700 50  0001 C CNN
F 1 "+3.3V" H 5365 1023 50  0000 C CNN
F 2 "" H 5350 850 50  0001 C CNN
F 3 "" H 5350 850 50  0001 C CNN
	1    5350 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 850  5350 950 
Wire Wire Line
	5350 950  5450 950 
Wire Wire Line
	5450 950  5450 1050
Connection ~ 5350 950 
Wire Wire Line
	5350 950  5350 2250
Wire Wire Line
	5450 1350 5450 1600
Wire Wire Line
	5450 2100 5550 2100
Wire Wire Line
	5650 2100 5650 2250
Connection ~ 5450 2100
Wire Wire Line
	5450 2100 5450 2250
Wire Wire Line
	5550 2250 5550 2100
Connection ~ 5550 2100
Wire Wire Line
	5550 2100 5650 2100
$Comp
L power:GND #PWR0207
U 1 1 5FD0B0F8
P 5600 1750
F 0 "#PWR0207" H 5600 1500 50  0001 C CNN
F 1 "GND" H 5605 1577 50  0000 C CNN
F 2 "" H 5600 1750 50  0001 C CNN
F 3 "" H 5600 1750 50  0001 C CNN
	1    5600 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 1600 5600 1600
Wire Wire Line
	5600 1600 5600 1750
Connection ~ 5450 1600
Wire Wire Line
	5450 1600 5450 2100
Text HLabel 6050 1600 2    50   Output ~ 0
SW_CAN_MODE1
Text HLabel 6050 1700 2    50   Output ~ 0
SW_CAN_MODE0
Text HLabel 6050 1800 2    50   Output ~ 0
SW_CAN_LOAD
Wire Wire Line
	5750 2250 5750 1600
Wire Wire Line
	5750 1600 6050 1600
Wire Wire Line
	5850 2250 5850 1700
Wire Wire Line
	5850 1700 6050 1700
Wire Wire Line
	5950 2250 5950 1800
Wire Wire Line
	5950 1800 6050 1800
Wire Wire Line
	1550 3500 3500 3500
Connection ~ 3500 3500
Wire Wire Line
	1550 3600 4750 3600
Text Notes 1600 3400 2    50   ~ 0
Host Device
Wire Notes Line
	1050 3750 1050 3250
Wire Notes Line
	1050 3250 1650 3250
Wire Notes Line
	1650 3250 1650 3750
Wire Notes Line
	1050 3750 1650 3750
Wire Wire Line
	6150 6400 6650 6400
Text HLabel 10050 3200 2    50   Input ~ 0
~SLEEP~
Wire Wire Line
	9400 3300 9400 3550
Wire Wire Line
	7350 3300 9400 3300
$Comp
L ECS-2033-160-AU:ECS-2033-160-AU X1
U 1 1 5FDAE336
P 8000 1250
F 0 "X1" H 7975 1715 50  0000 C CNN
F 1 "ECS-2033-160-AU (16MHz)" H 7975 1624 50  0000 C CNN
F 2 "footprints:OSC_ECS-2033-160-AU" H 8000 1250 50  0001 L BNN
F 3 "ECS Inc" H 8000 1250 50  0001 L BNN
F 4 "11/15/13" H 8000 1250 50  0001 L BNN "Field4"
F 5 "Manufacturer Recommendations" H 8000 1250 50  0001 L BNN "Field5"
	1    8000 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0208
U 1 1 5FE1BF08
P 8800 1850
F 0 "#PWR0208" H 8800 1600 50  0001 C CNN
F 1 "GND" H 8805 1677 50  0000 C CNN
F 2 "" H 8800 1850 50  0001 C CNN
F 3 "" H 8800 1850 50  0001 C CNN
	1    8800 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C_STN_3
U 1 1 5FE374BD
P 9050 1500
F 0 "C_STN_3" H 9165 1546 50  0000 L CNN
F 1 "30pF" H 9165 1455 50  0000 L CNN
F 2 "footprints:CAPC2012X88N" H 9088 1350 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1007_X8R_ULTRA_150C_SMD.pdf" H 9050 1500 50  0001 C CNN
	1    9050 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C_STN_4
U 1 1 5FE3786D
P 9700 1500
F 0 "C_STN_4" H 9815 1546 50  0000 L CNN
F 1 "30pF" H 9815 1455 50  0000 L CNN
F 2 "footprints:CAPC2012X88N" H 9738 1350 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1007_X8R_ULTRA_150C_SMD.pdf" H 9700 1500 50  0001 C CNN
	1    9700 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 950  7100 950 
Connection ~ 5450 950 
Wire Wire Line
	7100 950  7100 1150
Wire Wire Line
	7100 1150 7350 1150
Wire Wire Line
	7100 1350 7350 1350
Wire Wire Line
	7100 1350 7100 2150
Wire Wire Line
	7100 3200 9450 3200
Wire Wire Line
	9450 2550 9450 2150
Wire Wire Line
	9450 2850 9450 3200
Wire Wire Line
	8600 1100 8650 1100
Wire Wire Line
	7100 2900 8650 2900
Wire Wire Line
	8650 2900 8650 1100
Connection ~ 8650 1100
Wire Wire Line
	8600 1500 8800 1500
Wire Wire Line
	8800 1500 8800 1750
Connection ~ 8800 1750
Wire Wire Line
	8800 1750 8800 1850
Wire Wire Line
	9050 2800 9050 2150
Wire Wire Line
	7100 2800 9050 2800
Wire Wire Line
	7100 2150 9050 2150
Connection ~ 9050 2150
Wire Wire Line
	9050 2150 9050 1650
Wire Wire Line
	9050 1350 9050 1200
Wire Wire Line
	9050 1200 8800 1200
Wire Wire Line
	8800 1200 8800 1500
Connection ~ 8800 1500
Wire Notes Line
	6950 700  6950 1850
Wire Notes Line
	6950 1850 10200 1850
Wire Notes Line
	10200 1850 10200 700 
Wire Notes Line
	10200 700  6950 700 
Text Notes 10100 850  2    50   ~ 0
16Mhz Oscillator
Wire Wire Line
	5650 4600 5650 4800
Wire Wire Line
	5650 4800 5650 5000
Connection ~ 5650 4800
Text HLabel 1350 5200 0    50   Output ~ 0
STATUS_LED
Text HLabel 1350 5100 0    50   Output ~ 0
~HOST_ACT_LED~
Text HLabel 1350 4800 0    50   Output ~ 0
~RESET_HW~
Text HLabel 1350 5000 0    50   Output ~ 0
~OBD_ACT_LED~
Wire Wire Line
	1250 6900 1550 6900
Wire Wire Line
	2600 5000 3700 5000
Wire Wire Line
	1350 4800 5650 4800
Wire Wire Line
	2600 5000 1350 5000
Connection ~ 2600 5000
Wire Wire Line
	1350 5100 5750 5100
Wire Wire Line
	1350 5200 1550 5200
Connection ~ 1550 5200
Wire Wire Line
	1550 5200 5850 5200
Connection ~ 3700 5000
Wire Wire Line
	3700 5000 5650 5000
Wire Notes Line
	700  4900 700  7000
Wire Notes Line
	700  7000 4500 7000
Wire Notes Line
	4500 7000 4500 4900
Wire Notes Line
	4500 4900 700  4900
$Comp
L Device:C C_STN_1
U 1 1 5FCFC133
P 5450 1200
F 0 "C_STN_1" H 5565 1246 50  0000 L CNN
F 1 "1uF" H 5565 1155 50  0000 L CNN
F 2 "footprints:0603" H 5488 1050 50  0001 C CNN
F 3 "https://content.kemet.com/datasheets/KEM_C1002_X7R_SMD.pdf" H 5450 1200 50  0001 C CNN
	1    5450 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 1750 9700 1650
Wire Wire Line
	8800 1750 9700 1750
Wire Wire Line
	9700 1100 9700 1350
Wire Wire Line
	8650 1100 9700 1100
Connection ~ 9450 3200
Wire Wire Line
	9450 3200 10050 3200
Wire Wire Line
	7100 3000 9150 3000
Wire Wire Line
	9150 3000 9150 2300
Wire Wire Line
	9150 2300 9950 2300
$EndSCHEMATC