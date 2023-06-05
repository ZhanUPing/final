#include <cmath>
#include <vector>

#ifndef NATIVE_SYSTEMC
#include "stratus_hls.h"
#endif

#include "SobelFilter.h"
#include <algorithm>
#include <iostream>
#define H_coe_num 31
#define L_coe_num 28

using namespace std;
/*11*/
SobelFilter::SobelFilter(sc_module_name n) : sc_module(n)
{
#ifndef NATIVE_SYSTEMC
  // HLS_FLATTEN_ARRAY(data_buffer);
  // HLS_FLATTEN_ARRAY(box);
  // HLS_FLATTEN_ARRAY(center);
  // HLS_FLATTEN_ARRAY(result);
#endif
  SC_THREAD(do_filter);
  sensitive << i_clk.pos();
  dont_initialize();
  reset_signal_is(i_rst, false);
#ifndef NATIVE_SYSTEMC
  i_rgb.clk_rst(i_clk, i_rst);
  o_avg.clk_rst(i_clk, i_rst);
#endif
}
/*111*/

SobelFilter::~SobelFilter() {}

/*222*/
void SobelFilter::do_filter()
{
  {
#ifndef NATIVE_SYSTEMC
    HLS_DEFINE_PROTOCOL("main_reset");
    i_rgb.reset();
    o_avg.reset();
#endif
    wait();
  }
  /*參數區*/
  /*lowpass 參數*/
  int filter_coeffs[L_coe_num] = {
      2, 3, -2, 0, 3, -3, -1, 5, -5, -1,
      10, -13, -1, 71, 71, -1, -13, 10, -1, -5,
      5, -1, -3, 3, 0, -2, 3, 2};
  int shift_reg[L_coe_num];
  int filtered_output = 0;

  /*highpass 參數*/
  int filter_coeffs_H[H_coe_num] = {
      2, -1, -2, -2, -1, 0, 2, 4, 5, 4, 0, -5, -12, -19, -24, 102,
      -24, -19, -12, -5, 0, 4, 5, 4, 2, 0, -1, -2, -2, -1, 2};
  int shift_reg_H[H_coe_num];
  int filtered_output_H = 0;

  /*debug用參數*/
  int cccc = 0;
  int cccc2 = 0;

/*初始化*/
loop_initial1:
  for (int t = 0; t != L_coe_num; t++)
  {
    shift_reg[t] = 0;
  }
loop_initial2:
  for (int p = 0; p != H_coe_num; p++)
  {
    shift_reg_H[p] = 0;
  }
while_1:
  while (true)
  {

    /*lowpass filter*/
    filtered_output = 0;
  loop_lowpass:
    for (int i = L_coe_num - 1; i > 0; --i)
    {
      shift_reg[i] = shift_reg[i - 1];
      filtered_output += shift_reg[i] * filter_coeffs[i];
    }
#ifndef NATIVE_SYSTEMC
    {
      HLS_DEFINE_PROTOCOL("input");
      shift_reg[0] = i_rgb.get();
      wait();
    }
#else
    rgb = i_rgb.read();
#endif
    filtered_output += shift_reg[0] * filter_coeffs[0];

    /*highpass filter*/
    filtered_output_H = 0;
  loop_highpass:
    for (int q = H_coe_num - 1; q > 0; --q)
    {
      shift_reg_H[q] = shift_reg_H[q - 1];
      filtered_output_H += shift_reg_H[q] * filter_coeffs_H[q];
    }
    shift_reg_H[0] = filtered_output;
    filtered_output_H += shift_reg_H[0] * filter_coeffs_H[0];

#ifndef NATIVE_SYSTEMC
    {
      HLS_DEFINE_PROTOCOL("output");
      o_avg.put(filtered_output_H);
    }
#else
    o_avg.write(filtered_output_H);
#endif

    wait();
  }
}
