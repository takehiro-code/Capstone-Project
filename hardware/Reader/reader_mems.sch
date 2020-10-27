EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 14 19
Title "CANnect Reader | MEMs"
Date "2020-10-25"
Rev "0.0.03"
Comp "CANtech"
Comment1 "Created by Choong Jin Ng | jin8383@gmail.com"
Comment2 ""
Comment3 ""
Comment4 "Component Identifier: MM"
$EndDescr
$Comp
L LSM6DSMTR:LSM6DSMTR MEMS?
U 1 1 5F9A440D
P 6550 3400
AR Path="/5F9A440D" Ref="MEMS?"  Part="1" 
AR Path="/5F988046/5F9A440D" Ref="U_MM_1"  Part="1" 
F 0 "U_MM_1" H 6550 4167 50  0000 C CNN
F 1 "LSM6DSMTR" H 6550 4076 50  0000 C CNN
F 2 "footprints:PQFN50P300X250X86-14N" H 6550 3400 50  0001 L BNN
F 3 "https://www.st.com/content/ccc/resource/technical/document/datasheet/76/27/cf/88/c5/03/42/6b/DM00218116.pdf/files/DM00218116.pdf/jcr:content/translations/en.DM00218116.pdf" H 6550 3400 50  0001 L BNN
F 4 "0.86 mm" H 6550 3400 50  0001 L BNN "Field4"
F 5 "Rev 7" H 6550 3400 50  0001 L BNN "Field5"
F 6 "IPC 7351B" H 6550 3400 50  0001 L BNN "Field6"
F 7 "LSM6DSMTR" H 6550 3400 50  0001 C CNN "Part Name"
F 8 "STMicroelectronics" H 6550 3400 50  0001 C CNN "Manufacturer"
F 9 "DigiKey Canada" H 6550 3400 50  0001 C CNN "Vendor"
F 10 "497-16696-1-ND" H 6550 3400 50  0001 C CNN "digikeypn"
	1    6550 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F9A4413
P 7450 4000
AR Path="/5F9A4413" Ref="#PWR?"  Part="1" 
AR Path="/5F988046/5F9A4413" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 7450 3750 50  0001 C CNN
F 1 "GND" H 7455 3827 50  0000 C CNN
F 2 "" H 7450 4000 50  0001 C CNN
F 3 "" H 7450 4000 50  0001 C CNN
	1    7450 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C Cmem?
U 1 1 5F9A441F
P 7750 3150
AR Path="/5F9A441F" Ref="Cmem?"  Part="1" 
AR Path="/5F988046/5F9A441F" Ref="C_MM_1"  Part="1" 
F 0 "C_MM_1" H 7865 3196 50  0000 L CNN
F 1 "100nF" H 7865 3105 50  0000 L CNN
F 2 "footprints:FA16C0G2A104JRU06" H 7788 3000 50  0001 C CNN
F 3 "https://product.tdk.com/info/en/catalog/datasheets/leadmlcc_halogenfree_fa_en.pdf" H 7750 3150 50  0001 C CNN
F 4 "C1608X7R2A103K080AA" H 7750 3150 50  0001 C CNN "Part Name"
F 5 "DigiKey Canada" H 7750 3150 50  0001 C CNN "Vendor"
F 6 "TDK Corporation" H 7750 3150 50  0001 C CNN "Manufacturer"
F 7 "445-1304-1-ND" H 7750 3150 50  0001 C CNN "digikeypn"
	1    7750 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F9A4425
P 5450 4000
AR Path="/5F9A4425" Ref="#PWR?"  Part="1" 
AR Path="/5F988046/5F9A4425" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 5450 3750 50  0001 C CNN
F 1 "GND" H 5455 3827 50  0000 C CNN
F 2 "" H 5450 4000 50  0001 C CNN
F 3 "" H 5450 4000 50  0001 C CNN
	1    5450 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 4000 5450 3600
Wire Wire Line
	5450 3500 5650 3500
Wire Wire Line
	5650 3600 5450 3600
Connection ~ 5450 3600
Wire Wire Line
	5450 3600 5450 3500
$Comp
L power:GND #PWR?
U 1 1 5F9A4430
P 7750 3300
AR Path="/5F9A4430" Ref="#PWR?"  Part="1" 
AR Path="/5F988046/5F9A4430" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 7750 3050 50  0001 C CNN
F 1 "GND" H 7755 3127 50  0000 C CNN
F 2 "" H 7750 3300 50  0001 C CNN
F 3 "" H 7750 3300 50  0001 C CNN
	1    7750 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 2900 7750 2900
Wire Wire Line
	7750 2900 7750 2800
Wire Wire Line
	7450 3000 7750 3000
Wire Wire Line
	7750 2900 7750 3000
Connection ~ 7750 2900
Connection ~ 7750 3000
NoConn ~ 7450 3400
NoConn ~ 7450 3500
Text HLabel 3100 3200 0    50   BiDi ~ 0
MEMS_SCL
Text HLabel 3100 3300 0    50   BiDi ~ 0
MEMS_SDA
Text HLabel 3100 3800 0    50   Input ~ 0
MEMS_INT1
Wire Wire Line
	3100 3800 5650 3800
Wire Wire Line
	5650 3300 3100 3300
Wire Wire Line
	3100 3200 5650 3200
$Comp
L CANtech:+3.3V_SW #PWR0143
U 1 1 5FA73E29
P 7750 2800
F 0 "#PWR0143" H 7750 3050 50  0001 C CNN
F 1 "+3.3V_SW" H 7808 2837 50  0000 L CNN
F 2 "" H 7000 3600 50  0001 C CNN
F 3 "" H 7000 3600 50  0001 C CNN
	1    7750 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3400 3100 3400
Wire Wire Line
	5650 3100 3100 3100
Text HLabel 3100 3100 0    50   Input ~ 0
MEMS_CS
Text HLabel 3100 3400 0    50   BiDi ~ 0
MEMS_SDO_SA0
Text HLabel 3100 3900 0    50   Input ~ 0
MEMS_INT2
Wire Wire Line
	3100 3900 5650 3900
$EndSCHEMATC