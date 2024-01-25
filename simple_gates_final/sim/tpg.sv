`timescale 1ns/1ps

module tpg
    (
        
        output logic [3:0] sw,
        input wire clk
    );


    initial begin
        $timeformat(-9, 3, "ns", 10);
        $display("%t: Starting test", $realtime);
        sw = 4'b0000;
    end

    always @(negedge clk) sw++; 

     
endmodule
