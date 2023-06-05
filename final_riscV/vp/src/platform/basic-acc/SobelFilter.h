#ifndef SOBEL_FILTER_H_
#define SOBEL_FILTER_H_
#include <cmath>
#include <iomanip>
#include <systemc>
using namespace sc_core;

#include <tlm_utils/simple_target_socket.h>

#include <tlm>

#include "filter_def.h"
#define L_coe_num 28
#define _coe_num 31

struct SobelFilter : public sc_module {
	tlm_utils::simple_target_socket<SobelFilter> tsock;

	sc_fifo<unsigned int> i_rgb;

	sc_fifo<unsigned int> o_avg;

	SC_HAS_PROCESS(SobelFilter);

	SobelFilter(sc_module_name n) : sc_module(n), tsock("t_skt"), base_offset(0) {
		tsock.register_b_transport(this, &SobelFilter::blocking_transport);
		SC_THREAD(do_filter);
	}

	~SobelFilter() {}

	int filter_coeffs[L_coe_num] = {2,  3,  -2,  0,  3,  -3, -1, 5,  -5, -1, 10, -13, -1, 71,
	                                71, -1, -13, 10, -1, -5, 5,  -1, -3, 3,  0,  -2,  3,  2};
	int shift_reg[L_coe_num];
	int filtered_output = 0;

	/*highpass 參數*/
	int filter_coeffs_H[H_coe_num] = {2,   -1,  -2,  -2, -1, 0, 2, 4, 5, 4, 0,  -5, -12, -19, -24, 102,
	                                  -24, -19, -12, -5, 0,  4, 5, 4, 2, 0, -1, -2, -2,  -1,  2};
	int shift_reg_H[H_coe_num];
	int filtered_output_H = 0;

	/*debug用參數*/
	int cccc = 0;
	int cccc2 = 0;

	/*初始化*/
	loop_initial1 : for (int t = 0; t != L_coe_num; t++) {
		shift_reg[t] = 0;
	}
	loop_initial2 : for (int p = 0; p != H_coe_num; p++) {
		shift_reg_H[p] = 0;
	}
	int mask[9] = {1, 1, 1, 1, 2, 1, 1, 1, 1};

	void do_filter() {
		{ wait(CLOCK_PERIOD, SC_NS); }
		while (true) {
			/*lowpass filter*/
			filtered_output = 0;
			for (int i = L_coe_num - 1; i > 0; --i) {
				shift_reg[i] = shift_reg[i - 1];
				filtered_output += shift_reg[i] * filter_coeffs[i];
			}

			rgb = i_rgb.read();
			filtered_output += shift_reg[0] * filter_coeffs[0];

			/*highpass filter*/
			filtered_output_H = 0;

			for (int q = H_coe_num - 1; q > 0; --q) {
				shift_reg_H[q] = shift_reg_H[q - 1];
				filtered_output_H += shift_reg_H[q] * filter_coeffs_H[q];
			}
			shift_reg_H[0] = filtered_output;
			filtered_output_H += shift_reg_H[0] * filter_coeffs_H[0];
			o_avg.write(filtered_output_H);

			// printf("filter send %d\n", cccc2);
			wait();
		}
	}

	void blocking_transport(tlm::tlm_generic_payload &payload, sc_core::sc_time &delay) {
		wait(delay);
		// unsigned char *mask_ptr = payload.get_byte_enable_ptr();
		// auto len = payload.get_data_length();
		tlm::tlm_command cmd = payload.get_command();
		sc_dt::uint64 addr = payload.get_address();
		unsigned int *data_ptr = payload.get_data_ptr();

		addr -= base_offset;

		word buffer;

		switch (cmd) {
			case tlm::TLM_READ_COMMAND:
				// cout << "READ" << endl;
				switch (addr) {
					case SOBEL_FILTER_RESULT_ADDR:
						buffer.uint = o_result.read();
						break;
					default:
						std::cerr << "READ Error! SobelFilter::blocking_transport: address 0x" << std::setfill('0')
						          << std::setw(8) << std::hex << addr << std::dec << " is not valid" << std::endl;
				}
				data_ptr[0] = buffer.uc[0];
				break;
			case tlm::TLM_WRITE_COMMAND:
				// cout << "WRITE" << endl;
				switch (addr) {
					case SOBEL_FILTER_R_ADDR:
						i_rgb.write(data_ptr);

						break;
					default:
						std::cerr << "WRITE Error! SobelFilter::blocking_transport: address 0x" << std::setfill('0')
						          << std::setw(8) << std::hex << addr << std::dec << " is not valid" << std::endl;
				}
				break;
			case tlm::TLM_IGNORE_COMMAND:
				payload.set_response_status(tlm::TLM_GENERIC_ERROR_RESPONSE);
				return;
			default:
				payload.set_response_status(tlm::TLM_GENERIC_ERROR_RESPONSE);
				return;
		}
		payload.set_response_status(tlm::TLM_OK_RESPONSE);  // Always OK
	}
};
#endif
