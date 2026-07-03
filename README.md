# Encoder-Decoder-Design
Designed and simulated 4-2 Encoder and 2-4 Decoder in Verilog HDL. The project contains examples of combinational logic design, functional simulation of combinational circuits, binary encoding/decoding and functional verification, which serve as a basis for digital electronics, FPGA and VLSI design.
# Overview

An Encoder is a combinational logic circuit which receives multiple input lines and gives a less number of output lines. A Decoder is a circuit that does the opposite of the Encoder; it takes a number of bits as input and outputs one line, based on the input pattern.

Both circuits are essential circuits in Digital Electronics, VLSI Design, FPGA Development, Embedded Systems and Computer Architecture.

# Objective
- Using Verilog HDL, design a 4-to-2 Encoder.
- Create a 2 to 4 Decoder in Verilog HDL.
- Simulate both circuits using Vivado/ModelSim.
- Test for functionality with a test bench.
-Know how to implement combinational logic in hardware description languages.

# Theory

### Encoder

An **encoder** is a combinational logic circuit that converts **2ⁿ input lines into n output lines**. It generates a binary code corresponding to the active input line. A **4-to-2 encoder** has four input lines and two output lines. For correct operation, only **one input should be HIGH (logic 1) at a time**.

**Example:**
- 4 Inputs → 2 Outputs

### Truth Table

| D3 | D2 | D1 | D0 | Y1 | Y0 |
|:--:|:--:|:--:|:--:|:--:|:--:|
| 0 | 0 | 0 | 1 | 0 | 0 |
| 0 | 0 | 1 | 0 | 0 | 1 |
| 0 | 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 0 | 0 | 1 | 1 |

---

### Decoder

A **decoder** is a combinational logic circuit that converts **binary input data into one active output line**. A **2-to-4 decoder** accepts two binary input bits and activates one of four output lines corresponding to the input combination.

**Example:**
- 2 Inputs → 4 Outputs

### Truth Table

| A1 | A0 | Y3 | Y2 | Y1 | Y0 |
|:--:|:--:|:--:|:--:|:--:|:--:|
| 0 | 0 | 0 | 0 | 0 | 1 |
| 0 | 1 | 0 | 0 | 1 | 0 |
| 1 | 0 | 0 | 1 | 0 | 0 |
| 1 | 1 | 1 | 0 | 0 | 0 |

