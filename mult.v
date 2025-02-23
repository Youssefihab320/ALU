module mult(A,B,M);

input [3:0]A;
input [2:0]B;
output [6:0] M;
wire [3:0] t1,t2,t3,t4,t5;
wire Cout1,Cout2,Cout3;

assign Cout1= A[0]&B[0];
assign t3={1'b0,(A[3]&B[0]),(A[2]&B[0]),(A[1]&B[0])};
assign t4={(A[3]&B[1]),(A[2]&B[1]),(A[1]&B[1]),(A[0]&B[1])};
assign t1={(A[3]&B[2]),(A[2]&B[2]),(A[1]&B[2]),(A[0]&B[2])};

four_bit_ripple A1(t3,t4,0,Cout2,t2);
four_bit_ripple A2(t1,{Cout2,t2[3:1]},1'b0,Cout3,t5);

assign M = {Cout3,t5,t2[0],Cout1};

endmodule