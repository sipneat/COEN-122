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

module IF_ID (PC_IN, IM_IN, PC_OUT, IM_OUT, clk);
    input [31:0] PC_IN, IM_IN;
    output reg [31:0] PC_OUT, IM_OUT;
    input clk;

    always @(negedge clk)
    begin
        PC_OUT = PC_IN;
        IM_OUT = IM_IN;
    end
endmodule

module ID_EX (PC_IN, RD1_IN, RD2_IN, IMM_IN, PC_OUT, RD1_OUT, RD2_OUT, IMM_OUT, clk);
    input [31:0] PC_IN, RD1_IN, RD2_IN;
    input [63:0] IMM_IN;
    output reg [31:0] PC_OUT, RD1_OUT, RD2_OUT;
    output reg [63:0] IMM_OUT;
    input clk;

    always @(negedge clk)
    begin
        PC_OUT = PC_IN;
        RD1_OUT = RD1_IN;
        RD2_OUT = RD2_IN;
        IMM_OUT = IMM_IN;
    end
endmodule

module EX_MEM (ADD_IN, ZERO_IN, ALU_IN, RD2_IN, ADD_OUT, ZERO_OUT, ALU_OUT, RD2_OUT, clk);
    input [31:0] ADD_IN, ALU_IN, RD2_IN;
    input ZERO_IN;
    output reg [31:0] ADD_OUT, ALU_OUT, RD2_OUT;
    output reg ZERO_OUT;
    input clk;

    always @(negedge clk)
    begin
        ADD_OUT = ADD_IN;
        ZERO_OUT = ZERO_IN;
        ALU_OUT = ALU_IN;
        RD2_OUT = RD2_IN;
    end
endmodule

module MEM_WB (MEM_IN, ALU_IN, MEM_OUT, ALU_OUT, clk);
    input [31:0] MEM_IN, ALU_IN;
    output reg [31:0] MEM_OUT, ALU_OUT;
    input clk;

    always @(negedge clk)
    begin
        ALU_OUT = ALU_IN;
        MEM_OUT = MEM_IN;
    end
endmodule