module alu_4bit (
    input [3:0] A, B,
    input [3:0] S, 								// 4-bit Selector
    output [3:0] F
);

    wire [3:0] arith_out, logic_out;
    wire [3:0] temp;
    wire O;

    // Instantiation
    arithmetic_unit ARITH (A, B, S[1:0], arith_out);
    logic_unit LOGIC (A, B, S[1:0], logic_out);
    comparator_4bit COMP (A, B, S[1:0] , O);
	 
    // Select between Comparator and Logic Units using 2x1 MUX using S1
    mux2x1_4bit MUX1 (logic_out, {4{O}}, S[2], temp);
	 
	 // Select between output of previous mux and Arithmetic Unit using 2x1 MUX using S0
	mux2x1_4bit MUX2 (arith_out, temp, S[3], F);

endmodule
