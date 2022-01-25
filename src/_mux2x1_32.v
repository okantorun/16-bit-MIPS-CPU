module _mux2x1_32(
	input [31:0]D0,
	input [31:0]D1,
	input S,
	output [31:0]F);
	
	
	//F = S'D0 +SD1
	
	wire [31:0]wAnd1;
	wire [31:0]wAnd2;
	wire sNot;
	
	
	not g0(sNot, S);
	
	and g1(wAnd1[0],sNot,D0[0]);
	and g2(wAnd1[1],sNot,D0[1]);
	and g3(wAnd1[2],sNot,D0[2]);
	and g4(wAnd1[3],sNot,D0[3]);
	and g5(wAnd1[4],sNot,D0[4]);
	and g6(wAnd1[5],sNot,D0[5]);
	and g7(wAnd1[6],sNot,D0[6]);
	and g8(wAnd1[7],sNot,D0[7]);
	and g9(wAnd1[8],sNot,D0[8]);
	and g10(wAnd1[9],sNot,D0[9]);
	and g11(wAnd1[10],sNot,D0[10]);
	and g12(wAnd1[11],sNot,D0[11]);
	and g13(wAnd1[12],sNot,D0[12]);
	and g14(wAnd1[13],sNot,D0[13]);
	and g15(wAnd1[14],sNot,D0[14]);
	and g16(wAnd1[15],sNot,D0[15]);
	and g17(wAnd1[16],sNot,D0[16]);
	and g18(wAnd1[17],sNot,D0[17]);
	and g19(wAnd1[18],sNot,D0[18]);
	and g20(wAnd1[19],sNot,D0[19]);
	and g21(wAnd1[20],sNot,D0[20]);
	and g22(wAnd1[21],sNot,D0[21]);
	and g23(wAnd1[22],sNot,D0[22]);
	and g24(wAnd1[23],sNot,D0[23]);
	and g25(wAnd1[24],sNot,D0[24]);
	and g26(wAnd1[25],sNot,D0[25]);
	and g27(wAnd1[26],sNot,D0[26]);
	and g28(wAnd1[27],sNot,D0[27]);
	and g29(wAnd1[28],sNot,D0[28]);
	and g30(wAnd1[29],sNot,D0[29]);
	and g31(wAnd1[30],sNot,D0[30]);
	and g32(wAnd1[31],sNot,D0[31]);
	
	
	and g01(wAnd2[0],S,D1[0]);
	and g02(wAnd2[1],S,D1[1]);
	and g03(wAnd2[2],S,D1[2]);
	and g04(wAnd2[3],S,D1[3]);
	and g05(wAnd2[4],S,D1[4]);
	and g06(wAnd2[5],S,D1[5]);
	and g07(wAnd2[6],S,D1[6]);
	and g08(wAnd2[7],S,D1[7]);
	and g09(wAnd2[8],S,D1[8]);
	and g010(wAnd2[9],S,D1[9]);
	and g011(wAnd2[10],S,D1[10]);
	and g012(wAnd2[11],S,D1[11]);
	and g013(wAnd2[12],S,D1[12]);
	and g014(wAnd2[13],S,D1[13]);
	and g015(wAnd2[14],S,D1[14]);
	and g016(wAnd2[15],S,D1[15]);
	and g017(wAnd2[16],S,D1[16]);
	and g018(wAnd2[17],S,D1[17]);
	and g019(wAnd2[18],S,D1[18]);
	and g020(wAnd2[19],S,D1[19]);
	and g021(wAnd2[20],S,D1[20]);
	and g022(wAnd2[21],S,D1[21]);
	and g023(wAnd2[22],S,D1[22]);
	and g024(wAnd2[23],S,D1[23]);
	and g025(wAnd2[24],S,D1[24]);
	and g026(wAnd2[25],S,D1[25]);
	and g027(wAnd2[26],S,D1[26]);
	and g028(wAnd2[27],S,D1[27]);
	and g029(wAnd2[28],S,D1[28]);
	and g030(wAnd2[29],S,D1[29]);
	and g031(wAnd2[30],S,D1[30]);
	and g032(wAnd2[31],S,D1[31]);
	
	_32_bit_or g00(wAnd1, wAnd2, F);
	
	
	
	
	
	
endmodule