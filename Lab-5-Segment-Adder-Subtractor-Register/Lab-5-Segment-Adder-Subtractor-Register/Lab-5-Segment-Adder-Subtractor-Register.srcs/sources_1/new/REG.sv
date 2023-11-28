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


module REG(
    input clk,
    input enter,
    input clr,
    input data,
    input set,
    output logic Q

    );

    always_ff @(posedge clk) begin
        if (clr) begin
            Q <= 0;
        end
        else if (set) begin
            Q <= 1;
        end 
        else if (enter) begin
            Q <= data;
        end
    end

endmodule
