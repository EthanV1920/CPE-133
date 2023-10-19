`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Cal Poly SLO
// Engineer: Ethan Vosburg
// 
// Create Date: 10/18/2023 06:44:20 PM
// Design Name: Multiplexer Test Bench
// Module Name: MUX_TB
// Project Name: Segment Adder
// Target Devices: 
// Tool Versions: 
// Description: Testbench for Mulptiplexer
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MUX_TB();
    logic [3:0] MUX_TB_A;
    logic [3:0] MUX_TB_B;
    logic MUX_TB_SEL;
    logic [3:0] MMUX_TB_OUT;

    MUX uut (
        .zeroIn(MUX_TB_A),
        .oneIn(MUX_TB_B),
        .select(MUX_TB_SEL),
        .muxOut(MMUX_TB_OUT)
    );

    // Simulation Begin
    always begin
        #10 MUX_TB_A = 4'b0000;
            MUX_TB_B = 4'b1111;
            MUX_TB_SEL = 1'b0;
    
        #10 MUX_TB_A = 4'b0000;
            MUX_TB_B = 4'b1111;
            MUX_TB_SEL = 1'b1;
        
    end

endmodule
