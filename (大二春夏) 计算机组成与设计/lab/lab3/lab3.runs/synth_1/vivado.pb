
�
Command: %s
1870*	planAhead2�
|read_checkpoint -auto_incremental -incremental C:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/utils_1/imports/synth_1/top.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2a
MC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/utils_1/imports/synth_1/top.dcp2default:defaultZ12-5825h px� 
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
_
#Helper process launched with PID %s4824*oasys2
48842default:defaultZ8-7075h px� 
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
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/my_clk_gen.v2default:default2
1382default:default8@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
clkout12default:default2
wire2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/my_clk_gen.v2default:default2
1402default:default8@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
clkout22default:default2
wire2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/my_clk_gen.v2default:default2
1422default:default8@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
clkout32default:default2
wire2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/my_clk_gen.v2default:default2
1442default:default8@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
mem_addr2default:default2
wire2default:default2d
NC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/top.v2default:default2
1232default:default8@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
mem_data2default:default2
wire2default:default2d
NC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/top.v2default:default2
1242default:default8@Z8-11241h px� 
�
%s*synth2�
yStarting RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:03 . Memory (MB): peak = 1212.426 ; gain = 410.242
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2
top2default:default2
 2default:default2d
NC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/top.v2default:default2
82default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

my_clk_gen2default:default2
 2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/my_clk_gen.v2default:default2
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
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/my_clk_gen.v2default:default2
722default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
btn_scan2default:default2
 2default:default2i
SC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/btn_scan.v2default:default2
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
SC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/btn_scan.v2default:default2
82default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
RV32core2default:default2
 2default:default2{
eC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/sources_1/imports/lab1_src/RV32core.v2default:default2
52default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
	debug_clk2default:default2
 2default:default2j
TC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_clk.v2default:default2
32default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	debug_clk2default:default2
 2default:default2
02default:default2
12default:default2j
TC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_clk.v2default:default2
32default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Core2default:default2
 2default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Core.v2default:default2
32default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

CoreOthers2default:default2
 2default:default2p
ZC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/CoreOthers_stub.v2default:default2
152default:default8@Z8-6157h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
dbg_rs12default:default2

CoreOthers2default:default2
core_others2default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Core.v2default:default2
242default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
dbg_rs1_val2default:default2

CoreOthers2default:default2
core_others2default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Core.v2default:default2
242default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
dbg_rs22default:default2

CoreOthers2default:default2
core_others2default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Core.v2default:default2
242default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
dbg_rs2_val2default:default2

CoreOthers2default:default2
core_others2default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Core.v2default:default2
242default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
dbg_rd2default:default2

CoreOthers2default:default2
core_others2default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Core.v2default:default2
242default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2"
dbg_reg_i_data2default:default2

CoreOthers2default:default2
core_others2default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Core.v2default:default2
242default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
dbg_reg_wen2default:default2

CoreOthers2default:default2
core_others2default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Core.v2default:default2
242default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

dbg_is_imm2default:default2

CoreOthers2default:default2
core_others2default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Core.v2default:default2
242default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2 
dbg_is_auipc2default:default2

CoreOthers2default:default2
core_others2default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Core.v2default:default2
242default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

dbg_is_lui2default:default2

CoreOthers2default:default2
core_others2default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Core.v2default:default2
242default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
dbg_imm2default:default2

CoreOthers2default:default2
core_others2default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Core.v2default:default2
242default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	dbg_a_val2default:default2

CoreOthers2default:default2
core_others2default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Core.v2default:default2
242default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
	dbg_b_val2default:default2

CoreOthers2default:default2
core_others2default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Core.v2default:default2
242default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2 
dbg_alu_ctrl2default:default2

CoreOthers2default:default2
core_others2default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Core.v2default:default2
242default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2 
dbg_cmp_ctrl2default:default2

CoreOthers2default:default2
core_others2default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Core.v2default:default2
242default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
dbg_alu_res2default:default2

CoreOthers2default:default2
core_others2default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Core.v2default:default2
242default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
dbg_cmp_res2default:default2

CoreOthers2default:default2
core_others2default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Core.v2default:default2
242default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2!
dbg_is_branch2default:default2

CoreOthers2default:default2
core_others2default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Core.v2default:default2
242default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2

dbg_is_jal2default:default2

CoreOthers2default:default2
core_others2default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Core.v2default:default2
242default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
dbg_is_jalr2default:default2

CoreOthers2default:default2
core_others2default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Core.v2default:default2
242default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2!
dbg_do_branch2default:default2

CoreOthers2default:default2
core_others2default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Core.v2default:default2
242default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2!
dbg_pc_branch2default:default2

CoreOthers2default:default2
core_others2default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Core.v2default:default2
242default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
dbg_mem_wen2default:default2

CoreOthers2default:default2
core_others2default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Core.v2default:default2
242default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
dbg_mem_ren2default:default2

CoreOthers2default:default2
core_others2default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Core.v2default:default2
242default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2#
dbg_dmem_o_data2default:default2

CoreOthers2default:default2
core_others2default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Core.v2default:default2
242default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2#
dbg_dmem_i_data2default:default2

CoreOthers2default:default2
core_others2default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Core.v2default:default2
242default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2!
dbg_dmem_addr2default:default2

CoreOthers2default:default2
core_others2default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Core.v2default:default2
242default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
core_others2default:default2

CoreOthers2default:default2
502default:default2
232default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Core.v2default:default2
242default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
Alu2default:default2
 2default:default2W
AC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/Alu.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Alu2default:default2
 2default:default2
02default:default2
12default:default2W
AC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/Alu.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

Comparator2default:default2
 2default:default2^
HC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/Comparator.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

Comparator2default:default2
 2default:default2
02default:default2
12default:default2^
HC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/Comparator.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
RegFile2default:default2
 2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
RegFile2default:default2
 2default:default2
02default:default2
12default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
232default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
dbg_pc2default:default2
RegFile2default:default2
reg_file2default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Core.v2default:default2
652default:default8@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
dbg_inst2default:default2
RegFile2default:default2
reg_file2default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Core.v2default:default2
652default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
reg_file2default:default2
RegFile2default:default2
432default:default2
412default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Core.v2default:default2
652default:default8@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Core2default:default2
 2default:default2
02default:default2
12default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Core.v2default:default2
32default:default8@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322default:default2
dmem_wen2default:default2
12default:default2
Core2default:default2{
eC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/sources_1/imports/lab1_src/RV32core.v2default:default2
502default:default8@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2
Mem2default:default2
 2default:default2d
NC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Mem.v2default:default2
232default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
IMem2default:default2
 2default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/IMem.v2default:default2
232default:default8@Z8-6157h px� 
�
,$readmem data file '%s' is read successfully3426*oasys2
inst.mem2default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/IMem.v2default:default2
312default:default8@Z8-3876h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
IMem2default:default2
 2default:default2
02default:default2
12default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/IMem.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
DMem2default:default2
 2default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/DMem.v2default:default2
232default:default8@Z8-6157h px� 
�
,$readmem data file '%s' is read successfully3426*oasys2
data.mem2default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/DMem.v2default:default2
342default:default8@Z8-3876h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
DMem2default:default2
 2default:default2
02default:default2
12default:default2e
OC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/DMem.v2default:default2
232default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Mem2default:default2
 2default:default2
02default:default2
12default:default2d
NC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/Mem.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
MACtrl2default:default2
 2default:default2l
VC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/sources_1/new/MACtrl.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
MACtrl2default:default2
 2default:default2
02default:default2
12default:default2l
VC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/sources_1/new/MACtrl.v2default:default2
232default:default8@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
322default:default2
i_dwen2default:default2
12default:default2
MACtrl2default:default2{
eC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/sources_1/imports/lab1_src/RV32core.v2default:default2
762default:default8@Z8-689h px� 
�
synthesizing module '%s'%s4497*oasys2
DispNum2default:default2
 2default:default2
iC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/sources_1/imports/sources_1/new/DispNum.v2default:default2
212default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
clkdiv2default:default2
 2default:default2�
uC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/sources_1/imports/sources_1/imports/lab0_src/clkdiv.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
clkdiv2default:default2
 2default:default2
02default:default2
12default:default2�
uC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/sources_1/imports/sources_1/imports/lab0_src/clkdiv.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

Mux8to1_4b2default:default2
 2default:default2�
lC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/sources_1/imports/sources_1/new/Mux8to1_4b.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

Mux8to1_4b2default:default2
 2default:default2
02default:default2
12default:default2�
lC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/sources_1/imports/sources_1/new/Mux8to1_4b.v2default:default2
232default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
DispNum2default:default2
 2default:default2
02default:default2
12default:default2
iC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/sources_1/imports/sources_1/new/DispNum.v2default:default2
212default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
RV32core2default:default2
 2default:default2
02default:default2
12default:default2{
eC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/sources_1/imports/lab1_src/RV32core.v2default:default2
52default:default8@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
12default:default2
mem_addr2default:default2
322default:default2
RV32core2default:default2d
NC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/top.v2default:default2
1232default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
12default:default2
mem_data2default:default2
322default:default2
RV32core2default:default2d
NC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/top.v2default:default2
1242default:default8@Z8-689h px� 
�
synthesizing module '%s'638*oasys2 
UART_TX_CTRL2default:default2o
YC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/UART_TX_CTRL.vhd2default:default2
502default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
UART_TX_CTRL2default:default2
02default:default2
12default:default2o
YC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/UART_TX_CTRL.vhd2default:default2
502default:default8@Z8-256h px� 
�
synthesizing module '%s'%s4497*oasys2
uart_buffer2default:default2
 2default:default2l
VC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/uart_buffer.v2default:default2
32default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_buffer2default:default2
 2default:default2
02default:default2
12default:default2l
VC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/uart_buffer.v2default:default2
32default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

debug_ctrl2default:default2
 2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

debug_ctrl2default:default2
 2default:default2
02default:default2
12default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
62default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
top2default:default2
 2default:default2
02default:default2
12default:default2d
NC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/top.v2default:default2
82default:default8@Z8-6155h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2 
regs_reg[31]2default:default2
RegFile2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
372default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2 
regs_reg[30]2default:default2
RegFile2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
372default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2 
regs_reg[29]2default:default2
RegFile2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
372default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2 
regs_reg[28]2default:default2
RegFile2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
372default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2 
regs_reg[27]2default:default2
RegFile2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
372default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2 
regs_reg[26]2default:default2
RegFile2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
372default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2 
regs_reg[25]2default:default2
RegFile2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
372default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2 
regs_reg[24]2default:default2
RegFile2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
372default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2 
regs_reg[23]2default:default2
RegFile2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
372default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2 
regs_reg[22]2default:default2
RegFile2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
372default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2 
regs_reg[21]2default:default2
RegFile2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
372default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2 
regs_reg[20]2default:default2
RegFile2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
372default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2 
regs_reg[19]2default:default2
RegFile2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
372default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2 
regs_reg[18]2default:default2
RegFile2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
372default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2 
regs_reg[17]2default:default2
RegFile2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
372default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2 
regs_reg[16]2default:default2
RegFile2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
372default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2 
regs_reg[15]2default:default2
RegFile2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
372default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2 
regs_reg[14]2default:default2
RegFile2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
372default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2 
regs_reg[13]2default:default2
RegFile2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
372default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2 
regs_reg[12]2default:default2
RegFile2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
372default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2 
regs_reg[11]2default:default2
RegFile2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
372default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2 
regs_reg[10]2default:default2
RegFile2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
372default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
regs_reg[9]2default:default2
RegFile2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
372default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
regs_reg[8]2default:default2
RegFile2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
372default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
regs_reg[7]2default:default2
RegFile2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
372default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
regs_reg[6]2default:default2
RegFile2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
372default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
regs_reg[5]2default:default2
RegFile2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
372default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
regs_reg[4]2default:default2
RegFile2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
372default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
regs_reg[3]2default:default2
RegFile2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
372default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
regs_reg[2]2default:default2
RegFile2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
372default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
regs_reg[1]2default:default2
RegFile2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
372default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
regs_reg[0]2default:default2
RegFile2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
372default:default8@Z8-7137h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
dbg_pc2default:default2
RegFile2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
242default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
dbg_inst2default:default2
RegFile2default:default2[
EC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/new/RegFile.v2default:default2
242default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2$
cust_sig_list[4]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
472default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2$
cust_sig_list[5]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
472default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2$
cust_sig_list[6]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
472default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2$
cust_sig_list[7]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
472default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2$
cust_sig_list[8]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
472default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2$
cust_sig_list[9]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
472default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2%
cust_sig_list[10]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
472default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2%
cust_sig_list[11]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
472default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2%
cust_sig_list[12]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
472default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2%
cust_sig_list[13]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
472default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2%
cust_sig_list[14]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
472default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2%
cust_sig_list[15]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
472default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2%
cust_sig_list[16]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
472default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2%
cust_sig_list[17]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
472default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2%
cust_sig_list[18]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
472default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2%
cust_sig_list[19]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
472default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2%
cust_sig_list[20]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
472default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2%
cust_sig_list[21]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
472default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2%
cust_sig_list[22]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
472default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2%
cust_sig_list[23]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
472default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2%
cust_sig_list[24]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
472default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2%
cust_sig_list[25]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
472default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2%
cust_sig_list[26]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
472default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2%
cust_sig_list[27]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
472default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2%
cust_sig_list[28]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
472default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2%
cust_sig_list[29]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
472default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2%
cust_sig_list[30]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
472default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2%
cust_sig_list[31]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
472default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2%
cust_name_list[4]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
552default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2%
cust_name_list[5]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
552default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2%
cust_name_list[6]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
552default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2%
cust_name_list[7]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
552default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2%
cust_name_list[8]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
552default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2%
cust_name_list[9]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
552default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2&
cust_name_list[10]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
552default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2&
cust_name_list[11]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
552default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2&
cust_name_list[12]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
552default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2&
cust_name_list[13]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
552default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2&
cust_name_list[14]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
552default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2&
cust_name_list[15]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
552default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2&
cust_name_list[16]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
552default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2&
cust_name_list[17]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
552default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2&
cust_name_list[18]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
552default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2&
cust_name_list[19]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
552default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2&
cust_name_list[20]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
552default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2&
cust_name_list[21]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
552default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2&
cust_name_list[22]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
552default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2&
cust_name_list[23]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
552default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2&
cust_name_list[24]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
552default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2&
cust_name_list[25]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
552default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2&
cust_name_list[26]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
552default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2&
cust_name_list[27]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
552default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2&
cust_name_list[28]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
552default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2&
cust_name_list[29]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
552default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2&
cust_name_list[30]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
552default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2&
cust_name_list[31]2default:default2

debug_ctrl2default:default2k
UC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/debug_ctrl.v2default:default2
552default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
VGA_B2default:default2
top2default:default2d
NC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/top.v2default:default2
262default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
VGA_G2default:default2
top2default:default2d
NC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/top.v2default:default2
272default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
VGA_R2default:default2
top2default:default2d
NC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/top.v2default:default2
282default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
HS2default:default2
top2default:default2d
NC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/top.v2default:default2
292default:default8@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
VS2default:default2
top2default:default2d
NC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/top.v2default:default2
292default:default8@Z8-3848h px� 
�
+design %s has port %s driven by constant %s3447*oasys2
top2default:default2
DP2default:default2
12default:defaultZ8-3917h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[31]2default:default2
DMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[30]2default:default2
DMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[29]2default:default2
DMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[28]2default:default2
DMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[27]2default:default2
DMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[26]2default:default2
DMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[25]2default:default2
DMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[24]2default:default2
DMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[23]2default:default2
DMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[22]2default:default2
DMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[21]2default:default2
DMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[20]2default:default2
DMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[19]2default:default2
DMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[18]2default:default2
DMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[17]2default:default2
DMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[16]2default:default2
DMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[15]2default:default2
DMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[14]2default:default2
DMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[13]2default:default2
DMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[12]2default:default2
DMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[11]2default:default2
DMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[10]2default:default2
DMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[1]2default:default2
DMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[0]2default:default2
DMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[31]2default:default2
IMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[30]2default:default2
IMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[29]2default:default2
IMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[28]2default:default2
IMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[27]2default:default2
IMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[26]2default:default2
IMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[25]2default:default2
IMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[24]2default:default2
IMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[23]2default:default2
IMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[22]2default:default2
IMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[21]2default:default2
IMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[20]2default:default2
IMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[19]2default:default2
IMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[18]2default:default2
IMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[17]2default:default2
IMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[16]2default:default2
IMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[15]2default:default2
IMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[14]2default:default2
IMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[13]2default:default2
IMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[12]2default:default2
IMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[11]2default:default2
IMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[10]2default:default2
IMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[1]2default:default2
IMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
addr[0]2default:default2
IMem2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

dbg_pc[31]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

dbg_pc[30]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

dbg_pc[29]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

dbg_pc[28]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

dbg_pc[27]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

dbg_pc[26]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

dbg_pc[25]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

dbg_pc[24]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

dbg_pc[23]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

dbg_pc[22]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

dbg_pc[21]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

dbg_pc[20]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

dbg_pc[19]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

dbg_pc[18]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

dbg_pc[17]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

dbg_pc[16]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

dbg_pc[15]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

dbg_pc[14]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

dbg_pc[13]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

dbg_pc[12]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

dbg_pc[11]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2

dbg_pc[10]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	dbg_pc[9]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	dbg_pc[8]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	dbg_pc[7]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	dbg_pc[6]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	dbg_pc[5]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	dbg_pc[4]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	dbg_pc[3]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	dbg_pc[2]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	dbg_pc[1]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
	dbg_pc[0]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
dbg_inst[31]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
dbg_inst[30]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
dbg_inst[29]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
dbg_inst[28]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
dbg_inst[27]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
dbg_inst[26]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
dbg_inst[25]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
dbg_inst[24]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
dbg_inst[23]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
dbg_inst[22]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
dbg_inst[21]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
dbg_inst[20]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
dbg_inst[19]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
dbg_inst[18]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
dbg_inst[17]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
dbg_inst[16]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
dbg_inst[15]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
dbg_inst[14]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
dbg_inst[13]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
dbg_inst[12]2default:default2
RegFile2default:defaultZ8-7129h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-71292default:default2
1002default:defaultZ17-14h px� 
�
%s*synth2�
yFinished RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:05 . Memory (MB): peak = 1318.258 ; gain = 516.074
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:03 ; elapsed = 00:00:05 . Memory (MB): peak = 1318.258 ; gain = 516.074
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:03 ; elapsed = 00:00:05 . Memory (MB): peak = 1318.258 ; gain = 516.074
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
00:00:00.0502default:default2
1321.7542default:default2
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
179*designutils2m
WC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/constrs_1/imports/lab3_src/constraint.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2m
WC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/constrs_1/imports/lab3_src/constraint.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2k
WC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/constrs_1/imports/lab3_src/constraint.xdc2default:default2)
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
00:00:00.0012default:default2
1426.9882default:default2
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
00:00:00.0072default:default2
1426.9882default:default2
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
Finished Constraint Validation : Time (s): cpu = 00:00:07 ; elapsed = 00:00:11 . Memory (MB): peak = 1426.988 ; gain = 624.805
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:07 ; elapsed = 00:00:11 . Memory (MB): peak = 1426.988 ; gain = 624.805
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:07 ; elapsed = 00:00:11 . Memory (MB): peak = 1426.988 ; gain = 624.805
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
txState_reg2default:default2 
UART_TX_CTRL2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2

debug_ctrl2default:defaultZ8-802h px� 
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
_                     rdy |                               00 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_                load_bit |                               01 |                               01
2default:defaulth p
x
� 
�
%s
*synth2s
_                send_bit |                               10 |                               10
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
txState_reg2default:default2

sequential2default:default2 
UART_TX_CTRL2default:defaultZ8-3354h px� 
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
_                  iSTATE |                              001 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_                    sREG |                              010 |                               01
2default:defaulth p
x
� 
�
%s
*synth2s
_                   sCUST |                              100 |                               10
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
	state_reg2default:default2
one-hot2default:default2

debug_ctrl2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:12 . Memory (MB): peak = 1426.988 ; gain = 624.805
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
,	   2 Input   32 Bit       Adders := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input   32 Bit       Adders := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    9 Bit       Adders := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    7 Bit       Adders := 9     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    6 Bit       Adders := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    5 Bit       Adders := 3     
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
.	   2 Input     32 Bit         XORs := 1     
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
.	               32 Bit    Registers := 34    
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
.	               10 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                9 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 3     
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
.	                1 Bit    Registers := 7     
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	               2K Bit	(256 X 8 bit)          RAMs := 1     
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
,	   3 Input  160 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 39    
2default:defaulth p
x
� 
X
%s
*synth2@
,	  43 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   16 Bit        Muxes := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    9 Bit        Muxes := 3     
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
X
%s
*synth2@
,	   2 Input    7 Bit        Muxes := 9     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    5 Bit        Muxes := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   6 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    2 Bit        Muxes := 1     
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
,	   2 Input    1 Bit        Muxes := 48    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 5     
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
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:19 . Memory (MB): peak = 1426.988 ; gain = 624.805
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
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
d
%s*synth2L
8
Block RAM: Preliminary Mapping Report (see note below)
2default:defaulth px� 
�
%s*synth2�
�+------------+----------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth px� 
�
%s*synth2�
�|Module Name | RTL Object           | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
2default:defaulth px� 
�
%s*synth2�
�+------------+----------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth px� 
�
%s*synth2�
�|top         | UART_BUFF/buffer_reg | 256 x 8(READ_FIRST)    | W |   | 256 x 8(WRITE_FIRST)   |   | R | Port A and B     | 1      | 0      | 
2default:defaulth px� 
�
%s*synth2�
�+------------+----------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Block RAMs at the current stage of the synthesis flow. Some Block RAMs may be reimplemented as non Block RAM primitives later in the synthesis flow. Multiple instantiated Block RAMs are reported only once. 
2default:defaulth px� 
j
%s*synth2R
>
Distributed RAM: Preliminary Mapping Report (see note below)
2default:defaulth px� 
�
%s*synth2m
Y+------------+--------------------+-----------+----------------------+-----------------+
2default:defaulth px� 
�
%s*synth2n
Z|Module Name | RTL Object         | Inference | Size (Depth x Width) | Primitives      | 
2default:defaulth px� 
�
%s*synth2m
Y+------------+--------------------+-----------+----------------------+-----------------+
2default:defaulth px� 
�
%s*synth2n
Z|core        | mem/d_mem/data_reg | Implied   | 256 x 32             | RAM256X1S x 32  | 
2default:defaulth px� 
�
%s*synth2n
Z+------------+--------------------+-----------+----------------------+-----------------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:16 ; elapsed = 00:00:23 . Memory (MB): peak = 1426.988 ; gain = 624.805
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
}Finished Timing Optimization : Time (s): cpu = 00:00:16 ; elapsed = 00:00:24 . Memory (MB): peak = 1426.988 ; gain = 624.805
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
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
!
Block RAM: Final Mapping Report
2default:defaulth p
x
� 
�
%s
*synth2�
�+------------+----------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|Module Name | RTL Object           | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+------------+----------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|top         | UART_BUFF/buffer_reg | 256 x 8(READ_FIRST)    | W |   | 256 x 8(WRITE_FIRST)   |   | R | Port A and B     | 1      | 0      | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+------------+----------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

2default:defaulth p
x
� 
S
%s
*synth2;
'
Distributed RAM: Final Mapping Report
2default:defaulth p
x
� 
�
%s
*synth2m
Y+------------+--------------------+-----------+----------------------+-----------------+
2default:defaulth p
x
� 
�
%s
*synth2n
Z|Module Name | RTL Object         | Inference | Size (Depth x Width) | Primitives      | 
2default:defaulth p
x
� 
�
%s
*synth2m
Y+------------+--------------------+-----------+----------------------+-----------------+
2default:defaulth p
x
� 
�
%s
*synth2n
Z|core        | mem/d_mem/data_reg | Implied   | 256 x 32             | RAM256X1S x 32  | 
2default:defaulth p
x
� 
�
%s
*synth2n
Z+------------+--------------------+-----------+----------------------+-----------------+

2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
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
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2(
UART_BUFF/buffer_reg2default:default2
Block2default:defaultZ8-7052h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Technology Mapping : Time (s): cpu = 00:00:16 ; elapsed = 00:00:25 . Memory (MB): peak = 1426.988 ; gain = 624.805
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
vFinished IO Insertion : Time (s): cpu = 00:00:18 ; elapsed = 00:00:27 . Memory (MB): peak = 1426.988 ; gain = 624.805
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:18 ; elapsed = 00:00:27 . Memory (MB): peak = 1426.988 ; gain = 624.805
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:18 ; elapsed = 00:00:28 . Memory (MB): peak = 1426.988 ; gain = 624.805
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:18 ; elapsed = 00:00:28 . Memory (MB): peak = 1426.988 ; gain = 624.805
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:19 ; elapsed = 00:00:28 . Memory (MB): peak = 1426.988 ; gain = 624.805
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:19 ; elapsed = 00:00:28 . Memory (MB): peak = 1426.988 ; gain = 624.805
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
#|1     |CoreOthers    |         1|
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
M
%s*synth25
!+------+----------------+------+
2default:defaulth px� 
M
%s*synth25
!|      |Cell            |Count |
2default:defaulth px� 
M
%s*synth25
!+------+----------------+------+
2default:defaulth px� 
M
%s*synth25
!|1     |CoreOthers_bbox |     1|
2default:defaulth px� 
M
%s*synth25
!|2     |BUFG            |     8|
2default:defaulth px� 
M
%s*synth25
!|3     |CARRY4          |    63|
2default:defaulth px� 
M
%s*synth25
!|4     |LUT1            |     8|
2default:defaulth px� 
M
%s*synth25
!|5     |LUT2            |   220|
2default:defaulth px� 
M
%s*synth25
!|6     |LUT3            |   236|
2default:defaulth px� 
M
%s*synth25
!|7     |LUT4            |   175|
2default:defaulth px� 
M
%s*synth25
!|8     |LUT5            |   625|
2default:defaulth px� 
M
%s*synth25
!|9     |LUT6            |  1414|
2default:defaulth px� 
M
%s*synth25
!|10    |MMCME2_ADV      |     1|
2default:defaulth px� 
M
%s*synth25
!|11    |MUXF7           |   405|
2default:defaulth px� 
M
%s*synth25
!|12    |MUXF8           |    63|
2default:defaulth px� 
M
%s*synth25
!|13    |RAM256X1S       |    32|
2default:defaulth px� 
M
%s*synth25
!|14    |RAMB18E1        |     1|
2default:defaulth px� 
M
%s*synth25
!|15    |FDCE            |   995|
2default:defaulth px� 
M
%s*synth25
!|16    |FDRE            |   194|
2default:defaulth px� 
M
%s*synth25
!|17    |FDSE            |     2|
2default:defaulth px� 
M
%s*synth25
!|18    |IBUF            |    18|
2default:defaulth px� 
M
%s*synth25
!|19    |OBUF            |    33|
2default:defaulth px� 
M
%s*synth25
!|20    |OBUFT           |    14|
2default:defaulth px� 
M
%s*synth25
!+------+----------------+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:19 ; elapsed = 00:00:28 . Memory (MB): peak = 1426.988 ; gain = 624.805
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
t
%s
*synth2\
HSynthesis finished with 0 errors, 0 critical warnings and 134 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:15 ; elapsed = 00:00:26 . Memory (MB): peak = 1426.988 ; gain = 516.074
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:19 ; elapsed = 00:00:28 . Memory (MB): peak = 1426.988 ; gain = 624.805
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
Parsing EDIF File [%s]
106*designutils2k
WC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/CoreOthers.edf2default:defaultZ20-106h px� 
�
 Finished Parsing EDIF File [%s]
97*designutils2k
WC:/Users/petrichor0/Desktop/co/lab3/lab3.srcs/sources_1/imports/lab3_src/CoreOthers.edf2default:defaultZ20-97h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0372default:default2
1426.9882default:default2
0.0002default:defaultZ17-268h px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
5812default:defaultZ29-17h px� 
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
32*opt2>
*core/core/core_others/alu_res_IBUF[0]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2?
+core/core/core_others/alu_res_IBUF[10]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2?
+core/core/core_others/alu_res_IBUF[11]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2?
+core/core/core_others/alu_res_IBUF[12]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2?
+core/core/core_others/alu_res_IBUF[13]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2?
+core/core/core_others/alu_res_IBUF[14]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2?
+core/core/core_others/alu_res_IBUF[15]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2?
+core/core/core_others/alu_res_IBUF[16]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2?
+core/core/core_others/alu_res_IBUF[17]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2?
+core/core/core_others/alu_res_IBUF[18]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2?
+core/core/core_others/alu_res_IBUF[19]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2>
*core/core/core_others/alu_res_IBUF[1]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2?
+core/core/core_others/alu_res_IBUF[20]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2?
+core/core/core_others/alu_res_IBUF[21]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2?
+core/core/core_others/alu_res_IBUF[22]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2?
+core/core/core_others/alu_res_IBUF[23]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2?
+core/core/core_others/alu_res_IBUF[24]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2?
+core/core/core_others/alu_res_IBUF[25]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2?
+core/core/core_others/alu_res_IBUF[26]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2?
+core/core/core_others/alu_res_IBUF[27]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2?
+core/core/core_others/alu_res_IBUF[28]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2?
+core/core/core_others/alu_res_IBUF[29]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2>
*core/core/core_others/alu_res_IBUF[2]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2?
+core/core/core_others/alu_res_IBUF[30]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2?
+core/core/core_others/alu_res_IBUF[31]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2>
*core/core/core_others/alu_res_IBUF[3]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2>
*core/core/core_others/alu_res_IBUF[4]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2>
*core/core/core_others/alu_res_IBUF[5]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2>
*core/core/core_others/alu_res_IBUF[6]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2>
*core/core/core_others/alu_res_IBUF[7]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2>
*core/core/core_others/alu_res_IBUF[8]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2>
*core/core/core_others/alu_res_IBUF[9]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt27
#core/core/core_others/clk_IBUF_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2;
'core/core/core_others/cmp_res_IBUF_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2B
.core/core/core_others/dmem_o_data_IBUF[0]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/dmem_o_data_IBUF[10]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/dmem_o_data_IBUF[11]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/dmem_o_data_IBUF[12]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/dmem_o_data_IBUF[13]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/dmem_o_data_IBUF[14]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/dmem_o_data_IBUF[15]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/dmem_o_data_IBUF[16]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/dmem_o_data_IBUF[17]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/dmem_o_data_IBUF[18]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/dmem_o_data_IBUF[19]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2B
.core/core/core_others/dmem_o_data_IBUF[1]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/dmem_o_data_IBUF[20]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/dmem_o_data_IBUF[21]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/dmem_o_data_IBUF[22]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/dmem_o_data_IBUF[23]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/dmem_o_data_IBUF[24]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/dmem_o_data_IBUF[25]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/dmem_o_data_IBUF[26]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/dmem_o_data_IBUF[27]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/dmem_o_data_IBUF[28]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/dmem_o_data_IBUF[29]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2B
.core/core/core_others/dmem_o_data_IBUF[2]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/dmem_o_data_IBUF[30]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/dmem_o_data_IBUF[31]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2B
.core/core/core_others/dmem_o_data_IBUF[3]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2B
.core/core/core_others/dmem_o_data_IBUF[4]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2B
.core/core/core_others/dmem_o_data_IBUF[5]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2B
.core/core/core_others/dmem_o_data_IBUF[6]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2B
.core/core/core_others/dmem_o_data_IBUF[7]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2B
.core/core/core_others/dmem_o_data_IBUF[8]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2B
.core/core/core_others/dmem_o_data_IBUF[9]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2B
.core/core/core_others/imem_o_data_IBUF[0]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/imem_o_data_IBUF[10]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/imem_o_data_IBUF[11]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/imem_o_data_IBUF[12]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/imem_o_data_IBUF[13]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/imem_o_data_IBUF[14]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/imem_o_data_IBUF[15]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/imem_o_data_IBUF[16]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/imem_o_data_IBUF[17]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/imem_o_data_IBUF[18]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/imem_o_data_IBUF[19]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2B
.core/core/core_others/imem_o_data_IBUF[1]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/imem_o_data_IBUF[20]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/imem_o_data_IBUF[21]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/imem_o_data_IBUF[22]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/imem_o_data_IBUF[23]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/imem_o_data_IBUF[24]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/imem_o_data_IBUF[25]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/imem_o_data_IBUF[26]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/imem_o_data_IBUF[27]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/imem_o_data_IBUF[28]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/imem_o_data_IBUF[29]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2B
.core/core/core_others/imem_o_data_IBUF[2]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/imem_o_data_IBUF[30]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2C
/core/core/core_others/imem_o_data_IBUF[31]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2B
.core/core/core_others/imem_o_data_IBUF[3]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2B
.core/core/core_others/imem_o_data_IBUF[4]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2B
.core/core/core_others/imem_o_data_IBUF[5]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2B
.core/core/core_others/imem_o_data_IBUF[6]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2B
.core/core/core_others/imem_o_data_IBUF[7]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2B
.core/core/core_others/imem_o_data_IBUF[8]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2B
.core/core/core_others/imem_o_data_IBUF[9]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2>
*core/core/core_others/rs1_val_IBUF[0]_inst2default:defaultZ31-32h px� 
�
NRemoving redundant IBUF since it is not being driven by a top-level port. %s 
32*opt2?
+core/core/core_others/rs1_val_IBUF[10]_inst2default:defaultZ31-32h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
	Opt 31-322default:default2
1002default:defaultZ17-14h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2<
(core/core/core_others/a_val_OBUF[0]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/a_val_OBUF[10]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/a_val_OBUF[11]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/a_val_OBUF[12]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/a_val_OBUF[13]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/a_val_OBUF[14]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/a_val_OBUF[15]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/a_val_OBUF[16]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/a_val_OBUF[17]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/a_val_OBUF[18]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/a_val_OBUF[19]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2<
(core/core/core_others/a_val_OBUF[1]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/a_val_OBUF[20]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/a_val_OBUF[21]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/a_val_OBUF[22]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/a_val_OBUF[23]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/a_val_OBUF[24]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/a_val_OBUF[25]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/a_val_OBUF[26]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/a_val_OBUF[27]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/a_val_OBUF[28]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/a_val_OBUF[29]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2<
(core/core/core_others/a_val_OBUF[2]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/a_val_OBUF[30]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/a_val_OBUF[31]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2<
(core/core/core_others/a_val_OBUF[3]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2<
(core/core/core_others/a_val_OBUF[4]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2<
(core/core/core_others/a_val_OBUF[5]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2<
(core/core/core_others/a_val_OBUF[6]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2<
(core/core/core_others/a_val_OBUF[7]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2<
(core/core/core_others/a_val_OBUF[8]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2<
(core/core/core_others/a_val_OBUF[9]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2?
+core/core/core_others/alu_ctrl_OBUF[0]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2?
+core/core/core_others/alu_ctrl_OBUF[1]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2?
+core/core/core_others/alu_ctrl_OBUF[2]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2?
+core/core/core_others/alu_ctrl_OBUF[3]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2<
(core/core/core_others/b_val_OBUF[0]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/b_val_OBUF[10]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/b_val_OBUF[11]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/b_val_OBUF[12]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/b_val_OBUF[13]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/b_val_OBUF[14]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/b_val_OBUF[15]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/b_val_OBUF[16]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/b_val_OBUF[17]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/b_val_OBUF[18]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/b_val_OBUF[19]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2<
(core/core/core_others/b_val_OBUF[1]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/b_val_OBUF[20]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/b_val_OBUF[21]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/b_val_OBUF[22]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/b_val_OBUF[23]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/b_val_OBUF[24]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/b_val_OBUF[25]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/b_val_OBUF[26]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/b_val_OBUF[27]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/b_val_OBUF[28]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/b_val_OBUF[29]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2<
(core/core/core_others/b_val_OBUF[2]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/b_val_OBUF[30]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2=
)core/core/core_others/b_val_OBUF[31]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2<
(core/core/core_others/b_val_OBUF[3]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2<
(core/core/core_others/b_val_OBUF[4]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2<
(core/core/core_others/b_val_OBUF[5]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2<
(core/core/core_others/b_val_OBUF[6]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2<
(core/core/core_others/b_val_OBUF[7]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2<
(core/core/core_others/b_val_OBUF[8]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2<
(core/core/core_others/b_val_OBUF[9]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2?
+core/core/core_others/cmp_ctrl_OBUF[0]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2?
+core/core/core_others/cmp_ctrl_OBUF[1]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2?
+core/core/core_others/cmp_ctrl_OBUF[2]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2:
&core/core/core_others/rs2_OBUF[4]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2@
,core/core/core_others/dbg_a_val_OBUF[0]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2A
-core/core/core_others/dbg_a_val_OBUF[10]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2A
-core/core/core_others/dbg_a_val_OBUF[11]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2A
-core/core/core_others/dbg_a_val_OBUF[12]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2A
-core/core/core_others/dbg_a_val_OBUF[13]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2A
-core/core/core_others/dbg_a_val_OBUF[14]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2A
-core/core/core_others/dbg_a_val_OBUF[15]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2A
-core/core/core_others/dbg_a_val_OBUF[16]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2A
-core/core/core_others/dbg_a_val_OBUF[17]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2A
-core/core/core_others/dbg_a_val_OBUF[18]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2A
-core/core/core_others/dbg_a_val_OBUF[19]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2@
,core/core/core_others/dbg_a_val_OBUF[1]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2A
-core/core/core_others/dbg_a_val_OBUF[20]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2A
-core/core/core_others/dbg_a_val_OBUF[21]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2A
-core/core/core_others/dbg_a_val_OBUF[22]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2A
-core/core/core_others/dbg_a_val_OBUF[23]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2A
-core/core/core_others/dbg_a_val_OBUF[24]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2A
-core/core/core_others/dbg_a_val_OBUF[25]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2A
-core/core/core_others/dbg_a_val_OBUF[26]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2A
-core/core/core_others/dbg_a_val_OBUF[27]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2A
-core/core/core_others/dbg_a_val_OBUF[28]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2A
-core/core/core_others/dbg_a_val_OBUF[29]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2@
,core/core/core_others/dbg_a_val_OBUF[2]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2A
-core/core/core_others/dbg_a_val_OBUF[30]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2A
-core/core/core_others/dbg_a_val_OBUF[31]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2@
,core/core/core_others/dbg_a_val_OBUF[3]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2@
,core/core/core_others/dbg_a_val_OBUF[4]_inst2default:defaultZ31-33h px� 
�
FRemoving redundant OBUF since it is not driving a top-level port. %s 
33*opt2@
,core/core/core_others/dbg_a_val_OBUF[5]_inst2default:defaultZ31-33h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
	Opt 31-332default:default2
1002default:defaultZ17-14h px� 
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
00:00:00.0012default:default2
1426.9882default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
s  A total of 32 instances were transformed.
  RAM256X1S => RAM256X1S (MUXF7(x2), MUXF8, RAMS64E(x4)): 32 instances
2default:defaultZ1-111h px� 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
a9905d7e2default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
862default:default2
4332default:default2
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
00:00:202default:default2
00:00:322default:default2
1426.9882default:default2
1019.3552default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2Q
=C:/Users/petrichor0/Desktop/co/lab3/lab3.runs/synth_1/top.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2p
\Executing : report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Apr  2 17:57:01 20242default:defaultZ17-206h px� 


End Record