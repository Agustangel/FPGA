`timescale 1 ns / 100 ps

/*
*   Introduction to FPGA and Verilog
*
*   Viktor Prutyanov, 2019
*
*   Testbench for problem set #00
*/

module testbench(); /* No inputs, no outputs */

reg clk = 1'b0; /* Represents clock, initial value is 0 */

always begin
    #1 clk = ~clk; /* Toggle clock every 1ns */
end

wire clk1; /* For output of tested module */
wire clk2;

pset00_test pset00_test(.in(clk), .out(clk1)); /* Tested module instance */
pset00_invertor pset00_invertor(.in(clk), .out(clk2));


initial begin
    $dumpvars;      /* Open for dump of signals */
    $display("Test started...");   /* Write to console */
    #10 $finish;    /* Stop simulation after 10ns */
end

endmodule
