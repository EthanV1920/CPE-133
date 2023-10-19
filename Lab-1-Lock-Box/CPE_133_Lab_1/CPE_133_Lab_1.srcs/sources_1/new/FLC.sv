`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO
// Engineer: Ethan Vosburg
// 
// Create Date: 09/28/2023 10:28:43 AM
// Design Name: FPGA Architecture
// Module Name: FLC
// Project Name: Lock Box
// Target Devices: 
// Tool Versions: 
// Description: Design a program that respnds to a combination of bits
// 
// Dependencies: 
// 
// Revision: 1.0
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FLC(
    input FLC_A,
    input FLC_B,
    input FLC_C,
    input FLC_D,
    output FLC_P,
    output FLC_Q,
    output FLC_R
    );
    
    // Code Starts Here
    assign FLC_P = ((FLC_B & FLC_D) | (FLC_A & FLC_C) | (FLC_A & FLC_D) | (FLC_B & FLC_C));
    assign FLC_Q = ((FLC_A | FLC_B) & (FLC_C | FLC_D));
    assign FLC_R = ~(~(FLC_A | FLC_B) | ~(FLC_C | FLC_D));
    
    
endmodule
