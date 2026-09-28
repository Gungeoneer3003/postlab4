`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2026 10:49:29 AM
// Design Name: 
// Module Name: SimpleMUX
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


module SimpleMUX(
    input  logic I_0,
    input  logic I_1,

    input  logic SEL,
    output logic Y
    );
    
    always_comb begin
        case(SEL)
            2'b00: Y = I_0;
            2'b01: Y = I_1;
            default: Y = 1'b0;
        endcase
    end
endmodule
