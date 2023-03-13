module counter #(parameter W = 16)(
    input clk,

    output [W-1:0]q
);

reg [W-1:0]cnt = 0;

assign q = 16'h0000 + cnt;

always @(posedge clk) begin
    if(cnt == 16'hF)
        cnt <= 0;
    else
        cnt <= cnt + 16'h1;
end


endmodule
