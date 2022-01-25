module _32_bit_sub
(
	input [31:0] A,
	input [31:0] B,
	input carry_in,
	output carry_out,
	output [31:0] R);
	
	wire [31:0] xor_B;
	wire [31:0] add_one_B;
	reg [31:0] one=32'b1111_1111_1111_1111_1111_1111_1111_1111;
	reg [31:0] _one=32'b0000_0000_0000_0000_0000_0000_0000_0001;
	wire  _carry_out;
	
	
	_32_bit_xor g0(one, B, xor_B[31:0]);
	_32bit_adder g1(add_one_B, _carry_out,  _one, xor_B, carry_in);
	_32bit_adder g2(R, carry_out,  A,  add_one_B, carry_in);
	
	endmodule