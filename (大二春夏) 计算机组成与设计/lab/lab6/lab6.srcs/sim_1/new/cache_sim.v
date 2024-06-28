`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/05 18:22:29
// Design Name: 
// Module Name: cache_sim
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


module cache_sim(

    );
    reg clk;
    reg rst;
    reg [31:0] cpu_addr;
    reg [31:0] write_data;
    reg Read;
    reg Write;
    wire [31:0] data;
    wire ready;

    wire [31:0] mem_data;
    wire [31:0] block_data;
    wire [31:0] mem_addr;
    wire MemRead;
    wire MemWrite;
    wire ack;
    

    cache m0(
        .clk(clk),
        .rst(rst),
        .cpu_addr(cpu_addr),
        .write_data(write_data),
        .block_data(block_data),
        .Read(Read),
        .Write(Write),
        .ack(ack),
        .data(data),
        .mem_data(mem_data),
        .mem_addr(mem_addr),
        .MemRead(MemRead),
        .MemWrite(MemWrite),
        .ready(ready)
    );

    DMem m1(
        .clk(clk),
        .rst(rst),
        .wen(MemWrite),
        .ren(MemRead),
        .addr(mem_addr),
        .i_data(mem_data),
        .o_data(block_data),
        .ack(ack)
    );

    initial begin
        rst = 1'b1;
        Read = 0;
        Write = 0;
        #100;
        //Read miss
        rst = 0;
        cpu_addr = 32'h00000000;
        Read = 1; Write = 0;
        #100;
        //Read miss
        cpu_addr = 32'h00000004;
        Read = 1;
        Write = 0;
        #100;
        //Read hit
        cpu_addr = 32'h00000000;
        #100;
        cpu_addr = 32'h00000004;
        #100;
        //Write hit
        Read = 0;
        Write = 1;
        cpu_addr = 32'h00000000;
        write_data = 32'hAAAAAAAA;
        #100;
        //Read hit
        Read = 1;
        Write = 0;
        cpu_addr = 32'h00000000;
        #100;
        //Write hit
        Read = 0;
        Write = 1;
        cpu_addr = 32'h00000000;
        write_data = 32'hBBBBBBBB;
        #100;
        //Read Miss
        Read = 1;
        Write = 0;
        cpu_addr = 32'h00000020;
        #200;
        //Read Hit
        cpu_addr = 32'h00000000;
        #100;
        cpu_addr = 32'h00000020;
        #100;
        //Write back
        Read = 1;
        Write = 0;
        cpu_addr = 32'h00000060;
        #100;
        Read = 1;
        Write = 0;
        cpu_addr = 32'h00000000;
        #100;
        //Write miss
        Read = 0;
        Write = 1;
        cpu_addr = 32'h00000008;
        write_data = 32'hCCCCCCCC;
        #100;
        //Read hit
        Read = 1;
        Write = 0;
        cpu_addr = 32'h00000008;
        #100;
        
    end

    always begin
        clk <= 1'b1; #5;
        clk <= 1'b0; #5;
    end


endmodule
