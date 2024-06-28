`timescale 1ns / 1ps

/**
 * Scan inputs from button matrix.
 * Author: Zhao, Hongyu  <power_zhy@foxmail.com>
 */

module btn_scan (
    input wire clk,  // main clock
    input wire rst,  // synchronous reset
    //output reg [4:0] btn_x,
    input wire btn_c,
    input wire btn_r,
    //output reg [19:0] result
    output reg [1:0] result
    );
    
	`include "function.vh"
    parameter
        CLK_FREQ = 100;  // main clock frequency in MHz
    localparam
        SCAN_INTERVAL = 10,  // scan interval for matrix keyboard, must be larger then anti-jitter's max jitter time
        COUNT_SCAN = 1 + CLK_FREQ * SCAN_INTERVAL * 1000,
        COUNT_BITS = GET_WIDTH(COUNT_SCAN-1);
    
    reg [COUNT_BITS-1:0] clk_count = 0;
    
    always @(posedge clk) begin
        if (rst)
            clk_count <= 0;
        else if (clk_count[COUNT_BITS-1])
            clk_count <= 0;
        else
            clk_count <= clk_count + 1'h1;
    end

    always @(posedge clk) begin
        if (rst) begin
            result <= 0;
        end
        else begin
            if (clk_count[COUNT_BITS-1])
                result[1:0] = {btn_c, btn_r};
        end
    end
    
endmodule
