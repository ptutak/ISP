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
L Device:R_POT RV?
U 1 1 5E8714BC
P 6800 4150
F 0 "RV?" H 6731 4196 50  0000 R CNN
F 1 "10 kOhm" H 6731 4105 50  0000 R CNN
F 2 "" H 6800 4150 50  0001 C CNN
F 3 "~" H 6800 4150 50  0001 C CNN
	1    6800 4150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5100 4150 6650 4150
Wire Wire Line
	6800 5250 4700 5250
Wire Wire Line
	6800 4300 6800 5250
$Comp
L MCU_Module:Arduino_UNO_R3 A?
U 1 1 5E878C73
P 4600 4150
F 0 "A?" H 4600 5331 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 4600 5240 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 4600 4150 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 4600 4150 50  0001 C CNN
	1    4600 4150
	1    0    0    -1  
$EndComp
$Comp
L local:PC PC?
U 1 1 5E88DFB1
P 2300 3550
F 0 "PC?" H 2333 4215 50  0000 C CNN
F 1 "PC" H 2333 4124 50  0000 C CNN
F 2 "" H 2300 3550 50  0001 C CNN
F 3 "" H 2300 3550 50  0001 C CNN
	1    2300 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3550 2900 3550
Wire Wire Line
	2900 3550 2900 3250
Wire Wire Line
	4100 3650 2900 3650
Wire Wire Line
	2900 3650 2900 3850
Wire Wire Line
	6800 3150 4800 3150
Wire Wire Line
	6800 3150 6800 4000
$EndSCHEMATC
