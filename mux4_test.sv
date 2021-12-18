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
    d0 = 1;
    d1 = 1;
    d2 = 0;
    d3 = 1;
    sel[0] = 0;
    sel[1] = 0;

    #30
    sel[1] = 1;

    #30
    sel[1] = 0;
    
    end

endmodule
