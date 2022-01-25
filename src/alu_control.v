module alu_control (alu_op, func, alu_ctrl);
    input [2:0] alu_op;
    input [2:0] func;
    output [2:0] alu_ctrl;
	 
	 wire alu_op_not0,alu_op_not1,alu_op_not2,func_not0,func_not1,func_not2;
	 wire r1,r2,r3,r4,r5,r6,r7,r8, r9, r10, r11, r12, r13;
	 
	 not g0(func_not0,func[0]);
	 not g1(func_not1,func[1]);
	 not g2(func_not2,func[2]);
	 not g3(alu_op_not0,alu_op[0]);
	 not g4(alu_op_not1,alu_op[1]);
	 not g5(alu_op_not2,alu_op[2]);
	 
	 //ALU_ctr[0]
	 and a1(r1,func[1],func[0]);
	 and a2(r2,alu_op[0],alu_op[1],alu_op[2]);
	 and a3(r3,alu_op_not2,alu_op_not1,alu_op[0]);
	 and a4(r13,func[2],func_not1);
	 or a5(alu_ctrl[0],r1,r2,r3,r13);
	 
	 //ALU_ctr[1]
	 and b1(r4,func_not0,func_not2);
	 and b2(r5,func[0],func[2]);
	 and b3(r6,alu_op_not0,alu_op[1],alu_op_not2);
	 and b4(r7,alu_op[0],alu_op[1],alu_op[2]);
	 and b5(r8,alu_op[0],alu_op[1],alu_op_not2);
	 or b7(alu_ctrl[1],r4,r5,r6,r7,r8);
	 
	 //ALU_ctr[2]
	 and c1(r10,func_not0,func_not1,func_not2);
	 and c2(r11,func[0],func[2]);
	 and c3(r12,func_not0,func_not1,func[2]);
	 or c4(alu_ctrl[2],r10,r11,r12,alu_op[0]);
	
	 endmodule