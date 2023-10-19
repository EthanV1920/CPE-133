`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO
// Engineer: Ethan Vosburg
// 
// Create Date: 09/21/2023 04:25:07 PM
// Design Name: 
// Module Name: FLC_TB
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


module FLC_TB();
    logic TB_A;
    logic TB_B;
    logic TB_C;
    logic TB_Q;
    
    
    FLC UUT (.FLC_A(TB_A), .FLC_B(TB_B), .FLC_C(TB_C), .FLC_Q(TB_Q));
    
    //TEST CASES
    always begin
    #10 TB_A = 1'b0;
        TB_B = 1'b0;
        TB_C = 1'b0;
        
    #10 TB_A = 1'b0;
        TB_B = 1'b0;
        TB_C = 1'b1;
        
    #10 TB_A = 1'b0;
        TB_B = 1'b1;
        TB_C = 1'b0;
        
    #10 TB_A = 1'b0;
        TB_B = 1'b1;
        TB_C = 1'b1;
        
    #10 TB_A = 1'b1;
        TB_B = 1'b0;
        TB_C = 1'b0;
        
    #10 TB_A = 1'b1;
        TB_B = 1'b0;
        TB_C = 1'b1;
        
    #10 TB_A = 1'b1;
        TB_B = 1'b1;
        TB_C = 1'b0;
        
    #10 TB_A = 1'b1;
        TB_B = 1'b1;
        TB_C = 1'b1;
    
    end     
    
endmodule
