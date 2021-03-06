// 64-bit ALU test bench template
module alu64bit_test;
	logic [63:0] a;
	logic [63:0] b;
	logic [63:0] s;
	logic cin, cout;
	logic [1:0] op;
	
	alu64bit alu(
		.a(a),
		.b(b),
		.cin(cin),
		.cout(cout),
		.s(s),
		.op(op)
	);
	initial begin
		a[63:0] = {64{1'b1}};
		b[63:0] = {64{1'b0}};
		cin = 1'b0;
		op[0] = 1'b0;
		op[1] = 1'b1;
		
		#2800
		cin = 1'b1;		
		#2800;
		cin = 1'b0;
	end
endmodule
