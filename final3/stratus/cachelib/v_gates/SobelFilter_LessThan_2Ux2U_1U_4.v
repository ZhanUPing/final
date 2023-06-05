`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 19.16-s111_1
// Generated on: May 15 2023 06:00:00 CST (May 14 2023 22:00:00 UTC)

module SobelFilter_LessThan_2Ux2U_1U_4(in2, in1, out1);
  input [1:0] in2, in1;
  output out1;
  wire [1:0] in2, in1;
  wire out1;
  wire gt_21_21_n_0, gt_21_21_n_1, gt_21_21_n_2;
  AOI22X1 gt_21_21_g32(.A0 (gt_21_21_n_2), .A1 (gt_21_21_n_1), .B0
       (in2[1]), .B1 (gt_21_21_n_0), .Y (out1));
  NAND2BX1 gt_21_21_g33(.AN (in2[1]), .B (in1[1]), .Y (gt_21_21_n_2));
  NAND2BX1 gt_21_21_g34(.AN (in2[0]), .B (in1[0]), .Y (gt_21_21_n_1));
  INVX1 gt_21_21_g35(.A (in1[1]), .Y (gt_21_21_n_0));
endmodule


