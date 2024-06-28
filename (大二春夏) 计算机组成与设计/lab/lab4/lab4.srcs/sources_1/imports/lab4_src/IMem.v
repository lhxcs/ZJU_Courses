`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/02/28 23:45:43
// Design Name: 
// Module Name: IMem
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


module IMem(
        input [31:0] addr,
        output [31:0] data
    );

    reg [31:0] inst_data [255:0];

    initial begin
        $readmemh("inst.mem", inst_data);
    end

    assign data = inst_data[addr[9:2]];
endmodule
