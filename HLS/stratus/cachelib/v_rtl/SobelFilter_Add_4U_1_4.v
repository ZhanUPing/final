`timescale 1ps / 1ps
/*****************************************************************************
    Verilog RTL Description
    
    Configured at: 00:19:17 CST (+0800), Wednesday 31 May 2023
    Configured on: ws33
    Configured by: m110061606 (m110061606)
    
    Created by: Stratus DpOpt 21.05.01 
*******************************************************************************/

module SobelFilter_Add_4U_1_4 (
	in1,
	out1
	); /* architecture "behavioural" */ 
input [3:0] in1;
output [3:0] out1;
wire [3:0] asc001;

assign asc001 = 
	+(in1)
	+(4'B0001);

assign out1 = asc001;
endmodule

/* CADENCE  urjwSwk= : u9/ySxbfrwZIxEzHVQQV8Q== ** DO NOT EDIT THIS LINE ******/


