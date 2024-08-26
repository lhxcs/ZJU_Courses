`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/05 19:21:11
// Design Name: 
// Module Name: MACtrl
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MACtrl(
 // face CPU
        input [31:0] i_iaddr, //CPU 当前访问的指令的地址。
        output [31:0] o_idata, //输出从指令内存中读取到的数据传入 CPU。
        input i_dwen, //CPU 传出的访问对应数据内存的写使能信号。
        input [31:0] i_daddr, //CPU 传出的访问数据内存的地址。
        input [31:0] i_d_idata, //CPU 传出的需要写入到数据内存的数据端口。
        output [31:0] o_d_odata, //传入 CPU 的从数据内存中读到的数据。
        // face IMEM
        output [31:0] o_iaddr, //传入 IMEM 的指令地址
        input [31:0] i_idata, //从 IMEM 中读取到的指令
        // face DMEM
        output o_dwen, //传入 DMEM 的写使能信号
        output [31:0] o_daddr, //访问数据内存的地址
        output [31:0] o_d_idata, //写入 DMEM 的数据端口
        input [31:0] i_d_odata, //从 DMEM 中读取到的数据。
        // face DispNum
        output o_drwen,
        output [31:0] o_dr_idata,
        input [31:0] i_dr_odata
    );

    assign o_iaddr = i_iaddr;
    assign o_idata = i_idata;
    assign o_daddr = i_daddr;
    assign o_d_idata = i_d_idata;
    assign o_d_odata = (i_daddr == 32'hFE000000) ? i_dr_odata : i_d_odata;
    assign o_dwen = (i_daddr == 32'hFE000000) ? 0 : i_dwen;
    assign o_drwen = (i_daddr == 32'hFE000000) ? i_dwen : 0;
    assign o_dr_idata = i_d_idata;
    
endmodule
