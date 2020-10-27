EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 4 19
Title "CANnect Reader | ISO 9141/ISO 14230 Transceiver"
Date "2020-10-27"
Rev "0.0.03"
Comp "CANtech"
Comment1 "Created by Choong Jin Ng | jin8383@gmail.com"
Comment2 "Taken from STN21xx's datasheet for recommended configuration"
Comment3 ""
Comment4 "Component Identifier: ISO"
$EndDescr
Wire Wire Line
	5600 2050 5600 1900
$Comp
L power:+12V #PWR011
U 1 1 5FA9FF9E
P 5600 1900
F 0 "#PWR011" H 5600 1750 50  0001 C CNN
F 1 "+12V" H 5615 2073 50  0000 C CNN
F 2 "" H 5600 1900 50  0001 C CNN
F 3 "" H 5600 1900 50  0001 C CNN
	1    5600 1900
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR013
U 1 1 5FA9FB8D
P 5600 3900
F 0 "#PWR013" H 5600 3750 50  0001 C CNN
F 1 "+12V" H 5615 4073 50  0000 C CNN
F 2 "" H 5600 3900 50  0001 C CNN
F 3 "" H 5600 3900 50  0001 C CNN
	1    5600 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2600 5600 2450
$Comp
L Device:R_Small R_ISO_3
U 1 1 5FA9DCCB
P 5600 2700
F 0 "R_ISO_3" H 5541 2654 50  0000 R CNN
F 1 "510k/0.5W" H 5541 2745 50  0000 R CNN
F 2 "footprints:RESC2012X70N" H 5600 2700 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDO0000/AOA0000C331.pdf" H 5600 2700 50  0001 C CNN
F 4 "ERJ-P06J514V" H 5600 2700 50  0001 C CNN "Part Name"
F 5 "DigiKey Canada" H 5600 2700 50  0001 C CNN "Vendor"
F 6 "Panasonic Electronic Components" H 5600 2700 50  0001 C CNN "Manufacturer"
F 7 "P510KADCT-ND" H 5600 2700 50  0001 C CNN "digikeypn"
	1    5600 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	5000 3150 4900 3150
Wire Wire Line
	5200 3150 5300 3150
Wire Wire Line
	5600 4050 5600 3900
$Comp
L Device:R_Small R_ISO_1
U 1 1 5FA9A19B
P 5100 3150
F 0 "R_ISO_1" V 4904 3150 50  0000 C CNN
F 1 "1k" V 4995 3150 50  0000 C CNN
F 2 "footprints:RC1608F102CS" H 5100 3150 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Samsung%20PDFs/RC_Series_ds.pdf" H 5100 3150 50  0001 C CNN
F 4 "RC1608F102CS" H 5100 3150 50  0001 C CNN "Part Name"
F 5 "Samsung Electro-Mechanics" H 5100 3150 50  0001 C CNN "Manufacturer"
F 6 "DigiKey Canada" H 5100 3150 50  0001 C CNN "Vendor"
F 7 "1276-3484-1-ND" H 5100 3150 50  0001 C CNN "digikeypn"
	1    5100 3150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5FA99780
P 5600 5400
F 0 "#PWR014" H 5600 5150 50  0001 C CNN
F 1 "GND" H 5605 5227 50  0000 C CNN
F 2 "" H 5600 5400 50  0001 C CNN
F 3 "" H 5600 5400 50  0001 C CNN
	1    5600 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5FA99363
P 5600 3350
F 0 "#PWR012" H 5600 3100 50  0001 C CNN
F 1 "GND" H 5605 3177 50  0000 C CNN
F 2 "" H 5600 3350 50  0001 C CNN
F 3 "" H 5600 3350 50  0001 C CNN
	1    5600 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4550 5600 4450
$Comp
L Transistor_BJT:MMBT3904 Q_ISO_4
U 1 1 5FA953EB
P 5500 5200
F 0 "Q_ISO_4" H 5690 5246 50  0000 L CNN
F 1 "MMBT3904WT1G" H 5690 5155 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5700 5125 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/MMBT3904WT1-D.PDF" H 5500 5200 50  0001 L CNN
F 4 "MMBT3904WT1G" H 5500 5200 50  0001 C CNN "Part Name"
F 5 "DigiKey Canada" H 5500 5200 50  0001 C CNN "Vendor"
F 6 "ON Semiconductor" H 5500 5200 50  0001 C CNN "Manufacturer"
F 7 "MMBT3904WT1GOSCT-ND" H 5500 5200 50  0001 C CNN "digikeypn"
	1    5500 5200
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3904 Q_ISO_3
U 1 1 5FA9434C
P 5500 3150
F 0 "Q_ISO_3" H 5690 3196 50  0000 L CNN
F 1 "MMBT3904WT1G" H 5690 3105 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5700 3075 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/MMBT3904WT1-D.PDF" H 5500 3150 50  0001 L CNN
F 4 "MMBT3904WT1G" H 5500 3150 50  0001 C CNN "Part Name"
F 5 "DigiKey Canada" H 5500 3150 50  0001 C CNN "Vendor"
F 6 "ON Semiconductor" H 5500 3150 50  0001 C CNN "Manufacturer"
F 7 "MMBT3904WT1GOSCT-ND" H 5500 3150 50  0001 C CNN "digikeypn"
	1    5500 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R_ISO_4
U 1 1 5FA9021C
P 5600 4650
F 0 "R_ISO_4" H 5541 4604 50  0000 R CNN
F 1 "510k/0.5W" H 5541 4695 50  0000 R CNN
F 2 "footprints:RESC2012X70N" H 5600 4650 50  0001 C CNN
F 3 "https://industrial.panasonic.com/cdbs/www-data/pdf/RDO0000/AOA0000C331.pdf" H 5600 4650 50  0001 C CNN
F 4 "ERJ-P06J514V" H 5600 4650 50  0001 C CNN "Part Name"
F 5 "DigiKey Canada" H 5600 4650 50  0001 C CNN "Vendor"
F 6 "Panasonic Electronic Components" H 5600 4650 50  0001 C CNN "Manufacturer"
F 7 "P510KADCT-ND" H 5600 4650 50  0001 C CNN "digikeypn"
	1    5600 4650
	-1   0    0    1   
$EndComp
$Comp
L IRLML5103TRPBF:IRLML5103TRPBF Q_ISO_2
U 1 1 5FA86CC3
P 5300 4250
F 0 "Q_ISO_2" H 5730 4197 60  0000 L CNN
F 1 "IRLML5103TRPBF" H 5730 4303 60  0000 L CNN
F 2 "footprints:IRLML5103TRPBF" H 5750 3990 60  0001 C CNN
F 3 "https://www.infineon.com/dgdl/irlml5103pbf.pdf?fileId=5546d462533600a401535668505d2617" H 5300 4250 60  0001 C CNN
F 4 "IRLML5103TRPBF" H 5300 4250 50  0001 C CNN "Part Name"
F 5 "DigiKey Canada" H 5300 4250 50  0001 C CNN "Vendor"
F 6 "Infineon Technologies" H 5300 4250 50  0001 C CNN "Manufacturer"
F 7 "IRLML5103PBFCT-ND" H 5300 4250 50  0001 C CNN "digikeypn"
	1    5300 4250
	1    0    0    1   
$EndComp
$Comp
L IRLML5103TRPBF:IRLML5103TRPBF Q_ISO_1
U 1 1 5FA8641A
P 5300 2250
F 0 "Q_ISO_1" H 5730 2197 60  0000 L CNN
F 1 "IRLML5103TRPBF" H 5730 2303 60  0000 L CNN
F 2 "footprints:IRLML5103TRPBF" H 5750 1990 60  0001 C CNN
F 3 "https://www.infineon.com/dgdl/irlml5103pbf.pdf?fileId=5546d462533600a401535668505d2617" H 5300 2250 60  0001 C CNN
F 4 "IRLML5103TRPBF" H 5300 2250 50  0001 C CNN "Part Name"
F 5 "DigiKey Canada" H 5300 2250 50  0001 C CNN "Vendor"
F 6 "Infineon Technologies" H 5300 2250 50  0001 C CNN "Manufacturer"
F 7 "IRLML5103PBFCT-ND" H 5300 2250 50  0001 C CNN "digikeypn"
	1    5300 2250
	1    0    0    1   
$EndComp
Text HLabel 4900 3150 0    50   Input ~ 0
~ISO_K_TX~
Text HLabel 4900 5200 0    50   Input ~ 0
~ISO_L_TX~
$Comp
L Device:R_Small R_ISO_2
U 1 1 5FAABEED
P 5100 5200
F 0 "R_ISO_2" V 4904 5200 50  0000 C CNN
F 1 "1k" V 4995 5200 50  0000 C CNN
F 2 "footprints:RC1608F102CS" H 5100 5200 50  0001 C CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Samsung%20PDFs/RC_Series_ds.pdf" H 5100 5200 50  0001 C CNN
F 4 "RC1608F102CS" H 5100 5200 50  0001 C CNN "Part Name"
F 5 "Samsung Electro-Mechanics" H 5100 5200 50  0001 C CNN "Manufacturer"
F 6 "DigiKey Canada" H 5100 5200 50  0001 C CNN "Vendor"
F 7 "1276-3484-1-ND" H 5100 5200 50  0001 C CNN "digikeypn"
	1    5100 5200
	0    1    1    0   
$EndComp
Wire Wire Line
	4900 5200 5000 5200
Wire Wire Line
	5200 5200 5300 5200
Text HLabel 6700 2900 2    50   BiDi ~ 0
K-Line
Text HLabel 6700 4850 2    50   BiDi ~ 0
L-Line
Wire Wire Line
	5600 2800 5600 2900
Wire Wire Line
	5600 4750 5600 4850
Wire Wire Line
	5600 2900 6700 2900
Connection ~ 5600 2900
Wire Wire Line
	5600 2900 5600 2950
Wire Wire Line
	5600 4850 6700 4850
Connection ~ 5600 4850
Wire Wire Line
	5600 4850 5600 5000
Wire Wire Line
	4450 4250 5300 4250
Wire Wire Line
	4450 2250 5300 2250
Wire Wire Line
	4450 3400 4450 2250
Wire Wire Line
	4400 3400 4450 3400
Text HLabel 4400 3400 0    50   Input ~ 0
PWR_CTRL
Wire Wire Line
	4450 3400 4450 4250
Connection ~ 4450 3400
$EndSCHEMATC
