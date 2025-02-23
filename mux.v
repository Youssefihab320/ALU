module mux (input [1:0]S, input A, B, C, D, output reg F);
always @(*)
begin
	case (S)
	2'b00 : F = A;
	2'b01 : F = B;
	2'b10 : F = C;
	2'b11 : F = D;
	default: F =0;
	endcase
end

endmodule