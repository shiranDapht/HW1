// 4->1 multiplexer test bench template
module mux2_tb;

    logic d0, d1, sel, z;

mux2 mux2_test(
    .d0(d0),
    .d1(d1),
    .sel(sel),
    .z(z)
);

initial begin
    d0 = 1'b0;
    d1 = 1'b0;
    sel = 1'b0;

    #10;
    d0 = 1'b1; // second 37 z goes from 0 to 1
	
	
    end
endmodule
