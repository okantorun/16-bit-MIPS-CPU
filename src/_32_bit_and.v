module _32_bit_and
(
	input [31:0] A,
	input [31:0] B,
	output [31:0] R);
	
	
	and g0(R[31], A[31], B[31]);
	and g1(R[30], A[30], B[30]);
	and g2(R[29], A[29], B[29]);
	and g3(R[28], A[28], B[28]);
	and g4(R[27], A[27], B[27]);
	and g5(R[26], A[26], B[26]);
	and g6(R[25], A[25], B[25]);
	and g7(R[24], A[24], B[24]);
	and g8(R[23], A[23], B[23]);
	and g9(R[22], A[22], B[22]);
	and g10(R[21], A[21], B[21]);
	and g11(R[20], A[20], B[20]);
	and g12(R[19], A[19], B[19]);
	and g13(R[18], A[18], B[18]);
	and g14(R[17], A[17], B[17]);
	and g15(R[16], A[16], B[16]);
	and g16(R[15], A[15], B[15]);
	and g17(R[14], A[14], B[14]);
	and g18(R[13], A[13], B[13]);
	and g19(R[12], A[12], B[12]);
	and g20(R[11], A[11], B[11]);
	and g21(R[10], A[10], B[10]);
	and g22(R[9], A[9], B[9]);
	and g23(R[8], A[8], B[8]);
	and g24(R[7], A[7], B[7]);
	and g25(R[6], A[6], B[6]);
	and g26(R[5], A[5], B[5]);
	and g27(R[4], A[4], B[4]);
	and g28(R[3], A[3], B[3]);
	and g29(R[2], A[2], B[2]);
	and g30(R[1], A[1], B[1]);
	and g31(R[0], A[0], B[0]);
	
	
		
endmodule
