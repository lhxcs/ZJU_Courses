`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/02/27 19:43:23
// Design Name: 
// Module Name: DispNum
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
module DispNum(
        input wire clk, // 时钟信号
        input wire rst, // 复位信号
        input wire wen, // 写使能信号，当其在时钟上升沿为 1 时才根据输入端口修改显示的数字
        input wire [31:0] i_data, // 从其他电路输入到驱动的数据，默认数据交换的宽度为 32 bits
        output wire [31:0] o_data, // 驱动中暂存的数据，其他电路可以读取
        output wire [6:0] Segments, // 连接 FPGA 的七个 LED 的接口
        output wire [7:0] AN // 八组七段数码管的是能信号
    );

    reg [31:0] Hexs;
    wire [3:0] Hex;
    reg [6:0] segment_data;
    reg [7:0] AN_data;

    wire [2:0] scan;
    clkdiv c0(.clk(clk),.rst(rst),.scan(scan));

    Mux8to1_4b m0(
        .a(Hexs[3:0]),
        .b(Hexs[7:4]),
        .c(Hexs[11:8]),
        .d(Hexs[15:12]),
        .e(Hexs[19:16]),
        .f(Hexs[23:20]),
        .g(Hexs[27:24]),
        .h(Hexs[31:28]),
        .s(scan),
        .o(Hex)
    );

    assign Segments = ((rst == 1) ? 7'b1111111 :
                            (Hex == 4'h0) ? 7'b1000000 : 
                            (Hex == 4'h1) ? 7'b1111001 : 
                            (Hex == 4'h2) ? 7'b0100100 : 
                            (Hex == 4'h3) ? 7'b0110000 : 
                            (Hex == 4'h4) ? 7'b0011001 : 
                            (Hex == 4'h5) ? 7'b0010010 : 
                            (Hex == 4'h6) ? 7'b0000010 : 
                            (Hex == 4'h7) ? 7'b1111000 : 
                            (Hex == 4'h8) ? 7'b0000000 : 
                            (Hex == 4'h9) ? 7'b0010000 : 
                            (Hex == 4'hA) ? 7'b0001000 : 
                            (Hex == 4'hB) ? 7'b0000011 : 
                            (Hex == 4'hC) ? 7'b1000110 : 
                            (Hex == 4'hD) ? 7'b0100001 : 
                            (Hex == 4'hE) ? 7'b0000110 : 
                            (Hex == 4'hF) ? 7'b0001110 : 
                                            7'b1111111 );
    
    assign AN = ((rst == 1) ? 8'b11111111 :
                    (scan == 3'b000) ? 8'b11111110 : 
                    (scan == 3'b001) ? 8'b11111101 : 
                    (scan == 3'b010) ? 8'b11111011 : 
                    (scan == 3'b011) ? 8'b11110111 : 
                    (scan == 3'b100) ? 8'b11101111 : 
                    (scan == 3'b101) ? 8'b11011111 : 
                    (scan == 3'b110) ? 8'b10111111 : 
                    (scan == 3'b111) ? 8'b01111111 : 
                                        8'b11111111 );
    
    

    always @(posedge clk) begin
        if(wen == 1) begin
            Hexs <= i_data;
        end
    end
    
    
    assign o_data = Hexs;
    
endmodule

