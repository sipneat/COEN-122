`timescale 1ns/1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SCU
// Engineer: Jake Esperson
//
// Create Date: 01/22/2024
// Design Name: ALU
// Module Name: ALU
// Project Name: lab2
// Target Devices:
// Tool Versions:
// Description: Implementation of a 32 bit ALU with add, inc, neg, and sub
//////////////////////////////////////////////////////////////////////////////////

module ALU (A, B, add, inc, neg, sub, out, Z, N);

    input [31:0] A, B;
    input add, inc, neg, sub;
    output [31:0] out;
    output Z, N;

    wire [31:0] outA, negA, outB;
    wire cout;
    wire [1:0] select;

    not(not_sub, sub);
    and(select[0], inc, not_sub);
    nor(select[1], add, inc);

    twoToOne twoToOne0(B, neg, outB);
    negate negate0(A, negA);
    threeToOne threeToOne0(A, negA, select, outA);
    fullAdder fullAdder0(outA, outB, cout, out);

    or(N, 0, out[31]);
    nor(Z, out[31], out[30], out[29], out[28], out[27], out[26], out[25], out[24], out[23], out[22], out[21], out[20], out[19], out[18], out[17], out[16], out[15], out[14], out[13], out[12], out[11], out[10], out[9], out[8], out[7], out[6], out[5], out[4], out[3], out[2], out[1], out[0]);

endmodule

module twoToOne (B, sel, out);

    input [31:0] B; 
    input sel;
    output [31:0] out;

    wire [31:0] b_and, zero_and;
    wire sel_not;
    
    not(sel_not, sel);

    and(b_and[0], B[0], sel_not);
    and(zero_and[0], 0, sel);
    or(out[0], b_and[0], zero_and[0]);

    and(b_and[1], B[1], sel_not);
    and(zero_and[1], 0, sel);
    or(out[1], b_and[1], zero_and[1]);

    and(b_and[2], B[2], sel_not);
    and(zero_and[2], 0, sel);
    or(out[2], b_and[2], zero_and[2]);

    and(b_and[3], B[3], sel_not);
    and(zero_and[3], 0, sel);
    or(out[3], b_and[3], zero_and[3]);

    and(b_and[4], B[4], sel_not);
    and(zero_and[4], 0, sel);
    or(out[4], b_and[4], zero_and[4]);

    and(b_and[5], B[5], sel_not);
    and(zero_and[5], 0, sel);
    or(out[5], b_and[5], zero_and[5]);

    and(b_and[6], B[6], sel_not);
    and(zero_and[6], 0, sel);
    or(out[6], b_and[6], zero_and[6]);

    and(b_and[7], B[7], sel_not);
    and(zero_and[7], 0, sel);
    or(out[7], b_and[7], zero_and[7]);

    and(b_and[8], B[8], sel_not);
    and(zero_and[8], 0, sel);
    or(out[8], b_and[8], zero_and[8]);

    and(b_and[9], B[9], sel_not);
    and(zero_and[9], 0, sel);
    or(out[9], b_and[9], zero_and[9]);

    and(b_and[10], B[10], sel_not);
    and(zero_and[10], 0, sel);
    or(out[10], b_and[10], zero_and[10]);

    and(b_and[11], B[11], sel_not);
    and(zero_and[11], 0, sel);
    or(out[11], b_and[11], zero_and[11]);

    and(b_and[12], B[12], sel_not);
    and(zero_and[12], 0, sel);
    or(out[12], b_and[12], zero_and[12]);

    and(b_and[13], B[13], sel_not);
    and(zero_and[13], 0, sel);
    or(out[13], b_and[13], zero_and[13]);

    and(b_and[14], B[14], sel_not);
    and(zero_and[14], 0, sel);
    or(out[14], b_and[14], zero_and[14]);

    and(b_and[15], B[15], sel_not);
    and(zero_and[15], 0, sel);
    or(out[15], b_and[15], zero_and[15]);

    and(b_and[16], B[16], sel_not);
    and(zero_and[16], 0, sel);
    or(out[16], b_and[16], zero_and[16]);

    and(b_and[17], B[17], sel_not);
    and(zero_and[17], 0, sel);
    or(out[17], b_and[17], zero_and[17]);

    and(b_and[18], B[18], sel_not);
    and(zero_and[18], 0, sel);
    or(out[18], b_and[18], zero_and[18]);

    and(b_and[19], B[19], sel_not);
    and(zero_and[19], 0, sel);
    or(out[19], b_and[19], zero_and[19]);

    and(b_and[20], B[20], sel_not);
    and(zero_and[20], 0, sel);
    or(out[20], b_and[20], zero_and[20]);

    and(b_and[21], B[21], sel_not);
    and(zero_and[21], 0, sel);
    or(out[21], b_and[21], zero_and[21]);

    and(b_and[22], B[22], sel_not);
    and(zero_and[22], 0, sel);
    or(out[22], b_and[22], zero_and[22]);

    and(b_and[23], B[23], sel_not);
    and(zero_and[23], 0, sel);
    or(out[23], b_and[23], zero_and[23]);

    and(b_and[24], B[24], sel_not);
    and(zero_and[24], 0, sel);
    or(out[24], b_and[24], zero_and[24]);

    and(b_and[25], B[25], sel_not);
    and(zero_and[25], 0, sel);
    or(out[25], b_and[25], zero_and[25]);

    and(b_and[26], B[26], sel_not);
    and(zero_and[26], 0, sel);
    or(out[26], b_and[26], zero_and[26]);

    and(b_and[27], B[27], sel_not);
    and(zero_and[27], 0, sel);
    or(out[27], b_and[27], zero_and[27]);

    and(b_and[28], B[28], sel_not);
    and(zero_and[28], 0, sel);
    or(out[28], b_and[28], zero_and[28]);

    and(b_and[29], B[29], sel_not);
    and(zero_and[29], 0, sel);
    or(out[29], b_and[29], zero_and[29]);

    and(b_and[30], B[30], sel_not);
    and(zero_and[30], 0, sel);
    or(out[30], b_and[30], zero_and[30]);

    and(b_and[31], B[31], sel_not);
    and(zero_and[31], 0, sel);
    or(out[31], b_and[31], zero_and[31]);

endmodule

module threeToOne (A, negA, sel, out);

    input [31:0] A, negA;
    input [1:0] sel;
    output [31:0] out;
    
    wire sel_not_one, sel_not_zero;
    wire [31:0] a_and, one_and, negA_and;

    not(sel_not_one, sel[1]);
    not(sel_not_zero, sel[0]);

    and(a_and[0], A[0], sel_not_one, sel_not_zero);
    and(one_and[0], 1, sel_not_one, sel[0]);
    and(negA_and[0], negA[0], sel[1], sel_not_zero);
    or(out[0], a_and[0], one_and[0], negA_and[0]);

    and(a_and[1], A[1], sel_not_one, sel_not_zero);
    and(one_and[1], 0, sel_not_one, sel[0]);
    and(negA_and[1], negA[1], sel[1], sel_not_zero);
    or(out[1], a_and[1], one_and[1], negA_and[1]);

    and(a_and[2], A[2], sel_not_one, sel_not_zero);
    and(one_and[2], 0, sel_not_one, sel[0]);
    and(negA_and[2], negA[2], sel[1], sel_not_zero);
    or(out[2], a_and[2], one_and[2], negA_and[2]);

    and(a_and[3], A[3], sel_not_one, sel_not_zero);
    and(one_and[3], 0, sel_not_one, sel[0]);
    and(negA_and[3], negA[3], sel[1], sel_not_zero);
    or(out[3], a_and[3], one_and[3], negA_and[3]);

    and(a_and[4], A[4], sel_not_one, sel_not_zero);
    and(one_and[4], 0, sel_not_one, sel[0]);
    and(negA_and[4], negA[4], sel[1], sel_not_zero);
    or(out[4], a_and[4], one_and[4], negA_and[4]);

    and(a_and[5], A[5], sel_not_one, sel_not_zero);
    and(one_and[5], 0, sel_not_one, sel[0]);
    and(negA_and[5], negA[5], sel[1], sel_not_zero);
    or(out[5], a_and[5], one_and[5], negA_and[5]);

    and(a_and[6], A[6], sel_not_one, sel_not_zero);
    and(one_and[6], 0, sel_not_one, sel[0]);
    and(negA_and[6], negA[6], sel[1], sel_not_zero);
    or(out[6], a_and[6], one_and[6], negA_and[6]);

    and(a_and[7], A[7], sel_not_one, sel_not_zero);
    and(one_and[7], 0, sel_not_one, sel[0]);
    and(negA_and[7], negA[7], sel[1], sel_not_zero);
    or(out[7], a_and[7], one_and[7], negA_and[7]);

    and(a_and[8], A[8], sel_not_one, sel_not_zero);
    and(one_and[8], 0, sel_not_one, sel[0]);
    and(negA_and[8], negA[8], sel[1], sel_not_zero);
    or(out[8], a_and[8], one_and[8], negA_and[8]);

    and(a_and[9], A[9], sel_not_one, sel_not_zero);
    and(one_and[9], 0, sel_not_one, sel[0]);
    and(negA_and[9], negA[9], sel[1], sel_not_zero);
    or(out[9], a_and[9], one_and[9], negA_and[9]);

    and(a_and[10], A[10], sel_not_one, sel_not_zero);
    and(one_and[10], 0, sel_not_one, sel[0]);
    and(negA_and[10], negA[10], sel[1], sel_not_zero);
    or(out[10], a_and[10], one_and[10], negA_and[10]);

    and(a_and[11], A[11], sel_not_one, sel_not_zero);
    and(one_and[11], 0, sel_not_one, sel[0]);
    and(negA_and[11], negA[11], sel[1], sel_not_zero);
    or(out[11], a_and[11], one_and[11], negA_and[11]);

    and(a_and[12], A[12], sel_not_one, sel_not_zero);
    and(one_and[12], 0, sel_not_one, sel[0]);
    and(negA_and[12], negA[12], sel[1], sel_not_zero);
    or(out[12], a_and[12], one_and[12], negA_and[12]);

    and(a_and[13], A[13], sel_not_one, sel_not_zero);
    and(one_and[13], 0, sel_not_one, sel[0]);
    and(negA_and[13], negA[13], sel[1], sel_not_zero);
    or(out[13], a_and[13], one_and[13], negA_and[13]);

    and(a_and[14], A[14], sel_not_one, sel_not_zero);
    and(one_and[14], 0, sel_not_one, sel[0]);
    and(negA_and[14], negA[14], sel[1], sel_not_zero);
    or(out[14], a_and[14], one_and[14], negA_and[14]);

    and(a_and[15], A[15], sel_not_one, sel_not_zero);
    and(one_and[15], 0, sel_not_one, sel[0]);
    and(negA_and[15], negA[15], sel[1], sel_not_zero);
    or(out[15], a_and[15], one_and[15], negA_and[15]);

    and(a_and[16], A[16], sel_not_one, sel_not_zero);
    and(one_and[16], 0, sel_not_one, sel[0]);
    and(negA_and[16], negA[16], sel[1], sel_not_zero);
    or(out[16], a_and[16], one_and[16], negA_and[16]);

    and(a_and[17], A[17], sel_not_one, sel_not_zero);
    and(one_and[17], 0, sel_not_one, sel[0]);
    and(negA_and[17], negA[17], sel[1], sel_not_zero);
    or(out[17], a_and[17], one_and[17], negA_and[17]);

    and(a_and[18], A[18], sel_not_one, sel_not_zero);
    and(one_and[18], 0, sel_not_one, sel[0]);
    and(negA_and[18], negA[18], sel[1], sel_not_zero);
    or(out[18], a_and[18], one_and[18], negA_and[18]);

    and(a_and[19], A[19], sel_not_one, sel_not_zero);
    and(one_and[19], 0, sel_not_one, sel[0]);
    and(negA_and[19], negA[19], sel[1], sel_not_zero);
    or(out[19], a_and[19], one_and[19], negA_and[19]);

    and(a_and[20], A[20], sel_not_one, sel_not_zero);
    and(one_and[20], 0, sel_not_one, sel[0]);
    and(negA_and[20], negA[20], sel[1], sel_not_zero);
    or(out[20], a_and[20], one_and[20], negA_and[20]);

    and(a_and[21], A[21], sel_not_one, sel_not_zero);
    and(one_and[21], 0, sel_not_one, sel[0]);
    and(negA_and[21], negA[21], sel[1], sel_not_zero);
    or(out[21], a_and[21], one_and[21], negA_and[21]);

    and(a_and[22], A[22], sel_not_one, sel_not_zero);
    and(one_and[22], 0, sel_not_one, sel[0]);
    and(negA_and[22], negA[22], sel[1], sel_not_zero);
    or(out[22], a_and[22], one_and[22], negA_and[22]);

    and(a_and[23], A[23], sel_not_one, sel_not_zero);
    and(one_and[23], 0, sel_not_one, sel[0]);
    and(negA_and[23], negA[23], sel[1], sel_not_zero);
    or(out[23], a_and[23], one_and[23], negA_and[23]);

    and(a_and[24], A[24], sel_not_one, sel_not_zero);
    and(one_and[24], 0, sel_not_one, sel[0]);
    and(negA_and[24], negA[24], sel[1], sel_not_zero);
    or(out[24], a_and[24], one_and[24], negA_and[24]);

    and(a_and[25], A[25], sel_not_one, sel_not_zero);
    and(one_and[25], 0, sel_not_one, sel[0]);
    and(negA_and[25], negA[25], sel[1], sel_not_zero);
    or(out[25], a_and[25], one_and[25], negA_and[25]);

    and(a_and[26], A[26], sel_not_one, sel_not_zero);
    and(one_and[26], 0, sel_not_one, sel[0]);
    and(negA_and[26], negA[26], sel[1], sel_not_zero);
    or(out[26], a_and[26], one_and[26], negA_and[26]);

    and(a_and[27], A[27], sel_not_one, sel_not_zero);
    and(one_and[27], 0, sel_not_one, sel[0]);
    and(negA_and[27], negA[27], sel[1], sel_not_zero);
    or(out[27], a_and[27], one_and[27], negA_and[27]);

    and(a_and[28], A[28], sel_not_one, sel_not_zero);
    and(one_and[28], 0, sel_not_one, sel[0]);
    and(negA_and[28], negA[28], sel[1], sel_not_zero);
    or(out[28], a_and[28], one_and[28], negA_and[28]);

    and(a_and[29], A[29], sel_not_one, sel_not_zero);
    and(one_and[29], 0, sel_not_one, sel[0]);
    and(negA_and[29], negA[29], sel[1], sel_not_zero);
    or(out[29], a_and[29], one_and[29], negA_and[29]);

    and(a_and[30], A[30], sel_not_one, sel_not_zero);
    and(one_and[30], 0, sel_not_one, sel[0]);
    and(negA_and[30], negA[30], sel[1], sel_not_zero);
    or(out[30], a_and[30], one_and[30], negA_and[30]);

    and(a_and[31], A[31], sel_not_one, sel_not_zero);
    and(one_and[31], 0, sel_not_one, sel[0]);
    and(negA_and[31], negA[31], sel[1], sel_not_zero);
    or(out[31], a_and[31], one_and[31], negA_and[31]);
    
endmodule

module oneBitAdder (A, B, cin, cout, out);

    input A, B, cin;
    output cout, out;

    xor(xor_a_b, A, B);
    xor(out, xor_a_b, cin);

    and(xor_and_cin, xor_a_b, cin);
    and(a_and_b, A, B);
    or(cout, xor_and_cin, a_and_b);

endmodule

module fullAdder (A, B, cout, sum);

    input [31:0] A; 
    input [31:0] B;
    output cout;
    output [31:0] sum;
    
    wire [31:0] c;

    oneBitAdder oneBitAdder0(A[0], B[0], 0, c[0], sum[0]);
    oneBitAdder oneBitAdder1(A[1], B[1], c[0], c[1], sum[1]);
    oneBitAdder oneBitAdder2(A[2], B[2], c[1], c[2], sum[2]);
    oneBitAdder oneBitAdder3(A[3], B[3], c[2], c[3], sum[3]);
    oneBitAdder oneBitAdder4(A[4], B[4], c[3], c[4], sum[4]);
    oneBitAdder oneBitAdder5(A[5], B[5], c[4], c[5], sum[5]);
    oneBitAdder oneBitAdder6(A[6], B[6], c[5], c[6], sum[6]);
    oneBitAdder oneBitAdder7(A[7], B[7], c[6], c[7], sum[7]);
    oneBitAdder oneBitAdder8(A[8], B[8], c[7], c[8], sum[8]);
    oneBitAdder oneBitAdder9(A[9], B[9], c[8], c[9], sum[9]);
    oneBitAdder oneBitAdder10(A[10], B[10], c[9], c[10], sum[10]);
    oneBitAdder oneBitAdder11(A[11], B[11], c[10], c[11], sum[11]);
    oneBitAdder oneBitAdder12(A[12], B[12], c[11], c[12], sum[12]);
    oneBitAdder oneBitAdder13(A[13], B[13], c[12], c[13], sum[13]);
    oneBitAdder oneBitAdder14(A[14], B[14], c[13], c[14], sum[14]);
    oneBitAdder oneBitAdder15(A[15], B[15], c[14], c[15], sum[15]);
    oneBitAdder oneBitAdder16(A[16], B[16], c[15], c[16], sum[16]);
    oneBitAdder oneBitAdder17(A[17], B[17], c[16], c[17], sum[17]);
    oneBitAdder oneBitAdder18(A[18], B[18], c[17], c[18], sum[18]);
    oneBitAdder oneBitAdder19(A[19], B[19], c[18], c[19], sum[19]);
    oneBitAdder oneBitAdder20(A[20], B[20], c[19], c[20], sum[20]);
    oneBitAdder oneBitAdder21(A[21], B[21], c[20], c[21], sum[21]);
    oneBitAdder oneBitAdder22(A[22], B[22], c[21], c[22], sum[22]);
    oneBitAdder oneBitAdder23(A[23], B[23], c[22], c[23], sum[23]);
    oneBitAdder oneBitAdder24(A[24], B[24], c[23], c[24], sum[24]);
    oneBitAdder oneBitAdder25(A[25], B[25], c[24], c[25], sum[25]);
    oneBitAdder oneBitAdder26(A[26], B[26], c[25], c[26], sum[26]);
    oneBitAdder oneBitAdder27(A[27], B[27], c[26], c[27], sum[27]);
    oneBitAdder oneBitAdder28(A[28], B[28], c[27], c[28], sum[28]);
    oneBitAdder oneBitAdder29(A[29], B[29], c[28], c[29], sum[29]);
    oneBitAdder oneBitAdder30(A[30], B[30], c[29], c[30], sum[30]);
    oneBitAdder oneBitAdder31(A[31], B[31], c[30], cout, sum[31]);

endmodule

module negate (A, out);

    input [31:0] A;
    output [31:0] out;

    wire [31:0] notA;
    wire cout;

    not(notA[0], A[0]);
    not(notA[1], A[1]);
    not(notA[2], A[2]);
    not(notA[3], A[3]);
    not(notA[4], A[4]);
    not(notA[5], A[5]);
    not(notA[6], A[6]);
    not(notA[7], A[7]);
    not(notA[8], A[8]);
    not(notA[9], A[9]);
    not(notA[10], A[10]);
    not(notA[11], A[11]);
    not(notA[12], A[12]);
    not(notA[13], A[13]);
    not(notA[14], A[14]);
    not(notA[15], A[15]);
    not(notA[16], A[16]);
    not(notA[17], A[17]);
    not(notA[18], A[18]);
    not(notA[19], A[19]);
    not(notA[20], A[20]);
    not(notA[21], A[21]);
    not(notA[22], A[22]);
    not(notA[23], A[23]);
    not(notA[24], A[24]);
    not(notA[25], A[25]);
    not(notA[26], A[26]);
    not(notA[27], A[27]);
    not(notA[28], A[28]);
    not(notA[29], A[29]);
    not(notA[30], A[30]);
    not(notA[31], A[31]);

    fullAdder fullAdder0(notA, 1, cout, out);

endmodule