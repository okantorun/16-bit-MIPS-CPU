# 16-bit MIPS CPU
This is an implementation of [MIPS32](https://www.mips.com/products/architectures/mips32-2/) using Quartus II, Verilog and ModelSim.

## Overview
MiniMIPS is a small version of the processor with MIPS architecture and made with verilog. In  MiniMIPS, there are 8 registers each holding 32 bit numbers. The instruction width is 16 bits instead of 32 bits in MIPS. There are two types of instructions and there are 15 different types of instructions in MiniMIPS.

## CPU Design

<p align="center">
  <img width="900" height="500" src="https://github.com/okantorun/16-bit-MIPS-CPU/blob/main/resource/CPU-design.png">
</p>

### _Instruction Table_


| Inst Name | Type | Opcode | Function | ALUOp | ALUSrc | MemWrite | MemRead | RegWrite | MemtoReg | Branch | Bne |
| --------- | ---- | ------ | -------- | ----- | ------ | -------- | ------- | -------- | -------- | ------ | --- | 
| AND | R | 0000 | 000 | 100 | 0 | 0 | 0 | 1 | 0 | 0 | 0 |
| ADD | R | 0000 | 001 | 100 | 0 | 0 | 0 | 1 | 0 | 0 | 0 |
| SUB | R | 0000 | 010 | 100 | 0 | 0 | 0 | 1 | 0 | 0 | 0 |
| XOR | R | 0000 | 011 | 100 | 0 | 0 | 0 | 1 | 0 | 0 | 0 |
| NOR | R | 0000 | 100 | 100 | 0 | 0 | 0 | 1 | 0 | 0 | 0 |
| OR | R | 0000 | 101 | 100 | 0 | 0 | 0 | 1 | 0 | 0 | 0 |
| ADDI | I | 0001 | xxx | 110 | 0 | 0 | 0 | 1 | 0 | 0 | 0 |
| ANDI | I | 0010 | xxx | 011 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 
| ORI | I | 0011 | xxx | 111 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 
| NORI | I | 0100 | xxx | 001 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 
| BEQ | I | 0101 | xxx | 010 | 0 | 0 | 0 | 1 | 0 | 1 | 0 | 
| BNE | I |  0110 | xxx | 010 | 0 | 0 | 0 | 1 | 0 | 0 | 1 | 
| SLTI | I | 0111 | xxx | 101 | 0 | 0 | 0 | 1 | 0 | 0 | 0 | 
| LW | I | 1000 | xxx | 000 | 1 | 0 | 1 | 1 | 1 | 0 | 0 | 
| SW | I |  1001 | xxx | 000 | 1 | 1 | 0 | 0 | 0 | 0 | 0 | 


## Testing

It is recommended to [get project from here](https://github.com/okantorun/16-bit-MIPS-CPU/releases/tag/v1.0) and use *qar* file to restore project. You can also clone repository and try to open *MiniMIPS.qpf* in Quartus II.

- Use ModelSim and compile *src/MiniMIPS_testbench.v*. This is main testbench and it will run instructions defined [here](https://github.com/okantorun/16-bit-MIPS-CPU/blob/main/simulation/modelsim/instruction_data.txt).

