
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Work/School/DSD/Homework/ClickCounter/ClickCounter.srcs/utils_1/imports/synth_1/andgate.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2r
^C:/Work/School/DSD/Homework/ClickCounter/ClickCounter.srcs/utils_1/imports/synth_1/andgate.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
x
Command: %s
53*	vivadotcl2G
3synth_design -top ControlUnit -part xc7a35tcpg236-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px� 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
_
#Helper process launched with PID %s4824*oasys2
19202default:defaultZ8-7075h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2k
UC:/Work/School/DSD/Vivado/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px� 
�
%s*synth2�
yStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 1206.012 ; gain = 409.324
2default:defaulth px� 
�
synthesizing module '%s'638*oasys2
ControlUnit2default:default2g
QC:/Work/School/DSD/Homework/ClickCounter/ClickCounter.srcs/sources_1/new/Main.vhd2default:default2
502default:default8@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Counter2default:default2h
TC:/Work/School/DSD/Homework/ClickCounter/ClickCounter.srcs/sources_1/new/Counter.vhd2default:default2
372default:default2
Count2default:default2
Counter2default:default2g
QC:/Work/School/DSD/Homework/ClickCounter/ClickCounter.srcs/sources_1/new/Main.vhd2default:default2
1002default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
Counter2default:default2j
TC:/Work/School/DSD/Homework/ClickCounter/ClickCounter.srcs/sources_1/new/Counter.vhd2default:default2
452default:default8@Z8-638h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
reset2default:default2j
TC:/Work/School/DSD/Homework/ClickCounter/ClickCounter.srcs/sources_1/new/Counter.vhd2default:default2
502default:default8@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Counter2default:default2
02default:default2
12default:default2j
TC:/Work/School/DSD/Homework/ClickCounter/ClickCounter.srcs/sources_1/new/Counter.vhd2default:default2
452default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Reverser2default:default2i
UC:/Work/School/DSD/Homework/ClickCounter/ClickCounter.srcs/sources_1/new/Reverser.vhd2default:default2
342default:default2#
Reverse_Message2default:default2
Reverser2default:default2g
QC:/Work/School/DSD/Homework/ClickCounter/ClickCounter.srcs/sources_1/new/Main.vhd2default:default2
1082default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
Reverser2default:default2k
UC:/Work/School/DSD/Homework/ClickCounter/ClickCounter.srcs/sources_1/new/Reverser.vhd2default:default2
442default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Reverser2default:default2
02default:default2
12default:default2k
UC:/Work/School/DSD/Homework/ClickCounter/ClickCounter.srcs/sources_1/new/Reverser.vhd2default:default2
442default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
MouseDecoder2default:default2m
YC:/Work/School/DSD/Homework/ClickCounter/ClickCounter.srcs/sources_1/new/MouseDecoder.vhd2default:default2
352default:default2"
Decode_Message2default:default2 
MouseDecoder2default:default2g
QC:/Work/School/DSD/Homework/ClickCounter/ClickCounter.srcs/sources_1/new/Main.vhd2default:default2
1162default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2 
MouseDecoder2default:default2o
YC:/Work/School/DSD/Homework/ClickCounter/ClickCounter.srcs/sources_1/new/MouseDecoder.vhd2default:default2
472default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
MouseDecoder2default:default2
02default:default2
12default:default2o
YC:/Work/School/DSD/Homework/ClickCounter/ClickCounter.srcs/sources_1/new/MouseDecoder.vhd2default:default2
472default:default8@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

SSGDisplay2default:default2k
WC:/Work/School/DSD/Homework/ClickCounter/ClickCounter.srcs/sources_1/new/SSDmanager.vhd2default:default2
252default:default2"
Display_Number2default:default2

SSGDisplay2default:default2g
QC:/Work/School/DSD/Homework/ClickCounter/ClickCounter.srcs/sources_1/new/Main.vhd2default:default2
1262default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

SSGDisplay2default:default2m
WC:/Work/School/DSD/Homework/ClickCounter/ClickCounter.srcs/sources_1/new/SSDmanager.vhd2default:default2
342default:default8@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Bin2Bcd2default:default2h
TC:/Work/School/DSD/Homework/ClickCounter/ClickCounter.srcs/sources_1/new/Bin2BCD.vhd2default:default2
362default:default2!
Binary_To_BCD2default:default2
Bin2Bcd2default:default2m
WC:/Work/School/DSD/Homework/ClickCounter/ClickCounter.srcs/sources_1/new/SSDmanager.vhd2default:default2
842default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
Bin2Bcd2default:default2j
TC:/Work/School/DSD/Homework/ClickCounter/ClickCounter.srcs/sources_1/new/Bin2BCD.vhd2default:default2
452default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Bin2Bcd2default:default2
02default:default2
12default:default2j
TC:/Work/School/DSD/Homework/ClickCounter/ClickCounter.srcs/sources_1/new/Bin2BCD.vhd2default:default2
452default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

SSGDisplay2default:default2
02default:default2
12default:default2m
WC:/Work/School/DSD/Homework/ClickCounter/ClickCounter.srcs/sources_1/new/SSDmanager.vhd2default:default2
342default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ControlUnit2default:default2
02default:default2
12default:default2g
QC:/Work/School/DSD/Homework/ClickCounter/ClickCounter.srcs/sources_1/new/Main.vhd2default:default2
502default:default8@Z8-256h px� 
�
%s*synth2�
yFinished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 1297.582 ; gain = 500.895
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 1297.582 ; gain = 500.895
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 1297.582 ; gain = 500.895
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0042default:default2
1297.5822default:default2
0.0002default:defaultZ17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2g
QC:/Work/School/DSD/Homework/ClickCounter/ClickCounter.srcs/constrs_1/new/pins.xdc2default:default8Z20-179h px� 
�
No ports matched '%s'.
584*	planAhead2
Left2default:default2g
QC:/Work/School/DSD/Homework/ClickCounter/ClickCounter.srcs/constrs_1/new/pins.xdc2default:default2
312default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2g
QC:/Work/School/DSD/Homework/ClickCounter/ClickCounter.srcs/constrs_1/new/pins.xdc2default:default2
312default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
Right2default:default2g
QC:/Work/School/DSD/Homework/ClickCounter/ClickCounter.srcs/constrs_1/new/pins.xdc2default:default2
322default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2g
QC:/Work/School/DSD/Homework/ClickCounter/ClickCounter.srcs/constrs_1/new/pins.xdc2default:default2
322default:default8@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2

NewMessage2default:default2g
QC:/Work/School/DSD/Homework/ClickCounter/ClickCounter.srcs/constrs_1/new/pins.xdc2default:default2
342default:default8@Z12-584h px�
�
"'%s' expects at least one object.
55*common2 
set_property2default:default2g
QC:/Work/School/DSD/Homework/ClickCounter/ClickCounter.srcs/constrs_1/new/pins.xdc2default:default2
342default:default8@Z17-55h px�
�
Finished Parsing XDC File [%s]
178*designutils2g
QC:/Work/School/DSD/Homework/ClickCounter/ClickCounter.srcs/constrs_1/new/pins.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2e
QC:/Work/School/DSD/Homework/ClickCounter/ClickCounter.srcs/constrs_1/new/pins.xdc2default:default21
.Xil/ControlUnit_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1396.7272default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1396.7272default:default2
0.0002default:defaultZ17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2k
UC:/Work/School/DSD/Vivado/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:05 ; elapsed = 00:00:08 . Memory (MB): peak = 1396.727 ; gain = 600.039
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:05 ; elapsed = 00:00:08 . Memory (MB): peak = 1396.727 ; gain = 600.039
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:05 ; elapsed = 00:00:08 . Memory (MB): peak = 1396.727 ; gain = 600.039
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	State_reg2default:default2
Bin2Bcd2default:defaultZ8-802h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                    take |                               00 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_                   shift |                               01 |                               01
2default:defaulth p
x
� 
�
%s
*synth2s
_                 provide |                               10 |                               11
2default:defaulth p
x
� 
�
%s
*synth2s
_                     add |                               11 |                               10
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	State_reg2default:default2

sequential2default:default2
Bin2Bcd2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:08 . Memory (MB): peak = 1396.727 ; gain = 600.039
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   31 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    6 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 4     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   9 Input      1 Bit         XORs := 4     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               43 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               31 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 7     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input   32 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input   31 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    6 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 3     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:05 ; elapsed = 00:00:10 . Memory (MB): peak = 1396.727 ; gain = 600.039
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:06 ; elapsed = 00:00:13 . Memory (MB): peak = 1396.727 ; gain = 600.039
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Timing Optimization : Time (s): cpu = 00:00:06 ; elapsed = 00:00:13 . Memory (MB): peak = 1396.727 ; gain = 600.039
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Technology Mapping : Time (s): cpu = 00:00:07 ; elapsed = 00:00:13 . Memory (MB): peak = 1396.727 ; gain = 600.039
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
vFinished IO Insertion : Time (s): cpu = 00:00:07 ; elapsed = 00:00:16 . Memory (MB): peak = 1396.727 ; gain = 600.039
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:07 ; elapsed = 00:00:16 . Memory (MB): peak = 1396.727 ; gain = 600.039
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:07 ; elapsed = 00:00:16 . Memory (MB): peak = 1396.727 ; gain = 600.039
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:07 ; elapsed = 00:00:16 . Memory (MB): peak = 1396.727 ; gain = 600.039
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:16 . Memory (MB): peak = 1396.727 ; gain = 600.039
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:07 ; elapsed = 00:00:16 . Memory (MB): peak = 1396.727 ; gain = 600.039
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|1     |BUFG   |     3|
2default:defaulth px� 
D
%s*synth2,
|2     |CARRY4 |    29|
2default:defaulth px� 
D
%s*synth2,
|3     |LUT1   |     4|
2default:defaulth px� 
D
%s*synth2,
|4     |LUT2   |    59|
2default:defaulth px� 
D
%s*synth2,
|5     |LUT3   |    22|
2default:defaulth px� 
D
%s*synth2,
|6     |LUT4   |    21|
2default:defaulth px� 
D
%s*synth2,
|7     |LUT5   |    15|
2default:defaulth px� 
D
%s*synth2,
|8     |LUT6   |    61|
2default:defaulth px� 
D
%s*synth2,
|9     |FDCE   |    85|
2default:defaulth px� 
D
%s*synth2,
|10    |FDPE   |     1|
2default:defaulth px� 
D
%s*synth2,
|11    |FDRE   |   103|
2default:defaulth px� 
D
%s*synth2,
|12    |IBUF   |     5|
2default:defaulth px� 
D
%s*synth2,
|13    |OBUF   |    11|
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:07 ; elapsed = 00:00:16 . Memory (MB): peak = 1396.727 ; gain = 600.039
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:02 ; elapsed = 00:00:15 . Memory (MB): peak = 1396.727 ; gain = 500.895
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:07 ; elapsed = 00:00:16 . Memory (MB): peak = 1396.727 ; gain = 600.039
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0032default:default2
1396.7272default:default2
0.0002default:defaultZ17-268h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
292default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1396.7272default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
fd3ca3172default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
422default:default2
52default:default2
32default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:082default:default2
00:00:212default:default2
1396.7272default:default2
978.6642default:defaultZ17-268h px� 
u
%s6*runtcl2Y
ESynthesis results are not added to the cache due to CRITICAL_WARNING
2default:defaulth px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2f
RC:/Work/School/DSD/Homework/ClickCounter/ClickCounter.runs/synth_1/ControlUnit.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
lExecuting : report_utilization -file ControlUnit_utilization_synth.rpt -pb ControlUnit_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu May  4 20:39:26 20232default:defaultZ17-206h px� 


End Record