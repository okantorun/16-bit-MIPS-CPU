module _mux4x1(
	input [31:0]D0,
	input [31:0]D1,
	input [31:0]D2,
	input [31:0]D3,
	input [1:0]S,
	output [31:0]F);
	
	wire [31:0]wMux0;
	wire [31:0]wMux1;
	
	_mux2x1_32 g0(D0,D1,S[0],wMux0);
	_mux2x1_32 g1(D2,D3,S[0],wMux1);
	_mux2x1_32 g2(wMux0,wMux1,S[1],F);
	

endmodule