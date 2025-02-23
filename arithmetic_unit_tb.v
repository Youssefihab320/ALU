module arithmetic_unit_tb (   
);
reg [3:0] A,B;
reg [1:0] sel;
wire [3:0] result;

arithmetic_unit uut (.A(A),
                     .B(B),
                     .S(sel),
                     .result(result)
);

initial begin
    {A,B} = 8'b 01110100;
    sel = 2'b00;
    #5;  
    {A,B} = 8'b 01110110;
    sel = 2'b01;
    #5;  
    {A,B} = 8'b 01100111;
    sel = 2'b11;
    #5;
    $stop;  
end

initial begin
    $monitor("A , B = %b \t where sel = %b \t => result = %b" , {A,B}, sel, result);
end
endmodule