`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 00:18:50 CST (+0800), Wednesday 31 May 2023
    Configured on: ws33
    Configured by: m110061606 (m110061606)
    
    Created by: Stratus DpOpt 21.05.01 
*******************************************************************************/

module SobelFilter_And_1Ux1U_1U_4_0 (
	in2,
	in1,
	out1
	); /* architecture "behavioural" */ 
input  in2,
	in1;
output  out1;
wire  asc001;

assign asc001 = 
	(in2)
	&(in1);

assign out1 = asc001;
endmodule

/* CADENCE  urf3Sg0= : u9/ySxbfrwZIxEzHVQQV8Q== ** DO NOT EDIT THIS LINE ******/


