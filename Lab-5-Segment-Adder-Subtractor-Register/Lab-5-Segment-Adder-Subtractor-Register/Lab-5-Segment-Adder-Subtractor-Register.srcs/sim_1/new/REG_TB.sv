`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2023 01:24:15 AM
// Design Name: 
// Module Name: REG_TB
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


module REG_TB();

    // Inputs
    logic clk_TB;
    logic enter_TB;
    logic clr_TB;
    logic data_TB;
    logic set_TB;

    // Outputs
    reg Q_TB;


    // Instantiate the Unit Under Test (UUT)
    REG uut (
        .clk(clk_TB),
        .enter(enter_TB),
        .clr(clr_TB),
        .data(data_TB),
        .set(set_TB),
        .Q(Q_TB)
    );

    initial begin
        // Initialize Inputs
        clk_TB = 0;
        enter_TB = 0;
        clr_TB = 0;
        data_TB = 0;
        set_TB = 0;

        // Add stimulus here
        clr_TB = 1; // Reset the register
        #10;
        clr_TB = 0;
        #10;
        
        set_TB = 1; // Set the register
        #10;
        set_TB = 0;
        #10;
        
        enter_TB = 1; // Load the register with data
        data_TB = 1;
        #10;
        enter_TB = 0;
        #10;

        clr_TB = 1; // Reset the register
        set_TB = 1; // Set the register
        #10;
        clr_TB = 0;
        set_TB = 0;
        #10;

        // Add more test vectors as needed
    end
    
    // Clock generation
    always #5 clk_TB = !clk_TB; // Toggle clock every 5 ns
    
endmodule
