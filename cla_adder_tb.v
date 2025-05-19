module cla_adder_tb();
reg [1:0] A;
reg [1:0] B;
reg Carry_in;
wire [1:0]Sum;
wire Carry_out;
cla_adder dut(.A(A),.B(B),.Carry_in(Carry_in),.Sum(Sum),.Carry_out(Carry_out));
initial 
begin 
Carry_in=1;
A=2'b00;B=2'b00;
#10;
A=2'b00;B=2'b01;
#10;
A=2'b00;B=2'b10;
#10;
A=2'b00;B=2'b11;
#10;
A=2'b01;B=2'b00;
#10;
A=2'b01;B=2'b01;
#10;
A=2'b01;B=2'b10;
#10;
A=2'b01;B=2'b11;
#10;
A=2'b10;B=2'b00;
#10;
A=2'b10;B=2'b01;
#10;
A=2'b10;B=2'b10;
#10;
A=2'b10;B=2'b11;
#10;
A=2'b11;B=2'b00;
#10;
A=2'b11;B=2'b01;
#10;
A=2'b11;B=2'b10;
#10;
A=2'b11;B=2'b11;
#10;
end 
endmodule