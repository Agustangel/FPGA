module sign_ext2(
    input [11:0]imm,

    output [31:0]ext_imm
);

wire msb = imm[11];
wire [19:0]msb_x20 = {20{msb}};
wire ext = msb ? msb_x20 : msb_x20;

assign ext_imm = {ext, imm};

endmodule
