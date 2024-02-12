`timescale 1ns/1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SCU
// Engineer: Jake Esperson
//
// Create Date: 01/31/2024
// Design Name: tb_IRD
// Module Name: tb_IRD
// Project Name: lab3
// Target Devices:
// Tool Versions:
// Description: Testbench for IRD
//////////////////////////////////////////////////////////////////////////////////

module tb_IRD();

    reg clk;

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    reg [7:0] PC;
    wire [31:0] inst;
    Instruction_Memory IM(clk, PC, inst);

    reg reg_write;
    reg [5:0] rs_a, rt_a, rd_a;
    reg [31:0] rd;
    wire [31:0] rs, rt;
    Registers R(clk, rs_a, rs, rt_a, rt, rd_a, rd, reg_write);

    reg write_enable, read_enable;
    reg [31:0] address;
    wire [31:0] data_read;
    reg [31:0] data_write;
    Data_Memory DM(clk, address, write_enable, read_enable, data_read, data_write);

    initial begin
        // IM test
        PC = 0;
        #10;
        PC = 1;
        #10;
        PC = 2;
        #10;
        PC = 3;
        #10;

        // DM test
        write_enable = 1;
        read_enable = 0;
        address = 1;
        data_write = 5;
        #10;
        address = 2;
        data_write = 7;
        #10;
        write_enable = 0;
        read_enable = 1;
        address = 1;
        #10;
        address = 2;
        #10;

        // R test
        // write to registers
        reg_write = 1;
        rd_a = 1;
        rd = 8;
        #10;
        rd_a = 2;
        rd = 9;
        #10;
        reg_write = 0;
        rs_a = 1;
        rt_a = 2;
        #10;

        $finish;
    end
endmodule
