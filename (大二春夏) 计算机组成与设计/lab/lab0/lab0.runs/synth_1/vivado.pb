
>
Refreshing IP repositories
234*coregenZ19-234h px� 
�
 Loaded user IP repository '%s'.
1135*coregen2A
-c:/Users/petrichor0/Desktop/co/lab0/lab0.srcs2default:defaultZ19-1700h px� 
�
"Loaded Vivado IP repository '%s'.
1332*coregen29
%D:/vivado2022_2/Vivado/2022.2/data/ip2default:defaultZ19-2313h px� 
�
Command: %s
1870*	planAhead2�
|read_checkpoint -auto_incremental -incremental C:/Users/petrichor0/Desktop/co/lab0/lab0.srcs/utils_1/imports/synth_1/top.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2a
MC:/Users/petrichor0/Desktop/co/lab0/lab0.srcs/utils_1/imports/synth_1/top.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
r
Command: %s
53*	vivadotcl2A
-synth_design -top top -part xc7a100tcsg324-2L2default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px� 
X
Loading part %s157*device2%
xc7a100tcsg324-2L2default:defaultZ21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
`
#Helper process launched with PID %s4824*oasys2
116402default:defaultZ8-7075h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2a
KD:/vivado2022_2/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
clkout02default:default2
wire2default:default2k
UC:/Users/petrichor0/Desktop/co/lab0/lab0.srcs/sources_1/imports/lab0_src/my_clk_gen.v2default:default2
1382default:default8@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
clkout12default:default2
wire2default:default2k
UC:/Users/petrichor0/Desktop/co/lab0/lab0.srcs/sources_1/imports/lab0_src/my_clk_gen.v2default:default2
1402default:default8@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
clkout22default:default2
wire2default:default2k
UC:/Users/petrichor0/Desktop/co/lab0/lab0.srcs/sources_1/imports/lab0_src/my_clk_gen.v2default:default2
1422default:default8@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
clkout32default:default2
wire2default:default2k
UC:/Users/petrichor0/Desktop/co/lab0/lab0.srcs/sources_1/imports/lab0_src/my_clk_gen.v2default:default2
1442default:default8@Z8-11241h px� 
�
%s*synth2�
yStarting RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:03 . Memory (MB): peak = 1217.887 ; gain = 408.973
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2
top2default:default2
 2default:default2d
NC:/Users/petrichor0/Desktop/co/lab0/lab0.srcs/sources_1/imports/lab0_src/top.v2default:default2
82default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

my_clk_gen2default:default2
 2default:default2k
UC:/Users/petrichor0/Desktop/co/lab0/lab0.srcs/sources_1/imports/lab0_src/my_clk_gen.v2default:default2
722default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

MMCME2_ADV2default:default2
 2default:default2Q
;D:/vivado2022_2/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
798522default:default8@Z8-6157h px� 
e
%s
*synth2M
9	Parameter BANDWIDTH bound to: OPTIMIZED - type: string 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter CLKFBOUT_MULT_F bound to: 10.000000 - type: double 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter CLKFBOUT_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter CLKFBOUT_USE_FINE_PS bound to: FALSE - type: string 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter CLKIN1_PERIOD bound to: 10.000000 - type: double 
2default:defaulth p
x
� 
l
%s
*synth2T
@	Parameter CLKOUT0_DIVIDE_F bound to: 10.000000 - type: double 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter CLKOUT0_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter CLKOUT0_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter CLKOUT0_USE_FINE_PS bound to: FALSE - type: string 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter CLKOUT1_DIVIDE bound to: 20 - type: integer 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter CLKOUT1_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter CLKOUT1_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter CLKOUT1_USE_FINE_PS bound to: FALSE - type: string 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter CLKOUT2_DIVIDE bound to: 40 - type: integer 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter CLKOUT2_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter CLKOUT2_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter CLKOUT2_USE_FINE_PS bound to: FALSE - type: string 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter CLKOUT3_DIVIDE bound to: 100 - type: integer 
2default:defaulth p
x
� 
m
%s
*synth2U
A	Parameter CLKOUT3_DUTY_CYCLE bound to: 0.500000 - type: double 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter CLKOUT3_PHASE bound to: 0.000000 - type: double 
2default:defaulth p
x
� 
k
%s
*synth2S
?	Parameter CLKOUT3_USE_FINE_PS bound to: FALSE - type: string 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter CLKOUT4_CASCADE bound to: FALSE - type: string 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter COMPENSATION bound to: ZHOLD - type: string 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter DIVCLK_DIVIDE bound to: 1 - type: integer 
2default:defaulth p
x
� 
f
%s
*synth2N
:	Parameter REF_JITTER1 bound to: 0.010000 - type: double 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter STARTUP_WAIT bound to: FALSE - type: string 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

MMCME2_ADV2default:default2
 2default:default2
02default:default2
12default:default2Q
;D:/vivado2022_2/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
798522default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
BUFG2default:default2
 2default:default2Q
;D:/vivado2022_2/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
10822default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BUFG2default:default2
 2default:default2
02default:default2
12default:default2Q
;D:/vivado2022_2/Vivado/2022.2/scripts/rt/data/unisim_comp.v2default:default2
10822default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

my_clk_gen2default:default2
 2default:default2
02default:default2
12default:default2k
UC:/Users/petrichor0/Desktop/co/lab0/lab0.srcs/sources_1/imports/lab0_src/my_clk_gen.v2default:default2
722default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
btn_scan2default:default2
 2default:default2i
SC:/Users/petrichor0/Desktop/co/lab0/lab0.srcs/sources_1/imports/lab0_src/btn_scan.v2default:default2
82default:default8@Z8-6157h px� 
^
%s
*synth2F
2	Parameter CLK_FREQ bound to: 25 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
btn_scan2default:default2
 2default:default2
02default:default2
12default:default2i
SC:/Users/petrichor0/Desktop/co/lab0/lab0.srcs/sources_1/imports/lab0_src/btn_scan.v2default:default2
82default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2 
ClockDividor2default:default2
 2default:default2r
\C:/Users/petrichor0/Desktop/co/lab0/lab0.srcs/sources_1/imports/lab0_src/ClockDividor_stub.v2default:default2
152default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
test_gen2default:default2
 2default:default2i
SC:/Users/petrichor0/Desktop/co/lab0/lab0.srcs/sources_1/imports/lab0_src/test_gen.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
test_gen2default:default2
 2default:default2
02default:default2
12default:default2i
SC:/Users/petrichor0/Desktop/co/lab0/lab0.srcs/sources_1/imports/lab0_src/test_gen.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
DispNum2default:default2
 2default:default2[
EC:/Users/petrichor0/Desktop/co/lab0/lab0.srcs/sources_1/new/DispNum.v2default:default2
232default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
clkdiv2default:default2
 2default:default2g
QC:/Users/petrichor0/Desktop/co/lab0/lab0.srcs/sources_1/imports/lab0_src/clkdiv.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
clkdiv2default:default2
 2default:default2
02default:default2
12default:default2g
QC:/Users/petrichor0/Desktop/co/lab0/lab0.srcs/sources_1/imports/lab0_src/clkdiv.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

Mux8to1_4b2default:default2
 2default:default2^
HC:/Users/petrichor0/Desktop/co/lab0/lab0.srcs/sources_1/new/Mux8to1_4b.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

Mux8to1_4b2default:default2
 2default:default2
02default:default2
12default:default2^
HC:/Users/petrichor0/Desktop/co/lab0/lab0.srcs/sources_1/new/Mux8to1_4b.v2default:default2
232default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
DispNum2default:default2
 2default:default2
02default:default2
12default:default2[
EC:/Users/petrichor0/Desktop/co/lab0/lab0.srcs/sources_1/new/DispNum.v2default:default2
232default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
top2default:default2
 2default:default2
02default:default2
12default:default2d
NC:/Users/petrichor0/Desktop/co/lab0/lab0.srcs/sources_1/imports/lab0_src/top.v2default:default2
82default:default8@Z8-6155h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
VGA_B2default:default2
top2default:default2d
NC:/Users/petrichor0/Desktop/co/lab0/lab0.srcs/sources_1/imports/lab0_src/top.v2default:default2
262default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
VGA_G2default:default2
top2default:default2d
NC:/Users/petrichor0/Desktop/co/lab0/lab0.srcs/sources_1/imports/lab0_src/top.v2default:default2
272default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
VGA_R2default:default2
top2default:default2d
NC:/Users/petrichor0/Desktop/co/lab0/lab0.srcs/sources_1/imports/lab0_src/top.v2default:default2
282default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
HS2default:default2
top2default:default2d
NC:/Users/petrichor0/Desktop/co/lab0/lab0.srcs/sources_1/imports/lab0_src/top.v2default:default2
292default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
VS2default:default2
top2default:default2d
NC:/Users/petrichor0/Desktop/co/lab0/lab0.srcs/sources_1/imports/lab0_src/top.v2default:default2
292default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
UART_TXD2default:default2
top2default:default2d
NC:/Users/petrichor0/Desktop/co/lab0/lab0.srcs/sources_1/imports/lab0_src/top.v2default:default2
302default:default8@Z8-3848h px� 
�
+design %s has port %s driven by constant %s3447*oasys2
top2default:default2
DP2default:default2
12default:defaultZ8-3917h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
VGA_B[3]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
VGA_B[2]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
VGA_B[1]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
VGA_B[0]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
VGA_G[3]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
VGA_G[2]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
VGA_G[1]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
VGA_G[0]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
VGA_R[3]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
VGA_R[2]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
VGA_R[1]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
VGA_R[0]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
HS2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
VS2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
UART_TXD2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[15]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[14]2default:default2
top2default:defaultZ8-7129h px� 
�
%s*synth2�
yFinished RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:05 . Memory (MB): peak = 1308.457 ; gain = 499.543
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:03 ; elapsed = 00:00:05 . Memory (MB): peak = 1308.457 ; gain = 499.543
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:03 ; elapsed = 00:00:05 . Memory (MB): peak = 1308.457 ; gain = 499.543
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
00:00:00.0032default:default2
1308.6022default:default2
0.0002default:defaultZ17-268h px� 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
12default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
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
179*designutils2a
KC:/Users/petrichor0/Desktop/co/lab0/lab0.srcs/constrs_1/new/Constraints.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2a
KC:/Users/petrichor0/Desktop/co/lab0/lab0.srcs/constrs_1/new/Constraints.xdc2default:default8Z20-178h px� 
�
Parsing XDC File [%s]
179*designutils2m
WC:/Users/petrichor0/Desktop/co/lab0/lab0.srcs/constrs_1/imports/lab0_src/constraint.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2m
WC:/Users/petrichor0/Desktop/co/lab0/lab0.srcs/constrs_1/imports/lab0_src/constraint.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2k
WC:/Users/petrichor0/Desktop/co/lab0/lab0.srcs/constrs_1/imports/lab0_src/constraint.xdc2default:default2)
.Xil/top_propImpl.xdc2default:defaultZ1-236h px� 
8
Deriving generated clocks
2*timingZ38-2h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1413.5162default:default2
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
00:00:00.0032default:default2
1413.5162default:default2
0.0002default:defaultZ17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2a
KD:/vivado2022_2/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
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
Finished Constraint Validation : Time (s): cpu = 00:00:05 ; elapsed = 00:00:10 . Memory (MB): peak = 1413.516 ; gain = 604.602
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
L
%s
*synth24
 Loading part: xc7a100tcsg324-2L
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:05 ; elapsed = 00:00:10 . Memory (MB): peak = 1413.516 ; gain = 604.602
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:05 ; elapsed = 00:00:10 . Memory (MB): peak = 1413.516 ; gain = 604.602
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
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:10 . Memory (MB): peak = 1413.516 ; gain = 604.602
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
,	   2 Input   32 Bit       Adders := 1     
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
.	               32 Bit    Registers := 3     
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
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
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
,	  10 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  18 Input    7 Bit        Muxes := 1     
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
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
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
�
+design %s has port %s driven by constant %s3447*oasys2
top2default:default2
DP2default:default2
12default:defaultZ8-3917h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
VGA_B[3]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
VGA_B[2]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
VGA_B[1]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
VGA_B[0]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
VGA_G[3]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
VGA_G[2]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
VGA_G[1]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
VGA_G[0]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
VGA_R[3]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
VGA_R[2]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
VGA_R[1]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
VGA_R[0]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
HS2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
VS2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
UART_TXD2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[15]2default:default2
top2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
SW[14]2default:default2
top2default:defaultZ8-7129h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:05 ; elapsed = 00:00:12 . Memory (MB): peak = 1413.516 ; gain = 604.602
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:07 ; elapsed = 00:00:15 . Memory (MB): peak = 1413.516 ; gain = 604.602
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
}Finished Timing Optimization : Time (s): cpu = 00:00:07 ; elapsed = 00:00:15 . Memory (MB): peak = 1413.516 ; gain = 604.602
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
|Finished Technology Mapping : Time (s): cpu = 00:00:07 ; elapsed = 00:00:16 . Memory (MB): peak = 1413.516 ; gain = 604.602
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
vFinished IO Insertion : Time (s): cpu = 00:00:08 ; elapsed = 00:00:18 . Memory (MB): peak = 1413.516 ; gain = 604.602
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:08 ; elapsed = 00:00:18 . Memory (MB): peak = 1413.516 ; gain = 604.602
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:08 ; elapsed = 00:00:18 . Memory (MB): peak = 1413.516 ; gain = 604.602
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:08 ; elapsed = 00:00:18 . Memory (MB): peak = 1413.516 ; gain = 604.602
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:08 ; elapsed = 00:00:18 . Memory (MB): peak = 1413.516 ; gain = 604.602
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:08 ; elapsed = 00:00:18 . Memory (MB): peak = 1413.516 ; gain = 604.602
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
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|1     |ClockDividor  |         1|
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
O
%s*synth27
#+------+------------------+------+
2default:defaulth px� 
O
%s*synth27
#|      |Cell              |Count |
2default:defaulth px� 
O
%s*synth27
#+------+------------------+------+
2default:defaulth px� 
O
%s*synth27
#|1     |ClockDividor_bbox |     1|
2default:defaulth px� 
O
%s*synth27
#|2     |BUFG              |     5|
2default:defaulth px� 
O
%s*synth27
#|3     |CARRY4            |     9|
2default:defaulth px� 
O
%s*synth27
#|4     |LUT1              |     3|
2default:defaulth px� 
O
%s*synth27
#|5     |LUT2              |    18|
2default:defaulth px� 
O
%s*synth27
#|6     |LUT4              |     8|
2default:defaulth px� 
O
%s*synth27
#|7     |LUT5              |     7|
2default:defaulth px� 
O
%s*synth27
#|8     |LUT6              |    11|
2default:defaulth px� 
O
%s*synth27
#|9     |MMCME2_ADV        |     1|
2default:defaulth px� 
O
%s*synth27
#|10    |MUXF7             |     4|
2default:defaulth px� 
O
%s*synth27
#|11    |FDCE              |    33|
2default:defaulth px� 
O
%s*synth27
#|12    |FDPE              |    13|
2default:defaulth px� 
O
%s*synth27
#|13    |FDRE              |    69|
2default:defaulth px� 
O
%s*synth27
#|14    |IBUF              |    18|
2default:defaulth px� 
O
%s*synth27
#|15    |OBUF              |    32|
2default:defaulth px� 
O
%s*synth27
#|16    |OBUFT             |    15|
2default:defaulth px� 
O
%s*synth27
#+------+------------------+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:08 ; elapsed = 00:00:18 . Memory (MB): peak = 1413.516 ; gain = 604.602
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 19 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:05 ; elapsed = 00:00:17 . Memory (MB): peak = 1413.516 ; gain = 499.543
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:08 ; elapsed = 00:00:18 . Memory (MB): peak = 1413.516 ; gain = 604.602
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
Parsing EDIF File [%s]
106*designutils2m
YC:/Users/petrichor0/Desktop/co/lab0/lab0.srcs/sources_1/imports/lab0_src/ClockDividor.edf2default:defaultZ20-106h px� 
�
 Finished Parsing EDIF File [%s]
97*designutils2m
YC:/Users/petrichor0/Desktop/co/lab0/lab0.srcs/sources_1/imports/lab0_src/ClockDividor.edf2default:defaultZ20-97h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1413.5162default:default2
0.0002default:defaultZ17-268h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
222default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
x
Netlist was created with %s %s291*project2
Vivado2default:default2
2020.22default:defaultZ1-479h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2/
clock_dividor/clk_IBUF_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt24
 clock_dividor/clk_step_IBUF_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2/
clock_dividor/rst_IBUF_inst2default:defaultZ31-32h px� 
�
LRemoving redundant IBUF, %s, from the path connected to top-level port: %s 
35*opt23
clock_dividor/step_en_IBUF_inst2default:default2
SW[0]2default:defaultZ31-35h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt23
clock_dividor/clk_cpu_OBUF_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt26
"clock_dividor/clk_div_OBUF[0]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt27
#clock_dividor/clk_div_OBUF[10]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt27
#clock_dividor/clk_div_OBUF[11]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt27
#clock_dividor/clk_div_OBUF[12]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt27
#clock_dividor/clk_div_OBUF[13]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt27
#clock_dividor/clk_div_OBUF[14]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt27
#clock_dividor/clk_div_OBUF[15]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt27
#clock_dividor/clk_div_OBUF[16]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt27
#clock_dividor/clk_div_OBUF[17]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt27
#clock_dividor/clk_div_OBUF[18]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt27
#clock_dividor/clk_div_OBUF[19]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt26
"clock_dividor/clk_div_OBUF[1]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt27
#clock_dividor/clk_div_OBUF[20]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt27
#clock_dividor/clk_div_OBUF[21]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt27
#clock_dividor/clk_div_OBUF[22]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt27
#clock_dividor/clk_div_OBUF[23]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt27
#clock_dividor/clk_div_OBUF[24]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt27
#clock_dividor/clk_div_OBUF[25]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt27
#clock_dividor/clk_div_OBUF[26]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt27
#clock_dividor/clk_div_OBUF[27]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt27
#clock_dividor/clk_div_OBUF[28]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt27
#clock_dividor/clk_div_OBUF[29]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt26
"clock_dividor/clk_div_OBUF[2]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt27
#clock_dividor/clk_div_OBUF[30]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt27
#clock_dividor/clk_div_OBUF[31]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt26
"clock_dividor/clk_div_OBUF[3]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt26
"clock_dividor/clk_div_OBUF[4]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt26
"clock_dividor/clk_div_OBUF[5]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt26
"clock_dividor/clk_div_OBUF[6]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt26
"clock_dividor/clk_div_OBUF[7]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt26
"clock_dividor/clk_div_OBUF[8]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt26
"clock_dividor/clk_div_OBUF[9]_inst2default:defaultZ31-33h px� 
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
1413.5162default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
b70e0fda2default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
532default:default2
802default:default2
02default:default2
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
00:00:222default:default2
1413.5162default:default2
1002.6022default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2Q
=C:/Users/petrichor0/Desktop/co/lab0/lab0.runs/synth_1/top.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2p
\Executing : report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon Mar 18 22:27:50 20242default:defaultZ17-206h px� 


End Record