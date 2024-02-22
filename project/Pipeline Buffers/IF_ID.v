`timescale 1ns/1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SCU
// Engineer: Jake Esperson
//
// Create Date: 01/22/2024
// Design Name: pipeline_buffer
// Module Name: IF_ID, ID_EX, EX_MEM, MEM_WB
// Project Name: lab4
// Target Devices:
// Tool Versions:
// Description: Buffer for a CPU pipeline
//////////////////////////////////////////////////////////////////////////////////

module IF_ID (
    input [31:0] PC_IN, IM_IN,
    output reg [31:0] PC_OUT, IM_OUT,
    input clk,
);

    always @(negedge clk)
    begin
        PC_OUT = PC_IN;
        IM_OUT = IM_IN;
    end
endmodule