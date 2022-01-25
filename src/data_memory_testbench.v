module data_memory_testbench();
		
		wire [31:0] read_data;
		reg [31:0] adress; 
		reg [31:0] write_data;
		reg mem_read,mem_write;
	
	data_memory obj_memory(read_data,adress[31:0],write_data,mem_write,mem_read);
			
	initial begin
	$readmemb("C:/Users/okant/Desktop/GTU/CSE331/hw4/simulation/modelsim/mem_memory.txt", obj_memory._memory);

	//only mem_read signal is 1
	write_data = 32'b0000_1111_0000_0000_0000_0000_0000_0011; 
	adress = 32'b00000000000000000000000000000001; //1st adress
	mem_read = 1'b1;
	mem_write = 1'b0;
	#20;
	
	//only mem_write signal is 1
	write_data = 32'b1111_0000_0000_0000_0000_0000_0000_0001; 
	adress = 32'b00000000000000000000000000000000;//0th adress 
	mem_read = 1'b0;
	mem_write = 1'b1;
	#20;
	
	
	// both write and read signals are 0
	write_data = 32'b1111_0000_0000_1111_0000_0000_0000_0001; 
	adress = 32'b00000000000000000000000000000010; //2th adress
	mem_read = 1'b1;
	mem_write = 1'b0;
	#20;
	
	$writememb("C:/Users/okant/Desktop/GTU/CSE331/hw4/simulation/modelsim/mem_memory.txt", obj_memory._memory);
	end
	initial begin
	$monitor("time=%2d, write_data=%32b,  adress=%2d,  mem_read=%1b,  mem_write=%1b,   read_data=%32b "
																											,$time,write_data,adress,mem_read,mem_write,read_data);
	end
endmodule