// Generated by stratus_hls 21.20-p100  (96289.240513)
// Wed May 31 05:42:19 2023
// from ../SobelFilter.cpp

`timescale 1ps / 1ps


module SobelFilter_ROM_31X32_filter_coeffs_H( CE, in1, out1, clk );

    input CE;
    input [4:0] in1;
    input clk;
    output [31:0] out1;
    reg [31:0] out1;
    reg[31:0] filter_coeffs_H[30:0];

    initial begin
      $readmemh("bdw_work/modules/SobelFilter/DPA/SobelFilter_ROM_31X32_filter_coeffs_H_2.memh", filter_coeffs_H);
    end

    
always @(posedge clk)
      begin : SobelFilter_ROM_31X32_filter_coeffs_H_filter_coeffs_H_thread_1
        if (in1 < 5'd31) 
          begin
            out1 <= filter_coeffs_H[in1];
          end 
      end

endmodule

