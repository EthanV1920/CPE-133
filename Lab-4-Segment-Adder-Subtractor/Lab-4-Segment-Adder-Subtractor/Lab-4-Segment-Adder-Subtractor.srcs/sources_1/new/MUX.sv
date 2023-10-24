`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO
// Engineer: Ethan Vosburg
// 
// Create Date: 10/18/2023 06:25:04 PM
// Design Name: Multiplexer
// Module Name: MUX
// Project Name: Segment Adder
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


module MUX(
    input [3:0] zeroIn,
    input [3:0] oneIn,
    input select,
    output logic [3:0] muxOut
    );

    always_comb begin
        if (select == 1'b0) begin
            muxOut = zeroIn;
        end
        else if (select == 1'b1) begin
            muxOut = oneIn;
        end
    end


endmodule
