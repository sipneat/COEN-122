`timescale 1ns/1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SCU
// Engineer: Jake Esperson
//
// Create Date: 01/16/2024
// Design Name: four_to_one mux test
// Module Name: tb_four_to_one
// Project Name: lab1
// Target Devices:
// Tool Versions:
// Description: Testbench for 4 to 1 mux
//////////////////////////////////////////////////////////////////////////////////

module tb_four_to_one();
    // regs can store data
    reg [1:0] sel;
    reg A, B, C, D;

    // can't store data, connects modules
    wire out;

    // four_to_one object
    four_to_one test(sel, A, B, C, D, out);

    // 'initial' means just do it once (unlike 'always')
    initial
    begin
        // set variables to see in waveform
        A = 0;
        B = 1;
        C = 0;
        D = 1;

        // Out should be 0
        sel = 2'b00; #50; // wait 50 nanoseconds to see the change!
        // Out should be 1
        sel = 2'b01; #50;
        // Out should be 0
        sel = 2'b10; #50;
        // Out should be 1
        sel = 2'b11; #50;

        // set variables to different values to see in waveform
        A = 1;
        B = 0;
        C = 1;
        D = 0;

        // Out should be 1
        sel = 2'b00; #50;
        // Out should be 0
        sel = 2'b01; #50;
        // Out should be 1
        sel = 2'b10; #50;
        // Out should be 0
        sel = 2'b11; #50;

        $finish;
    end
endmodule