`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2023 09:12:37 PM
// Design Name: 
// Module Name: Multiplier_TB
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


module Multiplier_TB(); 

    // Inputs
    logic GLOBAL_CLK_TB;
    logic [3:0] GLOBAL_IN_A_TB;
    logic [3:0] GLOBAL_IN_B_TB;
    logic GLOBAL_IN_BUTTON_TB;
    
    // Outputs
    logic [7:0] GLOBAL_OUT_SEG_TB;
    logic [3:0] GLOBAL_OUT_AN_TB;

    // Instantiate the Unit Under Test (UUT)
    Multiplier uut(
        .GLOBAL_CLK(GLOBAL_CLK_TB),
        .GLOBAL_IN_A(GLOBAL_IN_A_TB),
        .GLOBAL_IN_B(GLOBAL_IN_B_TB),
        .GLOBAL_IN_BUTTON(GLOBAL_IN_BUTTON_TB),
        .GLOBAL_OUT_SEG(GLOBAL_OUT_SEG_TB),
        .GLOBAL_OUT_AN(GLOBAL_OUT_AN_TB)
    );
    

    // Simulation Begin
    initial begin
        
        GLOBAL_CLK_TB = 1'b0;
        // GLOBAL_IN_A_TB = 4'b0000;
        // GLOBAL_IN_B_TB = 4'b0000;
        GLOBAL_IN_BUTTON_TB = 1'b0;

        // #10 GLOBAL_IN_A_TB = 4'b1111;
        // #10 GLOBAL_IN_B_TB = 4'b1111;
        // #10 GLOBAL_IN_BUTTON_TB = 1'b1;
        // #10 GLOBAL_IN_BUTTON_TB = 1'b0;
        // #80;

        // #10 GLOBAL_IN_A_TB = 4'b0001;
        // #10 GLOBAL_IN_B_TB = 4'b0001;
        // #10 GLOBAL_IN_BUTTON_TB = 1'b1;
        // #10 GLOBAL_IN_BUTTON_TB = 1'b0;
        // #80;
        // #10 GLOBAL_IN_A_TB = 4'b0010;
        // #10 GLOBAL_IN_B_TB = 4'b0010;
        // #10 GLOBAL_IN_BUTTON_TB = 1'b1;
        // #10 GLOBAL_IN_BUTTON_TB = 1'b0;
        // #80;
        // #10 GLOBAL_IN_A_TB = 4'b0011;
        // #10 GLOBAL_IN_B_TB = 4'b0011;
        // #10 GLOBAL_IN_BUTTON_TB = 1'b1;
        // #10 GLOBAL_IN_BUTTON_TB = 1'b0;
        // #80;
        // #10 GLOBAL_IN_A_TB = 4'b0100;
        // #10 GLOBAL_IN_B_TB = 4'b0100;
        // #10 GLOBAL_IN_BUTTON_TB = 1'b1;
        // #10 GLOBAL_IN_BUTTON_TB = 1'b0;
        // #80;


        // Test cases
        #10 GLOBAL_IN_A_TB = 4'b0000;
        #10 GLOBAL_IN_B_TB = 4'b0000; // "x" represents don't care
        #10 GLOBAL_IN_BUTTON_TB = 1'b1;
        #10 GLOBAL_IN_BUTTON_TB = 1'b0;
        #80;

        #10 GLOBAL_IN_A_TB = 4'b0000;
        #10 GLOBAL_IN_B_TB = 4'b0101;
        #10 GLOBAL_IN_BUTTON_TB = 1'b1;
        #10 GLOBAL_IN_BUTTON_TB = 1'b0;
        #80;

        #10 GLOBAL_IN_A_TB = 4'b1001;
        #10 GLOBAL_IN_B_TB = 4'b0000;
        #10 GLOBAL_IN_BUTTON_TB = 1'b1;
        #10 GLOBAL_IN_BUTTON_TB = 1'b0;
        #80;

        #10 GLOBAL_IN_A_TB = 4'b0110;
        #10 GLOBAL_IN_B_TB = 4'b0001;
        #10 GLOBAL_IN_BUTTON_TB = 1'b1;
        #10 GLOBAL_IN_BUTTON_TB = 1'b0;
        #80;

        #10 GLOBAL_IN_A_TB = 4'b1100;
        #10 GLOBAL_IN_B_TB = 4'b0010;
        #10 GLOBAL_IN_BUTTON_TB = 1'b1;
        #10 GLOBAL_IN_BUTTON_TB = 1'b0;
        #80;

        #10 GLOBAL_IN_A_TB = 4'b1001;
        #10 GLOBAL_IN_B_TB = 4'b0100;
        #10 GLOBAL_IN_BUTTON_TB = 1'b1;
        #10 GLOBAL_IN_BUTTON_TB = 1'b0;
        #80;

        #10 GLOBAL_IN_A_TB = 4'b1010;
        #10 GLOBAL_IN_B_TB = 4'b1000;
        #10 GLOBAL_IN_BUTTON_TB = 1'b1;
        #10 GLOBAL_IN_BUTTON_TB = 1'b0;
        #80;

        #10 GLOBAL_IN_A_TB = 4'b1011;
        #10 GLOBAL_IN_B_TB = 4'b0011;
        #10 GLOBAL_IN_BUTTON_TB = 1'b1;
        #10 GLOBAL_IN_BUTTON_TB = 1'b0;
        #80;

        #10 GLOBAL_IN_A_TB = 4'b0111;
        #10 GLOBAL_IN_B_TB = 4'b0110;
        #10 GLOBAL_IN_BUTTON_TB = 1'b1;
        #10 GLOBAL_IN_BUTTON_TB = 1'b0;
        #80;

        #10 GLOBAL_IN_A_TB = 4'b1110;
        #10 GLOBAL_IN_B_TB = 4'b1100;
        #10 GLOBAL_IN_BUTTON_TB = 1'b1;
        #10 GLOBAL_IN_BUTTON_TB = 1'b0;
        #80;

        #10 GLOBAL_IN_A_TB = 4'b1101;
        #10 GLOBAL_IN_B_TB = 4'b0111;
        #10 GLOBAL_IN_BUTTON_TB = 1'b1;
        #10 GLOBAL_IN_BUTTON_TB = 1'b0;
        #80;

        #10 GLOBAL_IN_A_TB = 4'b0001;
        #10 GLOBAL_IN_B_TB = 4'b1110;
        #10 GLOBAL_IN_BUTTON_TB = 1'b1;
        #10 GLOBAL_IN_BUTTON_TB = 1'b0;
        #80;

        #10 GLOBAL_IN_A_TB = 4'b1111;
        #10 GLOBAL_IN_B_TB = 4'b1111;
        #10 GLOBAL_IN_BUTTON_TB = 1'b1;
        #10 GLOBAL_IN_BUTTON_TB = 1'b0;
        #80;

    end

    always #5 GLOBAL_CLK_TB = !GLOBAL_CLK_TB;

    
endmodule
