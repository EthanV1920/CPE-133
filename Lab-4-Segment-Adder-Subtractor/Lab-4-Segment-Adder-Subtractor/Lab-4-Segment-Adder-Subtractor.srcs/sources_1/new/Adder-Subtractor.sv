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
    output [3:0] GLOBAL_AN,
    output [6:0] GLOBAL_SEG,
    output GLOBAL_NEG
    );

    logic [3:0] LOCAL_RCA0_SUM, LOCAL_RCA1_SUM, LOCAL_MUX0_OUT, LOCAL_MUX1_OUT;
    logic LOCAL_AND_OUT, LOCAL_VC_OUT;

    MUX MUX0(
        .GLOBAL_IN_B(zeroIn),
        .GLOBAL_IN_B(~oneIn),
        .GLOBAL_IN_SUB(select),
        .LOCAL_MUX0_OUT(muxOut)
    );

    RCA_FA RCA_FA_0 uut(
        .GLOBAL_IN_A(BI_A),
        .LOCAL_MUX0_OUT(BI_B),
        .GLOBAL_IN_SUB(BI_Ci),
        .LOCAL_RCA0_SUM(BI_S),
        .LOCAL_RCA0_Co()
    );

    

endmodule
