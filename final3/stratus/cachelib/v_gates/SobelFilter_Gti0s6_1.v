`timescale 1ps / 1ps

// Generated by Cadence Genus(TM) Synthesis Solution 19.16-s111_1
// Generated on: May 31 2023 01:03:32 CST (May 30 2023 17:03:32 UTC)

module SobelFilter_Gti0s6_1(in1, out1);
  input [5:0] in1;
  output out1;
  wire [5:0] in1;
  wire out1;
  wire gt_19_56_n_0, gt_19_56_n_1, gt_19_56_n_2, gt_19_56_n_3,
       gt_19_56_n_4;
  NOR2X1 gt_19_56_g148(.A (in1[5]), .B (gt_19_56_n_4), .Y (out1));
  NOR2X1 gt_19_56_g149(.A (gt_19_56_n_0), .B (gt_19_56_n_3), .Y
       (gt_19_56_n_4));
  NAND2X2 gt_19_56_g150(.A (gt_19_56_n_1), .B (gt_19_56_n_2), .Y
       (gt_19_56_n_3));
  NOR2X4 gt_19_56_g152(.A (in1[1]), .B (in1[0]), .Y (gt_19_56_n_2));
  NOR2X6 gt_19_56_g153(.A (in1[3]), .B (in1[2]), .Y (gt_19_56_n_1));
  OR2XL gt_19_56_g2(.A (in1[5]), .B (in1[4]), .Y (gt_19_56_n_0));
endmodule


