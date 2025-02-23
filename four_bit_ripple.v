module four_bit_ripple(input [3:0]In1,In2 ,input Cin, output Cout, output [3:0]Sum);

wire C1,C2,C3;
wire [3:0]In3;
assign In3 = {4{Cin}} ^ In2;

full_adder FA1 (In1[0],In3[0],Cin,Sum[0],C1);
full_adder FA2 (In1[1],In3[1],C1,Sum[1],C2);
full_adder FA3 (In1[2],In3[2],C2,Sum[2],C3);
full_adder FA4 (In1[3],In3[3],C3,Sum[3],Cout);

endmodule