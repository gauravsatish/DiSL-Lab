`timescale 1ns/1ns
`include "not_ex.v"

module not_ex_tb();
reg x1;
wire f;

not_ex a(x1,f);
initial
begin
	$dumpfile("not_ex_tb.vcd");
	$dumpvars(0,not_ex_tb);

	x1=1'b0;
	#1;

	x1=1'b1;
	#1;
	
	$display("test complete");
end

endmodule
