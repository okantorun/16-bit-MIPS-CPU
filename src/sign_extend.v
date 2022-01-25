module sign_extend(result, A);

    input [5:0] A;
    output [31:0] result;

    and a2(result[0],A[0],1);
	 and a3(result[1],A[1],1);
	 and a4(result[2],A[2],1);
	 and a5(result[3],A[3],1);
	 and a6(result[4],A[4],1);
	 and a7(result[5],A[5],1);
	 
	 
	 and a8(result[6],A[5],1);
	 and a9(result[7],A[5],1);
	 and a10(result[8],A[5],1);
	 and a11(result[9],A[5],1);
	 and a12(result[10],A[5],1);
	 and a13(result[11],A[5],1);
	 and a14(result[12],A[5],1);
	 and a15(result[13],A[5],1);
	 and a16(result[14],A[5],1);
	 and a17(result[15],A[5],1);
	 and a18(result[16],A[5],1);
	 and a19(result[17],A[5],1);
	 and a20(result[18],A[5],1);
	 and a21(result[19],A[5],1);
	 and a22(result[20],A[5],1);
	 and a23(result[21],A[5],1);
	 and a24(result[22],A[5],1);
	 and a25(result[23],A[5],1);
	 and a26(result[24],A[5],1);
	 and a27(result[25],A[5],1);
	 and a28(result[26],A[5],1);
	 and a29(result[27],A[5],1);
	 and a30(result[28],A[5],1);
	 and a31(result[29],A[5],1);
	 and a32(result[30],A[5],1);
	 and a33(result[31],A[5],1);
endmodule