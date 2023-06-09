`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 19.16-s111_1
// Generated on: May 15 2023 06:00:04 CST (May 14 2023 22:00:04 UTC)

module SobelFilter_NotEQ_2Ux2U_1U_4(in2, in1, out1);
  input [1:0] in2, in1;
  output out1;
  wire [1:0] in2, in1;
  wire out1;
  wire n_0, n_1, n_2;
  OAI221X1 g25(.A0 (n_0), .A1 (in1[0]), .B0 (n_1), .B1 (in2[0]), .C0
       (n_2), .Y (out1));
  XNOR2X1 g26(.A (in2[1]), .B (in1[1]), .Y (n_2));
  INVX1 g28(.A (in1[0]), .Y (n_1));
  INVX1 g27(.A (in2[0]), .Y (n_0));
endmodule


