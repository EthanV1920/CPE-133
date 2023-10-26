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


module Adder_Subtractor(
    input [3:0] GLOBAL_IN_A,
    input [3:0] GLOBAL_IN_B,
    input GLOBAL_IN_SUB,
    output [3:0] GLOBAL_OUT_AN,
    output [6:0] GLOBAL_OUT_SEG,
    output GLOBAL_OUT_NEG
    );

    logic [3:0] LOCAL_RCA0_SUM, LOCAL_RCA1_SUM, LOCAL_MUX0_OUT, LOCAL_MUX1_OUT;
    logic LOCAL_AND_OUT, LOCAL_VC_OUT;

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
        .select(LOCAL_AND_OUT),
        .muxOut(LOCAL_MUX1_OUT)
    );

    assign LOCAL_AND_OUT = (LOCAL_RCA0_SUM[3] & LOCAL_VC_OUT);

    assign GLOBAL_OUT_NEG = LOCAL_AND_OUT;

    Validity_Check VC0(
        .A(GLOBAL_IN_A[3]),
        .B(LOCAL_MUX0_OUT[3]),
        .S(LOCAL_RCA0_SUM[3]),
        .valid(LOCAL_VC_OUT)
    );

    MUX MUX2(
        .zeroIn(4'b1111),
        .oneIn(4'b1110),
        .select(LOCAL_VC_OUT),
        .muxOut(GLOBAL_OUT_AN)
    );

    BIN_HEX BIN_HEX_0(
        .binIn(LOCAL_MUX1_OUT),
        .segment(GLOBAL_OUT_SEG)
    );

endmodule
