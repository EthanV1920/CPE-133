`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2023 11:35:58 PM
// Design Name: 
// Module Name: FSM_TB
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


module FSM_TB(

    );


    // Inputs
    logic x_TB;
    logic button_TB;
    logic clk_TB;
    
    // Outputs
    logic z_TB;

    // Instantiate the Unit Under Test (UUT)
    FSM uut(
        .clk(clk_TB),
        .x(x_TB),
        .button(button_TB),
        .z(z_TB)
    );
    

    // Simulation Begin
    initial begin
        
        clk_TB = 1'b0;
        button_TB = 1'b0;

        #10 x_TB = 1'b0;
        #10 x_TB = 1'b1;
        #10 x_TB = 1'b1;
        #10 x_TB = 1'b0;
        #10 x_TB = 1'b0;
        #10 x_TB = 1'b1;
        #10 x_TB = 1'b0;

        #10 x_TB = 1'b1;
        #10 x_TB = 1'b1;
        #10 x_TB = 1'b1;
        #10 x_TB = 1'b0;
        #10 x_TB = 1'b0;
        #10 x_TB = 1'b1;
        #10 x_TB = 1'b0;

        button_TB = 1'b1;

        #10 x_TB = 1'b0;
        #10 x_TB = 1'b1;
        #10 x_TB = 1'b1;
        #10 x_TB = 1'b0;
        #10 x_TB = 1'b1;
        #10 x_TB = 1'b1;
        #10 x_TB = 1'b0;

        #10 x_TB = 1'b0;
        #10 x_TB = 1'b1;
        #10 x_TB = 1'b1;
        #10 x_TB = 1'b1;
        #10 x_TB = 1'b0;
        #10 x_TB = 1'b1;
        #10 x_TB = 1'b0;
        // #10 a = 4'b0000; b = 4'b0000; sub = 1'b0;
        // #10 a = 4'b0000; b = 4'b0101; sub = 1'b0;
        // #10 a = 4'b1001; b = 4'b0000; sub = 1'b1;
        // #10 a = 4'b0010; b = 4'b0100; sub = 1'b0;
        // #10 a = 4'b1110; b = 4'b1110; sub = 1'b0;
        // #10 a = 4'b0111; b = 4'b1100; sub = 1'b0;
        // #10 a = 4'b1010; b = 4'b0001; sub = 1'b0;
        // #10 a = 4'b0101; b = 4'b0110; sub = 1'b0;
        // #10 a = 4'b1000; b = 4'b1111; sub = 1'b0;
        // #10 a = 4'b0110; b = 4'b0101; sub = 1'b1;
        // #10 a = 4'b1101; b = 4'b1011; sub = 1'b1;
        // #10 a = 4'b0010; b = 4'b1011; sub = 1'b1;
        // #10 a = 4'b1011; b = 4'b0011; sub = 1'b1;
        // #10 a = 4'b0001; b = 4'b1000; sub = 1'b1;
        // #10 a = 4'b1100; b = 4'b0110; sub = 1'b1;



        // #10 a = 4'b0010;
        //     b = 4'b0010;
        //     clr = 1'b1;
        //     enter = 1'b1;
            
        //     // 0 + 1
        // #10 a = 4'b0000;
        //     b = 4'b0001;
        //     clr = 1'b1;
        //     enter = 1'b1;

        //     // 1 + 1
        // #10 a = 4'b0001;
        //     b = 4'b0001;
        //     clr = 1'b0;
        //     enter = 1'b1;

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

    always #5 clk_TB = !clk_TB;
endmodule
