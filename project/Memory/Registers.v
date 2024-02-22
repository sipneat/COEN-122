`timescale 1ns/1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SCU
// Engineer: Jake Esperson
//
// Create Date: 01/31/2024
// Design Name: IRD
// Module Name: Registers
// Project Name: lab3
// Target Devices:
// Tool Versions:
// Description: Registers module
//////////////////////////////////////////////////////////////////////////////////

module Registers (clk, rs_a, rs, rt_a, rt, rd_a, rd, write);

    input clk, write;
    input [5:0] rs_a, rt_a, rd_a;
    input [31:0] rd;
    output reg [31:0] rs, rt;

    reg [31:0] regs[63:0];

    initial begin
        regs[0] = 0;
        regs[1] = 0;
        regs[2] = 0;
        regs[3] = 0;
        regs[4] = 0;
        regs[5] = 0;
        regs[6] = 0;
        regs[7] = 0;
        regs[8] = 0;
        regs[9] = 0;
    end

    always @(posedge clk) begin
        rs = regs[rs_a]; // update rs to rs address
        rt = regs[rt_a]; // update rt to rt address
    end

    always @(negedge clk) begin
        if (write) // if write is high, update rd to rd address
            regs[rd_a] = rd;
    end
endmodule