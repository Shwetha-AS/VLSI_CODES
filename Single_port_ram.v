module single_port_ram(clk,rst,addr,cs,we,oe,data,out);
parameter width=16;
input clk,cs,we,oe,rst;
input[width-1:0]addr;
inout wire[7:0]data;
output reg[7:0]out;
integer i;
reg [7:0] mem [0:(1<<width)-1];
always @(posedge clk) begin
if(cs) begin
if(rst)begin 
out<=0;
for (i = 0; i <16;i=i+1)
            mem[i] <= 0; end
else if(we)
mem[addr]<=data;
else if(oe)
out<=mem[addr];
end
end
endmodule
