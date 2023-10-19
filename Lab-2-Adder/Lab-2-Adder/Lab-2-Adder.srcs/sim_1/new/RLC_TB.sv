`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO
// Engineer: Ethan Vosburg
// 
// Create Date: 10/11/2023 1:46:47 PM
// Design Name: RLC Testbench
// Module Name: RLC_TB
// Project Name: 4-bit Adder
// Target Devices: 
// Tool Versions: 
// Description: Testbench for the RLC module
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module RLC_TB();

    logic [3:0] BI_A_TB;
    logic [3:0] BI_B_TB;
    logic [3:0] BO_S_TB;
    logic BO_Co_TB;

    RLC uut(
        .BI_A(BI_A_TB),
        .BI_B(BI_B_TB),
        .BO_S(BO_S_TB),
        .BO_Co(BO_Co_TB)
    );

    // Simulation Begin
    always begin
        // 0 + 0
    #10 BI_A_TB = 4'b0000;
        BI_B_TB = 4'b0000;
        
        // 0 + 1
    #10 BI_A_TB = 4'b0000;
        BI_B_TB = 4'b0001;

        // 1 + 1
    #10 BI_A_TB = 4'b0001;
        BI_B_TB = 4'b0001;

        // 1 + 2
    #10 BI_A_TB = 4'b0001;
        BI_B_TB = 4'b0010;

        // 2 + 2
    #10 BI_A_TB = 4'b0010;
        BI_B_TB = 4'b0010;

        // 2 + 4
    #10 BI_A_TB = 4'b0010;
        BI_B_TB = 4'b0100;

        // 4 + 4
    #10 BI_A_TB = 4'b0100;
        BI_B_TB = 4'b0100;

        // 4 + 8
    #10 BI_A_TB = 4'b0100;
        BI_B_TB = 4'b1000;

        // 8 + 8
    #10 BI_A_TB = 4'b1000;
        BI_B_TB = 4'b1000;

        // 15 + 15
    #10 BI_A_TB = 4'b1111;
        BI_B_TB = 4'b1111;

    end
    
endmodule