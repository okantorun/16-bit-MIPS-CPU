module register_test();

reg clk;
reg reg_write;
reg [2:0] read_reg1,read_reg2,write_reg;
reg [31:0] write_data;

wire [31:0] read_data1,read_data2;

register_block _reg(read_reg1,read_reg2,write_reg,write_data,reg_write,read_data1,read_data2,clk);

initial begin 
	clk = 0; read_reg1 = 3'b100;read_reg2 = 3'b011; write_reg = 3'b011; write_data = 32'b1111;  reg_write = 1'b0;
 #50;
 clk = 1; read_reg1 = 3'b011;read_reg2 = 3'b111; write_reg = 3'b010; write_data = 32'b1111;  reg_write = 1'b0;
 #50;
end
 
always begin 
	#50 clk=~clk; 
end

initial begin
  $monitor("Time=%2d,ReadReg1:%3b,ReadReg2:%3b,WriteReg:%3b,write_data:%32b,RegWrite:%1b,ReadData1:%32b,ReadData2:%32b",$time,read_reg1,read_reg2,write_reg,write_data,reg_write,read_data1,read_data2);
end

endmodule