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

module EX_MEM (
    input [7:0] PCSum_IN,
    input [31:0] ALUSum_IN,
    input ALU_Z_IN, ALU_N_IN,
    input [31:0] RT_IN,
    input memWrite_IN, memRead_IN, memtoReg_IN,
    input clk,
    /////////////////////////////////////////////////////////////////
    output reg [7:0] PCSum_OUT,
    output reg [31:0] ALUSUm_OUT,
    output reg ALU_Z_OUT, ALU_N_OUT,
    output reg [31:0] RT_OUT,
    output reg memWrite_OUT, memRead_OUT, memtoReg_OUT
);

    always @(negedge clk)
    begin
        PCSum_OUT = PCSum_IN;
        ALUSum_OUT = ALUSum_IN;
        ALU_Z_OUT = ALU_Z_IN;
        ALU_N_OUT = ALU_N_IN;
        RT_OUT = RT_IN;
        memWrite_OUT = memWrite_IN;
        memRead_OUT = memRead_IN;
        memtoReg_OUT = memtoReg_IN;
    end
endmodule