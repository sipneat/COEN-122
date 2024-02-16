`timescale 1ns/1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SCU
// Engineer: Jake Esperson
//
// Create Date: 01/22/2024
// Design Name: ImmGen
// Module Name: ImmGen
// Project Name: 
// Target Devices:
// Tool Versions:
// Description: Immediate Generator
//////////////////////////////////////////////////////////////////////////////////

module ImmGen (
    input [5:0] INST_IN,
    output reg [31:0] IMM_OUT,
    input clk;
);
    always @(negedge clk)
    begin
        if (INST_IN[5] = 1'b1)
            IMM_OUT[31:6] = 26'b1;
        if (INST_IN[5] = 1'b0)
            IMM_OUT[31:6] = 26'b0;

        IMM_OUT[5:0] = INST_IN[5:0];
    end
endmodule