
// ============================================================================
// COMPANY NAME: CODTECH IT SOLUTIONS 
// INTERN NAME:  AYUSH SIKARWAR
// INTERN ID:    CITS5568  
// DOMAIN:       VLSI
// TASK TITLE:  Design and Simulation of 4-Bit Encoder and Decoder Using Verilog HDL
// ============================================================================module tb_encoder_decoder;

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
