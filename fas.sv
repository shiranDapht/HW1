// Full Adder/Subtractor template
module fas (
    input logic a,           // Input bit a
    input logic b,           // Input bit b
    input logic cin,         // Carry in
    input logic a_ns,        // A_nS (add/not subtract) control
    output logic s,          // Output S
    output logic cout        // Carry out
);

	logic out0, out1, out2, out3, out4, out5, out6, out7, out8,	out9, out10, out11;
	XOR2 #(
		.Tpdhl(9), .Tpdlh(9)
	)g4(
		.A(b),
		.B(a),
		.Z(out4)
	);
	XOR2 #(
		.Tpdhl(9), .Tpdlh(9)
	)g0(
		.A(out4),
		.B(cin),
		.Z(s)
	);
	OR2 #(
		.Tpdhl(10), .Tpdlh(10)
	)g5(
		.A(b),
		.B(cin),
		.Z(out5)
	);
	NOT #(
		.Tpdhl(6), .Tpdlh(6)
	)g1(
		.A(b),
		.Z(out1)
	);
	NOT #(
		.Tpdhl(6), .Tpdlh(6)
	)g6(
		.A(cin),
		.Z(out6)
	);
	NOT #(
		.Tpdhl(6), .Tpdlh(6)
	)g7(
		.A(out5),
		.Z(out7)
	);
	XOR2 #(
		.Tpdhl(9), .Tpdlh(9)
	)g11(
		.A(a),
		.B(a_ns),
		.Z(out11)
	);
	OR2 #(
		.Tpdhl(10), .Tpdlh(10)
	)g2(
		.A(out1),
		.B(out6),
		.Z(out2)
	);
	OR2 #(
		.Tpdhl(10), .Tpdlh(10)
	)g8(
		.A(out7),
		.B(out11),
		.Z(out8)
	);
	NOT #(
		.Tpdhl(6), .Tpdlh(6)
	)g3(
		.A(out2),
		.Z(out3)
	);
	NOT #(
		.Tpdhl(6), .Tpdlh(6)
	)g9(
		.A(out8),
		.Z(out9)
	);
	OR2 #(
		.Tpdhl(10), .Tpdlh(10)
	)g10(
		.A(out3),
		.B(out9),
		.Z(cout)
	);
endmodule
