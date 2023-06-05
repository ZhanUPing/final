`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 01:03:32 CST (+0800), Wednesday 31 May 2023
    Configured on: ws33
    Configured by: m110061606 (m110061606)
    
    Created by: Stratus DpOpt 21.05.01 
*******************************************************************************/

module SobelFilter_Gti0s6_1 (
	in1,
	out1
	); /* architecture "behavioural" */ 
input [5:0] in1;
output  out1;
wire  asc001;

assign asc001 = ((11'B10000000000 ^ {{5{in1[5]}}, in1})>(11'B10000000000 ^ 11'B00000000000));

assign out1 = asc001;
endmodule

/* CADENCE  ubPwTQw= : u9/ySxbfrwZIxEzHVQQV8Q== ** DO NOT EDIT THIS LINE ******/


