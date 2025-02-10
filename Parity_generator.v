module parity_generator(clk,rst,data,parity);
input rst,clk;
input [3:0] data;
output reg parity;
always@(posedge clk or data) 
begin 
if(rst) 
parity<=0; 
else 
parity<=data[0]^data[1]^data[2]^data[3];
end
endmodule
