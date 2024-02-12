`timescale 1ns/1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SCU
// Engineer: Jake Esperson
//
// Create Date: 01/31/2024
// Design Name: IRD
// Module Name: Instruction_Memory
// Project Name: lab3
// Target Devices:
// Tool Versions:
// Description: Instruction_Memory module
//////////////////////////////////////////////////////////////////////////////////

module Instruction_Memory (clk, PC, inst);

    input clk;
    input [7:0] PC;
    output reg [31:0] inst;

    wire [31:0] insts[255:0];
    assign insts[0] = 32'b00000000000000000000000000000001;  // =1
    assign insts[1] = 32'b00000000000000000000000000000010;  // =2
    assign insts[2] = 32'b00000000000000000000000000000011;  // =3
    assign insts[3] = 32'b00000000000000000000000000000101;  // =5

    always @(posedge clk) begin
        inst = insts[PC];
    end
endmodule