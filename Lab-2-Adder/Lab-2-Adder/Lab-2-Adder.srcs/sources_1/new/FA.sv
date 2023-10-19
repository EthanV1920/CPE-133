`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO
// Engineer: Ethan Vosburg
// 
// Create Date: 10/10/2023 10:25:13 AM
// Design Name: Full Adder
// Module Name: FA
// Project Name: 4-bit Adder
// Target Devices: 
// Tool Versions: 
// Description: Full adder circuit with a carry out and in 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FA(
    input FA_Ci,
    input FA_A,
    input FA_B,
    output FA_Co,
    output FA_S
    );

    // Code Starts Here
    assign FA_S = FA_A ^ FA_B ^ FA_Ci;
    assign FA_Co = (FA_A & FA_B) | (FA_A & FA_Ci) | (FA_B & FA_Ci);
endmodule

