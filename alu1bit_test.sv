module alu1bit_test;

	logic a,b,cin,cout,s;
	logic [1:0] op;
	
	alu1bit alu(
		.a(a),
		.b(b),
		.cin(cin),
		.cout(cout),
		.s(s),
		.op(op)
	);
	initial begin
		a = 1'b1;
		b = 1'b1;
		cin = 1'b1;
		op[0] = 1'b1;
		op[1] = 1'b1;
		
		#82
		op[1] = 1'b0;		
		#50
		op[1] = 1'b1;

	end
endmodule
	