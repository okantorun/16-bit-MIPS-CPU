module alu_control_testbench();
	
	reg [2:0] alu_op;
	reg [2:0] func;
	wire [2:0] alu_ctrl;
	alu_control my_alu_ctr(alu_op,func,alu_ctrl);
	initial begin
	alu_op = 3'b110; func =3'b110; // addi
	#20;
	alu_op = 3'b011; func =3'b110; // andi 
	#20;
	alu_op = 3'b111; func =3'b110; // ori
	#20;
	alu_op = 3'b001; func =3'b110; // nori
	#20;
	alu_op = 3'b010; func =3'b110; // beq - bne
	#20;
	alu_op = 3'b101; func =3'b110; // slti
	#20;
	alu_op = 3'b000; func =3'b110; // lw - sw
	#20;
	alu_op = 3'b100; func =3'b000; // and
	#20;
	alu_op = 3'b100; func =3'b001; // add
	#20;
	alu_op = 3'b100; func =3'b010; // sub 
	#20;
	alu_op = 3'b100; func =3'b011; // xor
	#20;
	alu_op = 3'b100; func =3'b100; // nor
	#20;
	alu_op = 3'b100; func =3'b101; // or
	#20;
	
	end
	initial begin
	$monitor("time=%2d,alu_op=%3b,function=%3b,alu_ctrl=%3b",$time,alu_op,func,alu_ctrl);
	end
endmodule
