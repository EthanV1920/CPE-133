`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO
// Engineer: Ethan Vosburg
// 
// Create Date: 10/18/2023 07:16:25 PM
// Design Name: Binary to Hex Segment Display Decoder Test Bench
// Module Name: BIN_HEX_TB
// Project Name: Segment Adder
// Target Devices: 
// Tool Versions: 
// Description: Test bench for the binary to hex segment display decoder
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module BIN_HEX_TB();

    logic [3:0] bin;
    logic [6:0] seg;

    BIN_HEX uut(
        .binIn(bin), 
        .segment(seg)
        );


    // Simulation Begin
    always begin
        #10 bin = 4'b0000;

        #10 bin = 4'b0001;

        #10 bin = 4'b0010;

        #10 bin = 4'b0011;

        #10 bin = 4'b0100;

        #10 bin = 4'b0101;

        #10 bin = 4'b0110;

        #10 bin = 4'b0111;

        #10 bin = 4'b1000;

        #10 bin = 4'b1001;

        #10 bin = 4'b1010;

        #10 bin = 4'b1011;

        #10 bin = 4'b1100;

        #10 bin = 4'b1101;

        #10 bin = 4'b1110;

        #10 bin = 4'b1111;
        
    end

endmodule
