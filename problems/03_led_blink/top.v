/*
*   Introduction to FPGA and Verilog
*
*   Viktor Prutyanov, 2019
*
*   Problem set #03
*/

/*
*   Top-level module
*/
module top(
    input CLK,

    output DS_C,
    output DS_EN1, DS_EN2, DS_EN3, DS_EN4
);

assign {DS_EN1, DS_EN2, DS_EN3, DS_EN4} = 4'b1111;

clk_div #(.X(12)) clk_div(.clk(CLK), .clk_out(DS_C));

endmodule
