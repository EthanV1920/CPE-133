`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO
// Engineer: Ethan Vosburg
// 
// Create Date: 09/28/2023 11:22:18 AM
// Design Name: Test Bench
// Module Name: FLC_TB
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


module FLC_TB();

    // Inputs
    logic TB_A;
    logic TB_B;
    logic TB_C;
    logic TB_D;

    // Outputs
    logic TB_P;
    logic TB_Q;
    logic TB_R;

    // Instantiate the Unit Under Test (UUT)
    FLC uut (.FLC_A(TB_A), .FLC_B(TB_B), .FLC_C(TB_C), .FLC_D(TB_D), .FLC_P(TB_P), .FLC_Q(TB_Q), .FLC_R(TB_R));

    // Test Cases
    always begin
    #10 TB_A = 1;
        TB_B = 1;
        TB_C = 1;
        TB_D = 1;

    #10 TB_A = 1;
        TB_B = 1;
        TB_C = 1;
        TB_D = 0;

    #10 TB_A = 1;
        TB_B = 1;
        TB_C = 0;
        TB_D = 1;

    #10 TB_A = 1;
        TB_B = 1;
        TB_C = 0;
        TB_D = 0;

    #10 TB_A = 1;
        TB_B = 0;
        TB_C = 1;
        TB_D = 1;

    #10 TB_A = 1;
        TB_B = 0;
        TB_C = 1;
        TB_D = 0;

    #10 TB_A = 1;
        TB_B = 0;
        TB_C = 0;
        TB_D = 1;

    #10 TB_A = 1;
        TB_B = 0;
        TB_C = 0;
        TB_D = 0;

    #10 TB_A = 0;
        TB_B = 1;
        TB_C = 1;
        TB_D = 1;

    #10 TB_A = 0;
        TB_B = 1;
        TB_C = 1;
        TB_D = 0;

    #10 TB_A = 0;
        TB_B = 1;
        TB_C = 0;
        TB_D = 1;

    #10 TB_A = 0;
        TB_B = 1;
        TB_C = 0;
        TB_D = 0;

    #10 TB_A = 0;
        TB_B = 0;
        TB_C = 1;
        TB_D = 1;

    #10 TB_A = 0;
        TB_B = 0;
        TB_C = 1;
        TB_D = 0;

    #10 TB_A = 0;
        TB_B = 0;
        TB_C = 1;
        TB_D = 1;

    #10 TB_A = 0;
        TB_B = 0;
        TB_C = 0;
        TB_D = 1;

    #10 TB_A = 0;
        TB_B = 0;
        TB_C = 0;
        TB_D = 0;

    end

endmodule
