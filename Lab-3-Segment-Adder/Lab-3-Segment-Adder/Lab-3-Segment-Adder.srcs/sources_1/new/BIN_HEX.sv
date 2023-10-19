`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO
// Engineer: Ethan Vosburg
// 
// Create Date: 10/18/2023 07:01:27 PM
// Design Name: Binary to Hex Segment Display Decoder
// Module Name: BIN_HEX
// Project Name: Segment Adder
// Target Devices: 
// Tool Versions: 
// Description: Send a digit in binary and get the hex value for the segment display
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module BIN_HEX(
   input [3:0] binIn,
   output logic [6:0] segment
);

   always_comb begin
      case (binIn)
         0 : segment = 7'b1000000;
         1 : segment = 7'b1111001;
         2 : segment = 7'b0100100;
         3 : segment = 7'b0110000;
         4 : segment = 7'b0011001;
         5 : segment = 7'b0010010;
         6 : segment = 7'b0000010;
         7 : segment = 7'b1111000;
         8 : segment = 7'b0000000;
         9 : segment = 7'b0011000;
         10 : segment = 7'b0001000;
         11 : segment = 7'b0000011;
         12 : segment = 7'b1000110;
         13 : segment = 7'b0100001;
         14 : segment = 7'b0000110;
         15 : segment = 7'b0001110;
         default: segment = 7'b1111111;
      endcase
   end

endmodule
