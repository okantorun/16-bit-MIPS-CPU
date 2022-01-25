module control_unit_testbench();
	reg [3:0] opcode;
	wire reg_dest,branch,mem_read,mem_to_reg,mem_write,alu_src,reg_write; 
	wire [2:0] alu_op;			
	control_unit my_control(reg_dest, branch, mem_read, mem_to_reg, opcode, 
																alu_op, mem_write, alu_src, reg_write);
	initial begin
	opcode = 4'b0000; //r-type
	#20;
	opcode = 4'b0001; // addi
	#20;
	opcode = 4'b0010; // andi
	#20;
	opcode = 4'b0011; // ori
	#20;
	opcode = 4'b0100; // nori
	#20;
	opcode = 4'b0101; // beq
	#20;
	opcode = 4'b0110; // bne
	#20; 
	opcode = 4'b0111; // slti
	#20;
	opcode = 4'b1000; // lw
	#20;
	opcode = 4'b1001; // sw
	#20;
	end
	initial begin
	$monitor("time=%2d,opcode=%2d,reg_dest=%1b,alu_src=%1b,mem_to_reg=%1b,reg_write=%1b,mem_read=%1b,mem_write=%1b,branch=%1b,alu_op=%3b"
	          ,$time,opcode,reg_dest,alu_src,mem_to_reg,reg_write,mem_read,mem_write,branch,alu_op);
	end
endmodule