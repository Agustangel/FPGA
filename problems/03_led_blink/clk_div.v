
module clk_div #(parameter X = 4)(
    input clk,

    output clk_out
);

reg [X-1:0]cnt = 0;

assign clk_out = (cnt == X);

always @(posedge clk)begin
    if (clk_out)
        cnt <= 0;
    else
        cnt <= cnt + 1;
end

endmodule