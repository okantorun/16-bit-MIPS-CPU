module instruction_memory(read_address,_instruction);

input [31:0] read_address;
output reg[15:0] _instruction;

reg [15:0] instr_memory [29:0];

initial begin
	$readmemb("C:/Users/okant/Desktop/GTU/CSE331/hw4/simulation/modelsim/instruction_data.txt", instr_memory);
end


always @(*) begin
	_instruction = instr_memory[read_address];
end

endmodule