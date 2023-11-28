`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2023 10:19:21 PM
// Design Name: 
// Module Name: SequenceDetector
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


module SequenceDetector(
    input GLOBAL_CLK,
    input [7:0] GLOBAL_IN,
    input GLOBAL_IN_BUTTON,
    output [3:0] GLOBAL_OUT_AN,
    output [7:0] GLOBAL_OUT_SEG,
    output [7:0] GLOBAL_OUT_LED
    );

    logic LOCAL_S_CLK, LOCAL_X, LOCAL_Z;

    clk_div2 CLK_DIV_0(
        .clk(GLOBAL_CLK),
        .sclk(LOCAL_S_CLK)
    );

    seq_dvr SEQ_DVR_0(
        .CLK(LOCAL_S_CLK),
        .SWITCHES(GLOBAL_IN),
        .LEDS(GLOBAL_OUT_LED),
        .X(LOCAL_X)
    );

    FSM FSM_0(
        .clk(LOCAL_S_CLK),
        .x(LOCAL_X),
        .button(GLOBAL_IN_BUTTON),
        .z(LOCAL_Z)
    );

    BC_DEC BC_DEC_0(
        .CLK(GLOBAL_CLK),
        .Z(LOCAL_Z),
        .DISP_EN(GLOBAL_OUT_AN),
        .SEGMENTS(GLOBAL_OUT_SEG)
    );


endmodule
