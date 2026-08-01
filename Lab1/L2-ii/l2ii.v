module l2ii(a, b, c, d, f, g);
    input a, b, c, d;
    output f, g;
    
    wire w1;
    assign w1 = !(a & b);
    assign f = d ^ w1 ^ c;
    assign g = !(b | c | d);
endmodule
