module john_ring_tb();
    reg clk;
    reg [4:0] d;
    reg s;
    wire [4:0] q;
    wire [4:0] qb;

    john_ring dut (
        .clk(clk),
        .d(d),
        .s(s),
        .q(q),
        .qb(qb)
    );
  initial
begin 
clk=0;
forever #5 clk=~clk;
end

    initial 
begin
        d = 5'b00001; 
        s = 0;        
        #30 s = 1;    
        #40 $stop;    
    end
endmodule

