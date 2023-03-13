module hex_display(
    input clk,
    input [15:0]data,

    output [3:0]anodes,
    output [6:0]segments
);


reg [1:0]i = 0;

assign anodes = (4'b1 << i);

wire [3:0]b = data[i * 4 +: 4];

always @(posedge clk) begin
    i <= i + 2'b1;
end

hex_to_seg hex_to_seg(.data(b), .segments(segments));

endmodule
