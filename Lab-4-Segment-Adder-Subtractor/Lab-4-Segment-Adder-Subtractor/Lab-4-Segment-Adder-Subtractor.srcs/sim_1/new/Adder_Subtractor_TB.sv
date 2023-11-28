`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 01:26:36 PM
// Design Name: 
// Module Name: Adder_Subtractor_TB
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
module Adder_Subtractor_TB();

    // Registers
    reg overall_test;

    // Inputs
    logic [3:0] a;
    logic [3:0] b;
    logic sub;
    
    // Outputs
    logic [6:0] seg;
    logic [3:0] an;
    logic neg;

    // Instantiate the Unit Under Test (UUT)
    Adder_Subtractor uut(
        .GLOBAL_IN_A(a),
        .GLOBAL_IN_B(b),
        .GLOBAL_IN_SUB(sub),
        .GLOBAL_OUT_SEG(seg),
        .GLOBAL_OUT_AN(an),
        .GLOBAL_OUT_NEG(neg)
    );

    

    // General test task
    task run_test_case(input [3:0] taska, input [3:0] taskb, input tasksub, input [6:0] expected_seg, input expected_neg, input [3:0] expected_an);
        begin
            // Apply inputs
            a = taska;
            b = taskb;
            sub = tasksub;
            #10; // Wait for the result
            
            if (sub == 0) begin
                $display("Running test case: %0d + %0d = ?", a, b);
            end
            else begin
                $display("Running test case: %0d - %0d = ?", a, b);
            end
            
            // Check the result
            if (seg == expected_seg && neg == expected_neg && an == expected_an) begin
                $info("Test case passed. Seg: %h Neg: %h An: %h", seg, neg, an);
            end 
            else if (an == expected_an) begin
                $info("Test case passed no display. Seg: %h Neg: %h An: %h", seg, neg, an);
            end 
            else begin
                $error("Test case failed. Expected Seg: %h Neg: %h An: %h, but got Seg: %h Neg: %h An: %h", expected_seg, expected_neg, expected_an, seg, neg, an);
                overall_test = 1'b0;
            end
        end
    endtask
    
    initial begin
    // Define your test cases
    // Each test case is {a, b, sub, expected_seg, expected_neg, expected_an}
    reg [20:0] test_cases [0:14] = {
        //{ a |  b  | sub | xseg | xneg|  xan  }
        {4'h0, 4'h0, 1'b0, 7'h40, 1'b0, 4'b1110}, // 0 + 0
        {4'h0, 4'h5, 1'b0, 7'h12, 1'b0, 4'b1110}, // 0 + 5
        {4'h9, 4'h0, 1'b1, 7'h78, 1'b1, 4'b1110}, //-7 - 0
        {4'h2, 4'h4, 1'b0, 7'h02, 1'b0, 4'b1110}, // 2 + 4
        {4'hE, 4'hE, 1'b0, 7'h19, 1'b1, 4'b1110}, //-2 +-2
        {4'h7, 4'hC, 1'b0, 7'h30, 1'b0, 4'b1110}, // 7 +-4
        {4'hA, 4'h1, 1'b0, 7'h12, 1'b1, 4'b1110}, //-6 + 1
        {4'h5, 4'h6, 1'b0, 7'h03, 1'b0, 4'b1111}, // 5 + 6 *
        {4'h8, 4'hF, 1'b0, 7'h18, 1'b1, 4'b1111}, //-8 +-1 *
        {4'h6, 4'h5, 1'b1, 7'h40, 1'b0, 4'b1110}, // 6 - 5
        {4'hD, 4'hB, 1'b1, 7'h24, 1'b0, 4'b1110}, //-3 --5
        {4'h2, 4'hB, 1'b1, 7'h78, 1'b0, 4'b1110}, // 2 --5
        {4'hB, 4'h3, 1'b1, 7'h00, 1'b1, 4'b1110}, //-5 - 3
        {4'h1, 4'h8, 1'b1, 7'h18, 1'b0, 4'b1111}, // 1 --8 *
        {4'hC, 4'h6, 1'b1, 7'h08, 1'b0, 4'b1111}  //-4 - 6 *
        };
    
    // Overall Test
    overall_test = 1'b1;

    // Run through each test case
    for (int i = 0; i < 15; i = i + 1) begin
        run_test_case(test_cases[i][20:17], test_cases[i][16:13], test_cases[i][12], test_cases[i][11:5], test_cases[i][4], test_cases[i][3:0]);
    end

        // overall_test = 1'b1;

        // #10;
        // test_add;
        // #10;
        // test_sub;

        if (overall_test) $display("Overall Result: PASS");
        else $display("Overall Result: FAIL");
    end
endmodule