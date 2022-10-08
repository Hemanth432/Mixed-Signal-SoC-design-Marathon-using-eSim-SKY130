EESchema Schematic File Version 2
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:power
LIBS:eSim_Plot
LIBS:transistors
LIBS:conn
LIBS:eSim_User
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:eSim_Analog
LIBS:eSim_Devices
LIBS:eSim_Digital
LIBS:eSim_Hybrid
LIBS:eSim_Miscellaneous
LIBS:eSim_Power
LIBS:eSim_Sources
LIBS:eSim_Subckt
LIBS:eSim_Nghdl
LIBS:eSim_Ngveri
LIBS:eSim_SKY130
LIBS:eSim_SKY130_Subckts
LIBS:ringcolmult-cache
EELAYER 25 0
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
L eSim_GND #PWR1
U 1 1 633FC0E7
P 1500 4100
F 0 "#PWR1" H 1500 3850 50  0001 C CNN
F 1 "eSim_GND" H 1500 3950 50  0000 C CNN
F 2 "" H 1500 4100 50  0001 C CNN
F 3 "" H 1500 4100 50  0001 C CNN
	1    1500 4100
	1    0    0    -1  
$EndComp
$Comp
L sky130_fd_pr__cap_mim_m3_1 SC2
U 1 1 633FBDB5
P 3600 1350
F 0 "SC2" H 3750 1637 50  0000 C CNN
F 1 "sky130_fd_pr__cap_mim_m3_1" V 3750 1462 50  0000 R CNN
F 2 "" H 3600 -150 50  0001 C CNN
F 3 "" H 3600 1350 50  0001 C CNN
	1    3600 1350
	0    -1   -1   0   
$EndComp
$Comp
L avsd_opamp X1
U 1 1 633FBD62
P 3500 2200
F 0 "X1" H 3500 2200 60  0000 C CNN
F 1 "avsd_opamp" H 3550 2100 60  0000 C CNN
F 2 "" H 3500 2200 60  0001 C CNN
F 3 "" H 3500 2200 60  0001 C CNN
	1    3500 2200
	1    0    0    -1  
$EndComp
$Comp
L sky130_fd_pr__res_generic_nd SC1
U 1 1 633FCE40
P 2300 2350
F 0 "SC1" V 2450 2637 50  0000 C CNN
F 1 "sky130_fd_pr__res_generic_nd" V 2600 3150 50  0000 R CNN
F 2 "" H 2300 850 50  0001 C CNN
F 3 "" H 2300 2350 50  0001 C CNN
	1    2300 2350
	0    -1   -1   0   
$EndComp
$Comp
L sky130_fd_pr__res_generic_nd SC3
U 1 1 633FCEA1
P 4600 2900
F 0 "SC3" H 4750 3187 50  0000 C CNN
F 1 "sky130_fd_pr__res_generic_nd" V 4750 3012 50  0000 R CNN
F 2 "" H 4600 1400 50  0001 C CNN
F 3 "" H 4600 2900 50  0001 C CNN
	1    4600 2900
	1    0    0    -1  
$EndComp
$Comp
L adc_bridge_2 U1
U 1 1 633FD5F1
P 6050 2300
F 0 "U1" H 6050 2300 60  0000 C CNN
F 1 "adc_bridge_2" H 6050 2450 60  0000 C CNN
F 2 "" H 6050 2300 60  0000 C CNN
F 3 "" H 6050 2300 60  0000 C CNN
	1    6050 2300
	1    0    0    -1  
$EndComp
$Comp
L SKY130mode scmode1
U 1 1 633FE0C9
P 5950 1500
F 0 "scmode1" H 5950 1650 98  0000 C CNB
F 1 "SKY130mode" H 5950 1400 118 0000 C CNB
F 2 "" H 5950 1650 60  0001 C CNN
F 3 "" H 5950 1650 60  0001 C CNN
	1    5950 1500
	1    0    0    -1  
$EndComp
$Comp
L sine v4
U 1 1 63402899
P 5000 2800
F 0 "v4" H 4800 2900 60  0000 C CNN
F 1 "sine" H 4800 2750 60  0000 C CNN
F 2 "R1" H 4700 2800 60  0000 C CNN
F 3 "" H 5000 2800 60  0000 C CNN
	1    5000 2800
	1    0    0    -1  
$EndComp
$Comp
L eSim_GND #PWR7
U 1 1 63402908
P 5000 3500
F 0 "#PWR7" H 5000 3250 50  0001 C CNN
F 1 "eSim_GND" H 5000 3350 50  0000 C CNN
F 2 "" H 5000 3500 50  0001 C CNN
F 3 "" H 5000 3500 50  0001 C CNN
	1    5000 3500
	1    0    0    -1  
$EndComp
$Comp
L m21 U2
U 1 1 634029D1
P 4850 4150
F 0 "U2" H 7700 5950 60  0000 C CNN
F 1 "m21" H 7700 6150 60  0000 C CNN
F 2 "" H 7700 6100 60  0000 C CNN
F 3 "" H 7700 6100 60  0000 C CNN
	1    4850 4150
	1    0    0    -1  
$EndComp
$Comp
L eSim_GND #PWR8
U 1 1 63402B5E
P 5400 3500
F 0 "#PWR8" H 5400 3250 50  0001 C CNN
F 1 "eSim_GND" H 5400 3350 50  0000 C CNN
F 2 "" H 5400 3500 50  0001 C CNN
F 3 "" H 5400 3500 50  0001 C CNN
	1    5400 3500
	1    0    0    -1  
$EndComp
$Comp
L eSim_GND #PWR4
U 1 1 634032DF
P 3500 2800
F 0 "#PWR4" H 3500 2550 50  0001 C CNN
F 1 "eSim_GND" H 3500 2650 50  0000 C CNN
F 2 "" H 3500 2800 50  0001 C CNN
F 3 "" H 3500 2800 50  0001 C CNN
	1    3500 2800
	1    0    0    -1  
$EndComp
$Comp
L sine v1
U 1 1 63403411
P 1500 2850
F 0 "v1" H 1300 2950 60  0000 C CNN
F 1 "sine" H 1300 2800 60  0000 C CNN
F 2 "R1" H 1200 2850 60  0000 C CNN
F 3 "" H 1500 2850 60  0000 C CNN
	1    1500 2850
	1    0    0    -1  
$EndComp
$Comp
L DC v3
U 1 1 634035C8
P 3950 1550
F 0 "v3" H 3750 1650 60  0000 C CNN
F 1 "DC" H 3750 1500 60  0000 C CNN
F 2 "R1" H 3650 1550 60  0000 C CNN
F 3 "" H 3950 1550 60  0000 C CNN
	1    3950 1550
	0    -1   -1   0   
$EndComp
$Comp
L eSim_GND #PWR6
U 1 1 6340375B
P 4400 1650
F 0 "#PWR6" H 4400 1400 50  0001 C CNN
F 1 "eSim_GND" H 4400 1500 50  0000 C CNN
F 2 "" H 4400 1650 50  0001 C CNN
F 3 "" H 4400 1650 50  0001 C CNN
	1    4400 1650
	1    0    0    -1  
$EndComp
$Comp
L DC v2
U 1 1 63403850
P 2300 3200
F 0 "v2" H 2100 3300 60  0000 C CNN
F 1 "DC" H 2100 3150 60  0000 C CNN
F 2 "R1" H 2000 3200 60  0000 C CNN
F 3 "" H 2300 3200 60  0000 C CNN
	1    2300 3200
	1    0    0    -1  
$EndComp
$Comp
L eSim_GND #PWR2
U 1 1 634038B7
P 2300 3800
F 0 "#PWR2" H 2300 3550 50  0001 C CNN
F 1 "eSim_GND" H 2300 3650 50  0000 C CNN
F 2 "" H 2300 3800 50  0001 C CNN
F 3 "" H 2300 3800 50  0001 C CNN
	1    2300 3800
	1    0    0    -1  
$EndComp
$Comp
L pulse v5
U 1 1 63405D35
P 5400 3050
F 0 "v5" H 5200 3150 60  0000 C CNN
F 1 "pulse" H 5200 3000 60  0000 C CNN
F 2 "R1" H 5100 3050 60  0000 C CNN
F 3 "" H 5400 3050 60  0000 C CNN
	1    5400 3050
	1    0    0    -1  
$EndComp
$Comp
L adc_bridge_1 U3
U 1 1 63405D9E
P 6050 2650
F 0 "U3" H 6050 2650 60  0000 C CNN
F 1 "adc_bridge_1" H 6050 2800 60  0000 C CNN
F 2 "" H 6050 2650 60  0000 C CNN
F 3 "" H 6050 2650 60  0000 C CNN
	1    6050 2650
	1    0    0    -1  
$EndComp
$Comp
L dac_bridge_1 U7
U 1 1 63404161
P 2200 4650
F 0 "U7" H 2200 4650 60  0000 C CNN
F 1 "dac_bridge_1" H 2200 4800 60  0000 C CNN
F 2 "" H 2200 4650 60  0000 C CNN
F 3 "" H 2200 4650 60  0000 C CNN
	1    2200 4650
	1    0    0    -1  
$EndComp
$Comp
L ringoscillator X2
U 1 1 634052B4
P 3450 4750
F 0 "X2" H 3150 5050 60  0000 C CNN
F 1 "ringoscillator" H 3400 4450 60  0000 C CNN
F 2 "" H 3450 4750 60  0001 C CNN
F 3 "" H 3450 4750 60  0001 C CNN
	1    3450 4750
	1    0    0    -1  
$EndComp
$Comp
L eSim_GND #PWR3
U 1 1 6340598A
P 2750 5100
F 0 "#PWR3" H 2750 4850 50  0001 C CNN
F 1 "eSim_GND" H 2750 4950 50  0000 C CNN
F 2 "" H 2750 5100 50  0001 C CNN
F 3 "" H 2750 5100 50  0001 C CNN
	1    2750 5100
	1    0    0    -1  
$EndComp
$Comp
L smttrigger21 X3
U 1 1 63407163
P 4700 4900
F 0 "X3" H 4400 5250 60  0000 C CNN
F 1 "smttrigger21" H 4650 4550 60  0000 C CNN
F 2 "" H 4700 4900 60  0001 C CNN
F 3 "" H 4700 4900 60  0001 C CNN
	1    4700 4900
	1    0    0    -1  
$EndComp
$Comp
L DC v6
U 1 1 63407217
P 4100 5550
F 0 "v6" H 3900 5650 60  0000 C CNN
F 1 "DC" H 3900 5500 60  0000 C CNN
F 2 "R1" H 3800 5550 60  0000 C CNN
F 3 "" H 4100 5550 60  0000 C CNN
	1    4100 5550
	1    0    0    -1  
$EndComp
$Comp
L eSim_GND #PWR5
U 1 1 6340726E
P 4100 6000
F 0 "#PWR5" H 4100 5750 50  0001 C CNN
F 1 "eSim_GND" H 4100 5850 50  0000 C CNN
F 2 "" H 4100 6000 50  0001 C CNN
F 3 "" H 4100 6000 50  0001 C CNN
	1    4100 6000
	1    0    0    -1  
$EndComp
$Comp
L ringcounter U4
U 1 1 6340B861
P 4500 6800
F 0 "U4" H 7350 8600 60  0000 C CNN
F 1 "ringcounter" H 7350 8800 60  0000 C CNN
F 2 "" H 7350 8750 60  0000 C CNN
F 3 "" H 7350 8750 60  0000 C CNN
	1    4500 6800
	1    0    0    -1  
$EndComp
$Comp
L adc_bridge_1 U5
U 1 1 6340B8E2
P 6000 4950
F 0 "U5" H 6000 4950 60  0000 C CNN
F 1 "adc_bridge_1" H 6000 5100 60  0000 C CNN
F 2 "" H 6000 4950 60  0000 C CNN
F 3 "" H 6000 4950 60  0000 C CNN
	1    6000 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 2350 1500 2400
Wire Wire Line
	1500 2350 2000 2350
Connection ~ 2750 2350
Wire Wire Line
	2750 1350 2750 2350
Wire Wire Line
	3300 1350 2750 1350
Wire Wire Line
	4600 1350 4600 2600
Wire Wire Line
	3900 1350 4600 1350
Wire Wire Line
	2600 2350 2900 2350
Wire Wire Line
	4600 2250 5450 2250
Wire Wire Line
	5000 2350 5450 2350
Wire Wire Line
	5000 3250 5000 3500
Wire Wire Line
	3500 2700 3500 2800
Wire Wire Line
	3500 1550 3500 1800
Wire Wire Line
	4400 1550 4400 1650
Wire Wire Line
	2300 3650 2300 3800
Wire Wire Line
	4200 2200 4600 2200
Connection ~ 4600 2200
Wire Wire Line
	4600 2250 4600 2300
Connection ~ 4600 2300
Wire Wire Line
	2900 4900 2750 4900
Wire Wire Line
	2750 4900 2750 5100
$Comp
L eSim_GND #PWR9
U 1 1 6340BAE5
P 6550 5350
F 0 "#PWR9" H 6550 5100 50  0001 C CNN
F 1 "eSim_GND" H 6550 5200 50  0000 C CNN
F 2 "" H 6550 5350 50  0001 C CNN
F 3 "" H 6550 5350 50  0001 C CNN
	1    6550 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 5350 6550 5000
Wire Wire Line
	6550 5000 6650 5000
Wire Wire Line
	6600 2250 7000 2250
Wire Wire Line
	6600 2350 7000 2350
Wire Wire Line
	6800 2600 6800 2450
Wire Wire Line
	6800 2450 7000 2450
Wire Wire Line
	2750 4600 2900 4600
Wire Wire Line
	2300 2550 2300 2750
Wire Wire Line
	4400 2900 2400 2900
Wire Wire Line
	2400 2900 2400 2650
Wire Wire Line
	2400 2650 2300 2650
Connection ~ 2300 2650
Wire Wire Line
	1500 3300 1500 4100
Wire Wire Line
	2900 2150 2900 4000
Wire Wire Line
	1500 4000 4600 4000
Connection ~ 1500 4000
Wire Wire Line
	3750 4000 3750 2700
Connection ~ 2900 4000
Wire Wire Line
	4600 4000 4600 3200
Connection ~ 3750 4000
Wire Wire Line
	5450 2600 5400 2600
Wire Wire Line
	6600 2600 6800 2600
Wire Wire Line
	1600 4600 1600 4350
Wire Wire Line
	1600 4350 8400 4350
Wire Wire Line
	8400 4350 8400 2250
Wire Wire Line
	4000 4700 4100 4700
Wire Wire Line
	5350 4900 5400 4900
Wire Wire Line
	6550 4900 6650 4900
$Comp
L plot_v1 U13
U 1 1 63422E2C
P 9550 5100
F 0 "U13" H 9550 5600 60  0000 C CNN
F 1 "plot_v1" H 9750 5450 60  0000 C CNN
F 2 "" H 9550 5100 60  0000 C CNN
F 3 "" H 9550 5100 60  0000 C CNN
	1    9550 5100
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U14
U 1 1 634241BB
P 9750 5200
F 0 "U14" H 9750 5700 60  0000 C CNN
F 1 "plot_v1" H 9950 5550 60  0000 C CNN
F 2 "" H 9750 5200 60  0000 C CNN
F 3 "" H 9750 5200 60  0000 C CNN
	1    9750 5200
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U15
U 1 1 63424210
P 10000 5300
F 0 "U15" H 10000 5800 60  0000 C CNN
F 1 "plot_v1" H 10200 5650 60  0000 C CNN
F 2 "" H 10000 5300 60  0000 C CNN
F 3 "" H 10000 5300 60  0000 C CNN
	1    10000 5300
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U16
U 1 1 63424281
P 10150 5400
F 0 "U16" H 10150 5900 60  0000 C CNN
F 1 "plot_v1" H 10350 5750 60  0000 C CNN
F 2 "" H 10150 5400 60  0000 C CNN
F 3 "" H 10150 5400 60  0000 C CNN
	1    10150 5400
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U17
U 1 1 634242F4
P 10300 5500
F 0 "U17" H 10300 6000 60  0000 C CNN
F 1 "plot_v1" H 10500 5850 60  0000 C CNN
F 2 "" H 10300 5500 60  0000 C CNN
F 3 "" H 10300 5500 60  0000 C CNN
	1    10300 5500
	1    0    0    -1  
$EndComp
$Comp
L plot_v1 U18
U 1 1 63424359
P 10450 5600
F 0 "U18" H 10450 6100 60  0000 C CNN
F 1 "plot_v1" H 10650 5950 60  0000 C CNN
F 2 "" H 10450 5600 60  0000 C CNN
F 3 "" H 10450 5600 60  0000 C CNN
	1    10450 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 4900 9550 4900
Wire Wire Line
	9250 5000 9750 5000
Wire Wire Line
	9250 5100 10000 5100
Wire Wire Line
	9250 5200 10150 5200
Wire Wire Line
	9250 5300 10300 5300
Wire Wire Line
	9250 5400 10450 5400
Text GLabel 10450 5400 2    60   BiDi ~ 0
count0
Text GLabel 10300 5300 2    60   BiDi ~ 0
count1
Text GLabel 10150 5200 2    60   BiDi ~ 0
count2
Text GLabel 10000 5100 2    60   BiDi ~ 0
count3
Text GLabel 9750 5000 2    60   BiDi ~ 0
count4
Text GLabel 9550 4900 2    60   BiDi ~ 0
count5
$Comp
L plot_v1 U11
U 1 1 63424E32
P 5400 5100
F 0 "U11" H 5400 5600 60  0000 C CNN
F 1 "plot_v1" H 5600 5450 60  0000 C CNN
F 2 "" H 5400 5100 60  0000 C CNN
F 3 "" H 5400 5100 60  0000 C CNN
	1    5400 5100
	1    0    0    -1  
$EndComp
Text GLabel 5400 4900 3    60   BiDi ~ 0
smt_out
$Comp
L plot_v1 U8
U 1 1 634253D8
P 4050 4900
F 0 "U8" H 4050 5400 60  0000 C CNN
F 1 "plot_v1" H 4250 5250 60  0000 C CNN
F 2 "" H 4050 4900 60  0000 C CNN
F 3 "" H 4050 4900 60  0000 C CNN
	1    4050 4900
	1    0    0    -1  
$EndComp
Text GLabel 4050 4700 3    60   BiDi ~ 0
ringosc
$Comp
L plot_v1 U12
U 1 1 63426421
P 8200 3150
F 0 "U12" H 8200 3650 60  0000 C CNN
F 1 "plot_v1" H 8400 3500 60  0000 C CNN
F 2 "" H 8200 3150 60  0000 C CNN
F 3 "" H 8200 3150 60  0000 C CNN
	1    8200 3150
	0    1    1    0   
$EndComp
Text GLabel 8400 3150 0    60   BiDi ~ 0
mux_out
$Comp
L plot_v1 U9
U 1 1 63426AA3
P 4800 2450
F 0 "U9" H 4800 2950 60  0000 C CNN
F 1 "plot_v1" H 5000 2800 60  0000 C CNN
F 2 "" H 4800 2450 60  0000 C CNN
F 3 "" H 4800 2450 60  0000 C CNN
	1    4800 2450
	1    0    0    -1  
$EndComp
Text GLabel 4800 2250 3    60   BiDi ~ 0
inte_out
$Comp
L plot_v1 U10
U 1 1 63426B5D
P 5200 2550
F 0 "U10" H 5200 3050 60  0000 C CNN
F 1 "plot_v1" H 5400 2900 60  0000 C CNN
F 2 "" H 5200 2550 60  0000 C CNN
F 3 "" H 5200 2550 60  0000 C CNN
	1    5200 2550
	1    0    0    -1  
$EndComp
Text GLabel 5200 2350 3    60   BiDi ~ 0
mux_in
$Comp
L plot_v1 U6
U 1 1 63427C75
P 1500 2550
F 0 "U6" H 1500 3050 60  0000 C CNN
F 1 "plot_v1" H 1700 2900 60  0000 C CNN
F 2 "" H 1500 2550 60  0000 C CNN
F 3 "" H 1500 2550 60  0000 C CNN
	1    1500 2550
	1    0    0    -1  
$EndComp
Text GLabel 1500 2350 0    60   BiDi ~ 0
vin
$Comp
L dac_bridge_6 U19
U 1 1 634165CA
P 8700 4950
F 0 "U19" H 8700 4950 60  0000 C CNN
F 1 "dac_bridge_6" H 8700 5100 60  0000 C CNN
F 2 "" H 8700 4950 60  0000 C CNN
F 3 "" H 8700 4950 60  0000 C CNN
	1    8700 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 4900 8050 4900
Wire Wire Line
	8050 5000 8100 5000
Wire Wire Line
	8050 5100 8100 5100
Wire Wire Line
	8100 5200 8050 5200
Wire Wire Line
	8050 5300 8100 5300
Wire Wire Line
	8100 5400 8050 5400
Text Notes 3150 3400 0    60   Italic 0
Integrator(Analog)
Text Notes 6950 2950 0    60   Italic 0
Multiplex 2:1(Digital)
Text Notes 3050 5300 0    60   Italic 0
oscillator(Analog IP)
Text Notes 4300 5500 0    60   Italic 0
smt trigger(Analog IP)
Text Notes 6900 4600 0    60   Italic 0
ring counter(Digital)\n
$EndSCHEMATC
