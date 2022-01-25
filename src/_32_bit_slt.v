module _32_bit_slt
(
	input [31:0] A,
	input [31:0] B,
	input carry_in,
	output carry_out,
	output [31:0] R);
	
	wire [31:0] F;
	wire [31:0] xor_B;
	wire [31:0] add_one_B;
	reg [31:0] one=32'b1111_1111_1111_1111_1111_1111_1111_1111;
	reg [31:0] _one=32'b0001;
	reg _carry_in= 1'b0;
	
	reg slt_or= 1'b0;
	reg slt_update= 1'b0;
	
	_32_bit_xor g0(one, B[31:0], xor_B[31:0]);
	_32bit_adder fatb0(add_one_B[31:0], _carry_out,  _one, xor_B[31:0], carry_in);
	_32bit_adder fatb1(F[31:0], carry_out,  A[31:0],  add_one_B[31:0], carry_in);
	
	or(R[31],slt_or,F[31]);
	
	or(R[30],slt_update,slt_or);
	or(R[29],slt_update,slt_or);
	or(R[28],slt_update,slt_or);
	or(R[27],slt_update,slt_or);
	or(R[26],slt_update,slt_or);
	or(R[25],slt_update,slt_or);
	or(R[24],slt_update,slt_or);
	or(R[23],slt_update,slt_or);
	or(R[22],slt_update,slt_or);
	or(R[21],slt_update,slt_or);
	or(R[20],slt_update,slt_or);
	or(R[19],slt_update,slt_or);
	or(R[18],slt_update,slt_or);
	or(R[17],slt_update,slt_or);
	or(R[16],slt_update,slt_or);
	or(R[15],slt_update,slt_or);
	or(R[14],slt_update,slt_or);
	or(R[13],slt_update,slt_or);
	or(R[12],slt_update,slt_or);
	or(R[11],slt_update,slt_or);
	or(R[10],slt_update,slt_or);
	or(R[9],slt_update,slt_or);
	or(R[8],slt_update,slt_or);
	or(R[7],slt_update,slt_or);
	or(R[6],slt_update,slt_or);
	or(R[5],slt_update,slt_or);
	or(R[4],slt_update,slt_or);
	or(R[3],slt_update,slt_or);
	or(R[2],slt_update,slt_or);
	or(R[1],slt_update,slt_or);
	or(R[0],slt_update,slt_or);
	
	
	endmodule