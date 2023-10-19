`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO
// Engineer: Ethan Vosburg
// 
// Create Date: 10/10/2023 10:46:47 AM
// Design Name: Half Adder Testbench
// Module Name: HA_TB
// Project Name: 4-bit Adder
// Target Devices: 
// Tool Versions: 
// Description: Testbench for the half adder
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module HA_TB();
    logic HA_TB_A;
    logic HA_TB_B;
    logic HA_TB_S;
    logic HA_TB_Co;

    HA uut (.HA_A(HA_TB_A),
            .HA_B(HA_TB_B), 
            .HA_S(HA_TB_S), 
            .HA_Co(HA_TB_Co));

    // Simulation Begin
    always begin
        #10 HA_TB_A = 1'b0;
            HA_TB_B = 1'b0;

        #10 HA_TB_A = 1'b0;
            HA_TB_B = 1'b1;

        #10 HA_TB_A = 1'b1;
            HA_TB_B = 1'b0;

        #10 HA_TB_A = 1'b1;
            HA_TB_B = 1'b1;
    end

endmodule
