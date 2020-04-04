EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Module:Arduino_UNO_R3 A?
U 1 1 5E878C73
P 4750 4150
F 0 "A?" H 4750 5331 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 4750 5240 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 4750 4150 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 4750 4150 50  0001 C CNN
	1    4750 4150
	1    0    0    -1  
$EndComp
$Comp
L local:PC PC?
U 1 1 5E88DFB1
P 2000 2500
F 0 "PC?" H 2033 3165 50  0000 C CNN
F 1 "PC" H 2033 3074 50  0000 C CNN
F 2 "" H 2000 2500 50  0001 C CNN
F 3 "" H 2000 2500 50  0001 C CNN
	1    2000 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5E87A2AD
P 3700 4600
F 0 "D?" V 3739 4483 50  0000 R CNN
F 1 "LED" V 3648 4483 50  0000 R CNN
F 2 "" H 3700 4600 50  0001 C CNN
F 3 "~" H 3700 4600 50  0001 C CNN
	1    3700 4600
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_DPST_x2 SW?
U 1 1 5E87AFAE
P 3150 3500
F 0 "SW?" H 3150 3735 50  0000 C CNN
F 1 "SW_DPST_x2" H 3150 3644 50  0000 C CNN
F 2 "" H 3150 3500 50  0001 C CNN
F 3 "~" H 3150 3500 50  0001 C CNN
	1    3150 3500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5E87BA0D
P 3150 4850
F 0 "R?" H 3220 4896 50  0000 L CNN
F 1 "10 kOhm" H 3220 4805 50  0000 L CNN
F 2 "" V 3080 4850 50  0001 C CNN
F 3 "~" H 3150 4850 50  0001 C CNN
	1    3150 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3150 5850 3150
Wire Wire Line
	5850 3150 5850 3650
Wire Wire Line
	3150 5000 3150 5250
$Comp
L Device:R R?
U 1 1 5E897C7D
P 3700 4900
F 0 "R?" H 3770 4946 50  0000 L CNN
F 1 "2.2 kOhm" H 3770 4855 50  0000 L CNN
F 2 "" V 3630 4900 50  0001 C CNN
F 3 "~" H 3700 4900 50  0001 C CNN
	1    3700 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 5050 3700 5250
Wire Wire Line
	4850 5250 5850 5250
Wire Wire Line
	3150 3700 3150 3850
$Comp
L Device:R_POT RV?
U 1 1 5E8714BC
P 5850 3800
F 0 "RV?" H 5781 3846 50  0000 R CNN
F 1 "10 kOhm" H 5781 3755 50  0000 R CNN
F 2 "" H 5850 3800 50  0001 C CNN
F 3 "~" H 5850 3800 50  0001 C CNN
	1    5850 3800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5850 3950 5850 5250
Wire Wire Line
	4250 3550 4250 2200
Wire Wire Line
	4250 2200 2600 2200
Wire Wire Line
	2600 2800 4100 2800
Wire Wire Line
	4100 2800 4100 3650
Wire Wire Line
	4100 3650 4250 3650
Wire Wire Line
	3150 3050 3150 3300
Wire Wire Line
	4950 3150 4950 3050
Connection ~ 4950 3150
Wire Wire Line
	3150 3050 4950 3050
Connection ~ 3700 5250
Wire Wire Line
	3700 5250 3150 5250
Wire Wire Line
	3700 4450 3700 3750
Wire Wire Line
	3700 3750 4250 3750
Wire Wire Line
	3700 5250 4650 5250
Wire Wire Line
	4250 3850 3150 3850
Connection ~ 3150 3850
Wire Wire Line
	3150 3850 3150 4700
Wire Wire Line
	5700 3800 5400 3800
Wire Wire Line
	5400 3800 5400 4150
Wire Wire Line
	5400 4150 5250 4150
$EndSCHEMATC
