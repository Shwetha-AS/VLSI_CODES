module clock_gating_using_dual_latch(enb,clk,out);
input enb,clk;
output reg out;
reg e;
always @(negedge clk)
begin
assign e=enb;
end
always @(posedge clk)
assign out=enb&clk;
endmodule
