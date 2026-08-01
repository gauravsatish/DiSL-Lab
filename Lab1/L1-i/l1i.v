module l1i(a, b, c, d, f);
	input a, b, c, d;
	output f;	
	
	wire a1, o1, n1, a2, o2;
	and and1(a1, a, b);
	or or1(o1, a1, c);
	not not1(n1, o1);
	and and2(a2, n1, d);
	or or2(o2, o1, d);
	and and3(f, a2, o2);
	
endmodule
