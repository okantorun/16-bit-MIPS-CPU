module _32_bit_xor
(
	input [31:0] A,
	input [31:0] B,
	output [31:0] R);
	
	
	xor g0(R[31], A[31], B[31]);
	xor g1(R[30], A[30], B[30]);
	xor g2(R[29], A[29], B[29]);
	xor g3(R[28], A[28], B[28]);
	xor g4(R[27], A[27], B[27]);
	xor g5(R[26], A[26], B[26]);
	xor g6(R[25], A[25], B[25]);
	xor g7(R[24], A[24], B[24]);
	xor g8(R[23], A[23], B[23]);
	xor g9(R[22], A[22], B[22]);
	xor g10(R[21], A[21], B[21]);
	xor g11(R[20], A[20], B[20]);
	xor g12(R[19], A[19], B[19]);
	xor g13(R[18], A[18], B[18]);
	xor g14(R[17], A[17], B[17]);
	xor g15(R[16], A[16], B[16]);
	xor g16(R[15], A[15], B[15]);
	xor g17(R[14], A[14], B[14]);
	xor g18(R[13], A[13], B[13]);
	xor g19(R[12], A[12], B[12]);
	xor g20(R[11], A[11], B[11]);
	xor g21(R[10], A[10], B[10]);
	xor g22(R[9], A[9], B[9]);
	xor g23(R[8], A[8], B[8]);
	xor g24(R[7], A[7], B[7]);
	xor g25(R[6], A[6], B[6]);
	xor g26(R[5], A[5], B[5]);
	xor g27(R[4], A[4], B[4]);
	xor g28(R[3], A[3], B[3]);
	xor g29(R[2], A[2], B[2]);
	xor g30(R[1], A[1], B[1]);
	xor g31(R[0], A[0], B[0]);
	
	
		
endmodule
