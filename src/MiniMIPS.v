module MiniMIPS(input clk,input [31:0]pc_address );

wire [15:0] _instruction;
wire [3:0] op_code;
wire [2:0] rs_address,rt_address,rd_address,func,write_reg;
wire [31:0] alu_input2,alu_output,jump_address,branch_address;
wire [31:0] memory_address;
wire [5:0] imm_num;
wire [31:0] _32_imm_num;
wire [2:0] alu_ctrl;
wire [2:0] alu_op;
wire [31:0] read_data1,read_data2,mem_read_data;
wire [31:0] write_data; 
wire alu_src,reg_write,reg_write2,mem_to_reg,mem_read,mem_write,branch,sign_extend;
wire reg_dest;
wire I0,I1,I2,I3,I4,I5;
wire r_types;
wire [2:0] read_reg1,read_reg2;
wire [31:0] alu_input1;
wire [31:0] alu_result;

//initial pc_address = 32'b0000;
instruction_memory instr(pc_address,_instruction);

not (I0,op_code[0]);
not (I1,op_code[1]);
not (I2,op_code[2]);
not (I3,op_code[3]);

and (r_types,I0,I1,I2,I3,I4,I5);

or (op_code[3],_instruction[15],0);
or (op_code[2],_instruction[14],0);
or (op_code[1],_instruction[13],0);
or (op_code[0],_instruction[12],0);

or (rs_address[2],_instruction[11],0);
or (rs_address[1],_instruction[10],0);
or (rs_address[0],_instruction[9],0);

or (rt_address[2],_instruction[8],0);
or (rt_address[1],_instruction[7],0);
or (rt_address[0],_instruction[6],0);

or (rd_address[2],_instruction[5],0);
or (rd_address[1],_instruction[4],0);
or (rd_address[0],_instruction[3],0);

or (func[2],_instruction[2],0);
or (func[1],_instruction[1],0);
or (func[0],_instruction[0],0);

or (imm_num[5],_instruction[5],0);
or (imm_num[4],_instruction[4],0);
or (imm_num[3],_instruction[3],0);
or (imm_num[2],_instruction[2],0);
or (imm_num[1],_instruction[1],0);
or (imm_num[0],_instruction[0],0);

control_unit obj1(reg_dest, branch, mem_read, mem_to_reg, op_code, alu_op, mem_write, alu_src, reg_write);
alu_control  obj2 (alu_op, func, alu_ctrl);
_mux2x1 obj3(rt_adress,rd_address,reg_dest,write_reg);

register_block obj4(rs_address,rt_address,write_reg,reg_write,32'd0,
																			 read_data1,read_data2,clk);
sign_extend obj5(_32_imm_num,imm_num);
_mux2x1_32 obj6(read_data2,_32_imm_num,alu_src,alu_input1);
alu obj7(read_data1,alu_input1,alu_ctrl,0,alu_result);	
 

data_memory obj8(mem_read_data,alu_result,read_data2,mem_write,mem_read);
_mux2x1_32 obj9(alu_result,mem_read_data,mem_to_reg,write_data);	

register_block obj10(rs_address,rt_address,write_reg,reg_write,write_data,
																			 read_data1,read_data2,clk);
																			 
//_32bit_adder add(new_pc,carry_out,pc_address,32'b0001,carry_in);	

																	 
																			 
initial begin
	$monitor("time=%2b,opcode=%4b,rs=%3b,rt=%3b,rd=%3b,func=%3b,reg_dest=%1b,mem_to_reg=%1b,alu_op=%3b,reg_write=%1b,mem_read=%1b,mem_write=%1b,read_data1=%32b,read_data2=%32b,imm=%32b,alu_result=%32b,write_data=%32b,branch=%1b",
								$time,op_code,rs_address,rt_address,rd_address,func,reg_dest,mem_to_reg,alu_op,reg_write,mem_read,mem_write,read_data1,read_data2,_32_imm_num,alu_result,write_data,branch);
end


																 





endmodule