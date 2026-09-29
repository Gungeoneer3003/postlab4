`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2026 03:13:06 PM
// Design Name: 
// Module Name: structSim
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


module structSim();
    logic sA;
    logic sB;
    logic [1:0] sSEL;
    logic sY;


    structMultiplexer UUT (
        .A(sA),
        .B(sB),
        .SEL(sSEL),
        .res(sY)
    );


    initial begin
        sA = 1'b1;
        sB = 1'b0;
        sSEL[0] = 1'b0;
        sSEL[1] = 1'b0;
        #10;
        
        sA = 1'b0;
        sB = 1'b1;
        sSEL[0] = 1'b0;
        sSEL[1] = 1'b0;
        #10;
        
        sA = 1'b0;
        sB = 1'b1;
        sSEL[0] = 1'b1;
        sSEL[1] = 1'b0;
        #10;
        
        sA = 1'b1;
        sB = 1'b0;
        sSEL[0] = 1'b1;
        sSEL[1] = 1'b0;
        #10;
        
        sA = 1'b1;
        sB = 1'b1;
        sSEL[0] = 1'b1;
        sSEL[1] = 1'b0;
        #10;
        
        sA = 1'b0;
        sB = 1'b1;
        sSEL[0] = 1'b1;
        sSEL[1] = 1'b1;
        #10;
        
        sA = 1'b1;
        sB = 1'b1;
        sSEL[0] = 1'b1;
        sSEL[1] = 1'b1;
        #10;
        
        sA = 1'b0;
        sB = 1'b0;
        sSEL[0] = 1'b1;
        sSEL[1] = 1'b1;
        #10;
        
        sA = 1'b1;
        sB = 1'b0;
        sSEL[0] = 1'b0;
        sSEL[1] = 1'b1;
        #10;
        
        sA = 1'b0;
        sB = 1'b1;
        sSEL[0] = 1'b0;
        sSEL[1] = 1'b1;
        #10;
        
       $finish;
   end
endmodule
