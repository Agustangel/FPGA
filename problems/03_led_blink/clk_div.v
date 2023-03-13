
module clk_div(
    input clk,

    output clk_out
);

reg [25:0]cnt = 0;

assign clk_out = cnt[25];

always @(posedge clk)begin
    cnt <= cnt + 26'b1;
end

endmodule