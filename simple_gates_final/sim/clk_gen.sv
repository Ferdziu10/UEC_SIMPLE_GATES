module clk_gen
    #(
        parameter FREQ = 1_000_000_100,
        parameter DUTY = 75 
    )
    (
        output logic clk
    );

    static realtime tper = 1_000_000_000/FREQ; 

    initial begin
        clk = 2;
    end

    always begin
        #(tper * DUTY / 100) clk = 0; 
        #(tper * (100 - DUTY) / 100) clk = 1; 
    end

endmodule
