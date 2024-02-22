`timescale 1ns/1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SCU
// Engineer: Jake Esperson
//
// Create Date: 01/31/2024
// Design Name: IRD
// Module Name: Data_Memory
// Project Name: lab3
// Target Devices:
// Tool Versions:
// Description: Data Memory module
//////////////////////////////////////////////////////////////////////////////////

module Data_Memory (clk, address, write_enable, read_enable, read_data, write_data);

    input clk, write_enable, read_enable;
    input [31:0] address;
    input [31:0] write_data;
    output reg [31:0] read_data;

    reg [31:0] data[65535:0];

    initial begin
        data[2] = 31
        data[3] = 1024
        data[4] = 9
        data[5] = -2048
        data[6] = 10
    end

    always @(posedge clk) begin
        if (write_enable)
            data[address[15:0]] = write_data;
        if (read_enable)
            read_data = data[address[15:0]];
    end
endmodule