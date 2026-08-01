module l2i(a, b, c, d, f, g);
    input a, b, c, d;
    output f, g;
    
    wire nand_out;
    
    nand n1(nand_out, a, b);
    xor x1(f, d, nand_out, c);
    nor nor1(g, b, c, d);
    
endmodule
