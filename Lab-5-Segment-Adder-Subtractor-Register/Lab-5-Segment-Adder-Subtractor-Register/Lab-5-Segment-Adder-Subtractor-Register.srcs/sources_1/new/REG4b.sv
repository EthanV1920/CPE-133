`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO
// Engineer: Ethan Vosburg
// 
// Create Date: 11/11/2023 12:58:35 AM
// Design Name: Register
// Module Name: REG
// Project Name: Adder Subtractor with Register
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


module REG4b(
    input clk,
    input enter,
    input clr,
    input [3:0] data,
    input set,
    output logic [3:0] Q

    );

    always_ff @(posedge clk) begin
        if (clr) begin
            Q <= 4'b0000;
        end
        else if (set) begin
            Q <= 4'b1111;
        end 
        else if (enter) begin
            Q <= data;
        end
    end

endmodule
