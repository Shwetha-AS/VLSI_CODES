module automatic_door_lock(clk,rst,sensor_input,door);
input sensor_input,clk,rst;
output reg door;
always @(posedge clk or sensor_input) begin 
if(rst) 
door<=0;
else begin
if(sensor_input==1) 
door<=1;
else door<=0;
end
end
endmodule
