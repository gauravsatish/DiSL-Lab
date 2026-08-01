`timescale 1ns/1ns
`include "l1ii.v"

module l1ii_tb();
reg a, b, c, d;
wire f;

l1ii gg(a, b, c, d, f);
initial
begin
	$dumpfile("l1ii_tb.vcd");
	$dumpvars(0, l1ii_tb);
	
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
