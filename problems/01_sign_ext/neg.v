module neg(
    input [31:0]x,

    output [31:0]minus_x
);

assign minus_x = ~x + 1;

endmodule
