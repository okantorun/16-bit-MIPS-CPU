module alu
(
	input [31:0] A,
	input [31:0] B,
	input [2:0] S,
	input carry_in,
	output [31:0] R);

	wire [31:0] R0,R1,R2,R3,R4,R5,R6,R7;
	
	
	_32bit_adder g0(R0,carry_out,A, B ,carry_in);
	_32_bit_xor g1(A, B , R1);
	_32_bit_sub g2(A, B ,carry_in, carry_out, R2);
	_32_bit_slt g3(A, B ,carry_in, carry_out, R4);
	_32_bit_nor g4(A, B , R5);
	_32_bit_and g5(A, B , R6);
	_32_bit_or g6(A, B , R7);
	
	_mux8x1 g7(R0, R1, R2, R3, R4, R5, R6, R7, S, R);
	


endmodule