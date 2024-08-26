`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/02/28 23:45:43
// Design Name: 
// Module Name: DMem
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


module DMem(
        input clk,
        input wen,
        input [31:0] addr,
        input [31:0] i_data,
        output [31:0] o_data
    );

    reg [31:0] data [255:0];

    initial begin
        $readmemh("data.mem", data);
    end

    assign o_data = data[addr[9:2]];

    always @ (posedge clk) begin
        if (wen) begin
            data[addr[9:2]] <= i_data;
        end
    end
endmodule
