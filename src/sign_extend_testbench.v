module sign_extend_testbench();
	reg  [5:0] A;
	wire [31:0] result;
	sign_extend my_sign_extend(result,A);
	initial begin
	A = 16'b000000; 
	#20;
	A = 16'b001001; 
	#20;
	A = 16'b111111; 
	#20;
	end
	initial begin
	$monitor("time=%2d,number=%6b,result=%32b",$time,A,result);
	end
endmodule