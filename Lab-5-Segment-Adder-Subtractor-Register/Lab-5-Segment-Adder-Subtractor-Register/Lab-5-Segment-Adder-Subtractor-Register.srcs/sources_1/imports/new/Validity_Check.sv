`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO
// Engineer: Ethan Vosburg
// 
// Create Date: 10/24/2023 11:53:03 AM
// Design Name: Adder Subtractor
// Module Name: Validity_Check
// Project Name: Adder Subtractor
// Target Devices: Basys3
// Tool Versions: 
// Description: Check the validity of a 4 bit adder/subtractor operation
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Validity_Check(
    input A,
    input B,
    input S,
    output logic valid
    );

    always_comb begin : Validity_Check
        if (S == 1) begin
            if (A == 0 && B == 0)begin
                valid = 1'b0;
            end
            else begin
                valid = 1'b1;
            end
        end 
        else begin
            if (A == 1 && B == 1)begin
                valid = 1'b0;
            end
            else begin
                valid = 1'b1;
            end
        end
    end

endmodule
