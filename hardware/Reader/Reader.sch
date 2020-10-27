EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 19
Title "CANnect Reader"
Date "2020-10-25"
Rev "0.0.03"
Comp "CANtech"
Comment1 "Created by Choong Jin Ng | jin8383@gmail.com"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 4700 4350 1050 300 
U 5FA56A4E
F0 "Power Switch" 50
F1 "power_switch.sch" 50
F2 "~PWR_CTRL~" I L 4700 4550 50 
F3 "PWR_CTRL" O R 5750 4550 50 
$EndSheet
$Comp
L CANtech:VRaw #V0101
U 1 1 5FD58425
P 2600 4100
F 0 "#V0101" H 2600 4100 50  0001 C CNN
F 1 "VRaw" H 2658 4037 50  0000 L CNN
F 2 "" H 2600 4100 50  0001 C CNN
F 3 "" H 2600 4100 50  0001 C CNN
	1    2600 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4250 2600 4150
Wire Wire Line
	2750 4550 3250 4550
$Sheet
S 3250 1200 1200 3450
U 5F95F80B
F0 "OBDII Interpreter" 50
F1 "obdii_interpreter.sch" 50
F2 "K-Line" B L 3250 2300 50 
F3 "L-Line" B L 3250 3500 50 
F4 "SW_CAN" I L 3250 1400 50 
F5 "J1850_BUS+" B L 3250 1550 50 
F6 "J1850_BUS-" B L 3250 2750 50 
F7 "MS_CAN_High" B L 3250 1700 50 
F8 "MS_CAN_Low" B L 3250 2900 50 
F9 "STN2110_TX" O R 4450 3050 50 
F10 "HS_CAN_High" B L 3250 2150 50 
F11 "HS_CAN_Low" B L 3250 3350 50 
F12 "STN2110_RX" I R 4450 3150 50 
F13 "~PWR_CTRL~" O R 4450 4550 50 
F14 "Analog_Voltage" I L 3250 4550 50 
F15 "~SLEEP_OBD~" O R 4450 2850 50 
F16 "RESET_OBD_SW" O R 4450 2750 50 
F17 "~RESET_OBD_HW~" O R 4450 2650 50 
F18 "PWR_CTRL" I R 4450 4200 50 
$EndSheet
Wire Notes Line
	1900 3950 1900 5150
Wire Notes Line
	1900 5150 6150 5150
Wire Notes Line
	6150 5150 6150 3950
Wire Notes Line
	6150 3950 1900 3950
Text Notes 5750 5050 2    50   ~ 0
Power Supply, Regulator and Switches
$Sheet
S 700  1200 900  3950
U 5FF6FE24
F0 "OBD Connector" 50
F1 "obd_connector.sch" 50
F2 "SW_CAN" B R 1600 1400 50 
F3 "Raw_12V" O R 1600 4250 50 
F4 "J1850_BUS+" B R 1600 1550 50 
F5 "MS_CAN_High" B R 1600 1700 50 
F6 "GnD_Chassis" O R 1600 1850 50 
F7 "GnD_Signal" O R 1600 2000 50 
F8 "HS_CAN_High" B R 1600 2150 50 
F9 "K-Line" B R 1600 2300 50 
F10 "OBD_PIN_8" B R 1600 2450 50 
F11 "OBD_PIN_9" B R 1600 2600 50 
F12 "MS_CAN_Low" B R 1600 2900 50 
F13 "OBD_PIN_12" B R 1600 3050 50 
F14 "OBD_PIN_13" B R 1600 3200 50 
F15 "HS_CAN_Low" B R 1600 3350 50 
F16 "L-Line" O R 1600 3500 50 
F17 "J1850_BUS-" B R 1600 2750 50 
$EndSheet
Wire Wire Line
	1600 4250 2600 4250
Wire Wire Line
	1600 1400 3250 1400
Wire Wire Line
	1600 1550 3250 1550
Wire Wire Line
	3250 1700 1600 1700
$Comp
L power:GND #PWR01
U 1 1 5FF8C892
P 2600 1900
F 0 "#PWR01" H 2600 1650 50  0001 C CNN
F 1 "GND" H 2605 1727 50  0000 C CNN
F 2 "" H 2600 1900 50  0001 C CNN
F 3 "" H 2600 1900 50  0001 C CNN
	1    2600 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 1850 2150 1850
Wire Wire Line
	2600 1850 2600 1900
Wire Wire Line
	1600 2000 2150 2000
Wire Wire Line
	2150 2000 2150 1850
Connection ~ 2150 1850
Wire Wire Line
	2150 1850 2600 1850
Wire Wire Line
	1600 2150 3250 2150
Wire Wire Line
	1600 2300 3250 2300
Wire Wire Line
	1600 2750 3250 2750
Wire Wire Line
	3250 2900 1600 2900
Wire Wire Line
	3250 3500 1600 3500
NoConn ~ 1600 2450
NoConn ~ 1600 2600
NoConn ~ 1600 3050
NoConn ~ 1600 3200
Wire Wire Line
	4450 4550 4700 4550
Wire Wire Line
	5750 4550 5800 4550
Wire Wire Line
	5800 4550 5800 4200
Wire Wire Line
	5800 4200 4450 4200
Wire Wire Line
	1600 3350 3250 3350
Wire Wire Line
	5950 2650 4450 2650
Wire Wire Line
	4450 2750 5950 2750
Wire Wire Line
	5950 2850 4450 2850
Wire Wire Line
	8100 2300 7000 2300
Wire Wire Line
	7000 2100 8100 2100
Wire Wire Line
	7000 1800 8100 1800
Wire Wire Line
	5950 3150 4450 3150
Wire Wire Line
	4450 3050 5950 3050
$Sheet
S 5950 1200 1050 2550
U 5F91C7D3
F0 "Host" 50
F1 "host.sch" 50
F2 "HOST_RX" I L 5950 3050 50 
F3 "HOST_TX" O L 5950 3150 50 
F4 "I2C_SCL" B R 7000 1800 50 
F5 "I2C_SDA" B R 7000 1900 50 
F6 "MEMS_INT" O R 7000 2300 50 
F7 "~SLEEP_OBD~" B L 5950 2750 50 
F8 "~RESET_OBD_SW~" B L 5950 2650 50 
F9 "~RESET_OBD_HW~" B L 5950 2850 50 
F10 "MEMS_CS" O R 7000 2000 50 
F11 "MEMS_SA0" O R 7000 2100 50 
$EndSheet
NoConn ~ 8100 2400
Wire Wire Line
	7000 1900 8100 1900
Wire Wire Line
	7000 2000 8100 2000
$Sheet
S 8100 1650 850  900 
U 5F988046
F0 "Reader MEMs" 50
F1 "reader_mems.sch" 50
F2 "MEMS_SCL" B L 8100 1800 50 
F3 "MEMS_SDA" B L 8100 1900 50 
F4 "MEMS_INT1" I L 8100 2300 50 
F5 "MEMS_CS" I L 8100 2000 50 
F6 "MEMS_SDO_SA0" B L 8100 2100 50 
F7 "MEMS_INT2" I L 8100 2400 50 
$EndSheet
$Sheet
S 2000 4450 750  250 
U 5F8ADA45
F0 "Power Supply" 50
F1 "power_supply.sch" 50
F2 "Analog_Voltage" O R 2750 4550 50 
$EndSheet
$EndSCHEMATC