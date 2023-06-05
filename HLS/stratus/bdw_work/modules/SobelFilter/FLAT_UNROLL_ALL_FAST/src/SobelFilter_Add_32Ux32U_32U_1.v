`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 00:19:02 CST (+0800), Wednesday 31 May 2023
    Configured on: ws33
    Configured by: m110061606 (m110061606)
    
    Created by: Stratus DpOpt 21.05.01 
*******************************************************************************/

module SobelFilter_Add_32Ux32U_32U_1 (
	in2,
	in1,
	out1
	); /* architecture "behavioural" */ 
input [31:0] in2,
	in1;
output [31:0] out1;
wire [31:0] asc001;

assign asc001 = 
	+(in2)
	+(in1);

assign out1 = asc001;
endmodule

/* CADENCE  urn4QgE= : u9/ySxbfrwZIxEzHVQQV8Q== ** DO NOT EDIT THIS LINE ******/




