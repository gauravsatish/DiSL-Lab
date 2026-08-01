`timescale 1ns/1ns
`include "and_ex.v"

module and_ex_tb();
reg x1,x2;
wire f;

and_ex a(x1,x2,f);
initial
begin
	$dumpfile("and_ex_tb.vcd");
	$dumpvars(0,and_ex_tb);

	x1=1'b0; x2=1'b0;
	#1;

	x1=1'b0; x2=1'b1;
	#1;

	x1=1'b1; x2=1'b0;
	#1;

	x1=1'b1; x2=1'b1;
	#1;

	$display("test complete");
end
endmodule
