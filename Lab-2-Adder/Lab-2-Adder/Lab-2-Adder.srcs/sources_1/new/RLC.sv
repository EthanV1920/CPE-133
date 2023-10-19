`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO
// Engineer: Ethan Vosburg
// 
// Create Date: 10/11/2023 01:27:50 PM
// Design Name: 
// Module Name: RLC
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


module RLC(
    input [3:0] BI_A,
    input [3:0] BI_B,
    output [3:0] BO_S,
    output BO_Co
    );

    logic t1,t2,t3;

    HA HA0 (
        .HA_A(BI_A[0]),
        .HA_B(BI_B[0]),
        .HA_Co(t1),
        .HA_S(BO_S[0])
    );

    FA FA0 (
        .FA_A(BI_A[1]),
        .FA_B(BI_B[1]),
        .FA_Ci(t1),
        .FA_S(BO_S[1]),
        .FA_Co(t2)
    );

    FA FA1 (
        .FA_A(BI_A[2]),
        .FA_B(BI_B[2]),
        .FA_Ci(t2),
        .FA_S(BO_S[2]),
        .FA_Co(t3)
    );

    FA FA2 (
        .FA_A(BI_A[3]),
        .FA_B(BI_B[3]),
        .FA_Ci(t3),
        .FA_S(BO_S[3]),
        .FA_Co(BO_Co)
    );

endmodule
