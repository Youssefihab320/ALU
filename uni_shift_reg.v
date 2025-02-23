module uni_shift_reg (sel, D, clk, reset, Q);
input [1:0]sel;
input [3:0]D;
input clk;
input reset;
output reg [3:0]Q;

always @ (posedge clk or posedge reset)
begin
if (reset)
	Q <= 4'b0000;
else
begin
	case (sel)
	2'b00 : Q <= Q;
	2'b01 : 
	begin
		Q <= {1'b0,Q[3:1]};
	end
	2'b10 :
	begin
		Q <= {Q[2:0],1'b0};
	end
	2'b11 : Q <= D;
	default : Q <= 4'b0000;
	endcase
end
end 
endmodule