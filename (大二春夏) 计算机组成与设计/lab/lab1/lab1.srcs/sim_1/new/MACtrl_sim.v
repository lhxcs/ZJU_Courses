`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/12 19:02:48
// Design Name: 
// Module Name: MACtrl_sim
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


module MACtrl_sim(

    );
    reg [31:0] i_iaddr;
    reg i_dwen;
    reg [31:0] i_daddr;
    reg [31:0] i_d_idata;
    reg [31:0] i_idata;
    reg [31:0] i_d_odata;
    reg [31:0] i_dr_odata;
    wire [31:0] o_idata;
    wire [31:0] o_d_odata;
    wire [31:0] o_iaddr;
    wire o_dwen;
    wire [31:0] o_daddr;
    wire [31:0] o_d_idata;
    wire o_drwen;
    wire [31:0] o_dr_idata;

    MACtrl m0 (
        .i_iaddr(i_iaddr),
        .o_idata(o_idata),
        .i_dwen(i_dwen),
        .i_daddr(i_daddr),
        .i_d_idata(i_d_idata),
        .o_d_odata(o_d_odata),
        .o_iaddr(o_iaddr),
        .i_idata(i_idata),
        .o_dwen(o_dwen),
        .o_daddr(o_daddr),
        .o_d_idata(o_d_idata),
        .i_d_odata(i_d_odata),
        .o_drwen(o_drwen),
        .o_dr_idata(o_dr_idata),
        .i_dr_odata(i_dr_odata)
    );
    initial begin
        i_daddr <= 32'hFE000000;
        i_d_idata <= 32'h1;
        i_d_odata <= 32'h2;
        i_dr_odata <= 32'h3;
        i_dwen <= 1;
        #100;
        i_daddr <= 32'h00000000;
        #100;
    end
    
endmodule
