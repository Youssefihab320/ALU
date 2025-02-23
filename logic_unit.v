module logic_unit (
input [3:0]A,B,
input [1:0]S,				//S3 and S2 in the documentation 
output [3:0]result
);
wire [3:0]and_out,or_out,xor_out,ones_comp;

//And 
assign and_out = A & B;
//OR
assign or_out = A | B;
//XOR 
assign xor_out = A ^ B;
//1's Complement
assign ones_comp = ~B;

//Selection of operation
mux4x1_4bit MUX (and_out,xor_out,or_out,ones_comp,S,result);
endmodule 