`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/14 13:44:36
// Design Name: 
// Module Name: test_gen
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


module test_gen(
        input clk,
        input rst,
        output [15:0] A,
        output [15:0] B,
        output [31:0] prod,
        output [31:0] quot,
        output [31:0] rema,
        output [31:0] div_by_0
    );

    reg [31:0] data [0:255];

    initial begin
        $readmemh("data.mem", data);
    end

    reg [4:0] test_cnt;
    always @ (posedge clk or posedge rst) begin
        if (rst) begin
            test_cnt <= 5'b0;
        end
        else begin
            test_cnt <= test_cnt + 1;
        end
    end

    assign A = data[{test_cnt, 3'd0}][15:0];
    assign B = data[{test_cnt, 3'd1}][15:0];
    assign prod = data[{test_cnt, 3'd2}];
    assign quot = data[{test_cnt, 3'd3}];
    assign rema = data[{test_cnt, 3'd4}];
    assign div_by_0 = data[{test_cnt, 3'd5}];

endmodule
