module john_ring(clk,d,q,qb,s);
input [4:0]d;
input s;
input clk;
output reg [4:0]q;
output [4:0]qb;
assign qb=~q;
initial
begin
q=5'b00001;
end
always@(posedge clk)
begin
if(s==1)
begin
q[4]<=q[0];
q[0]<=q[1];
q[1]<=q[2];
q[2]<=q[3];
q[3]<=q[4];
end
end
endmodule
