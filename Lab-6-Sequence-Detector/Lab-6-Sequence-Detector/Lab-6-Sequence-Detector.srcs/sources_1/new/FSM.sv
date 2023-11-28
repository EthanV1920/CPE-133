`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/17/2023 09:38:18 PM
// Design Name: 
// Module Name: FSM
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


module FSM(
    input clk,
    input x,
    input button,
    output logic z
    );

    parameter [2:0] STA = 3'd0, STB = 3'd1, STC = 3'd2, STD = 3'd3, STE = 3'd4, STF = 3'd5;

    logic [2:0] state = STA;
    logic [2:0] next_state;

    always_ff @( posedge clk ) begin : blockName
        state = next_state;
    end

    always_comb begin : SequenceDetector
        z = 0;
        if (button == 1) begin
            case (state)
                STA: begin
                    if (x == 0) begin
                        next_state = STB;
                    end else begin
                        next_state = STA;
                    end
                end
                STB: begin
                    if (x == 1) begin
                        next_state = STC;
                    end else begin
                        next_state = STA;
                    end
                end
                STC: begin
                    if (x == 1) begin
                        next_state = STD;
                    end else begin
                        next_state = STA;
                    end
                end
                STD: begin
                    if (x == 1) begin
                        next_state = STE;
                    end else begin
                        next_state = STA;
                    end
                end
                STE: begin
                    if (x == 0) begin
                        next_state = STF;
                    end else begin
                        next_state = STA;
                    end
                end
                STF: begin
                    if (x == 1) begin
                        next_state = STA;
                        z = 1;
                    end else begin
                        next_state = STA;
                    end
                end
                default: next_state = STA;
            endcase
        end else begin
            case (state)
                STA: begin
                    if (x == 0) begin
                        next_state = STB;
                    end else begin
                        next_state = STA;
                    end
                end
                STB: begin
                    if (x == 1) begin
                        next_state = STC;
                    end else begin
                        next_state = STA;
                    end
                end
                STC: begin
                    if (x == 1) begin
                        next_state = STD;
                    end else begin
                        next_state = STA;
                    end
                end
                STD: begin
                    if (x == 0) begin
                        next_state = STE;
                    end else begin
                        next_state = STA;
                    end
                end
                STE: begin
                    if (x == 0) begin
                        next_state = STF;
                    end else begin
                        next_state = STA;
                    end
                end
                STF: begin
                    if (x == 1) begin
                        next_state = STA;
                        z = 1;
                    end else begin
                        next_state = STA;
                    end
                end
                default: next_state = STA;
            endcase
        end
    end
endmodule
