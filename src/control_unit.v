module control_unit(reg_dest, branch, mem_read, mem_to_reg, opcode, alu_op, mem_write, alu_src, reg_write);
    input [3:0] opcode;
	 output reg_dest;
    output [2:0] alu_op;
	 output alu_src;
    output reg_write;
    output branch;
    output mem_write, mem_to_reg, mem_read;

    wire addi, andi, ori, nori, beq, bne, slti, lw, sw, r_types;
	 wire opcode_not0,opcode_not1,opcode_not2,opcode_not3;
	 
	 not n0(op_not0,opcode[0]);
	 not n1(op_not1,opcode[1]);
	 not n2(op_not2,opcode[2]);
	 not n3(op_not3,opcode[3]);
	 
	 and a0(r_types,op_not0,op_not1,op_not2,op_not3);
	 and a1(addi,op_not3,op_not2,op_not1,opcode[0]);
	 and a2(andi,op_not3,op_not2,opcode[1],op_not0);
	 and a3(ori,op_not3,op_not2,opcode[1],opcode[0]);
	 and a4(nori,op_not3,opcode[2],op_not1,op_not0);
	 and a5(beq,op_not3,opcode[2],op_not1,opcode[0]);
	 and a6(bne,op_not3,opcode[2],opcode[1],op_not0);
	 and a7(slti,op_not3,opcode[2],opcode[1],opcode[0]);
	 and a8(lw,opcode[3],op_not2,op_not1,op_not0); 							
	 and a9(sw,opcode[3],op_not2,op_not1,opcode[0]);
	
	 
	 
	 or b1(reg_write,r_types,lw,addi, andi, ori, nori,slti,ori);
	 or b2(alu_src,lw,sw,addi, andi, ori, nori,slti);
	 or b3(reg_dest,r_types,0);
	 or b4(mem_to_reg,lw,0);
	 or b5(mem_read,lw,0);
	 or b6(mem_write,sw,0);
	 or b7(branch,beq,bne);
	 or b8(alu_op[2],andi,ori,nori,slti);
	 or b9(alu_op[1],andi,ori,beq,bne);
	 or b10(alu_op[0],ori,nori);
	 endmodule