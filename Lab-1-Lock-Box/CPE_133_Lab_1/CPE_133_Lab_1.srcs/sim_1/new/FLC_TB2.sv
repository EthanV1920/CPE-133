`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2023 10:46:45 AM
// Design Name: 
// Module Name: FLC_TB2
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



module FLC_TB2();

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
