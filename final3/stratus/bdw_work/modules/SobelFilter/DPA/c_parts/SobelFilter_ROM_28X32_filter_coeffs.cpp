// Generated by stratus_hls 21.20-p100  (96289.240513)
// Wed May 31 05:42:19 2023
// from ../SobelFilter.cpp
#include "SobelFilter_ROM_28X32_filter_coeffs.h"

struct SobelFilter_ROM_28X32_filter_coeffs;
SobelFilter_ROM_28X32_filter_coeffs::SobelFilter_ROM_28X32_filter_coeffs(sc_module_name name) : sc_module(name) 
    ,CE("CE")
    ,in1("in1")
    ,out1("out1")
    ,clk("clk")
    ,filter_coeffs()
{
  HLS_INITIALIZE_ROM( sc_uint<32> , filter_coeffs, HLS::HLS_HEX, "bdw_work/modules/SobelFilter/DPA/SobelFilter_ROM_28X32_filter_coeffs_3.memh", "initialize SobelFilter_ROM_28X32_filter_coeffs" ); 
  SC_METHOD(SobelFilter_ROM_28X32_filter_coeffs_filter_coeffs_thread_1);
  sensitive << clk.pos();
  dont_initialize();

}
void SobelFilter_ROM_28X32_filter_coeffs::SobelFilter_ROM_28X32_filter_coeffs_filter_coeffs_thread_1(){
  if ( (/*imp*/sc_uint<1>)(in1.read() < ((/*imp*/sc_uint<5> )(28ULL))) ) {
    out1 = (sc_uint<32> ) ((filter_coeffs)[in1.read()]);
  } 
}
