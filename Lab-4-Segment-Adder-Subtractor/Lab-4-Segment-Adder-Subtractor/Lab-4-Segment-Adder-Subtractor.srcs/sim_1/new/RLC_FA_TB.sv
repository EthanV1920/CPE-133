`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2023 10:09:30 PM
// Design Name: 
// Module Name: RLC_FA_TB
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


module RLC_FA_TB();

    logic [3:0] BI_A_TB;
    logic [3:0] BI_B_TB;
    logic BI_Ci_TB;
    logic [3:0] BO_S_TB;
    logic BO_Co_TB;

    RLC uut(
        .BI_A(BI_A_TB),
        .BI_B(BI_B_TB),
        .BI_Ci(BI_Ci_TB),
        .BO_S(BO_S_TB),
        .BO_Co(BO_Co_TB)
    );

    // Simulation Begin
    always begin
        // 0 + 0
    #10 BI_A_TB = 4'b0000;
        BI_B_TB = 4'b0000;
        BI_Ci_TB = 1'b0;
        
        // 0 + 1
    #10 BI_A_TB = 4'b0000;
        BI_B_TB = 4'b0001;
        BI_Ci_TB = 1'b1;

        // 1 + 1
    #10 BI_A_TB = 4'b0001;
        BI_B_TB = 4'b0001;
        BI_Ci_TB = 1'b0;

        // 1 + 2
    #10 BI_A_TB = 4'b0001;
        BI_B_TB = 4'b0010;
        BI_Ci_TB = 1'b1;

        // 2 + 2
    #10 BI_A_TB = 4'b0010;
        BI_B_TB = 4'b0010;
        BI_Ci_TB = 1'b0;

        // 2 + 4
    #10 BI_A_TB = 4'b0010;
        BI_B_TB = 4'b0100;
        BI_Ci_TB = 1'b1;

        // 4 + 4
    #10 BI_A_TB = 4'b0100;
        BI_B_TB = 4'b0100;
        BI_Ci_TB = 1'b0;

        // 4 + 8
    #10 BI_A_TB = 4'b0100;
        BI_B_TB = 4'b1000;
        BI_Ci_TB = 1'b1;

        // 8 + 8
    #10 BI_A_TB = 4'b1000;
        BI_B_TB = 4'b1000;
        BI_Ci_TB = 1'b0;

        // 15 + 15
    #10 BI_A_TB = 4'b1111;
        BI_B_TB = 4'b1111;
        BI_Ci_TB = 1'b1;

    end
    
endmodule