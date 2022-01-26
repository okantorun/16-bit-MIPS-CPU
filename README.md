# 16-bit MIPS CPU
This is an implementation of [MIPS32](https://www.mips.com/products/architectures/mips32-2/) using Quartus II, Verilog and ModelSim.

## CPU Design

<p align="center">
  <img width="900" height="500" src="https://github.com/okantorun/16-bit-MIPS-CPU/blob/main/resource/CPU-design.png">
</p>

## Testing

It is recommended to [get project from here](https://github.com/okantorun/16-bit-MIPS-CPU/releases/tag/v3.1.0) and use *qar* file to restore project. You can also clone repository and try to open *MiniMIPS.qpf* in Quartus II.

- Use ModelSim and compile *src/MiniMIPS_testbench.v*. This is main testbench and it will run instructions defined [here](https://github.com/okantorun/16-bit-MIPS-CPU/blob/main/simulation/modelsim/instruction_data.txt).

