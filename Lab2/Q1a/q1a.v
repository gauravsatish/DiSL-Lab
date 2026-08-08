module q1a(a, b, c, d, f);
	input a, b, c, d;
	output f;	
	
	wire not_a, not_b, not_c, not_d, t1, t2, t3, i4, t4;
	not nota(not_a, a);
	not notb(not_b, b);
	not notc(not_c, c);
	not notd(not_d, d);
	
	and term1(t1, not_b, c);
	and term2(t2, c, d);
	and term3(t3, not_a, b);
	and term4(t4, b, not_c, not_d);
	
	or final(f, t1, t2, t3, t4);	
endmodule
