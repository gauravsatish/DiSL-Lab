`timescale 1ns/1ns
`include "l1i.v"

module l1i_tb();
reg a, b, c, d;
wire f;

l1i gg(a, b, c, d, f);
initial
begin
	$dumpfile("l1i_tb.vcd");
	$dumpvars(0, l1i_tb);
	
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
