module mux2x1_nbit 
#(
parameter n
)
(
input [n-1:0]A,B,
input sel,
output [n-1:0]Y
);
assign Y = sel ? B : A; 	//another method other than instantiation
endmodule