// Generated by stratus_hls 21.20-p100  (96289.240513)
// Wed May 31 05:42:19 2023
// from ../SobelFilter.cpp
#ifndef CYNTH_PART_SobelFilter_SobelFilter_rtl_h
#define CYNTH_PART_SobelFilter_SobelFilter_rtl_h

#include "systemc.h"
#include "stratus_hls.h"
/* Include declarations of instantiated parts. */
#include "SobelFilter_RAM_31X32_3.h"
#include "SobelFilter_RAM_28X32_1.h"
#include "SobelFilter_ROM_31X32_filter_coeffs_H.h"
#include "SobelFilter_ROM_28X32_filter_coeffs.h"


/* Declaration of the synthesized module. */
struct SobelFilter : public sc_module {
  sc_in<bool > i_clk;
  sc_in<bool > i_rst;
  sc_out<bool > i_rgb_busy;
  sc_in<bool > i_rgb_vld;
  sc_in<sc_uint<32> > i_rgb_data;
  sc_in<bool > o_avg_busy;
  sc_out<bool > o_avg_vld;
  sc_out<sc_uint<32> > o_avg_data;
  SobelFilter( sc_module_name name );
  SC_HAS_PROCESS(SobelFilter);
  sc_signal<bool > o_avg_m_req_m_prev_trig_req;
  sc_signal<sc_uint<1> > SobelFilter_Xor_1Ux1U_1U_1_1_out1;
  sc_signal<bool > o_avg_m_unacked_req;
  sc_signal<sc_uint<1> > SobelFilter_Or_1Ux1U_1U_4_2_out1;
  sc_signal<sc_uint<1> > SobelFilter_N_Muxb_1_2_8_4_4_out1;
  sc_signal<bool > i_rgb_m_unvalidated_req;
  sc_signal<sc_uint<1> > 
  SobelFilter_gen_busy_r_4_20_i_rgb_gen_busy_i_rgb_m_data_is_invalid_next;
  sc_signal<sc_uint<1> > SobelFilter_gen_busy_r_4_20_gdiv;
  sc_signal<sc_uint<1> > SobelFilter_gen_busy_r_4_20_gnew_req;
  sc_signal<sc_uint<4> > global_state_next;
  sc_signal<sc_uint<31> > SobelFilter_Add_32Ux32U_32U_4_16_in2_slice;
  sc_signal<sc_uint<1> > gs_ctrl_do_filter_h1000;
  sc_signal<sc_uint<1> > gs_ctrl_do_filter_h200;
  sc_signal<sc_int<32> > SobelFilter_Add2Mul2s32s32s32_4_11_in1;
  sc_signal<sc_int<32> > SobelFilter_Add2Mul2s32s32s32_4_11_in2;
  sc_signal<sc_uint<1> > gs_ctrl_do_filter_h400;
  sc_signal<sc_uint<1> > gs_ctrl_do_filter_h10;
  sc_signal<sc_uint<5> > SobelFilter_Sub_5Ux1U_6S_4_8_in2;
  sc_signal<sc_uint<2> > gs_ctrl_do_filter_h5b0;
  sc_signal<sc_uint<3> > gs_ctrl_do_filter_h506;
  sc_signal<sc_uint<2> > gs_ctrl_do_filter_hf86;
  sc_signal<sc_uint<2> > gs_ctrl_do_filter_h500;
  sc_signal<sc_uint<3> > gs_ctrl_do_filter_hc84;
  sc_signal<sc_uint<2> > gs_ctrl_do_filter_h4b;
  sc_signal<sc_uint<3> > gs_ctrl_do_filter_h227f;
  sc_signal<sc_uint<2> > gs_ctrl_do_filter_h48;
  sc_signal<sc_uint<2> > gs_ctrl_do_filter_h2266;
  sc_signal<sc_uint<5> > s_reg_5_slice;
  sc_signal<sc_uint<1> > SobelFilter_Gti0s6_4_14_out1;
  sc_signal<sc_uint<32> > s_reg_13;
  sc_signal<sc_int<6> > SobelFilter_Sub_5Ux1U_6S_4_8_out1;
  sc_signal<sc_uint<6> > SobelFilter_Add2i1u5_4_6_out1;
  sc_signal<sc_uint<6> > s_reg_11;
  sc_signal<sc_uint<3> > SobelFilter_gen_busy_r_4_20_out1;
  sc_signal<sc_uint<1> > SobelFilter_And_1Ux1U_1U_4_18_out1;
  sc_signal<sc_uint<1> > SobelFilter_Not_1U_1U_1_3_out1;
  sc_signal<bool > o_avg_m_req_m_trig_req;
  sc_signal<bool > i_rgb_m_busy_req_0;
  sc_signal<sc_uint<32> > SobelFilter_Add_32Ux32U_32U_4_16_out1;
  sc_signal<sc_uint<1> > s_reg_17;
  sc_signal<sc_int<32> > SobelFilter_Add2Mul2s32s32s32_4_11_out1;
  sc_signal<sc_uint<1> > SobelFilter_Gti0s6_4_10_out1;
  sc_signal<sc_uint<6> > SobelFilter_Add2i1u5_4_7_out1;
  sc_signal<sc_uint<4> > global_state;
  sc_signal<sc_uint<1> > stall0;
  sc_signal<sc_uint<1> > filter_coeffs_CE;
  sc_signal<sc_uint<5> > filter_coeffs_in1;
  sc_signal<sc_uint<32> > filter_coeffs_out1;
  sc_signal<sc_uint<1> > filter_coeffs_H_CE;
  sc_signal<sc_uint<5> > filter_coeffs_H_in1;
  sc_signal<sc_uint<32> > filter_coeffs_H_out1;
  sc_signal<sc_uint<32> > shift_reg_DIN;
  sc_signal<sc_uint<1> > shift_reg_CE;
  sc_signal<sc_uint<1> > shift_reg_RW;
  sc_signal<sc_uint<5> > shift_reg_in1;
  sc_signal<sc_uint<32> > shift_reg_out1;
  sc_signal<sc_uint<32> > shift_reg_H_DIN;
  sc_signal<sc_uint<1> > shift_reg_H_CE;
  sc_signal<sc_uint<1> > shift_reg_H_RW;
  sc_signal<sc_uint<5> > shift_reg_H_in1;
  sc_signal<sc_uint<32> > shift_reg_H_out1;
  SobelFilter_RAM_31X32_3 *shift_reg_H;
  SobelFilter_RAM_28X32_1 *shift_reg;
  SobelFilter_ROM_31X32_filter_coeffs_H *filter_coeffs_H;
  SobelFilter_ROM_28X32_filter_coeffs *filter_coeffs;
  void drive_o_avg_data();
  void drive_i_rgb_m_busy_req_0();
  void drive_o_avg_m_req_m_trig_req();
  void drive_stall0();
  void drive_s_reg_11();
  void drive_s_reg_13();
  void drive_s_reg_17();
  void drive_s_reg_5_slice();
  void SobelFilter_Add2i1u5_4_6();
  void drive_shift_reg_in1();
  void drive_shift_reg_DIN();
  void drive_shift_reg_CE();
  void drive_shift_reg_RW();
  void SobelFilter_Add2i1u5_4_7();
  void drive_shift_reg_H_in1();
  void drive_shift_reg_H_DIN();
  void drive_shift_reg_H_CE();
  void drive_shift_reg_H_RW();
  void drive_SobelFilter_Sub_5Ux1U_6S_4_8_in2();
  void SobelFilter_Sub_5Ux1U_6S_4_8();
  void drive_filter_coeffs_in1();
  void drive_filter_coeffs_CE();
  void SobelFilter_Gti0s6_4_10();
  void drive_SobelFilter_Add2Mul2s32s32s32_4_11_in2();
  void drive_SobelFilter_Add2Mul2s32s32s32_4_11_in1();
  void SobelFilter_Add2Mul2s32s32s32_4_11();
  void SobelFilter_Gti0s6_4_14();
  void drive_filter_coeffs_H_in1();
  void drive_filter_coeffs_H_CE();
  void drive_SobelFilter_Add_32Ux32U_32U_4_16_in2_slice();
  void SobelFilter_Add_32Ux32U_32U_4_16();
  void drive_global_state();
  void drive_global_state_next();
  void drive_gs_ctrl_do_filter_h2266();
  void drive_gs_ctrl_do_filter_h48();
  void drive_gs_ctrl_do_filter_h227f();
  void drive_gs_ctrl_do_filter_h4b();
  void drive_gs_ctrl_do_filter_hc84();
  void drive_gs_ctrl_do_filter_h500();
  void drive_gs_ctrl_do_filter_hf86();
  void drive_gs_ctrl_do_filter_h506();
  void drive_gs_ctrl_do_filter_h5b0();
  void drive_gs_ctrl_do_filter_h10();
  void drive_gs_ctrl_do_filter_h400();
  void drive_gs_ctrl_do_filter_h200();
  void drive_gs_ctrl_do_filter_h1000();
  void drive_i_rgb_busy();
  void SobelFilter_gen_busy_r_4_20_p7();
  void SobelFilter_gen_busy_r_4_20_p6();
  void SobelFilter_gen_busy_r_4_20_p5();
  void SobelFilter_gen_busy_r_4_20_p4();
  void drive_i_rgb_m_unvalidated_req();
  void SobelFilter_N_Muxb_1_2_8_4_4();
  void drive_o_avg_vld();
  void SobelFilter_Or_1Ux1U_1U_4_2();
  void drive_o_avg_m_unacked_req();
  void SobelFilter_And_1Ux1U_1U_4_18();
  void SobelFilter_Xor_1Ux1U_1U_1_1();
  void drive_o_avg_m_req_m_prev_trig_req();
  void SobelFilter_Not_1U_1U_1_3();
};

#endif
