#include "cassert"
#include "stdint.h"
#include "stdio.h"
#include "stdlib.h"
#include "string"
#include "string.h"

union word {
	int sint;
	unsigned int uint;
	unsigned char uc[4];
};

unsigned int input_rgb_raw_data_offset;
const unsigned int output_rgb_raw_data_offset = 54;
int width;
int height;
unsigned int width_bytes;
unsigned char bits_per_pixel;
unsigned short bytes_per_pixel;
unsigned char* source_bitmap;
unsigned char* target_bitmap;
const int WHITE = 255;
const int BLACK = 0;
const int THRESHOLD = 90;
int carrier[8000];

// Sobel Filter ACC
static char* const SOBELFILTER_START_ADDR = reinterpret_cast<char* const>(0x73000000);
static char* const SOBELFILTER_READ_ADDR = reinterpret_cast<char* const>(0x73000004);

// DMA
static volatile uint32_t* const DMA_SRC_ADDR = (uint32_t* const)0x70000000;
static volatile uint32_t* const DMA_DST_ADDR = (uint32_t* const)0x70000004;
static volatile uint32_t* const DMA_LEN_ADDR = (uint32_t* const)0x70000008;
static volatile uint32_t* const DMA_OP_ADDR = (uint32_t* const)0x7000000C;
static volatile uint32_t* const DMA_STAT_ADDR = (uint32_t* const)0x70000010;
static const uint32_t DMA_OP_MEMCPY = 1;

bool _is_using_dma = true;
int read_bmp(std::string infile_name) {
	FILE* fp_s = NULL;  // source file handler
	fp_s = fopen(infile_name.c_str(), "rb");
	if (fp_s == NULL) {
		printf("fopen %s error\n", infile_name.c_str());
		return -1;
	}

	source_bitmap = (int*)malloc(sizeof(int) * 8000);
	if (source_bitmap == NULL) {
		printf("malloc images_s error\n");
		return -1;
	}

	target_bitmap = (int*)malloc(sizeof(int) * 8000);
	if (target_bitmap == NULL) {
		printf("malloc target_bitmap error\n");
		return -1;
	}

	for (int i = 0; i < 8000; i++) {
		fscanf(fp_s, "%d", &source_bitmap[i]);
		carrier[i] = source_bitmap[i];
	}
	fclose(fp_s);

	unsigned int file_size = 8000;  // file size

	return 0;
}

int write_bmp(std::string outfile_name) {
	FILE* fp_t = NULL;  // target file handler

	fp_t = fopen("out.txt", "w");
	if (fp_t == NULL) {
		printf("fopen %s error\n", outfile_name.c_str());
		return -1;
	}

	// write result
	for (int ll = 0; ll < 8000; ++ll) {
		fprintf(fp_t, "%d\n", target_bitmap[ll]);
	}

	fclose(fp_t);
	return 0;
}

void write_data_to_ACC(int* ADDR, unsigned int* buffer, int len) {
	if (_is_using_dma) {
		// Using DMA
		*DMA_SRC_ADDR = (uint32_t)(buffer);
		*DMA_DST_ADDR = (uint32_t)(ADDR);
		*DMA_LEN_ADDR = len;
		*DMA_OP_ADDR = DMA_OP_MEMCPY;
	} else {
		// Directly Send
		memcpy(ADDR, buffer, sizeof(unsigned int) * len);
	}
}
void read_data_from_ACC(int* ADDR, unsigned int* buffer, int len) {
	if (_is_using_dma) {
		// Using DMA
		*DMA_SRC_ADDR = (uint32_t)(ADDR);
		*DMA_DST_ADDR = (uint32_t)(buffer);
		*DMA_LEN_ADDR = len;
		*DMA_OP_ADDR = DMA_OP_MEMCPY;
	} else {
		// Directly Read
		memcpy(buffer, ADDR, sizeof(int) * len);
	}
}

int main(int argc, char* argv[]) {
	read_bmp("lena_std_short.bmp");
	printf("======================================\n");
	printf("\t  Reading from array\n");
	printf("======================================\n");
	printf(" input_rgb_raw_data_offset\t= %d\n", input_rgb_raw_data_offset);
	printf(" width\t\t\t\t= %d\n", width);
	printf(" height\t\t\t\t= %d\n", height);
	printf(" bytes_per_pixel\t\t= %d\n", bytes_per_pixel);
	printf("======================================\n");

	int buffer = 0;
	word data;
	int total;
	printf("Start processing...(%d, %d)\n", width, height);

	for (int y = 0; y != 8000; y++) {
		buffer[0] = carrier[y];

		write_data_to_ACC(SOBELFILTER_START_ADDR, buffer, 1);

		read_data_from_ACC(SOBELFILTER_READ_ADDR, buffer, 1);

		memcpy(data.uc, buffer, 1);

		*(target_bitmap + 32 * y) = data.uc[0];
	}

	write_bmp("lena_std_out.bmp");
}
