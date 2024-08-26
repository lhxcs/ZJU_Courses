// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Fri Mar  1 15:32:15 2024
// Host        : LAPTOP-2K2EJALC running 64-bit major release  (build 9200)
// Command     : write_verilog -mode synth_stub D:/Downloads/Core.v
// Design      : Core
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module Core(dbg_pc, dbg_inst, dbg_regs0, dbg_regs1, 
  dbg_regs2, dbg_regs3, dbg_regs4, dbg_regs5, dbg_regs6, dbg_regs7, dbg_regs8, dbg_regs9, 
  dbg_regs10, dbg_regs11, dbg_regs12, dbg_regs13, dbg_regs14, dbg_regs15, dbg_regs16, dbg_regs17, 
  dbg_regs18, dbg_regs19, dbg_regs20, dbg_regs21, dbg_regs22, dbg_regs23, dbg_regs24, dbg_regs25, 
  dbg_regs26, dbg_regs27, dbg_regs28, dbg_regs29, dbg_regs30, dbg_regs31, clk, rst, imem_addr, 
  imem_o_data, dmem_addr, dmem_o_data, dmem_i_data, dmem_wen)
/* synthesis syn_black_box black_box_pad_pin="dbg_pc[31:0],dbg_inst[31:0],dbg_regs0[31:0],dbg_regs1[31:0],dbg_regs2[31:0],dbg_regs3[31:0],dbg_regs4[31:0],dbg_regs5[31:0],dbg_regs6[31:0],dbg_regs7[31:0],dbg_regs8[31:0],dbg_regs9[31:0],dbg_regs10[31:0],dbg_regs11[31:0],dbg_regs12[31:0],dbg_regs13[31:0],dbg_regs14[31:0],dbg_regs15[31:0],dbg_regs16[31:0],dbg_regs17[31:0],dbg_regs18[31:0],dbg_regs19[31:0],dbg_regs20[31:0],dbg_regs21[31:0],dbg_regs22[31:0],dbg_regs23[31:0],dbg_regs24[31:0],dbg_regs25[31:0],dbg_regs26[31:0],dbg_regs27[31:0],dbg_regs28[31:0],dbg_regs29[31:0],dbg_regs30[31:0],dbg_regs31[31:0],clk,rst,imem_addr[31:0],imem_o_data[31:0],dmem_addr[31:0],dmem_o_data[31:0],dmem_i_data[31:0],dmem_wen" */;
  output [31:0]dbg_pc;
  output [31:0]dbg_inst;
  output [31:0]dbg_regs0;
  output [31:0]dbg_regs1;
  output [31:0]dbg_regs2;
  output [31:0]dbg_regs3;
  output [31:0]dbg_regs4;
  output [31:0]dbg_regs5;
  output [31:0]dbg_regs6;
  output [31:0]dbg_regs7;
  output [31:0]dbg_regs8;
  output [31:0]dbg_regs9;
  output [31:0]dbg_regs10;
  output [31:0]dbg_regs11;
  output [31:0]dbg_regs12;
  output [31:0]dbg_regs13;
  output [31:0]dbg_regs14;
  output [31:0]dbg_regs15;
  output [31:0]dbg_regs16;
  output [31:0]dbg_regs17;
  output [31:0]dbg_regs18;
  output [31:0]dbg_regs19;
  output [31:0]dbg_regs20;
  output [31:0]dbg_regs21;
  output [31:0]dbg_regs22;
  output [31:0]dbg_regs23;
  output [31:0]dbg_regs24;
  output [31:0]dbg_regs25;
  output [31:0]dbg_regs26;
  output [31:0]dbg_regs27;
  output [31:0]dbg_regs28;
  output [31:0]dbg_regs29;
  output [31:0]dbg_regs30;
  output [31:0]dbg_regs31;
  input clk;
  input rst;
  output [31:0]imem_addr;
  input [31:0]imem_o_data;
  output [31:0]dmem_addr;
  input [31:0]dmem_o_data;
  output [31:0]dmem_i_data;
  output dmem_wen;
endmodule
