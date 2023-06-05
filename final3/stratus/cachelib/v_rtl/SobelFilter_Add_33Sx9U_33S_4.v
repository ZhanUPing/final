`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 05:59:53 CST (+0800), Monday 15 May 2023
    Configured on: ws30
    Configured by: m110061606 (m110061606)
    
    Created by: Stratus DpOpt 21.05.01 
*******************************************************************************/

module SobelFilter_Add_33Sx9U_33S_4 (
	in2,
	in1,
	out1
	); /* architecture "behavioural" */ 
input [32:0] in2;
input [8:0] in1;
output [32:0] out1;
wire [32:0] asc001;

assign asc001 = 
	+(in2)
	+(in1);

assign out1 = asc001;
endmodule

/* CADENCE  ubLzTA0= : u9/ySxbfrwZIxEzHVQQV8Q== ** DO NOT EDIT THIS LINE ******/


