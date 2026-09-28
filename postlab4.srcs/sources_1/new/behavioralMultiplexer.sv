module behavioralMultiplexer(
    input  logic I_0,
    input  logic I_1,
    input  logic I_2,
    input  logic I_3,
    input  logic [1:0] SEL,
    output logic Y
    );


    always_comb begin
        case(SEL)
            2'b00: Y = I_0;
            2'b01: Y = I_1;
            2'b10: Y = I_2;
            2'b11: Y = I_3;
            default: Y = 1'b0;
        endcase
    end


endmodule
