module register_block(read_reg1,read_reg2,write_reg,reg_write,write_data,read_data1,read_data2,clk);
input [2:0] read_reg1,read_reg2,write_reg;
input [31:0] write_data;
output reg[31:0] read_data1,read_data2;
input clk,reg_write;

reg [31:0] registers [7:0];

initial begin
	$readmemb("C:/Users/okant/Desktop/16-bit-MiniMIPS-CPU/simulation/modelsim/register_data.txt", registers);
end

always @(*)begin
	read_data1 = registers[read_reg1];
	read_data2 = registers[read_reg2];
end

always @(posedge clk) begin
	if(reg_write) begin
		registers[write_reg] <= write_data[31:0];
		$writememb("C:/Users/okant/Desktop/GTU/CSE331/hw4/simulation/modelsim/register_data.txt", registers);
	end
end

endmodule