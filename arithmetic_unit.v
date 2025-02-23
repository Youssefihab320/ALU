module arithmetic_unit (
	input [3:0]A,B,
	input [1:0]S,				//S3 and S2 in the documentation
	output [3:0]result
);
wire [3:0]sum, sub, twoscomp, zero;				//zero for output = 4'b0000 (no operation)
wire Cout;

assign zero = 4'b0000;

//Addition (A+B+0)
four_bit_ripple ADD (A,B,1'b0,Cout,sum);

//Subtraction (A+(~B)+1)
four_bit_ripple SUB (A,B,1'b1,Cout,sub);

//Two's Complement
four_bit_ripple TC (~A,4'b0001,1'b0,Cout,twoscomp);

//Selection of operation
mux4x1_4bit MUX (sum,sub,zero,twoscomp,S,result);

endmodule