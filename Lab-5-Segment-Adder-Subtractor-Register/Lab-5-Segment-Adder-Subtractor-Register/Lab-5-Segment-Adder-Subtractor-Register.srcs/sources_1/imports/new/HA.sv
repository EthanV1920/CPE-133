`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO
// Engineer: Ethan Vosburg
// 
// Create Date: 10/10/2023 10:25:13 AM
// Design Name: Half Adder
// Module Name: HA
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


module HA(
    input HA_A,
    input HA_B,
    output HA_Co,
    output HA_S
    );

    // Code Starts Here
    assign HA_S = HA_A ^ HA_B;
    assign HA_Co = HA_A & HA_B;
endmodule

