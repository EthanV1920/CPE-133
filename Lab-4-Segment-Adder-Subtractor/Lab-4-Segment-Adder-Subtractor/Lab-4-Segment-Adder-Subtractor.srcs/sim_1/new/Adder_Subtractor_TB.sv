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

    

    // Test task for addition
    task automatic test_add;
        // Test case 1: 0 + 0 = 0
        $display("Test case 1: 0 + 0 = 0");
        a = 4'h0;
        b = 4'h0;
        sub = 1'b0;
        #10;
        if (seg == 7'h40 && neg == 1'b0 && an == 4'b1110) $info("Test case 1 passed Seg: %h Neg: %h An: %h", seg, neg, an);
        else begin
            $error("Test case 1 failed Seg: %h Neg: %h An: %h", seg, neg, an); 
            overall_test = 1'b0;
        end 
        
        // Test case 2: 0 + 5 = 5
        $display("Test case 2: 0 + 5 = 5");
        a = 4'h0;
        b = 4'h5;
        sub = 1'b0;
        #10;
        if (seg == 7'h12 && neg == 1'b0 && an == 4'b1110) $info("Test case 2 passed Seg: %h Neg: %h An: %h", seg, neg, an);
        else begin
            $error("Test case 2 failed Seg: %h Neg: %h An: %h", seg, neg, an); 
            overall_test = 1'b0;
        end

        // Test case 3: 2 + 4 = 6
        $display("Test case 3: 2 + 4 = 6");
        a = 4'h2;
        b = 4'h4;
        sub = 1'b0;
        #10;
        if (seg == 7'h02 && neg == 1'b0 && an == 4'b1110) $info("Test case 3 passed Seg: %h Neg: %h An: %h", seg, neg, an);
        else begin
            $error("Test case 3 failed Seg: %h Neg: %h An: %h", seg, neg, an); 
            overall_test = 1'b0;
        end

        // Test case 4: -2 + -2 = -4, carry out
        $display("Test case 4: -2 + -2 = -4, carry out");
        a = 4'hE;
        b = 4'hE;
        sub = 1'b0;
        #10;
        if (seg == 7'h19 && neg == 1'b1 && an == 4'b1110) $info("Test case 4 passed Seg: %h Neg: %h An: %h", seg, neg, an);
        else begin
            $error("Test case 4 failed Seg: %h Neg: %h An: %h", seg, neg, an); 
            overall_test = 1'b0;
        end

        // Test case 5: 7 + -4 = 3, carry out
        $display("Test case 5: 7 + -4 = 3, carry out");
        a = 4'h7;
        b = 4'hC;
        sub = 1'b0;
        #10;
        if (seg == 7'h30 && neg == 1'b0 && an == 4'b1110) $info("Test case 5 passed Seg: %h Neg: %h An: %h", seg, neg, an);
        else begin
            $error("Test case 5 failed Seg: %h Neg: %h An: %h", seg, neg, an); 
            overall_test = 1'b0;
        end

        // Test case 6: -6 + 1 = -5, carry out
        $display("Test case 6: -6 + 1 = -5, carry out");
        a = 4'hA;
        b = 4'h1;
        sub = 1'b0;
        #10;
        if (seg == 7'h12 && neg == 1'b1 && an == 4'b1110) $info("Test case 6 passed Seg: %h Neg: %h An: %h", seg, neg, an);
        else begin
            $error("Test case 6 failed Seg: %h Neg: %h An: %h", seg, neg, an); 
            overall_test = 1'b0;
        end

        // Test case 7: 5 + 6 = 11
        $display("Test case 7: 5 + 6 = 11");
        a = 4'h5;
        b = 4'h6;
        sub = 1'b0;
        #10;
        if (seg == 7'h03 && neg == 1'b0 && an == 4'b1110) $info("Test case 7 passed Seg: %h Neg: %h An: %h", seg, neg, an);
        else begin
            $error("Test case 7 failed Seg: %h Neg: %h An: %h", seg, neg, an); 
            overall_test = 1'b0;
        end

        // Test case 8: -8 + -1 = -9
        $display("Test case 8: -8 + -1 = -9");
        a = 4'h8;
        b = 4'hF;
        sub = 1'b0;
        #10;
        if (seg == 7'h18 && neg == 1'b1 && an == 4'b1110) $info("Test case 8 passed Seg: %h Neg: %h An: %h", seg, neg, an);
        else begin
            $error("Test case 8 failed Seg: %h Neg: %h An: %h", seg, neg, an); 
            overall_test = 1'b0;
        end


        
    endtask

    // Test task for subtraction
    task automatic test_sub;
        // Test case 1: 0 - 0 = 0
        a = 4'b0000;
        b = 4'b0000;
        sub = 1'b1;
        #10;
        if (seg !== 4'b0000 || neg !== 1'b0 || an !== 1'b1110) $error("Test case 1 failed");

        // Test case 2: 7 - 5 = 2
        a = 4'b0111;
        b = 4'b0101;
        sub = 1'b1;
        #10;
        if (seg !== 4'b0010 || neg !== 1'b0 || an !== 1'b1110) $error("Test case 2 failed");

        // Test case 3: 1 - 15 = 2, borrow out
        a = 4'b0001;
        b = 4'b1111;
        sub = 1'b1;
        #10;
        if (seg !== 4'b0010 || neg !== 1'b1 || an !== 1'b1110) $error("Test case 3 failed");
    endtask
    
    always begin
        overall_test = 1'b1;

        #10;
        test_add;
        #10;
        test_sub;

        if (overall_test) $display("Overall Result: PASS");
        else $display("Overall Result: FAIL");
    end
endmodule