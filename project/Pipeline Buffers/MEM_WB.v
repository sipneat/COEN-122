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
    input [31:0] DATA_IN, ALUSum_IN,
    input memToReg_IN,
    input clk,
    /////////////////////////////////////////////////////////////////
    output reg [31:0] DATA_OUT, ALUSum_OUT,
    output reg memToReg_OUT
);

    always @(negedge clk)
    begin
        DATA_OUT = DATA_IN;
        ALUSum_OUT = ALUSum_IN;
        memToReg_OUT = memToReg_IN;
    end
endmodule