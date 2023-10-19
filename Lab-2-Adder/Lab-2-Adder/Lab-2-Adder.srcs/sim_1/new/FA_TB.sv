`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO
// Engineer: Ethan Vosburg
// 
// Create Date: 10/10/2023 10:45:59 AM
// Design Name: Full Adder Testbench
// Module Name: FA_TB
// Project Name: 4-bit Adder
// Target Devices: 
// Tool Versions: 
// Description: Testbench for the full adder
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FA_TB();

    logic FA_TB_A;
    logic FA_TB_B;
    logic FA_TB_Ci;
    logic FA_TB_S;
    logic FA_TB_Co;

    FA uut (
        .FA_A(FA_TB_A), 
        .FA_B(FA_TB_B), 
        .FA_Ci(FA_TB_Ci), 
        .FA_S(FA_TB_S), 
        .FA_Co(FA_TB_Co)
    );

    // Simulation Begin
    always begin
    #10 FA_TB_A = 1'b0;
        FA_TB_B = 1'b0;
        FA_TB_Ci = 1'b0;
        
    #10 FA_TB_A = 1'b0;
        FA_TB_B = 1'b0;
        FA_TB_Ci = 1'b1;
        
    #10 FA_TB_A = 1'b0;
        FA_TB_B = 1'b1;
        FA_TB_Ci = 1'b0;
        
    #10 FA_TB_A = 1'b0;
        FA_TB_B = 1'b1;
        FA_TB_Ci = 1'b1;
        
    #10 FA_TB_A = 1'b1;
        FA_TB_B = 1'b0;
        FA_TB_Ci = 1'b0;
        
    #10 FA_TB_A = 1'b1;
        FA_TB_B = 1'b0;
        FA_TB_Ci = 1'b1;
        
    #10 FA_TB_A = 1'b1;
        FA_TB_B = 1'b1;
        FA_TB_Ci = 1'b0;
        
    #10 FA_TB_A = 1'b1;
        FA_TB_B = 1'b1;
        FA_TB_Ci = 1'b1;
    
    end  

endmodule
