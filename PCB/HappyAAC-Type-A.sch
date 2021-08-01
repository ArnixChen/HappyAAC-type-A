EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "HappyAAC type A"
Date "2021-08-02"
Rev "0.2e"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L User_Mcu_Module:DFPlayer_Mini U1
U 1 1 5E7F36F8
P 2850 6350
F 0 "U1" H 2875 6967 50  0000 C CNN
F 1 "DFPlayer_Mini" H 2875 6876 50  0000 C CNN
F 2 "footprintLib:DFPlayer_Mini_BigPad" H 2900 5950 50  0001 C CIN
F 3 "https://store.arduino.cc/usa/arduino-micro" H 2800 5900 50  0001 C CNN
	1    2850 6350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J8
U 1 1 5E8197DC
P 8450 1550
F 0 "J8" H 8368 1225 50  0000 C CNN
F 1 "PWR_SW" H 8368 1316 50  0000 C CNN
F 2 "footprintLib:PEC-2503-2H.JST_XH_S2B-XH-A_1x02_P2.50mm_Horizontal" H 8450 1550 50  0001 C CNN
F 3 "~" H 8450 1550 50  0001 C CNN
	1    8450 1550
	-1   0    0    1   
$EndComp
$Comp
L power:VDD #PWR012
U 1 1 5E81A0BB
P 9150 1350
F 0 "#PWR012" H 9150 1200 50  0001 C CNN
F 1 "VDD" H 9167 1523 50  0000 C CNN
F 2 "" H 9150 1350 50  0001 C CNN
F 3 "" H 9150 1350 50  0001 C CNN
	1    9150 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 1450 9150 1450
Text Notes 8400 1150 0    50   ~ 0
Power Switch
$Comp
L power:+5V #PWR010
U 1 1 5E820360
P 8700 1900
F 0 "#PWR010" H 8700 1750 50  0001 C CNN
F 1 "+5V" H 8715 2073 50  0000 C CNN
F 2 "" H 8700 1900 50  0001 C CNN
F 3 "" H 8700 1900 50  0001 C CNN
	1    8700 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D1
U 1 1 5E8212A6
P 9050 2150
F 0 "D1" H 9050 1934 50  0000 C CNN
F 1 "SM340A" H 9050 2025 50  0000 C CNN
F 2 "footprintLib:SMA_DO214AC_M_SM340A" H 9050 2150 50  0001 C CNN
F 3 "~" H 9050 2150 50  0001 C CNN
	1    9050 2150
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Schottky D2
U 1 1 5E821F59
P 9550 2150
F 0 "D2" H 9550 2366 50  0000 C CNN
F 1 "SM340A" H 9550 2275 50  0000 C CNN
F 2 "footprintLib:SMA_DO214AC_M_SM340A" H 9550 2150 50  0001 C CNN
F 3 "~" H 9550 2150 50  0001 C CNN
	1    9550 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 2150 8700 2150
Wire Wire Line
	9700 2150 9700 2350
Wire Wire Line
	9700 2350 8450 2350
$Comp
L Connector_Generic:Conn_01x02 J9
U 1 1 5E8237AB
P 8650 2650
F 0 "J9" H 8800 2700 50  0000 C CNN
F 1 "Batt" H 8650 2800 50  0000 C CNN
F 2 "footprintLib:PEC-2503-2H.JST_XH_S2B-XH-A_1x02_P2.50mm_Horizontal" H 8650 2650 50  0001 C CNN
F 3 "~" H 8650 2650 50  0001 C CNN
	1    8650 2650
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5E824BB6
P 8850 2850
F 0 "#PWR011" H 8850 2600 50  0001 C CNN
F 1 "GND" H 8855 2677 50  0000 C CNN
F 2 "" H 8850 2850 50  0001 C CNN
F 3 "" H 8850 2850 50  0001 C CNN
	1    8850 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5E81F3C1
P 7700 2350
F 0 "#PWR09" H 7700 2100 50  0001 C CNN
F 1 "GND" H 7705 2177 50  0000 C CNN
F 2 "" H 7700 2350 50  0001 C CNN
F 3 "" H 7700 2350 50  0001 C CNN
	1    7700 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR013
U 1 1 5E834808
P 9200 2600
F 0 "#PWR013" H 9200 2450 50  0001 C CNN
F 1 "+BATT" H 9215 2773 50  0000 C CNN
F 2 "" H 9200 2600 50  0001 C CNN
F 3 "" H 9200 2600 50  0001 C CNN
	1    9200 2600
	1    0    0    -1  
$EndComp
NoConn ~ 3450 6850
NoConn ~ 3450 6650
NoConn ~ 3450 6500
NoConn ~ 3450 6400
Wire Wire Line
	2300 6000 2000 6000
$Comp
L power:GND #PWR03
U 1 1 5E841920
P 2150 6950
F 0 "#PWR03" H 2150 6700 50  0001 C CNN
F 1 "GND" H 2155 6777 50  0000 C CNN
F 2 "" H 2150 6950 50  0001 C CNN
F 3 "" H 2150 6950 50  0001 C CNN
	1    2150 6950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5E841CDE
P 3550 6950
F 0 "#PWR04" H 3550 6700 50  0001 C CNN
F 1 "GND" H 3555 6777 50  0000 C CNN
F 2 "" H 3550 6950 50  0001 C CNN
F 3 "" H 3550 6950 50  0001 C CNN
	1    3550 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 6750 3450 6750
$Comp
L User_Mcu_Module:Sparkfun_Pro_Micro U3
U 1 1 5E850D01
P 9285 4735
F 0 "U3" H 8960 5585 50  0000 C CNN
F 1 "Sparkfun_Pro_Micro" H 9285 5485 50  0000 C CNN
F 2 "footprintLib:Sparkfun_Pro_Micro_BigPad" H 9385 3785 50  0001 C CIN
F 3 "https://store.arduino.cc/usa/arduino-micro" H 9235 4785 50  0001 C CNN
	1    9285 4735
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR014
U 1 1 5E85305B
P 10590 4385
F 0 "#PWR014" H 10590 4235 50  0001 C CNN
F 1 "VDD" H 10607 4558 50  0000 C CNN
F 2 "" H 10590 4385 50  0001 C CNN
F 3 "" H 10590 4385 50  0001 C CNN
	1    10590 4385
	1    0    0    -1  
$EndComp
NoConn ~ 9860 4185
Text Label 10110 4285 0    50   ~ 0
RESET
$Comp
L power:GND #PWR015
U 1 1 5E854AF8
P 10590 4885
F 0 "#PWR015" H 10590 4635 50  0001 C CNN
F 1 "GND" H 10595 4712 50  0000 C CNN
F 2 "" H 10590 4885 50  0001 C CNN
F 3 "" H 10590 4885 50  0001 C CNN
	1    10590 4885
	1    0    0    -1  
$EndComp
Text Notes 8310 3835 0    50   ~ 0
VIN->LDO->5V\nSparkfun Pro Micro's VIN range: 7V-12V\nATmega32u4's operation voltage(5V pin): 2.7V-5.5V
Text Label 8470 4385 0    50   ~ 0
SDA
Text Label 8470 4485 0    50   ~ 0
SCL
Text Label 8010 4585 0    50   ~ 0
D4
Text Label 8010 4685 0    50   ~ 0
D5
Text Label 8010 4785 0    50   ~ 0
D6
Text Label 8010 4885 0    50   ~ 0
D7
Text Label 8010 5285 0    50   ~ 0
D14
Text Label 10330 5285 0    50   ~ 0
D15
Text Label 8010 5085 0    50   ~ 0
D9
Text Label 8010 4985 0    50   ~ 0
D8
$Comp
L Connector_Generic:Conn_01x02 J10
U 1 1 5E8831C5
P 1750 6850
F 0 "J10" H 1750 7000 50  0000 C CNN
F 1 "SPEAKER" H 1750 7100 50  0000 C CNN
F 2 "footprintLib:PEC-2503-2H.JST_XH_S2B-XH-A_1x02_P2.50mm_Horizontal" H 1750 6850 50  0001 C CNN
F 3 "~" H 1750 6850 50  0001 C CNN
	1    1750 6850
	-1   0    0    1   
$EndComp
Text Notes 1560 7340 0    50   ~ 0
SPEAKER\nCONNECTOR
Text Notes 2400 5600 0    50   ~ 0
operation voltage: 3.2V-5.0V
Text Notes 8360 3535 0    100  ~ 0
Sparkfun Pro Micro
Text Notes 2400 5450 0    100  ~ 0
DFPlayer MINI
Text Notes 8085 2830 0    50   ~ 0
BATTERY\nCONNECTOR
Text Notes 7790 1590 0    50   ~ 0
POWER SWITCH\nCONNECTOR
$Comp
L Connector_Generic:Conn_01x06 J11
U 1 1 5E89C5B8
P 6165 1605
F 0 "J11" H 6083 2022 50  0000 C CNN
F 1 "ICSP" H 6083 1931 50  0000 C CNN
F 2 "footprintLib:ICSP_PinHeader_1x06_P2.54mm_Horizontal" H 6165 1605 50  0001 C CNN
F 3 "~" H 6165 1605 50  0001 C CNN
	1    6165 1605
	-1   0    0    -1  
$EndComp
Text Notes 6065 1005 0    100  ~ 0
ICSP CONNECTOR
$Comp
L power:VDD #PWR07
U 1 1 5E89F42E
P 6515 1305
F 0 "#PWR07" H 6515 1155 50  0001 C CNN
F 1 "VDD" H 6532 1478 50  0000 C CNN
F 2 "" H 6515 1305 50  0001 C CNN
F 3 "" H 6515 1305 50  0001 C CNN
	1    6515 1305
	1    0    0    -1  
$EndComp
Wire Wire Line
	6515 1305 6515 1505
Wire Wire Line
	6365 1405 7015 1405
Wire Wire Line
	6365 1605 7015 1605
Wire Wire Line
	6365 1705 7015 1705
Wire Wire Line
	6365 1805 7015 1805
Wire Wire Line
	6365 1905 6515 1905
Text Label 6715 1405 0    50   ~ 0
D14
Text Label 6715 1605 0    50   ~ 0
D15
Wire Wire Line
	6515 1505 6365 1505
Text Label 6715 1705 0    50   ~ 0
D16
Text Label 6715 1805 0    50   ~ 0
RESET
$Comp
L power:GND #PWR08
U 1 1 5E8B50B4
P 6515 2105
F 0 "#PWR08" H 6515 1855 50  0001 C CNN
F 1 "GND" H 6520 1932 50  0000 C CNN
F 2 "" H 6515 2105 50  0001 C CNN
F 3 "" H 6515 2105 50  0001 C CNN
	1    6515 2105
	1    0    0    -1  
$EndComp
Wire Wire Line
	6515 1905 6515 2105
Wire Wire Line
	2150 6750 2300 6750
$Comp
L User_Mcu_Module:BB-4056 U2
U 1 1 5E81EE27
P 8150 2500
F 0 "U2" H 8150 3117 50  0000 C CNN
F 1 "BB-4056" H 8150 3026 50  0000 C CNN
F 2 "footprintLib:BB-4056" H 8200 2700 50  0001 C CIN
F 3 "https://store.arduino.cc/usa/arduino-micro" V 7600 2650 50  0001 C CNN
	1    8150 2500
	1    0    0    -1  
$EndComp
Connection ~ 8700 2150
Wire Wire Line
	8450 2150 8700 2150
Wire Wire Line
	800  6100 1550 6100
Wire Wire Line
	1850 6100 2300 6100
$Comp
L Device:R R1
U 1 1 5EA07E74
P 1700 6100
F 0 "R1" V 1750 6300 50  0000 C CNN
F 1 "1K" V 1750 5900 50  0000 C CNN
F 2 "footprintLib:RES_DIP_0.25W_10mm" V 1630 6100 50  0001 C CNN
F 3 "~" H 1700 6100 50  0001 C CNN
	1    1700 6100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8850 2650 9200 2650
Wire Wire Line
	9200 2600 9200 2650
Wire Wire Line
	8850 2750 8850 2850
Wire Wire Line
	9150 1350 9150 1450
Wire Wire Line
	8650 1550 9300 1550
Wire Wire Line
	9200 2150 9300 2150
Wire Wire Line
	9300 1550 9300 1750
Connection ~ 9300 2150
Wire Wire Line
	9300 2150 9400 2150
Wire Wire Line
	7700 2150 7700 2350
Wire Wire Line
	7850 2350 7700 2350
Connection ~ 7700 2350
Wire Wire Line
	9200 2650 9700 2650
Wire Wire Line
	9700 2650 9700 2350
Connection ~ 9200 2650
Connection ~ 9700 2350
Wire Wire Line
	1950 6650 2300 6650
Wire Wire Line
	7960 4385 8710 4385
Wire Wire Line
	7960 4485 8710 4485
Wire Wire Line
	7960 4585 8710 4585
Wire Wire Line
	7960 4685 8710 4685
Wire Wire Line
	7960 4785 8710 4785
Wire Wire Line
	7960 4885 8710 4885
Wire Wire Line
	7960 4985 8710 4985
Wire Wire Line
	7960 5085 8710 5085
Wire Wire Line
	7960 5285 8710 5285
Wire Wire Line
	7960 4185 8710 4185
Text Label 8010 4285 0    50   ~ 0
D1
Text Label 1950 6650 0    50   ~ 0
SPK1
$Comp
L Device:CP1 C1
U 1 1 5EDAB8C5
P 10100 1200
F 0 "C1" V 10352 1200 50  0000 C CNN
F 1 "1.5F" V 10261 1200 50  0000 C CNN
F 2 "footprintLib:CAP_pol_DIP_D8mm" H 10100 1200 50  0001 C CNN
F 3 "~" H 10100 1200 50  0001 C CNN
	1    10100 1200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5EDB0779
P 10250 1300
F 0 "#PWR016" H 10250 1050 50  0001 C CNN
F 1 "GND" H 10255 1127 50  0000 C CNN
F 2 "" H 10250 1300 50  0001 C CNN
F 3 "" H 10250 1300 50  0001 C CNN
	1    10250 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 1200 10250 1300
Text Notes 10200 1150 0    100  ~ 0
Super\nCapacitor
Text Label 8750 2150 0    50   ~ 0
+5V
Text Label 8650 1450 0    50   ~ 0
VDD
Text Label 8650 1550 0    50   ~ 0
SRC_FOR_VDD
Text Label 10250 1300 0    50   ~ 0
GND
Text Label 9350 2650 0    50   ~ 0
VBATT
Text Label 6515 2055 0    50   ~ 0
GND
Text Label 2000 6000 0    50   ~ 0
CAP_IN
Wire Wire Line
	3550 6750 3550 6950
Text Label 3550 6900 0    50   ~ 0
GND
Wire Wire Line
	2150 6950 2150 6900
Wire Wire Line
	9150 1450 9350 1450
Connection ~ 9150 1450
Wire Wire Line
	9300 1750 9450 1750
Connection ~ 9300 1750
Wire Wire Line
	9300 1750 9300 2150
Wire Wire Line
	9750 1750 9950 1750
Text Label 9665 1450 0    50   ~ 0
CAP_IN
$Comp
L Connector:AudioJack4_Ground J18
U 1 1 5E95B8BA
P 1450 6450
F 0 "J18" H 950 6400 50  0000 C CNN
F 1 "AudioJack" H 1075 6525 50  0000 C CNN
F 2 "footprintLib:Jack_3.5mm_Arnix_5pin_AudioJack4_Ground_Horizontal" H 1450 6450 50  0001 C CNN
F 3 "~" H 1450 6450 50  0001 C CNN
	1    1450 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 6650 1950 6750
Wire Wire Line
	1950 6850 2300 6850
Text Label 1950 6850 0    50   ~ 0
SPK2
$Comp
L power:GND #PWR01
U 1 1 5E9B45EF
P 1450 6950
F 0 "#PWR01" H 1450 6700 50  0001 C CNN
F 1 "GND" H 1455 6777 50  0000 C CNN
F 2 "" H 1450 6950 50  0001 C CNN
F 3 "" H 1450 6950 50  0001 C CNN
	1    1450 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 2150 7700 2150
Text Label 8210 4185 0    50   ~ 0
ROW1
Text Label 8010 4485 0    50   ~ 0
D3
Text Label 850  6200 0    50   ~ 0
D8
Text Label 850  6100 0    50   ~ 0
D9
Text Label 1050 6100 0    50   ~ 0
DFP_RX
Text Label 1050 6200 0    50   ~ 0
DFP_TX
Text Label 8210 5285 0    50   ~ 0
COL5
Wire Wire Line
	7960 4285 8710 4285
Wire Wire Line
	3450 6000 3900 6000
Text Label 3500 6000 0    50   ~ 0
DFP_BUSY
Text Label 8210 4985 0    50   ~ 0
DFP_TX
Text Label 10590 4485 2    50   ~ 0
DC
Text Label 8210 4585 0    50   ~ 0
COL1
Text Label 8130 4685 0    50   ~ 0
IR_SEND
Text Label 8210 4785 0    50   ~ 0
COL2
Text Label 8210 4885 0    50   ~ 0
IR_RECV
Text Label 8210 5085 0    50   ~ 0
DFP_RX
Text Label 8210 5185 0    50   ~ 0
COL3
Text Label 4665 3650 0    50   ~ 0
COL1
Text Label 4665 3550 0    50   ~ 0
COL2
Text Label 4665 3450 0    50   ~ 0
COL3
Text Label 4665 3350 0    50   ~ 0
COL4
Text Label 4665 3250 0    50   ~ 0
COL5
Text Label 4665 3150 0    50   ~ 0
COL6
Text Label 4665 3050 0    50   ~ 0
COL7
Text Label 4665 2950 0    50   ~ 0
COL8
Text Label 3875 3650 0    50   ~ 0
ROW1
Wire Wire Line
	3825 3550 4120 3550
Wire Wire Line
	3825 3450 4120 3450
Wire Wire Line
	3825 3350 4120 3350
Wire Wire Line
	3825 3250 4120 3250
Wire Wire Line
	3825 3150 4120 3150
Wire Wire Line
	3825 3050 4120 3050
Text Label 3875 2950 0    50   ~ 0
ROW1
Text Label 3875 3050 0    50   ~ 0
ROW1
Text Label 3875 3150 0    50   ~ 0
ROW1
Text Label 3875 3250 0    50   ~ 0
ROW1
Text Label 3875 3350 0    50   ~ 0
ROW1
Text Label 3875 3450 0    50   ~ 0
ROW1
Text Label 3875 3550 0    50   ~ 0
ROW1
Wire Wire Line
	8700 1900 8700 2150
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 5F96B7E0
P 1230 4460
F 0 "J1" H 1148 4135 50  0000 C CNN
F 1 "IR_RX" H 1148 4226 50  0000 C CNN
F 2 "Connector_JST:JST_EH_B3B-EH-A_1x03_P2.50mm_Vertical" H 1230 4460 50  0001 C CNN
F 3 "~" H 1230 4460 50  0001 C CNN
	1    1230 4460
	-1   0    0    1   
$EndComp
Text Notes 1030 4060 0    100  ~ 0
IR Receiver
Wire Wire Line
	1430 4360 1730 4360
Wire Wire Line
	1430 4460 1730 4460
Wire Wire Line
	1430 4560 1730 4560
Text Label 1580 4360 0    50   ~ 0
VDD
Text Label 1580 4460 0    50   ~ 0
GND
Text Label 1730 4560 2    50   ~ 0
IR_RECV
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 5FA85921
P 2260 3130
F 0 "J3" H 2178 2805 50  0000 C CNN
F 1 "VOL_TUNNER" H 2178 2896 50  0000 C CNN
F 2 "Connector_JST:JST_EH_B3B-EH-A_1x03_P2.50mm_Vertical" H 2260 3130 50  0001 C CNN
F 3 "~" H 2260 3130 50  0001 C CNN
	1    2260 3130
	-1   0    0    1   
$EndComp
Text Notes 2120 2740 0    100  ~ 0
Volume Tunner
Wire Wire Line
	2460 3030 3070 3030
Wire Wire Line
	2460 3130 3070 3130
Wire Wire Line
	2460 3230 3075 3230
Text Label 2920 3030 0    50   ~ 0
VDD
Text Label 2920 3130 0    50   ~ 0
GND
Text Notes 845  2715 0    100  ~ 0
IR Transmitter
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 5FB74F5A
P 1245 3115
F 0 "J2" H 1163 2790 50  0000 C CNN
F 1 "IR_TX" H 1163 2881 50  0000 C CNN
F 2 "Connector_JST:JST_EH_B3B-EH-A_1x03_P2.50mm_Vertical" H 1245 3115 50  0001 C CNN
F 3 "~" H 1245 3115 50  0001 C CNN
	1    1245 3115
	-1   0    0    1   
$EndComp
Wire Wire Line
	1445 3015 1745 3015
Wire Wire Line
	1445 3115 1745 3115
Wire Wire Line
	1445 3215 1745 3215
Text Label 1595 3015 0    50   ~ 0
VDD
Text Label 1595 3115 0    50   ~ 0
GND
Text Label 1745 3215 2    50   ~ 0
IR_SEND
Text Label 2150 6750 0    50   ~ 0
GND
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5FC50B75
P 2150 6900
F 0 "#FLG01" H 2150 6975 50  0001 C CNN
F 1 "PWR_FLAG" V 2250 7000 50  0000 L CNN
F 2 "" H 2150 6900 50  0001 C CNN
F 3 "~" H 2150 6900 50  0001 C CNN
	1    2150 6900
	0    1    1    0   
$EndComp
Connection ~ 2150 6900
Wire Wire Line
	2150 6900 2150 6750
$Comp
L power:GND #PWR06
U 1 1 5F75BDE4
P 6545 4470
F 0 "#PWR06" H 6545 4220 50  0001 C CNN
F 1 "GND" H 6550 4297 50  0000 C CNN
F 2 "" H 6545 4470 50  0001 C CNN
F 3 "" H 6545 4470 50  0001 C CNN
	1    6545 4470
	0    -1   -1   0   
$EndComp
Text Label 8010 4185 0    50   ~ 0
D0
Text Label 8010 4385 0    50   ~ 0
D2
Text Label 7700 2150 0    50   ~ 0
GND
Text Label 8850 2775 0    50   ~ 0
GND
Text Label 10590 4785 2    50   ~ 0
COL4
Wire Wire Line
	7960 5185 8710 5185
Text Label 8010 5185 0    50   ~ 0
D10
Text Label 10330 5185 0    50   ~ 0
D16
Wire Wire Line
	9860 4285 10310 4285
Text Label 8420 5285 0    25   ~ 0
MISO
Text Label 10590 5185 2    25   ~ 0
MOSI
Text Label 10590 5285 2    25   ~ 0
SCK
Text Label 6915 1405 0    25   ~ 0
MISO
Text Label 6915 1605 0    25   ~ 0
SCK
Text Label 6915 1705 0    25   ~ 0
MOSI
Text Label 9890 4785 0    50   ~ 0
A0
Text Label 9890 4685 0    50   ~ 0
A1
Text Label 9890 4585 0    50   ~ 0
A2
Text Label 6295 4470 0    50   ~ 0
GND
Wire Wire Line
	1450 6850 1450 6950
Text Label 1450 6900 0    50   ~ 0
GND
Wire Wire Line
	1650 6350 2300 6350
NoConn ~ 1650 6450
NoConn ~ 1650 6550
Wire Wire Line
	1650 6650 1850 6650
Wire Wire Line
	1850 6450 1850 6650
Wire Wire Line
	1850 6450 2300 6450
Wire Wire Line
	800  6200 2300 6200
Text Label 4945 4570 0    50   ~ 0
VDD
$Comp
L power:VDD #PWR0101
U 1 1 5FEEE8E9
P 4745 4570
F 0 "#PWR0101" H 4745 4420 50  0001 C CNN
F 1 "VDD" V 4760 4697 50  0000 L CNN
F 2 "" H 4745 4570 50  0001 C CNN
F 3 "" H 4745 4570 50  0001 C CNN
	1    4745 4570
	0    -1   -1   0   
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5FEF17C2
P 9950 1200
F 0 "#FLG0101" H 9950 1275 50  0001 C CNN
F 1 "PWR_FLAG" V 9950 1327 50  0000 L CNN
F 2 "" H 9950 1200 50  0001 C CNN
F 3 "~" H 9950 1200 50  0001 C CNN
	1    9950 1200
	0    -1   -1   0   
$EndComp
Connection ~ 9950 1200
Text Label 9890 4485 0    50   ~ 0
A3
$Comp
L User_Mcu_Module:Conn_03x04_Odd_Even_VSG J14_GPIO1
U 1 1 600431C3
P 4645 4995
F 0 "J14_GPIO1" V 4945 5320 50  0000 R CNN
F 1 "Conn_03x04_Odd_Even_VSG" V 4170 5295 50  0000 R CNN
F 2 "footprintLib:PinHeader_3x04_P2.54mm_Vertical_PadHole0.9mm" H 4645 4995 50  0001 C CNN
F 3 "~" H 4645 4995 50  0001 C CNN
	1    4645 4995
	0    -1   -1   0   
$EndComp
$Comp
L User_Mcu_Module:Conn_03x04_Odd_Even_VSG J15_GPIO2
U 1 1 6005B064
P 5195 4995
F 0 "J15_GPIO2" V 5495 5270 50  0000 R CNN
F 1 "Conn_03x04_Odd_Even_VSG" V 4620 5495 50  0000 R CNN
F 2 "footprintLib:PinHeader_3x04_P2.54mm_Vertical_PadHole0.9mm" H 5195 4995 50  0001 C CNN
F 3 "~" H 5195 4995 50  0001 C CNN
	1    5195 4995
	0    -1   -1   0   
$EndComp
$Comp
L User_Mcu_Module:Conn_03x04_Odd_Even_VSG J16_GPIO3
U 1 1 6007AE89
P 5770 4995
F 0 "J16_GPIO3" V 6070 5295 50  0000 R CNN
F 1 "Conn_03x04_Odd_Even_VSG" V 5095 5495 50  0000 R CNN
F 2 "footprintLib:PinHeader_3x04_P2.54mm_Vertical_PadHole0.9mm" H 5770 4995 50  0001 C CNN
F 3 "~" H 5770 4995 50  0001 C CNN
	1    5770 4995
	0    -1   -1   0   
$EndComp
$Comp
L User_Mcu_Module:Conn_03x04_Odd_Even_VSG J17_GPIO4
U 1 1 6007BAE5
P 6345 4995
F 0 "J17_GPIO4" V 6645 5270 50  0000 R CNN
F 1 "Conn_03x04_Odd_Even_VSG" V 5595 5495 50  0000 R CNN
F 2 "footprintLib:PinHeader_3x04_P2.54mm_Vertical_PadHole0.9mm" H 6345 4995 50  0001 C CNN
F 3 "~" H 6345 4995 50  0001 C CNN
	1    6345 4995
	0    -1   -1   0   
$EndComp
Text Label 4545 5295 3    50   ~ 0
D0
Text Label 4645 5295 3    50   ~ 0
D1
Text Label 4745 5295 3    50   ~ 0
D4
Text Label 4845 5295 3    50   ~ 0
D5
Wire Wire Line
	4545 5195 4545 5295
Wire Wire Line
	4645 5195 4645 5295
Wire Wire Line
	4745 5195 4745 5295
Wire Wire Line
	4845 5195 4845 5295
Text Label 5095 5295 3    50   ~ 0
D6
Text Label 5195 5295 3    50   ~ 0
D7
Text Label 5295 5295 3    50   ~ 0
D8
Text Label 5395 5295 3    50   ~ 0
D9
Wire Wire Line
	5095 5195 5095 5295
Wire Wire Line
	5195 5195 5195 5295
Wire Wire Line
	5295 5195 5295 5295
Wire Wire Line
	5395 5195 5395 5295
Text Label 5670 5295 3    50   ~ 0
D10
Text Label 5770 5295 3    50   ~ 0
D14
Wire Wire Line
	5670 5195 5670 5295
Wire Wire Line
	5770 5195 5770 5295
Wire Wire Line
	5870 5195 5870 5295
Wire Wire Line
	5970 5195 5970 5295
Text Label 5870 5295 3    50   ~ 0
D15
Text Label 5970 5295 3    50   ~ 0
D16
Text Label 6245 5295 3    50   ~ 0
A0
Text Label 6345 5295 3    50   ~ 0
A1
Text Label 6445 5295 3    50   ~ 0
A2
Text Label 6545 5295 3    50   ~ 0
A3
Wire Wire Line
	6245 5195 6245 5295
Wire Wire Line
	6345 5195 6345 5295
Wire Wire Line
	6445 5195 6445 5295
Wire Wire Line
	6545 5195 6545 5295
Wire Wire Line
	4745 4695 4745 4570
Wire Wire Line
	6445 4570 6445 4695
Wire Wire Line
	5870 4695 5870 4570
Connection ~ 5870 4570
Wire Wire Line
	5870 4570 6445 4570
Wire Wire Line
	5295 4695 5295 4570
Wire Wire Line
	4745 4570 5295 4570
Connection ~ 5295 4570
Wire Wire Line
	5295 4570 5870 4570
Wire Wire Line
	4845 4695 4845 4470
Wire Wire Line
	4845 4470 5395 4470
Wire Wire Line
	6545 4470 6545 4695
Wire Wire Line
	5395 4695 5395 4470
Connection ~ 5395 4470
Wire Wire Line
	5395 4470 5970 4470
Wire Wire Line
	5970 4695 5970 4470
Connection ~ 5970 4470
Wire Wire Line
	5970 4470 6545 4470
Connection ~ 6545 4470
Connection ~ 4745 4570
Text Label 10160 5185 2    50   ~ 0
COL7
Text Label 8210 4285 0    50   ~ 0
ROW2
Wire Wire Line
	9860 4485 10590 4485
Wire Wire Line
	9860 4585 10590 4585
Wire Wire Line
	9860 4785 10590 4785
Wire Wire Line
	9860 4685 10590 4685
Wire Wire Line
	9860 4385 10590 4385
Text Notes 7200 6315 0    50   ~ 0
Digital pins available For Interrupts on ATmega32U4 are \n0, 1, 2, 3, 7 for the sake of supporting wake-up function we choose\nROW1 at D0\nROW2 at D1\nIR_RECV at D7\n\nFor SoftwareSerial Not all pins on the Leonardo and Micro support change interrupts, \nso only the following can be used for RX: 8, 9, 10, 11, 14 (MISO), 15 (SCK), 16 (MOSI). 
Text Label 10160 5285 2    50   ~ 0
COL8
Text Label 10435 4885 0    50   ~ 0
GND
Wire Wire Line
	9860 4885 10590 4885
Wire Wire Line
	9860 4985 9860 4885
Connection ~ 9860 4885
Wire Wire Line
	9860 5085 9860 4985
Connection ~ 9860 4985
Wire Wire Line
	9860 5185 10590 5185
Wire Wire Line
	9860 5285 10590 5285
Text Label 10590 4585 2    50   ~ 0
COL6
Wire Wire Line
	2130 4310 2380 4310
Wire Wire Line
	2130 4410 2380 4410
Wire Wire Line
	2130 4510 2380 4510
Wire Wire Line
	2130 4610 2380 4610
Text Label 2130 4310 0    50   ~ 0
GND
Text Label 2130 4410 0    50   ~ 0
VDD
Text Label 2130 4510 0    50   ~ 0
SCL
Text Label 2130 4610 0    50   ~ 0
SDA
Wire Wire Line
	2880 4310 3130 4310
Wire Wire Line
	2880 4410 3130 4410
Wire Wire Line
	2880 4510 3130 4510
Wire Wire Line
	2880 4610 3130 4610
Text Label 3130 4310 2    50   ~ 0
GND
Text Label 2980 4410 0    50   ~ 0
VDD
Text Label 3130 4510 2    50   ~ 0
SCL
Text Label 3130 4610 2    50   ~ 0
SDA
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J4
U 1 1 5F9A50AA
P 2680 4510
F 0 "J4" H 2598 4085 50  0000 C CNN
F 1 "I2C" H 2598 4176 50  0000 C CNN
F 2 "footprintLib:PinHeader_2x04_P2.54mm_Vertical_PadHole0.9mm" H 2680 4510 50  0001 C CNN
F 3 "~" H 2680 4510 50  0001 C CNN
	1    2680 4510
	-1   0    0    1   
$EndComp
Text Notes 2205 4010 0    100  ~ 0
I2C DEVICE\nCONNECTOR
Text Notes 9290 3190 0    39   ~ 0
BEFORE BURNING YOUR TEST CODE to the BOARD\n>>> JP1 is RECOMMENTED to be CONNECTED <<<\n\nOr you will see ERROR messages on Arduino IDE like ...\n\navrdude: verification error, first mismatch at byte 0x0008\n         0xff != 0x0c\n
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J5
U 1 1 5F558403
P 4420 3350
F 0 "J5" H 4470 2750 50  0000 C CNN
F 1 "ROW1" H 4470 2825 50  0000 C CNN
F 2 "footprintLib:PinHeader_2x08_P2.54mm_Vertical" H 4420 3350 50  0001 C CNN
F 3 "~" H 4420 3350 50  0001 C CNN
	1    4420 3350
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J12
U 1 1 600789E5
P 3590 1630
F 0 "J12" H 3508 2047 50  0000 C CNN
F 1 "TFT_LCD" H 3508 1956 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 3590 1630 50  0001 C CNN
F 3 "~" H 3590 1630 50  0001 C CNN
	1    3590 1630
	-1   0    0    1   
$EndComp
Text Notes 3510 995  0    100  ~ 0
SPI for TFT LCD
Wire Wire Line
	3790 1830 4750 1830
Wire Wire Line
	3790 1730 4750 1730
Wire Wire Line
	3790 1630 4750 1630
Wire Wire Line
	3790 1530 4750 1530
Text Label 4180 1830 2    50   ~ 0
LCD_SCL
Text Label 4180 1730 2    50   ~ 0
LCD_SDA
Text Label 4175 1630 2    50   ~ 0
LCD_RST
Text Label 4145 1530 2    50   ~ 0
LCD_DC
Text Label 4145 1430 2    50   ~ 0
LCD_CS
Text Label 4750 1830 2    50   ~ 0
D15
Text Label 4750 1730 2    50   ~ 0
D16
Text Label 4750 1630 2    50   ~ 0
RESET
Text Label 4750 1530 2    50   ~ 0
A3
Text Label 4750 1430 2    50   ~ 0
A2
Text Label 8490 4685 0    50   ~ 0
ROW3
Text Label 10360 4685 2    25   ~ 0
VOLUME_TUNNER
Text Label 3075 3230 2    50   ~ 0
VOLUME_TUNNER
$Comp
L Jumper:SolderJumper_2_Bridged JP4
U 1 1 600A988C
P 3975 1230
F 0 "JP4" H 3965 1095 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 4035 1040 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 3975 1230 50  0001 C CNN
F 3 "~" H 3975 1230 50  0001 C CNN
	1    3975 1230
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 600BF595
P 4165 1230
F 0 "#PWR0102" H 4165 980 50  0001 C CNN
F 1 "GND" H 4170 1057 50  0000 C CNN
F 2 "" H 4165 1230 50  0001 C CNN
F 3 "" H 4165 1230 50  0001 C CNN
	1    4165 1230
	1    0    0    1   
$EndComp
Wire Wire Line
	4125 1230 4165 1230
Wire Wire Line
	3825 1230 3825 1430
Wire Wire Line
	4615 1430 4750 1430
$Comp
L Jumper:SolderJumper_2_Open JP3
U 1 1 6013C743
P 4465 1430
F 0 "JP3" H 4250 1380 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 4525 1240 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4465 1430 50  0001 C CNN
F 3 "~" H 4465 1430 50  0001 C CNN
	1    4465 1430
	1    0    0    1   
$EndComp
Wire Wire Line
	3790 1430 3825 1430
$Comp
L Jumper:SolderJumper_2_Bridged JP1
U 1 1 6015884E
P 9500 1450
F 0 "JP1" H 9485 1555 50  0000 C CNN
F 1 "SolderJumper_2_Bridged" H 9500 1564 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 9500 1450 50  0001 C CNN
F 3 "~" H 9500 1450 50  0001 C CNN
	1    9500 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 1200 9950 1450
Wire Wire Line
	9650 1450 9950 1450
Connection ~ 9950 1450
Wire Wire Line
	9950 1450 9950 1750
$Comp
L Jumper:SolderJumper_2_Open JP2
U 1 1 601919F9
P 9600 1750
F 0 "JP2" H 9600 1863 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 9600 1864 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 9600 1750 50  0001 C CNN
F 3 "~" H 9600 1750 50  0001 C CNN
	1    9600 1750
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP5
U 1 1 601D8678
P 4050 6000
F 0 "JP5" H 4050 6113 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 4050 6114 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4050 6000 50  0001 C CNN
F 3 "~" H 4050 6000 50  0001 C CNN
	1    4050 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 6000 4380 6000
Text Label 4380 6000 2    50   ~ 0
D14
$Comp
L Connector_Generic:Conn_01x04 J13
U 1 1 60213550
P 1415 1610
F 0 "J13" H 1590 1650 50  0000 C CNN
F 1 "SDCard_Conn" H 1755 1480 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 1415 1610 50  0001 C CNN
F 3 "~" H 1415 1610 50  0001 C CNN
	1    1415 1610
	-1   0    0    1   
$EndComp
Text Notes 1465 1205 0    100  ~ 0
SPI for SD CARD
Wire Wire Line
	1615 1710 1925 1710
Wire Wire Line
	1615 1610 2530 1610
Wire Wire Line
	1615 1510 2530 1510
Wire Wire Line
	1615 1410 2530 1410
Text Label 1820 1705 2    50   ~ 0
SD_CS
Text Label 1910 1610 2    50   ~ 0
SD_SCLK
Text Label 1910 1505 2    50   ~ 0
SD_MOSI
Text Label 1915 1410 2    50   ~ 0
SD_MISO
Text Label 2530 1510 2    50   ~ 0
D16
Text Label 2530 1610 2    50   ~ 0
D15
Text Label 2530 1710 2    50   ~ 0
A1
Text Label 2530 1410 2    50   ~ 0
D14
Connection ~ 3825 1430
Wire Wire Line
	3825 1430 4315 1430
$Comp
L Jumper:SolderJumper_2_Open JP6
U 1 1 603BC2F9
P 2075 1710
F 0 "JP6" H 2075 1840 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 2135 1520 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 2075 1710 50  0001 C CNN
F 3 "~" H 2075 1710 50  0001 C CNN
	1    2075 1710
	1    0    0    1   
$EndComp
Wire Wire Line
	2225 1710 2530 1710
NoConn ~ 3450 6250
NoConn ~ 3450 6150
Text Notes 4785 2645 0    100  ~ 0
3x8 KEYPAD MATRIX
Text Notes 5055 4310 0    100  ~ 0
GENERAL GPIO
Wire Wire Line
	4620 2950 4915 2950
Wire Wire Line
	4620 3050 4915 3050
Wire Wire Line
	4620 3150 4915 3150
Wire Wire Line
	4620 3350 4915 3350
Wire Wire Line
	4620 3450 4915 3450
Wire Wire Line
	4620 3550 4915 3550
Wire Wire Line
	4620 3650 4915 3650
Wire Wire Line
	4620 3250 4915 3250
Wire Wire Line
	4120 2950 3825 2950
Wire Wire Line
	4120 3650 3825 3650
Text Label 5880 3650 0    50   ~ 0
COL1
Text Label 5880 3550 0    50   ~ 0
COL2
Text Label 5880 3450 0    50   ~ 0
COL3
Text Label 5880 3350 0    50   ~ 0
COL4
Text Label 5880 3250 0    50   ~ 0
COL5
Text Label 5880 3150 0    50   ~ 0
COL6
Text Label 5880 3050 0    50   ~ 0
COL7
Text Label 5880 2950 0    50   ~ 0
COL8
Text Label 5090 3650 0    50   ~ 0
ROW2
Wire Wire Line
	5040 3550 5335 3550
Wire Wire Line
	5040 3450 5335 3450
Wire Wire Line
	5040 3350 5335 3350
Wire Wire Line
	5040 3250 5335 3250
Wire Wire Line
	5040 3150 5335 3150
Wire Wire Line
	5040 3050 5335 3050
Text Label 5090 2950 0    50   ~ 0
ROW2
Text Label 5090 3050 0    50   ~ 0
ROW2
Text Label 5090 3150 0    50   ~ 0
ROW2
Text Label 5090 3250 0    50   ~ 0
ROW2
Text Label 5090 3350 0    50   ~ 0
ROW2
Text Label 5090 3450 0    50   ~ 0
ROW2
Text Label 5090 3550 0    50   ~ 0
ROW2
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J6
U 1 1 60A37FD1
P 5635 3350
F 0 "J6" H 5685 2750 50  0000 C CNN
F 1 "ROW2" H 5685 2825 50  0000 C CNN
F 2 "footprintLib:PinHeader_2x08_P2.54mm_Vertical" H 5635 3350 50  0001 C CNN
F 3 "~" H 5635 3350 50  0001 C CNN
	1    5635 3350
	-1   0    0    1   
$EndComp
Wire Wire Line
	5835 2950 6130 2950
Wire Wire Line
	5835 3050 6130 3050
Wire Wire Line
	5835 3150 6130 3150
Wire Wire Line
	5835 3350 6130 3350
Wire Wire Line
	5835 3450 6130 3450
Wire Wire Line
	5835 3550 6130 3550
Wire Wire Line
	5835 3650 6130 3650
Wire Wire Line
	5835 3250 6130 3250
Wire Wire Line
	5335 2950 5040 2950
Wire Wire Line
	5335 3650 5040 3650
Text Label 7105 3650 0    50   ~ 0
COL1
Text Label 7105 3550 0    50   ~ 0
COL2
Text Label 7105 3450 0    50   ~ 0
COL3
Text Label 7105 3350 0    50   ~ 0
COL4
Text Label 7105 3250 0    50   ~ 0
COL5
Text Label 7105 3150 0    50   ~ 0
COL6
Text Label 7105 3050 0    50   ~ 0
COL7
Text Label 7105 2950 0    50   ~ 0
COL8
Text Label 6315 3650 0    50   ~ 0
ROW3
Wire Wire Line
	6265 3550 6560 3550
Wire Wire Line
	6265 3450 6560 3450
Wire Wire Line
	6265 3350 6560 3350
Wire Wire Line
	6265 3250 6560 3250
Wire Wire Line
	6265 3150 6560 3150
Wire Wire Line
	6265 3050 6560 3050
Text Label 6315 2950 0    50   ~ 0
ROW3
Text Label 6315 3050 0    50   ~ 0
ROW3
Text Label 6315 3150 0    50   ~ 0
ROW3
Text Label 6315 3250 0    50   ~ 0
ROW3
Text Label 6315 3350 0    50   ~ 0
ROW3
Text Label 6315 3450 0    50   ~ 0
ROW3
Text Label 6315 3550 0    50   ~ 0
ROW3
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J7
U 1 1 60A8B3F6
P 6860 3350
F 0 "J7" H 6910 2750 50  0000 C CNN
F 1 "ROW3" H 6910 2825 50  0000 C CNN
F 2 "footprintLib:PinHeader_2x08_P2.54mm_Vertical" H 6860 3350 50  0001 C CNN
F 3 "~" H 6860 3350 50  0001 C CNN
	1    6860 3350
	-1   0    0    1   
$EndComp
Wire Wire Line
	7060 2950 7355 2950
Wire Wire Line
	7060 3050 7355 3050
Wire Wire Line
	7060 3150 7355 3150
Wire Wire Line
	7060 3350 7355 3350
Wire Wire Line
	7060 3450 7355 3450
Wire Wire Line
	7060 3550 7355 3550
Wire Wire Line
	7060 3650 7355 3650
Wire Wire Line
	7060 3250 7355 3250
Wire Wire Line
	6560 2950 6265 2950
Wire Wire Line
	6560 3650 6265 3650
$EndSCHEMATC
