module mux2x1_4bit ( 
input [3:0]A,B,
input sel, 
output [3:0]Y 
);
assign Y = sel ? B : A;
endmodule
