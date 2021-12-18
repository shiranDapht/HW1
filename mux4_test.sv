// 4->1 multiplexer test bench template
module mux4_test;

    logic d0, d1, d2, d3, z;
    logic [1:0] sel;

	mux4# ()
	mux4_tb(
		.d0(d0),
		.d1(d1),
		.d2(d2),
		.d3(d3),
		.sel(sel),
		.z(z)
	);

	initial begin
		d0 = 1'b1;
		d1 = 1'b0;
		d2 = 1'b0;
		d3 = 1'b0;
		sel[0] = 1'b0;
		sel[1] = 1'b0;

		#60;
		sel[1] = 1'b1;
		
		#30;
		sel[1] = 1'b0;
	end
endmodule
