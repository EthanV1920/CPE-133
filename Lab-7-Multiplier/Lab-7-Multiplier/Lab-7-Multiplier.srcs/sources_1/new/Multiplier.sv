`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO
// Engineer: Ethan Vosburg
// 
// Create Date: 11/30/2023 05:39:30 PM
// Design Name: 
// Module Name: Multiplier
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


module Multiplier(
    input GLOBAL_CLK,
    input [3:0] GLOBAL_IN_A,
    input [3:0] GLOBAL_IN_B, 
    input GLOBAL_IN_BUTTON,
    output [7:0] GLOBAL_OUT_SEG,
    output [3:0] GLOBAL_OUT_AN
    );

    logic LOCAL_ACC_LD, LOCAL_ACC_CLR;
    logic [1:0] LOCAL_SR_SEL;
    logic [7:0] LOCAL_SR_Q;
    logic [13:0] LOCAL_ACC_Q;

    ShiftRegister SR0(
        .CLK(GLOBAL_CLK),
        .CLR(1'b0),
        .SEL(LOCAL_SR_SEL),
        .D({4'b0000, GLOBAL_IN_A}),
        .Q(LOCAL_SR_Q)
    );

    Multiplier_FSM FSM0(
        .clk(GLOBAL_CLK),
        .button(GLOBAL_IN_BUTTON),
        .x(GLOBAL_IN_B),
        .sr_sel(LOCAL_SR_SEL),
        .acc_ld(LOCAL_ACC_LD),
        .acc_clr(LOCAL_ACC_CLR)
    );

    Accumulator ACC0(
        .CLK(GLOBAL_CLK),
        .LD(LOCAL_ACC_LD),
        .CLR(LOCAL_ACC_CLR),
        .D(LOCAL_SR_Q),
        .Q(LOCAL_ACC_Q)
    );

    univ_sseg SSEG0(
        .clk(GLOBAL_CLK),
        .cnt1({6'b000000, LOCAL_ACC_Q}),
        .cnt2(7'b0000000), 
        .dp_en(1'b0),
        .dp_sel(2'b00),
        .mod_sel(2'b00),
        .sign(LOCAL_REG1_OUT),
        .valid(1'b1),
        .ssegs(GLOBAL_OUT_SEG),
        .disp_en(GLOBAL_OUT_AN)
    );




endmodule
