module edge_detector(clk,rising,falling);
input clk;
output reg rising,falling;
always@(clk)
begin
 if(clk==1)
begin
rising=1'b1;
falling=1'b0;
end
else
begin
rising=1'b0;
falling=1'b1;
end
end 
endmodule
