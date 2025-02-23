module comparator (input [3:0] A,B, output [1:0]O);
wire G,L,E;
//Equal 
assign E = ~(A[3] ^ B[3]) &
			  ~(A[2] ^ B[2]) &
			  ~(A[1] ^ B[1]) &
			  ~(A[0] ^ B[0]);
//Greater
assign G = (A[3] & ~B[3]) |
			  ((A[2] & ~B[2]) & ~(A[3] ^ B[3])) |
			  ((A[1] & ~B[1]) & ~(A[3] ^ B[3]) & ~(A[2] ^ B[2])) |
			  ((A[0] & ~B[0]) & ~(A[3] ^ B[3]) & ~(A[2] ^ B[2]) & ~(A[1] ^ B[1]));
//Less
assign L = ~G & ~E;
//output
assign O={G , L};
endmodule