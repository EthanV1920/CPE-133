`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO
// Engineer: Ethan Vosburg
// 
// Create Date: 11/30/2023 04:05:46 PM
// Design Name: 
// Module Name: Multiplier_FSM
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


module Multiplier_FSM(
    input clk,
    input button,
    input [3:0] x,
    output logic [1:0] sr_sel,
    output logic acc_ld,
    output logic acc_clr
    );

    parameter [2:0] STA = 3'd0, STB = 3'd1, STC = 3'd2, STD = 3'd3, STE = 3'd4, STF = 3'd5;

    logic [2:0] state = STA;
    logic [2:0] next_state;

    always_ff @( posedge clk, posedge button ) begin
        if (button) begin
            state <= STA;
        end else begin
            state <= next_state;
        end
    end

    always_comb begin : SequenceDetector
        sr_sel = 2'b0;
        acc_ld = 1'b0;
        acc_clr = 1'b0;
        
        case (state)
            STA: begin // Start
                sr_sel = 1;
                acc_ld = 0;
                acc_clr = 1;
                next_state = STB;
            end
            STB: begin // bit0
                sr_sel = 2'b10;
                acc_clr = 1'b0;
                // $display("x[0]: %0d ", x[0]);
                if (x[0] == 1) begin
                    next_state = STC;
                    acc_ld = 1'b1;
                end else begin
                    acc_ld = 1'b0;
                    next_state = STC;
                end
            end
            STC: begin // bit1
                sr_sel = 2'b10;
                acc_clr = 1'b0;
                if (x[1]) begin
                    acc_ld = 1'b1;
                    next_state = STD;
                end else begin
                    acc_ld = 1'b0;
                    next_state = STD;
                end
            end
            STD: begin // bit2
                sr_sel = 2'b10;
                acc_clr = 1'b0;
                if (x[2]) begin
                    acc_ld = 1'b1;
                    next_state = STE;
                end else begin
                    acc_ld = 1'b0;
                    next_state = STE;
                end
            end
            STE: begin // bit3
                sr_sel = 2'b10;
                acc_clr = 1'b0;
                if (x[3]) begin
                    acc_ld = 1'b1;
                    next_state = STF;
                end else begin
                    acc_ld = 1'b0;
                    next_state = STF;
                end
            end
            STF: begin // Hold
                sr_sel = 2'b0;
                acc_ld = 1'b0;
                acc_clr = 1'b0;
            end
            default: begin
                next_state = STA;
            end
        endcase
        
    end

endmodule
