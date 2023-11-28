`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO
// Engineer: Ethan Vosburg
// 
// Create Date: 10/19/2023 10:55:30 AM
// Design Name: Adder Subtractor
// Module Name: Adder-Subtractor
// Project Name: Adder Subtractor Display 
// Target Devices: Basys3
// Tool Versions: 
// Description: Adder and Subtractor for 7 segment display
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Reg_Adder_Subtractor(
    input GLOBAL_CLK,
    input GLOBAL_ENTER,
    input GLOBAL_CLR,
    input [3:0] GLOBAL_IN_A,
    input [3:0] GLOBAL_IN_B,
    input GLOBAL_IN_SUB,
    output [3:0] GLOBAL_OUT_AN,
    output [7:0] GLOBAL_OUT_SEG
    );

    logic [3:0] LOCAL_RCA0_SUM, LOCAL_RCA1_SUM, LOCAL_MUX0_OUT, LOCAL_MUX1_OUT, LOCAL_REG0_OUT;
    logic LOCAL_AND0_OUT, LOCAL_VC0_OUT, LOCAL_REG1_OUT, LOCAL_REG2_OUT;

    MUX MUX0(
        .zeroIn(GLOBAL_IN_B),
        .oneIn(~GLOBAL_IN_B),
        .select(GLOBAL_IN_SUB),
        .muxOut(LOCAL_MUX0_OUT)
    );

    RCA_FA RCA_FA_0(
        .BI_A(GLOBAL_IN_A),
        .BI_B(LOCAL_MUX0_OUT),
        .BI_Ci(GLOBAL_IN_SUB),
        .BO_S(LOCAL_RCA0_SUM),
        .BO_Co()
    );

    RCA_FA RCA_FA_1(
        .BI_A(~LOCAL_RCA0_SUM),
        .BI_B(4'b0000),
        .BI_Ci(1'b1),
        .BO_S(LOCAL_RCA1_SUM),
        .BO_Co()
    );

    MUX MUX1(
        .oneIn(LOCAL_RCA1_SUM),
        .zeroIn(LOCAL_RCA0_SUM),
        .select(LOCAL_AND0_OUT),
        .muxOut(LOCAL_MUX1_OUT)
    );

    assign LOCAL_AND0_OUT = (LOCAL_RCA0_SUM[3] & LOCAL_VC0_OUT);


    Validity_Check VC0(
        .A(GLOBAL_IN_A[3]),
        .B(LOCAL_MUX0_OUT[3]),
        .S(LOCAL_RCA0_SUM[3]),
        .valid(LOCAL_VC0_OUT)
    );

    REG4b REG4b0(
        .clk(GLOBAL_CLK),
        .enter(GLOBAL_ENTER),
        .clr(GLOBAL_CLR),
        .data(LOCAL_MUX1_OUT),
        .set(4'b0000),
        .Q(LOCAL_REG0_OUT)
    );

    REG REG1(
        .clk(GLOBAL_CLK),
        .enter(GLOBAL_ENTER),
        .clr(GLOBAL_CLR),
        .data(LOCAL_AND0_OUT),
        .set(1'b0),
        .Q(LOCAL_REG1_OUT)
    );
    
    REG REG2(
        .clk(GLOBAL_CLK),
        .enter(GLOBAL_ENTER),
        .clr(1'b0),
        .data(LOCAL_VC0_OUT),
        .set(GLOBAL_CLR),
        .Q(LOCAL_REG2_OUT)
    );

    univ_sseg univ_sseg0(
        .clk(GLOBAL_CLK),
        .cnt1({10'b0000000000, LOCAL_REG0_OUT}),
        .cnt2(7'b0000000), 
        .dp_en(1'b0),
        .dp_sel(2'b00),
        .mod_sel(2'b00),
        .sign(LOCAL_REG1_OUT),
        .valid(LOCAL_REG2_OUT),
        .ssegs(GLOBAL_OUT_SEG),
        .disp_en(GLOBAL_OUT_AN)
    );
    

endmodule
