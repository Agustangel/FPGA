/*
*   Introduction to FPGA and Verilog
*
*   Viktor Prutyanov, 2019
*
*   Problem set #00
*/

module pset00_invertor(
    input wire in,

    output wire out
);

    assign out = ~in;
endmodule
