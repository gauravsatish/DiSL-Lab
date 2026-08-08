`timescale 1ns/1ns
`include "q1b.v"

module q1b_tb();
reg a, b, c, d;
wire f;

q1b gg(a, b, c, d, f);
initial
begin
	$dumpfile("q1b_tb.vcd");
	$dumpvars(0, q1b_tb);
	
	a=1'b0; b=1'b0; c=1'b0; d=1'b0;
	#1; 
	a=1'b0; b=1'b0; c=1'b0; d=1'b1;
	#1;
	a=1'b0; b=1'b0; c=1'b1; d=1'b0;
	#1;
	a=1'b0; b=1'b0; c=1'b1; d=1'b1;
	#1;
	a=1'b0; b=1'b1; c=1'b0; d=1'b0;
	#1;
	a=1'b0; b=1'b1; c=1'b0; d=1'b1;
	#1;
	a=1'b0; b=1'b1; c=1'b1; d=1'b0;
	#1;
	a=1'b0; b=1'b1; c=1'b1; d=1'b1;
	#1;
	a=1'b1; b=1'b0; c=1'b0; d=1'b0;
	#1;
	a=1'b1; b=1'b0; c=1'b0; d=1'b1;
	#1;
	a=1'b1; b=1'b0; c=1'b1; d=1'b0;
	#1;
	a=1'b1; b=1'b0; c=1'b1; d=1'b1;
	#1;
	a=1'b1; b=1'b1; c=1'b0; d=1'b0;
	#1;
	a=1'b1; b=1'b1; c=1'b0; d=1'b1;
	#1;
	a=1'b1; b=1'b1; c=1'b1; d=1'b0;
	#1;
	a=1'b1; b=1'b1; c=1'b1; d=1'b1;
	#1;
	
	$display("test complete");
end

endmodule
