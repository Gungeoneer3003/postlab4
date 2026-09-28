`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2026 12:09:38 PM
// Design Name: 
// Module Name: structMultiplexer
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


module structMultiplexer(
        input   logic A,
        input   logic B,
        input   logic [1:0] SEL,
        output  res
    );
    
    logic xorOutput;
    logic andOutput;
    logic muxOutput;
    logic notOutput;
    
    assign xorOutput = A ^ B;
    assign andOutput = A & B;
    
    SimpleMUX mux0 (
        .I_0(andOutput),
        .I_1(xorOutput),
        .SEL(SEL[1]),
        .Y(muxOutput)
    );

    assign notOutput = ~muxOutput;
    
    SimpleMUX mux1 (
        .I_0(muxOutput),
        .I_1(notOutput),
        .SEL(SEL[0]),
        .Y(res)
    );
    
    
endmodule
