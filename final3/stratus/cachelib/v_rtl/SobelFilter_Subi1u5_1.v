`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 01:03:31 CST (+0800), Wednesday 31 May 2023
    Configured on: ws33
    Configured by: m110061606 (m110061606)
    
    Created by: Stratus DpOpt 21.05.01 
*******************************************************************************/

module SobelFilter_Subi1u5_1 (
	in1,
	out1
	); /* architecture "behavioural" */ 
input [4:0] in1;
output [4:0] out1;
wire [4:0] asc001;

assign asc001 = 
	+(in1)
	-(5'B00001);

assign out1 = asc001;
endmodule

/* CADENCE  urnxQgs= : u9/ySxbfrwZIxEzHVQQV8Q== ** DO NOT EDIT THIS LINE ******/


