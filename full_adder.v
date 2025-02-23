module full_adder (
    input A, B,Cin,
    output Sum, Cout
);
	wire t1,t2,t3;
	xor g1 (Sum,A,B,Cin);
	and g2(t1,A,B);
	and g3(t2,A,Cin);
	and g4(t3,B,Cin);
	or g5(Cout,t1,t2,t3);
	
endmodule
