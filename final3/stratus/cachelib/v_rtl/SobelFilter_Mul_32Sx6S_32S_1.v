`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 00:59:32 CST (+0800), Wednesday 31 May 2023
    Configured on: ws33
    Configured by: m110061606 (m110061606)
    
    Created by: Stratus DpOpt 21.05.01 
*******************************************************************************/

module SobelFilter_Mul_32Sx6S_32S_1 (
	in2,
	in1,
	out1
	); /* architecture "behavioural" */ 
input [31:0] in2;
input [5:0] in1;
output [31:0] out1;
wire [31:0] asc001;

assign asc001 = 
	+(in2 * {{26{in1[5]}}, in1});

assign out1 = asc001;
endmodule

/* CADENCE  ubPySgo= : u9/ySxbfrwZIxEzHVQQV8Q== ** DO NOT EDIT THIS LINE ******/


