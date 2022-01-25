module _mux2x1(
	input [2:0]D0,
	input [2:0]D1,
	input S,
	output [2:0]F);
	
	
	//F = S'D0 +SD1
	
	wire [2:0]wAnd1;
	wire [2:0]wAnd2;
	wire sNot;
	
	
	not g0(sNot, S);
	
	and g1(wAnd1[0],sNot,D0[0]);
	and g2(wAnd1[1],sNot,D0[1]);
	and g3(wAnd1[2],sNot,D0[2]);
	
	and g01(wAnd2[0],S,D1[0]);
	and g02(wAnd2[1],S,D1[1]);
	and g03(wAnd2[2],S,D1[2]);
	
	_32_bit_or g00(wAnd1, wAnd2, F);

	
	
	
	
	
	
endmodule