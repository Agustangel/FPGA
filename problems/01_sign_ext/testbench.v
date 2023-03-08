`timescale 1 ns / 100 ps

/*
*   Introduction to FPGA and Verilog
*
*   Viktor Prutyanov, 2019
*
*   Testbench for problem set #01
*/

module testbench();

reg [11:0]imm = 10;

wire [31:0]ext_imm;
sign_ext se(.imm(imm), .ext_imm(ext_imm));

wire [31:0]ext_imm2;
sign_ext2 se2(.imm(imm), .ext_imm(ext_imm2));

wire [31:0]minus_ext_imm;
neg neg(.x(ext_imm), .minus_x(minus_ext_imm));

wire [31:0]zero;
assign zero = ext_imm + ext_imm2;


initial begin
    $dumpvars;      /* Open for dump of signals */
    #2 imm = 5;
    #2 imm = 12;
    #2 imm = -5;
    #2 imm = -12;
    #2 imm = 1337;
    #2 imm = -2019;
    #2 $finish;
end

endmodule
