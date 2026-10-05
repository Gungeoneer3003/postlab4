`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2026 10:39:07 AM
// Design Name: 
// Module Name: PostLab5Design
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


module PostLab5Design(
  input logic [1:0] decoder_in,
    input logic [3:0] adder_in,
    output logic [3:0] sum,
    output logic carry,
    output logic [6:0] seg,
    output logic [3:0] an
    );

    logic [3:0] decoder_out;
    logic [3:0] selected_data;

    decoder2to4 DEC (
        .decoder_in(decoder_in),
        .decoder_out(decoder_out)
    );

    dataArray ARRAY (
        .decoder_out(decoder_out),
        .selected_data(selected_data)
    );

    adder4bit ADD (
        .selected_data(selected_data),
        .adder_in(adder_in),
        .sum(sum),
        .carry(carry)
    );

    sevenSegment DISPLAY (
        .sum(sum),
        .seg(seg)
    );

    // Enable the rightmost display digit.
    assign an = 4'b1110;

endmodule


module decoder2to4(
    input logic [1:0] decoder_in,
    output logic [3:0] decoder_out
    );

    always_comb begin
        case(decoder_in)
            2'b00: decoder_out = 4'b0001;
            2'b01: decoder_out = 4'b0010;
            2'b10: decoder_out = 4'b0100;
            2'b11: decoder_out = 4'b1000;
            default: decoder_out = 4'b0000;
        endcase
    end

endmodule


module dataArray(
    input logic [3:0] decoder_out,
    output logic [3:0] selected_data
    );

    logic [3:0] data [0:3];

    assign data[0] = 4'b0000;
    assign data[1] = 4'b0101;
    assign data[2] = 4'b1010;
    assign data[3] = 4'b1111;

    always_comb begin
        case(decoder_out)
            4'b0001: selected_data = data[0];
            4'b0010: selected_data = data[1];
            4'b0100: selected_data = data[2];
            4'b1000: selected_data = data[3];
            default: selected_data = 4'b0000;
        endcase
    end

endmodule


module adder4bit(
    input logic [3:0] selected_data,
    input logic [3:0] adder_in,
    output logic [3:0] sum,
    output logic carry
    );

    assign {carry, sum} =
        {1'b0, selected_data} + {1'b0, adder_in};

endmodule


module sevenSegment(
    input logic [3:0] sum,
    output logic [6:0] seg
    );

    // seg[6:0] = {g, f, e, d, c, b, a}
    // Active-low: 0 = on, 1 = off.

    always_comb begin
        case(sum)
            4'b0000: seg = 7'b1000000; // 0
            4'b0001: seg = 7'b1111001; // 1
            4'b0010: seg = 7'b0100100; // 2
            4'b0011: seg = 7'b0110000; // 3
            4'b0100: seg = 7'b0011001; // 4
            4'b0101: seg = 7'b0010010; // 5
            4'b0110: seg = 7'b0000010; // 6
            4'b0111: seg = 7'b1111000; // 7
            4'b1000: seg = 7'b0000000; // 8
            4'b1001: seg = 7'b0010000; // 9
            4'b1010: seg = 7'b0001000; // A
            4'b1011: seg = 7'b0000011; // b
            4'b1100: seg = 7'b1000110; // C
            4'b1101: seg = 7'b0100001; // d
            4'b1110: seg = 7'b0000110; // E
            4'b1111: seg = 7'b0001110; // F
            default: seg = 7'b1111111;
        endcase
    end
endmodule
