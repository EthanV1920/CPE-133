`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO
// Engineer: Ethan Vosburg
// 
// Create Date: 10/18/2023 07:25:06 PM
// Design Name: Segment Adder
// Module Name: SEGMENT_ADDER
// Project Name: Segment Adder
// Target Devices: 
// Tool Versions: 
// Description: Stuctural implementation of a 7 segment adder
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SEGMENT_ADDER(
    input [3:0] BI_A,
    input [3:0] BI_B,
    output [6:0] seg,
    output [3:0] an
    );

    logic [3:0] SUM;
    logic CARRY;


    RLC RLC0 (
        .BI_A(BI_A),
        .BI_B(BI_B),
        .BO_Co(CARRY),
        .BO_S(SUM)
    );
    
    BIN_HEX BIN_HEX0 (
        .binIn(SUM),
        .segment(seg)
    );

    MUX MUX0 (
        .zeroIn(4'b1110),
        .oneIn(4'b1111),
        .select(CARRY),
        .muxOut(an)
    );

endmodule
