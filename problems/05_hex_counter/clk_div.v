module clk_div(
    input clk,

    output clk_out
);

reg [22:0]cnt = 0;

assign clk_out = cnt[22];

always @(posedge clk) begin
    cnt <= cnt + 23'b1;
end

endmodule
