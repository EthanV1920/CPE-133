`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/18/2023 07:34:18 PM
// Design Name: 
// Module Name: SEGMENT_ADDER_TB
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


module SEGMENT_ADDER_TB();
    logic [3:0] BIN_A_TB;
    logic [3:0] BIN_B_TB;
    logic [3:0] AN_TB;
    logic [6:0] SEG_TB;

    SEGMENT_ADDER uut(
        .BI_A(BIN_A_TB),
        .BI_B(BIN_B_TB),
        .an(AN_TB),
        .seg(SEG_TB)
    );

    // Simulation Begin
    always begin
        #10 BIN_A_TB = 4'b0000;
            BIN_B_TB = 4'b0000;
            
            // 0 + 1
        #10 BIN_A_TB = 4'b0000;
            BIN_B_TB = 4'b0001;

            // 1 + 1
        #10 BIN_A_TB = 4'b0001;
            BIN_B_TB = 4'b0001;

            // 1 + 2
        #10 BIN_A_TB = 4'b0001;
            BIN_B_TB = 4'b0010;

            // 2 + 2
        #10 BIN_A_TB = 4'b0010;
            BIN_B_TB = 4'b0010;

            // 2 + 4
        #10 BIN_A_TB = 4'b0010;
            BIN_B_TB = 4'b0100;

            // 4 + 4
        #10 BIN_A_TB = 4'b0100;
            BIN_B_TB = 4'b0100;

            // 4 + 8
        #10 BIN_A_TB = 4'b0100;
            BIN_B_TB = 4'b1000;

            // 8 + 8
        #10 BIN_A_TB = 4'b1000;
            BIN_B_TB = 4'b1000;

            // 15 + 15
        #10 BIN_A_TB = 4'b1111;
            BIN_B_TB = 4'b1111;
    end 

endmodule
