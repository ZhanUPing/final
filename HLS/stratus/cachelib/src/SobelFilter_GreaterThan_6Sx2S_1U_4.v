`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 00:18:51 CST (+0800), Wednesday 31 May 2023
    Configured on: ws33
    Configured by: m110061606 (m110061606)
    
    Created by: Stratus DpOpt 21.05.01 
*******************************************************************************/

module SobelFilter_GreaterThan_6Sx2S_1U_4 (
	in2,
	in1,
	out1
	); /* architecture "behavioural" */ 
input [5:0] in2;
input [1:0] in1;
output  out1;
wire  asc001;

assign asc001 = ((11'B10000000000 ^ {{5{in2[5]}}, in2})>(11'B10000000000 ^ {{9{in1[1]}}, in1}));

assign out1 = asc001;
endmodule

/* CADENCE  ubb0TA8= : u9/ySxbfrwZIxEzHVQQV8Q== ** DO NOT EDIT THIS LINE ******/



