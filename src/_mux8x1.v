module _mux8x1(
	input [31:0]D0,
	input [31:0]D1,
	input [31:0]D2,
	input [31:0]D3,
	input [31:0]D4,
	input [31:0]D5,
	input [31:0]D6,
	input [31:0]D7,
	input [2:0]S,
	output [31:0]F);
	
	
	
	wire [31:0]wMux0;
	wire [31:0]wMux1;
	
	_mux4x1 g0(D0,D1,D2,D3,S[1:0],wMux0);
	_mux4x1 g1(D4,D5,D6,D7,S[1:0],wMux1);
	_mux2x1_32 g2(wMux0,wMux1,S[2],F);
	
	endmodule