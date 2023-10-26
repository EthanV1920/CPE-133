`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 12:35:57 PM
// Design Name: 
// Module Name: Validity_Check_TB
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


module Validity_Check_TB();

    logic A_TB;
    logic B_TB;
    logic S_TB;
    logic valid_TB;

    Validity_Check U0(
        .A(A_TB),
        .B(B_TB),
        .S(S_TB),
        .valid(valid_TB)
    );

    // Simulation Begin

    always begin
        #10 A_TB = 1;
            B_TB = 1;
            S_TB = 1;

        #10 A_TB = 1;
            B_TB = 1;
            S_TB = 0;
        
        #10 A_TB = 1;
            B_TB = 0;
            S_TB = 1;

        #10 A_TB = 1;
            B_TB = 0;
            S_TB = 0;

        #10 A_TB = 0;
            B_TB = 1;
            S_TB = 1;

        #10 A_TB = 0;
            B_TB = 1;
            S_TB = 0;
        
        #10 A_TB = 0;
            B_TB = 0;
            S_TB = 1;

        #10 A_TB = 0;
            B_TB = 0;
            S_TB = 0;

    end

endmodule
