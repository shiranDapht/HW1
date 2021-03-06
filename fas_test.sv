// Full Adder/Subtractor test bench template
module fas_test;

    logic a, b, cin, a_ns, cout, s;
	
fas fas_test(
    .a(a),
    .b(b),
    .cin(cin),
    .a_ns(a_ns),
    .s(s),
    .cout(cout)
);

initial begin
    a = 1'b0;
    b = 1'b0;
    cin = 1'b0;
    a_ns = 1'b0;

    #52;
    cin = 1'b1;
	
	#52;
	cin = 1'b0;
    end
endmodule
