`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 01:03:17 CST (+0800), Wednesday 31 May 2023
    Configured on: ws33
    Configured by: m110061606 (m110061606)
    
    Created by: Stratus DpOpt 21.05.01 
*******************************************************************************/

module SobelFilter_Add2Mul2s32s32s32_4 (
	in3,
	in2,
	in1,
	out1
	); /* architecture "behavioural" */ 
input [31:0] in3,
	in2,
	in1;
output [31:0] out1;
wire [31:0] asc001;

wire [31:0] asc001_tmp_0;
assign asc001_tmp_0 = 
	+(in3);
assign asc001 = asc001_tmp_0
	+(in1 * in2);

assign out1 = asc001;
endmodule

/* CADENCE  uLDzTgA= : u9/ySxbfrwZIxEzHVQQV8Q== ** DO NOT EDIT THIS LINE ******/




