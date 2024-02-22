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

module MEM_WB (
    input [31:0] DATA_IN, ALU_S_IN, RS_IN,
    input [5:0] RD_IN,
    input ALU_Flag_IN, MemToReg_IN, RegWrite_IN, JumpMem_IN, Jump_IN, Branch_IN,
    input clk,
    /////////////////////////////////////////////////////////////////
    output reg [31:0] DATA_OUT, ALU_S_OUT, RS_OUT,
    output reg [5:0] RD_OUT,
    output reg ALU_Flag_OUT, MemToReg_OUT, RegWrite_OUT, JumpMem_OUT, Jump_OUT, Branch_OUT,
);

    always @(negedge clk)
    begin
        DATA_OUT = DATA_IN;
        ALU_S_OUT = ALU_S_IN;
        RS_OUT = RS_IN;
        RD_OUT = RD_IN;
        ALU_Flag_OUT = ALU_Flag_IN;
        MemToReg_OUT = MemToReg_IN;
        RegWrite_OUT = RegWrite_IN;
        JumpMem_OUT = JumpMem_IN;
        Jump_OUT = Jump_IN;
        Branch_OUT = Branch_IN;
    end
endmodule