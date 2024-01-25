`timescale 1ns / 1ps

module test;

    wire [3:0] t_sw;
    wire [1:0] t_led;
    wire       t_clk;
    localparam FREQ = 1_000_000_000;

    clk_gen
    #(
        .FREQ(FREQ)
    )
    u_clk_gen
    (
        .clk(t_clk)
    );
    
    top u_top
    (
        .sw(t_sw),
        .led(t_led)
    );

    tpg u_tpg
    (
        .sw(t_sw),
        .clk(t_clk)
    );
    
    monitor u_monitor
    (
        .sw(t_sw),
        .led(t_led),
        .clk(t_clk)
    );

endmodule
