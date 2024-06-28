`include "Defines.vh"
`timescale 1ns / 1ps


module  RV32core(
        input debug_en,  // debug enable
        input debug_step,  // debug step clock
        input [6:0] debug_addr,  // debug address
        output[31:0] debug_data,  // debug data
        input clk,  // main clock
        input rst,  // synchronous reset
        input led_clk,
        input sw,
        output [6:0] seg_ca,
        output [7:0] AN,
        output[31:0] pc,
        output[31:0] inst,
        output[31:0] mem_addr,
        output[31:0] mem_data
	);

	wire debug_clk;

	debug_clk clock(.clk(clk),.debug_en(debug_en),.debug_step(debug_step),.debug_clk(debug_clk));

    wire [31:0] imem_addr;
    wire [31:0] imem_o_data;
    wire [31:0] dmem_addr;
    wire [31:0] dmem_o_data;
    wire [31:0] dmem_i_data;
    wire [31:0] dmem_wen;

    wire dr_wen;
    wire [31:0] dr_i_data;
    wire [31:0] dr_o_data;

    `RegFile_DBG_Declaration
    `Core_DBG_Declarations

    

    Core core(
        `Core_DBG_Arguments
        .clk(debug_clk),
        .rst(rst),
        .imem_addr(imem_addr), //从Core中输出访问指令内存的地址
        .imem_o_data(imem_o_data), // 输入
        .dmem_addr(dmem_addr),// 输出
        .dmem_o_data(dmem_o_data), // 输入
        .dmem_i_data(dmem_i_data), // 输出
        .dmem_wen(dmem_wen), // 输出
        .sw(sw)
    );

    wire [31:0] imem_addr_wire;
    wire [31:0] imem_o_data_wire;
    wire [31:0] dmem_addr_wire;
    wire [31:0] dmem_i_data_wire;
    wire [31:0] dmem_o_data_wire;
    wire dmem_wen_wire;


    Mem mem(
        .i_addr(imem_addr_wire),
        .i_data(imem_o_data_wire),
        .clk(~debug_clk),
        .d_wen(dmem_wen_wire),
        .d_addr(dmem_addr_wire),
        .d_i_data(dmem_i_data_wire),
        .d_o_data(dmem_o_data_wire)
    );


    MACtrl memacc(
        //facing core
        .i_iaddr(imem_addr),
        .o_idata(imem_o_data),
        .i_dwen(dmem_wen),
        .i_daddr(dmem_addr),
        .i_d_idata(dmem_i_data),
        .o_d_odata(dmem_o_data),
        //facing IMem
        .o_iaddr(imem_addr_wire),
        .i_idata(imem_o_data_wire),
        //facing DMem
        .o_dwen(dmem_wen_wire),
        .o_daddr(dmem_addr_wire),
        .o_d_idata(dmem_i_data_wire),
        .i_d_odata(dmem_o_data_wire),
        //facing DR
        .o_drwen(dr_wen),
        .o_dr_idata(dr_i_data),
        .i_dr_odata(dr_o_data)
    );

    DispNum dr(
        .clk(led_clk),
        .rst(rst),
        .wen(dr_wen),
        .i_data(dr_i_data),
        .o_data(dr_o_data),
        .Segments(seg_ca),
        .AN(AN)
    );

    `RV32core_DBG_Assignments

endmodule