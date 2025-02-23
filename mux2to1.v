module mux2to1 (input S, A, B, output reg F);
always @(*)
begin
	case (S)
	1'b0 : F = A;
	1'b1 : F = B;
	default: F =0;
	endcase
end
endmodule