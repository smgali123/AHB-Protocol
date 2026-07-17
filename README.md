# AHB-Protocol
Verilog implementation of AHB-Lite Slave with Testbench
# AHB Protocol using Verilog

## Project Description

This project implements a simple AHB-Lite bus in Verilog HDL.

### Files

- ahb_master.v
- ahb_slave.v
- ahb_tb.v

## Features

- AHB Master
- AHB Slave
- Read Operation
- Write Operation
- Memory Interface
- Testbench Included

## Simulation Tool

- ModelSim
- Vivado
- Xilinx ISE

## Bus Signals

- HCLK
- HRESETn
- HADDR
- HWDATA
- HRDATA
- HWRITE
- HTRANS
- HREADY
- HRESP

## Simulation

Compile:

```
vlog ahb_master.v
vlog ahb_slave.v
vlog ahb_tb.v
```

Run:

```
vsim ahb_tb
run -all
```

Expected Output

```
Read Data = AABBCCDD
```

## Author

Ghayyoor
BS Electrical Engineering
