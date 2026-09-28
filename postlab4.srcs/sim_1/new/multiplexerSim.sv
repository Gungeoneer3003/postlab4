module TopSim();
    logic sI_0;
    logic sI_1;
    logic sI_2;
    logic sI_3;
    logic [1:0] sSEL;
    logic sY;


    Top UUT (
        .I_0(sI_0),
        .I_1(sI_1),
        .I_2(sI_2),
        .I_3(sI_3),
        .SEL(sSEL),
        .Y(sY)
    );


    initial begin


        //I_3 I_2 I_1 I_0 = 1010
        sI_0 = 1'b0;
        sI_1 = 1'b1;
        sI_2 = 1'b0;
        sI_3 = 1'b1;


        sSEL = 2'b00;
        #10;


        sSEL = 2'b01;
        #10;


        sSEL = 2'b10;
        #10;


        sSEL = 2'b11;
        #10;




        //I_3 I_2 I_1 I_0 = 0101
        sI_0 = 1'b1;
        sI_1 = 1'b0;
        sI_2 = 1'b1;
        sI_3 = 1'b0;


        sSEL = 2'b00;
        #10;


        sSEL = 2'b01;
        #10;


        sSEL = 2'b10;
        #10;


        sSEL = 2'b11;
        #10;


    end


endmodule
