`timescale 1ns/1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SCU
// Engineer: Jake Esperson
//
// Create Date: 01/16/2024
// Design Name: four_to_one mux
// Module Name: four_to_one
// Project Name: lab1
// Target Devices:
// Tool Versions:
// Description: Emulate the function of a 4 to 1 mux using an AND-OR-NOT gate structure
//////////////////////////////////////////////////////////////////////////////////

module four_to_one(sel, A, B, C, D, out);
    // define sel, A, B, C, D as inputs and out as output
    input [1:0] sel;
    input A, B, C, D;
    output out;

    not(notsel0, sel[0]);
    not(notsel1, sel[1]);

    and(outA, A, notsel1, notsel0);
    and(outB, B, notsel1, sel[0]);
    and(outC, C, sel[1], notsel0);
    and(outD, D, sel[1], sel[0]);

    or(out, outA, outB, outC, outD);

endmodule