`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/25 18:37:24
// Design Name: 
// Module Name: AddFloat
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


module AddFloat(
    input clk,
    input rst,
    input start,
    input [31:0] a,
    input [31:0] b,
    output finish,
    output [31:0] result
    );

    reg [2:0] state;
    reg [7:0] a_exp, b_exp, result_exp;
    reg [24:0] a_mant, b_mant, result_mant;
    reg sign;
    reg [31:0] result_reg;
    reg finish_reg;
    reg running;

    wire neg;
    assign neg = a[31] ^ b[31];

    localparam 
        state0 = 3'b000,
        state1 = 3'b001, 
        state2 = 3'b010,
        state3 = 3'b011,
        state4 = 3'b100,
        state5 = 3'b101;

    always@(posedge clk or posedge rst) begin
        if(rst) begin
            result_reg <= 0;
            finish_reg <= 0;
            running <= 0;
        end
        else if(start) begin
            a_exp <= a[30:23];
            b_exp <= b[30:23];
            a_mant <= {2'b01, a[22:0]};
            b_mant <= {2'b01, b[22:0]};
            state <= state0;
            finish_reg <= 0;
            running <= 1;
        end
        else if(running && !finish_reg) begin
            case(state)
                state0: begin
                    if(a_exp == b_exp && a_mant == b_mant && neg) begin
                        sign <= 0;
                        result_exp <= 0;
                        result_mant <= 0;
                        state <= state4;
                    end
                    else if(a_exp == 0 || a_exp == 8'hFF) begin
                        sign <= a[31];
                        result_exp <= a_exp;
                        result_mant <= a_mant;
                        state <= state4;
                    end
                    else if(b_exp == 0 || b_exp == 8'hFF) begin
                        sign <= b[31];
                        result_exp <= b_exp;
                        result_mant <= b_mant;
                        state <= state4;
                    end
                    else begin
                        state <= state1;
                    end
                end

                state1: begin
                    if(a_exp == b_exp) begin
                        state <= state2;
                    end
                    else if(a_exp > b_exp) begin
                        b_exp <= b_exp + 1;
                        b_mant[24:0] <= {1'b0, b_mant[24:1]};
                    end
                    else begin
                        a_exp <= a_exp + 1;
                        a_mant[24:0] <= {1'b0, a_mant[24:1]};
                    end
                end

                state2: begin
                    if(!neg) begin
                        sign <= a[31];
                        result_mant <= a_mant + b_mant;
                    end
                    else begin
                        // if(a_mant == b_mant && a_exp == b_exp) begin
                        //     result_exp <= 0;
                        //     result_mant <= 0;
                        //     state <= state4;
                        // end
                        if(a[31]) begin
                            if(a_mant > b_mant) begin
                                sign <= 1;
                                result_mant <= a_mant - b_mant;
                            end
                            else begin
                                sign <= 0;
                                result_mant <= b_mant - a_mant;
                            end
                        end
                        else begin // a positive
                            if(a_mant > b_mant) begin
                                sign <= 0;
                                result_mant <= a_mant - b_mant;
                            end
                            else begin
                                sign <= 1;
                                result_mant <= b_mant - a_mant;
                            end
                        end
                    end
                    result_exp <= a_exp;
                    state <= state3;
                end

                state3: begin
                    // if(!result_mant[24] && result_exp == 0) begin
                    //     result_mant <= 0;
                    //     state <= state4;
                    // end
                    if(result_mant[24]) begin
                        result_exp <= result_exp + 1;
                        result_mant <= result_mant >> 1;
                        state <= state3;
                    end
                    else if(result_mant[23] == 0) begin
                        result_exp <= result_exp - 1;
                        result_mant <= result_mant << 1;
                        state <= state3;
                    end
                   
                    else state <= state4;
                end

                state4: begin
                    result_reg <= {sign, result_exp, result_mant[22:0]};
                    finish_reg <= 1;
                    running <= 0;
                end

            endcase
        end
    end
    
    assign result = result_reg;
    assign finish = finish_reg;

endmodule
