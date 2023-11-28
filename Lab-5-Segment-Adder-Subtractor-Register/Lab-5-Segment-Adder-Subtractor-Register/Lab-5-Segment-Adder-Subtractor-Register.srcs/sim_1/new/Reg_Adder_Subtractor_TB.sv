`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2023 07:50:31 PM
// Design Name: 
// Module Name: Reg_Adder_Subtractor_TB
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


module Reg_Adder_Subtractor_TB();

    // Inputs
    logic [3:0] a;
    logic [3:0] b;
    logic sub;
    logic clk;
    logic enter;
    logic clr;
    
    // Outputs
    logic [6:0] seg;
    logic [3:0] an;

    // Instantiate the Unit Under Test (UUT)
    Reg_Adder_Subtractor uut(
        .GLOBAL_IN_A(a),
        .GLOBAL_IN_B(b),
        .GLOBAL_IN_SUB(sub),
        .GLOBAL_CLK(clk),
        .GLOBAL_ENTER(enter),
        .GLOBAL_CLR(clr),
        .GLOBAL_OUT_SEG(seg),
        .GLOBAL_OUT_AN(an)
    );
    

    // Simulation Begin
    initial begin
        sub = 1'b0;
        enter = 1'b1;
        clr = 1'b0;
        clk = 1'b0;

        #10 a = 4'b0000; b = 4'b0000; sub = 1'b0;
        #10 a = 4'b0000; b = 4'b0101; sub = 1'b0;
        #10 a = 4'b1001; b = 4'b0000; sub = 1'b1;
        #10 a = 4'b0010; b = 4'b0100; sub = 1'b0;
        #10 a = 4'b1110; b = 4'b1110; sub = 1'b0;
        #10 a = 4'b0111; b = 4'b1100; sub = 1'b0;
        #10 a = 4'b1010; b = 4'b0001; sub = 1'b0;
        #10 a = 4'b0101; b = 4'b0110; sub = 1'b0;
        #10 a = 4'b1000; b = 4'b1111; sub = 1'b0;
        #10 a = 4'b0110; b = 4'b0101; sub = 1'b1;
        #10 a = 4'b1101; b = 4'b1011; sub = 1'b1;
        #10 a = 4'b0010; b = 4'b1011; sub = 1'b1;
        #10 a = 4'b1011; b = 4'b0011; sub = 1'b1;
        #10 a = 4'b0001; b = 4'b1000; sub = 1'b1;
        #10 a = 4'b1100; b = 4'b0110; sub = 1'b1;



        #10 a = 4'b0010;
            b = 4'b0010;
            clr = 1'b1;
            enter = 1'b1;
            
            // 0 + 1
        #10 a = 4'b0000;
            b = 4'b0001;
            clr = 1'b1;
            enter = 1'b1;

            // 1 + 1
        #10 a = 4'b0001;
            b = 4'b0001;
            clr = 1'b0;
            enter = 1'b1;

        //     // 1 + 2
        // #10 a = 4'b0001;
        //     b = 4'b0010;

        //     // 2 + 2
        // #10 a = 4'b0010;
        //     b = 4'b0010;

        //     // 2 + 4
        // #10 a = 4'b0010;
        //     b = 4'b0100;

        //     // 4 + 4
        // #10 a = 4'b0100;
        //     b = 4'b0100;

        //     // 4 + 8
        // #10 a = 4'b0100;
        //     b = 4'b1000;

        //     // 8 + 8
        // #10 a = 4'b1000;
        //     b = 4'b1000;

        //     // 15 + 15
        // #10 a = 4'b1111;
        //     b = 4'b1111;
    end 

    always #5 clk = !clk;

endmodule
