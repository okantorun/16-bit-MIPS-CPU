module _32_bit_or
(
	input [31:0] A,
	input [31:0] B,
	output [31:0] R);
	
	
	
	or g0(R[31], A[31], B[31]);
	or g1(R[30], A[30], B[30]);
	or g2(R[29], A[29], B[29]);
	or g3(R[28], A[28], B[28]);
	or g4(R[27], A[27], B[27]);
	or g5(R[26], A[26], B[26]);
	or g6(R[25], A[25], B[25]);
	or g7(R[24], A[24], B[24]);
	or g8(R[23], A[23], B[23]);
	or g9(R[22], A[22], B[22]);
	or g10(R[21], A[21], B[21]);
	or g11(R[20], A[20], B[20]);
	or g12(R[19], A[19], B[19]);
	or g13(R[18], A[18], B[18]);
	or g14(R[17], A[17], B[17]);
	or g15(R[16], A[16], B[16]);
	or g16(R[15], A[15], B[15]);
	or g17(R[14], A[14], B[14]);
	or g18(R[13], A[13], B[13]);
	or g19(R[12], A[12], B[12]);
	or g20(R[11], A[11], B[11]);
	or g21(R[10], A[10], B[10]);
	or g22(R[9], A[9], B[9]);
	or g23(R[8], A[8], B[8]);
	or g24(R[7], A[7], B[7]);
	or g25(R[6], A[6], B[6]);
	or g26(R[5], A[5], B[5]);
	or g27(R[4], A[4], B[4]);
	or g28(R[3], A[3], B[3]);
	or g29(R[2], A[2], B[2]);
	or g30(R[1], A[1], B[1]);
	or g31(R[0], A[0], B[0]);
	
	
	
		
endmodule
