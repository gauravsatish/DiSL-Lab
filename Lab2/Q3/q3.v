module q3(a, b, c, d, f);
	input a, b, c, d;
	output f;	
	
	wire t1, t2, t3, i4, t4;
	
	and term1(t1, a, b, c);
	and term2(t2, a, c, d);
	and term3(t3, a, b, d);
	and term4(t4, b, c, d);
	
	or final(f, t1, t2, t3, t4);	
endmodule
