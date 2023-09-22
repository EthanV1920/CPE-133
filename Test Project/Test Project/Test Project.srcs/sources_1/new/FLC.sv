`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO CPE 133
// Engineer: Ethan Vosburg
// 
// Create Date: 09/21/2023 04:20:11 PM
// Design Name: Test Project
// Module Name: FLC
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: First Logic Circuit - Vivado Test Run
// 
// Dependencies: 
// 
// Revision: 1
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FLC(
    input FLC_A,
    input FLC_B,
    input FLC_C,
    output FLC_Q
    );
    // Cpde goes here
    assign FLC_Q = (FLC_B & FLC_C) | ~(FLC_A | FLC_B);
    
endmodule
