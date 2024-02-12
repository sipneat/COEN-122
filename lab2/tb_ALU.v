`timescale 1ns/1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SCU
// Engineer: Jake Esperson
//
// Create Date: 01/22/2024
// Design Name: ALU
// Module Name: ALU
// Project Name: lab2
// Target Devices:
// Tool Versions:
// Description: Testbench for ALU
//////////////////////////////////////////////////////////////////////////////////

module tb_ALU();
    reg [31:0] A, B;
    reg add, inc, neg, sub;
    wire [31:0] out;
    wire Z, N;

    ALU ALU0(A, B, add, inc, neg, sub, out, Z, N);

    initial 
    begin
        A = 5; 
        B = 5;
        add = 1'b1;
        inc = 1'b0;
        neg = 1'b0;
        sub = 1'b0;
        // output should be 10
        #50;
        add = 1'b0;
        inc = 1'b1;
        neg = 1'b0;
        sub = 1'b0;
        // output should be 6
        #50;
        add = 1'b0;
        inc = 1'b0;
        neg = 1'b1;
        sub = 1'b0;
        // output should be -5
        #50;
        add = 1'b0;
        inc = 1'b0;
        neg = 1'b0;
        sub = 1'b1;
        // output should be 0
        #50;
        add = 1'b1;
        inc = 1'b1;
        neg = 1'b1;
        sub = 1'b1;
        #50;
        // output should be 5

        A = 12;
        b = -3;
        add = 1'b1;
        inc = 1'b0;
        neg = 1'b0;
        sub = 1'b0;
        // output should be 9
        #50;
        add = 1'b0;
        inc = 1'b1;
        neg = 1'b0;
        sub = 1'b0;
        // output should be -2
        #50;
        add = 1'b0;
        inc = 1'b0;
        neg = 1'b1;
        sub = 1'b0;
        // output should be -12
        #50;
        add = 1'b0;
        inc = 1'b0;
        neg = 1'b0;
        sub = 1'b1;
        // output should be 15
        #50;
        add = 1'b1;
        inc = 1'b1;
        neg = 1'b1;
        sub = 1'b1;
        #50;
        // output should be 12

        A = 1024;
        B = 762;
        add = 1'b1;
        inc = 1'b0;
        neg = 1'b0;
        sub = 1'b0;
        // output should be 1786
        #50;
        add = 1'b0;
        inc = 1'b1;
        neg = 1'b0;
        sub = 1'b0;
        // output should be 763
        #50;
        add = 1'b0;
        inc = 1'b0;
        neg = 1'b1;
        sub = 1'b0;
        // output should be -1024
        #50;
        add = 1'b0;
        inc = 1'b0;
        neg = 1'b0;
        sub = 1'b1;
        // output should be -262
        #50;
        add = 1'b1;
        inc = 1'b1;
        neg = 1'b1;
        sub = 1'b1;
        #50;
        // output should be 1024

        A = 0;
        B = 0;
        add = 1'b1;
        inc = 1'b0;
        neg = 1'b0;
        sub = 1'b0;
        // output should be 0
        #50;
        add = 1'b0;
        inc = 1'b1;
        neg = 1'b0;
        sub = 1'b0;
        // output should be 1
        #50;
        add = 1'b0;
        inc = 1'b0;
        neg = 1'b1;
        sub = 1'b0;
        // output should be 0
        #50;
        add = 1'b0;
        inc = 1'b0;
        neg = 1'b0;
        sub = 1'b1;
        // output should be 0
        #50;
        add = 1'b1;
        inc = 1'b1;
        neg = 1'b1;
        sub = 1'b1;
        #50;
        // output should be 0

        $finish;
    end

endmodule