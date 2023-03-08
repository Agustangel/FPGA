module sign_ext(
    input [11:0]imm,

    output [31:0]ext_imm
);

wire msb = imm[11];
wire [19:0]msb_x20 = {20{msb}};
assign ext_imm = {msb_x20, imm};

endmodule
