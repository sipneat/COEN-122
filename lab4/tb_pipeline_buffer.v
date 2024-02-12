//////////////////////////////////////////////////////////////////////////////////
// Company: SCU
// Engineer: Jake Esperson
//
// Create Date: 01/22/2024
// Design Name: pipeline_buffer
// Module Name: tb_pipeline_buffer
// Project Name: lab4
// Target Devices:
// Tool Versions:
// Description: Testbench for pipeline_buffer
//////////////////////////////////////////////////////////////////////////////////

module tb_pipeline_buffer ();
    
    reg clk;

    initial begin
        clk = 1;
        forever #5 clk = ~clk;
    end

    // IF_ID test
    reg [31:0] PC_IN_IF, IM_IN_IF;
    wire [31:0] PC_OUT_IF, IM_OUT_IF;
    IF_ID IF_ID_inst(PC_IN_IF, IM_IN_IF, PC_OUT_IF, IM_OUT_IF, clk);

    // ID_EX test
    reg [31:0] PC_IN_ID, RD1_IN_ID, RD2_IN_ID;
    reg [63:0] IMM_IN_ID;
    wire [31:0] PC_OUT_ID, RD1_OUT_ID, RD2_OUT_ID;
    wire [63:0] IMM_OUT_ID;
    ID_EX ID_EX_inst(PC_IN_ID, RD1_IN_ID, RD2_IN_ID, IMM_IN_ID, PC_OUT_ID, RD1_OUT_ID, RD2_OUT_ID, IMM_OUT_ID, clk);

    // EX_MEM test
    reg [31:0] ADD_IN_EX, ALU_IN_EX, RD2_IN_EX;
    reg ZERO_IN_EX;
    wire [31:0] ADD_OUT_EX, ALU_OUT_EX, RD2_OUT_EX;
    wire ZERO_OUT_EX;
    EX_MEM EX_MEM_inst(ADD_IN_EX, ZERO_IN_EX, ALU_IN_EX, RD2_IN_EX, ADD_OUT_EX, ZERO_OUT_EX, ALU_OUT_EX, RD2_OUT_EX, clk);

    // MEM_WB test
    reg [31:0] MEM_IN_MW, ALU_IN_MW;
    wire [31:0] MEM_OUT_MW, ALU_OUT_MW;
    MEM_WB MEM_WB_inst(MEM_IN_MW, ALU_IN_MW, MEM_OUT_MW, ALU_OUT_MW, clk);

    initial begin
        // IF_ID test
        PC_IN_IF = 0;
        IM_IN_IF = 0;
        #10;
        PC_IN_IF = 1;
        IM_IN_IF = 1;
        #10;
        PC_IN_IF = 2;
        IM_IN_IF = 2;
        #10;
        PC_IN_IF = 3;
        IM_IN_IF = 3;
        #10;

        // ID_EX test
        PC_IN_ID = 0;
        RD1_IN_ID = 0;
        RD2_IN_ID = 0;
        IMM_IN_ID = 0;
        #10;
        PC_IN_ID = 1;
        RD1_IN_ID = 1;
        RD2_IN_ID = 1;
        IMM_IN_ID = 1;
        #10;
        PC_IN_ID = 2;
        RD1_IN_ID = 2;
        RD2_IN_ID = 2;
        IMM_IN_ID = 2;
        #10;
        PC_IN_ID = 3;
        RD1_IN_ID = 3;
        RD2_IN_ID = 3;
        IMM_IN_ID = 3;
        #10;

        // EX_MEM test
        ADD_IN_EX = 0;
        ZERO_IN_EX = 0;
        ALU_IN_EX = 0;
        RD2_IN_EX = 0;
        #10;
        ADD_IN_EX = 1;
        ZERO_IN_EX = 1;
        ALU_IN_EX = 1;
        RD2_IN_EX = 1;
        #10;
        ADD_IN_EX = 2;
        ZERO_IN_EX = 2;
        ALU_IN_EX = 2;
        RD2_IN_EX = 2;
        #10;
        ADD_IN_EX = 3;
        ZERO_IN_EX = 3;
        ALU_IN_EX = 3;
        RD2_IN_EX = 3;
        #10;

        // MEM_WB test
        MEM_IN_MW = 0;
        ALU_IN_MW = 0;
        #10;
        MEM_IN_MW = 1;
        ALU_IN_MW = 1;
        #10;
        MEM_IN_MW = 2;
        ALU_IN_MW = 2;
        #10;
        MEM_IN_MW = 3;
        ALU_IN_MW = 3;

        $finish;
    end
endmodule