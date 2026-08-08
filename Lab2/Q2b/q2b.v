module q2b(a, b, c, d, f);
	input a, b, c, d;
	output f;	
	
	wire not_a, not_b, not_c, not_d, t1, t2, t3, t4;
	not nota(not_a, a);
	not notb(not_b, b);
	not notc(not_c, c);
	not notd(not_d, d);
	
	or term1(t1, not_b, c, d);
	or term2(t2, a, not_c, d);
	or term3(t3, not_a, b, not_d);
	or term4(t4, not_a, b, not_c);
	
	and final(f, t1, t2, t3, t4);	
endmodule
