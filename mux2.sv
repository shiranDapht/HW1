// 2->1 multiplexer template
module mux2 (
    input logic d0,          // Data input 0
    input logic d1,          // Data input 1
    input logic sel,         // Select input
    output logic z           // Output
);
	logic out1, out2, out3, out4, out5, out6, out7;
	NOT#(
		.Tpdhl(6), .Tpdlh(1)
		) g1 (
			.A(d1),
			.Z(out1)
	);
	NOT #(
		.Tpdhl(6), .Tpdlh(1)
		) g2 (
			.A(sel),
			.Z(out2)
	);
	NOT #(
		.Tpdhl(6), .Tpdlh(1)
		) g3 (
			.A(d0),
			.Z(out3)
	);
	OR2 #(
		.Tpdhl(10), .Tpdlh(10)
		) g4 (
			.A(out1),
			.B(out2),
			.Z(out4)
	);
	OR2 #(
		.Tpdhl(10), .Tpdlh(10)
		) g5 (
			.A(sel),
			.B(out3),
			.Z(out5)
	);
	NOT #(
		.Tpdhl(6), .Tpdlh(1)
		) g6 (
			.A(out4),
			.Z(out3)
	);
	NOT #(
		.Tpdhl(6), .Tpdlh(1)
		) g7 (
			.A(out5),
			.Z(out3)
	);
	OR2 #(
		.Tpdhl(10), .Tpdlh(10)
		) g8 (
			.A(out6),
			.B(out7),
			.Z(z)
	);
endmodule
