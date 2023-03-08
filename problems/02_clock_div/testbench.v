`timescale 1 ns / 100 ps

/*
*   Introduction to FPGA and Verilog
*
*   Viktor Prutyanov, 2019
*
*   Testbench for problem set #02
*/

module testbench();

reg clk = 1'b0;

always begin
    #1 clk = ~clk;
end

wire clk1;
clk_div #(.X(6)) clk_div(.clk(clk), .clk_out(clk1));

initial begin
    $dumpvars;      /* Open for dump of signals */
    #50 $finish;
end

endmodule
