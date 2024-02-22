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
    input [31:0] PC_IN, RS_IN, RT_IN,
    input [5:0] WrAdr_IN,
    input [3:0] ALUop_IN,
    input [5:0] IMM_IN,
    input [4:0] ALUCtrl_IN,
    input //CONTROL SIGNALS,
    input clk,
    /////////////////////////////////////////////////////////////////
    output reg [31:0] PC_OUT, RS_OUT, RT_OUT,
    output reg [5:0] WrAdr_OUT,
    output reg [3:0] ALUop_OUT,
    output reg [5:0] IMM_OUT,
    output reg [4:0] ALUCtrl_OUT,
    output //CONTROL SIGNALS,
);

    always @(negedge clk)
    begin
        PC_OUT = PC_IN;
        RS_OUT = RS_IN;
        RT_OUT = RT_IN;
        WrAdr_OUT = WrAdr_IN;
        ALUop_OUT = ALUop_IN;
        IMM_OUT = IMM_IN;
        ALUCtrl_OUT = ALUCtrl_IN;
        //CONTROL SIGNALS
    end
endmodule