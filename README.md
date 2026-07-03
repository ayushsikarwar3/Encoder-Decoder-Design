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

# Verilog Code
### 4-to-2 Encoder
```verilog
module encoder_4to2(
    input [3:0] d,
    output reg [1:0] y
);

always @(*) begin
    case(d)
        4'b0001: y = 2'b00;
        4'b0010: y = 2'b01;
        4'b0100: y = 2'b10;
        4'b1000: y = 2'b11;
        default: y = 2'b00;
    endcase
end

endmodule
```
---
### 2-to-4 Decoder
```verilog
module decoder_2to4(
    input [1:0] a,
    output reg [3:0] y
);

always @(*) begin
    case(a)
        2'b00: y = 4'b0001;
        2'b01: y = 4'b0010;
        2'b10: y = 4'b0100;
        2'b11: y = 4'b1000;
    endcase
end

endmodule
```
---
# Testbench
```verilog
module tb_encoder_decoder;

reg [3:0] d;
wire [1:0] y_enc;

reg [1:0] a;
wire [3:0] y_dec;

encoder_4to2 ENC(
    .d(d),
    .y(y_enc)
);

decoder_2to4 DEC(
    .a(a),
    .y(y_dec)
);

initial begin

// Encoder Testing
d = 4'b0001; #10;
d = 4'b0010; #10;
d = 4'b0100; #10;
d = 4'b1000; #10;

// Decoder Testing
a = 2'b00; #10;
a = 2'b01; #10;
a = 2'b10; #10;
a = 2'b11; #10;

$finish;

end

endmodule
```
---
#  Simulation Output (Expected)

### Encoder

| Input (D3 D2 D1 D0) | Output (Y1 Y0) |
|:-------------------:|:--------------:|
| 0001 | 00 |
| 0010 | 01 |
| 0100 | 10 |
| 1000 | 11 |

---

### Decoder

| Input (A1 A0) | Output (Y3 Y2 Y1 Y0) |
|:-------------:|:--------------------:|
| 00 | 0001 |
| 01 | 0010 |
| 10 | 0100 |
| 11 | 1000 |

# simulation image

<img width="1718" height="916" alt="screenshot png" src="https://github.com/user-attachments/assets/c93d4c1e-612e-4de1-a5bd-a57763ff8a9d" />

# Author

- Ayush Sikarwar|btech electronics and communication
- linkedin-https://www.linkedin.com/in/ayush-sikarwar-a89878413?utm_source=share_via&utm_content=profile&utm_medium=member_android

# License

This project is licensed under the MIT License.
