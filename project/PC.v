`timescale 1ns/1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SCU
// Engineer: Jake Esperson
//
// Create Date: 01/22/2024
// Design Name: PC
// Module Name: PC
// Project Name: 
// Target Devices:
// Tool Versions:
// Description: Program Counter
//////////////////////////////////////////////////////////////////////////////////

module PC (
    input [31:0] PC_IN;
    output reg [31:0] PC_OUT;
    input clk;
);
    initial begin
        PC_OUT = 0;
    end
    
    always @(negedge clk)
    begin
        if (PC_IN)
        PC_OUT = PC_IN;
    end
endmodule