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

module ID_EX (
    input [31:0] PC_IN, RS_IN, RT_IN, IMM_IN,
    input regWrite_IN, memtoReg_IN, PCtoReg_IN, branchN_IN, branchZ_IN, jump_IN, jumpMem_IN, memRead_IN, memWrite_IN,
    input [3:0] ALUop_IN,
    input clk,
    /////////////////////////////////////////////////////////////////
    output reg [31:0] PC_OUT, RS_OUT, RT_OUT, IMM_OUT,
    output megWrite_OUT, memtoReg_OUT, PCtoReg_OUT, branchN_OUT, branchZ_OUT, jump_OUT, jumpMem_OUT, memRead_OUT, memWrite_OUT,
    output [3:0] ALUop_OUT
);

    always @(negedge clk)
    begin
        PC_OUT = PC_IN;
        RS_OUT = RS_IN;
        RT_OUT = RT_IN;
        IMM_OUT = IMM_IN;
        regWrite_OUT = regWrite_IN;
        memtoReg_OUT = memtoReg_IN;
        PCtoReg_OUT = PCtoReg_IN;
        branchN_OUT = branchN_IN;
        branchZ_OUT = branchZ_IN;
        jump_OUT = jump_IN;
        jumpMem_OUT = jumpMem_IN;
        memRead_OUT = memRead_IN;
        memWrite_OUT = memWrite_IN;
        ALUop_OUT = ALUop_IN;
    end
endmodule