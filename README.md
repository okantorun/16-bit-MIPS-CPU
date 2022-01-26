# Testing

It is recommended to [[https://github.com/okantorun/16-bit-MIPS-CPU/releases/tag/v3.1.0][get project from here]] and use =qar= file to restore project. You can also clone repository and try to open =MiniMIPS.qpf= in Quartus II.

- Use ModelSim and compile =src/mips32_testbench.v=. This is main testbench and it will run instructions defined [[https://github.com/repelliuss/32-bit-MIPS-CPU/blob/v1.0/simulation/modelsim/instruction.mem][here]].
- You can also compile =src/testbenches/***.v= testbenches to test each component individually.
