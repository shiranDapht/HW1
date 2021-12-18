// 2->1 multiplexer template

module mux2 (
    input logic d0,          // Data input 0
    input logic d1,          // Data input 1
    input logic sel,         // Select input
    output logic z           // Output
);

NOT #(
    .Tpdhl(6), .Tpdlh(1)
) not_gate (
        .A(a), .Z(z)
);

OR2 #(
    .Tpdhl(10), .Tpdlh(10)
) or_gate (
        .A(a), .B(b), .Z(z)
);

not_gate not_gate_0  ();

endmodule



