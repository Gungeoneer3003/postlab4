`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2026 10:39:25 AM
// Design Name: 
// Module Name: PostLab5Sim
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


module PostLab5Sim();
    logic [1:0] sdecoder_in;
    logic [3:0] sadder_in;
    logic [3:0] ssum;
    logic scarry;
    logic [6:0] sseg;
    logic [3:0] san;

    PostLab5Design UUT (
        .decoder_in(sdecoder_in),
        .adder_in(sadder_in),
        .sum(ssum),
        .carry(scarry),
        .seg(sseg),
        .an(san)
    );

    initial begin

        // Test 1: 0 + 0 = 0, carry = 0
        sdecoder_in = 2'b00;
        sadder_in = 4'b0000;
        #10;

        // Test 2: 0 + 1 = 1, carry = 0
        sdecoder_in = 2'b00;
        sadder_in = 4'b0001;
        #10;

        // Test 3: 0 + 2 = 2, carry = 0
        sdecoder_in = 2'b00;
        sadder_in = 4'b0010;
        #10;

        // Test 4: 0 + 3 = 3, carry = 0
        sdecoder_in = 2'b00;
        sadder_in = 4'b0011;
        #10;

        // Test 5: 0 + 4 = 4, carry = 0
        sdecoder_in = 2'b00;
        sadder_in = 4'b0100;
        #10;

        // Test 6: 5 + 0 = 5, carry = 0
        sdecoder_in = 2'b01;
        sadder_in = 4'b0000;
        #10;

        // Test 7: 5 + 1 = 6, carry = 0
        sdecoder_in = 2'b01;
        sadder_in = 4'b0001;
        #10;

        // Test 8: 5 + 2 = 7, carry = 0
        sdecoder_in = 2'b01;
        sadder_in = 4'b0010;
        #10;

        // Test 9: 5 + 3 = 8, carry = 0
        sdecoder_in = 2'b01;
        sadder_in = 4'b0011;
        #10;

        // Test 10: 5 + 4 = 9, carry = 0
        sdecoder_in = 2'b01;
        sadder_in = 4'b0100;
        #10;

        // Test 11: A + 0 = A, carry = 0
        sdecoder_in = 2'b10;
        sadder_in = 4'b0000;
        #10;

        // Test 12: A + 1 = B, carry = 0
        sdecoder_in = 2'b10;
        sadder_in = 4'b0001;
        #10;

        // Test 13: A + 2 = C, carry = 0
        sdecoder_in = 2'b10;
        sadder_in = 4'b0010;
        #10;

        // Test 14: A + 3 = D, carry = 0
        sdecoder_in = 2'b10;
        sadder_in = 4'b0011;
        #10;

        // Test 15: A + 4 = E, carry = 0
        sdecoder_in = 2'b10;
        sadder_in = 4'b0100;
        #10;

        // Test 16: F + 0 = F, carry = 0
        sdecoder_in = 2'b11;
        sadder_in = 4'b0000;
        #10;

        // Test 17: F + 1 = 10, sum = 0, carry = 1
        sdecoder_in = 2'b11;
        sadder_in = 4'b0001;
        #10;

        // Test 18: F + F = 1E, sum = E, carry = 1
        sdecoder_in = 2'b11;
        sadder_in = 4'b1111;
        #10;

        // Test 19: A + 6 = 10, sum = 0, carry = 1
        sdecoder_in = 2'b10;
        sadder_in = 4'b0110;
        #10;

        // Test 20: 5 + F = 14, sum = 4, carry = 1
        sdecoder_in = 2'b01;
        sadder_in = 4'b1111;
        #10;

        $finish;

    end

endmodule
