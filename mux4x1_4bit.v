module mux4x1_4bit (
    input [3:0] A, B, C, D,
    input [1:0] sel,
    output [3:0] Y
);
    mux M0 (sel, A[0], B[0], C[0], D[0], Y[0]);
    mux M1 (sel, A[1], B[1], C[1], D[1], Y[1]);
    mux M2 (sel, A[2], B[2], C[2], D[2], Y[2]);
    mux M3 (sel, A[3], B[3], C[3], D[3], Y[3]);
endmodule
