module input_fm (clock, clear, test_signal_fm, test_signal_fmtri);

  input  	clock;
  input  	clear;
  output [7:0]	test_signal_fm;
  output [7:0]	test_signal_fmtri;
  reg    [7:0]	test_signal_fm;
  reg    [7:0]	test_signal_fmtri;

  reg 	[7:0]  test_signal_fm_int;
  reg 	[7:0]  test_signal_fmtri_int;
  reg 	[9:0]  counter;
  wire	[10:0]  counter_tmp;
  wire	[9:0]  one_increment;

  always @ ( counter )
    if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10001010;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10100111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11010001;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00000010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00110100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01011101;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111000;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & counter[5] & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01110100;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01010111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00101100;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11111010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11001001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10100001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000111;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000000;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10001101;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10101100;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11011000;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00001001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00111010;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01100001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111010;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & 
~(counter[5]) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01110001;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01010010;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00100110;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11110011;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11000011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10011101;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000101;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & 
~(counter[5]) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000001;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10010000;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10110000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11011101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00001111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00111111;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01100101;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & ~(counter[5]) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & counter[5] &
 ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01101111;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01001110;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00100001;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11101110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10111111;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10011010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000001;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10010010;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10110100;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11100010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00010100;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01000011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01101000;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111101;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01101101;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01001010;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00011101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11101011;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10111100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10010111;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10010100;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10110111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11100101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00010111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01000101;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01101001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111101;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & counter[5] & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01101011;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01001000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00011010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11101000;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10111010;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10010110;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10010101;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10111000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11100111;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00011001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01000111;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01101010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111110;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & 
~(counter[5]) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01101010;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01000111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00011001;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11100111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10111001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10010101;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000010;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000011;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10010110;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10111001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11100111;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00011001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01000111;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01101011;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111110;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & ~(counter[5]) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1
) test_signal_fmtri_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & counter[5] &
 counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01101010;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01000111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00011001;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11100111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10111001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10010110;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000010;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10010101;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10111001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11100111;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00011001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01000111;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01101010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111101;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01101011;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01001000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00011010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11101000;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10111010;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10010110;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10010101;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10110111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11100101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00010111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01000101;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01101001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111101;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & counter[5] & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01101100;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01001010;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00011101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11101011;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10111100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10011000;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10010011;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10110101;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11100010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00010011;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01000010;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01100111;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & 
~(counter[5]) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01101110;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01001101;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00100000;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11101111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11000000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10011010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & 
~(counter[5]) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000001;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10010001;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10110001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11011101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00001111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00111110;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01100100;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & ~(counter[5]) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1
) test_signal_fmtri_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & counter[5] &
 ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01110001;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01010001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00100101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11110100;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11000100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10011110;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000110;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000000;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10001110;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10101101;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11011000;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00001001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00111001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01100000;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111001;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01110011;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01010110;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00101011;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11111010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11001010;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10100010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10001000;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000000;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10001011;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10101000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11010001;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00000010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00110010;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01011011;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01110110;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & counter[5] & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1
) test_signal_fmtri_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01110110;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01011011;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00110010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00000010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11010001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10101000;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10001011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000000;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10001000;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10100010;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11001010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11111010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00101011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01010110;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01110011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1
) test_signal_fmtri_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111001;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01100000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00111001;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00001001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11011000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10101101;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10001110;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1
) test_signal_fmtri_int = 8'b10000000;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000110;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10011110;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11000100;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1
) test_signal_fmtri_int = 8'b11110100;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00100101;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1
) test_signal_fmtri_int = 8'b01010001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1
) test_signal_fmtri_int = 8'b01110001;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & ~(counter[5]) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1
) test_signal_fmtri_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & counter[5] &
 counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111011;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01100100;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00111110;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00001111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11011101;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10110001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10010001;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000001;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000100;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10011011;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11000000;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11101111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00100000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01001101;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01101110;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111100;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01100111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01000010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00010011;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11100001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10110100;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10010011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000011;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10011000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10111101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11101011;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00011101;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01001010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01101100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & counter[5] & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111101;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01101001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01000101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00010110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11100100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10110111;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10010100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000011;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10010111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10111010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11101001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00011010;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01001000;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01101011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & 
~(counter[5]) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111101;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01101010;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01000110;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00011000;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11100110;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10111000;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10010101;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & 
~(counter[5]) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000011;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10010110;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10111001;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11100111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00011001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01000111;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01101011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & ~(counter[5]) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fmtri_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & counter[5] &
 ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111101;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01101010;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01000111;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00011001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11100111;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10111001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10010101;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000011;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10010110;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10111001;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11100111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00011001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01001000;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01101011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111101;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01101010;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01000110;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00011000;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11100110;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10111000;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10010101;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000011;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10010110;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10111010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11101001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00011011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01001001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01101100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & counter[5] & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fmtri_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111101;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01101001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01000101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00010110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11100100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10110110;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10010100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000011;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10011000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10111100;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11101011;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00011101;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01001011;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01101101;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & 
~(counter[5]) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fmtri_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111100;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01100111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01000010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00010011;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11100001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10110011;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10010010;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fmtri_int = 8'b10000001;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000100;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10011010;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11000000;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fmtri_int = 8'b11101111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00100001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fmtri_int = 8'b01001110;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fmtri_int = 8'b01101111;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & ~(counter[5]) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fmtri_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & counter[5] &
 counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111011;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01100101;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00111110;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00001110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11011100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10110000;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10010000;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000001;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000101;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10011101;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11000100;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11110100;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00100110;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01010010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01110010;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111010;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01100001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00111001;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00001001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11010111;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10101011;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10001101;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000000;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000111;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10100001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11001010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11111011;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00101101;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01010111;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01110101;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & counter[5] & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fmtri_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01110111;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01011100;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00110011;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00000001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11010000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10100110;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10001010;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000000;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10001010;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10100111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11010001;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00000010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00110100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01011101;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111000;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & 
~(counter[5]) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fmtri_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01110100;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01010111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00101100;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11111010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11001001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10100001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000111;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & 
~(counter[5]) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fmtri_int = 8'b10000000;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10001101;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10101100;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11011000;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fmtri_int = 8'b00001001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00111010;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fmtri_int = 8'b01100001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fmtri_int = 8'b01111010;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & ~(counter[5]) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fmtri_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & counter[5] &
 ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01110001;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01010010;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00100110;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11110011;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11000011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10011101;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000101;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000001;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10010000;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10110000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11011101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00001111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00111111;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01100101;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01101111;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01001110;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00100001;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11101110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10111111;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10011010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000001;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10010010;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10110100;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11100010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00010100;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01000011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01101000;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111101;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & counter[5] & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fmtri_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01101101;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01001010;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00011101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11101011;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10111100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10010111;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10010100;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10110111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11100101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00010111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01000101;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01101001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01111101;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fmtri_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01101011;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01001000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b00011010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11101000;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10111010;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10010110;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10000011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fmtri_int = 8'b10000010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10010101;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b10111000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b11100111;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fmtri_int = 8'b00011001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fmtri_int = 8'b01000111;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fmtri_int = 8'b01101010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fmtri_int = 8'b01111110;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & ~(counter[5]) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) 
== 1'b1) test_signal_fmtri_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & counter[5] &
 counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01101010;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01000111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00011001;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11100111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10111001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010101;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000010;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000011;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010110;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10111001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11100111;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00011001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01000111;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01101011;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111110;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01101010;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01000111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00011001;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11100111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10111001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010110;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000010;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010101;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10111001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11100111;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00011001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01000111;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01101010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111101;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & counter[5] & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01101011;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01001000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00011010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11101000;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10111010;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010110;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010101;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10110111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11100101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00010111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01000101;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01101001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111101;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & 
~(counter[5]) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01101100;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01001010;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00011101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11101011;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10111100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10011000;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & 
~(counter[5]) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010011;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10110101;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11100010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00010011;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01000010;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01100111;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & ~(counter[5]) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & counter[5] &
 ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01101110;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01001101;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00100000;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11101111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11000000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10011010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000001;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010001;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10110001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11011101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00001111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00111110;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01100100;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01110001;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01010001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00100101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11110100;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11000100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10011110;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000110;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000000;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10001110;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10101101;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11011000;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00001001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00111001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01100000;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111001;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & counter[5] & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01110011;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01010110;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00101011;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11111010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11001010;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10100010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10001000;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000000;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10001011;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10101000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11010001;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00000010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00110010;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01011011;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01110110;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & 
~(counter[5]) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01110110;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01011011;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00110010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00000010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11010001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10101000;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10001011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b10000000;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10001000;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10100010;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11001010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b11111010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00101011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b01010110;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b01110011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & ~(counter[5]) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & counter[5] &
 counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111001;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01100000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00111001;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00001001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11011000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10101101;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10001110;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000000;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000110;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10011110;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11000100;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11110100;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00100101;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01010001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01110001;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111011;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01100100;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00111110;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00001111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11011101;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10110001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010001;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000001;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000100;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10011011;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11000000;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11101111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00100000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01001101;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01101110;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & counter[5] & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111100;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01100111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01000010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00010011;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11100001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10110100;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000011;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10011000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10111101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11101011;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00011101;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01001010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01101100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & 
~(counter[5]) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111101;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01101001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01000101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00010110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11100100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10110111;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & 
~(counter[5]) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b10000010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000011;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10111010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b11101001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00011010;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b01001000;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b01101011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & ~(counter[5]) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & counter[5] &
 ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111101;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01101010;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01000110;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00011000;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11100110;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10111000;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010101;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000011;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010110;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10111001;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11100111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00011001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01000111;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01101011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111101;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01101010;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01000111;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00011001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11100111;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10111001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010101;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000011;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010110;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10111001;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11100111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00011001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01001000;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01101011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & counter[5] & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111101;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01101010;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01000110;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00011000;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11100110;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10111000;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010101;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000011;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010110;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10111010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11101001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00011011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01001001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01101100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111101;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01101001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01000101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00010110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11100100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10110110;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b10000010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000011;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10011000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10111100;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b11101011;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00011101;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b01001011;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b01101101;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & ~(counter[5]) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) 
== 1'b1) test_signal_fmtri_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & counter[5] &
 counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111100;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01100111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01000010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00010011;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11100001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10110011;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010010;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000001;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000100;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10011010;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11000000;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11101111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00100001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01001110;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01101111;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111011;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01100101;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00111110;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00001110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11011100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10110000;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010000;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000001;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000101;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10011101;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11000100;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11110100;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00100110;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01010010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01110010;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & counter[5] & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111010;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01100001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00111001;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00001001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11010111;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10101011;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10001101;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000000;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000111;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10100001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11001010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11111011;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00101101;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01010111;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01110101;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & 
~(counter[5]) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01110111;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01011100;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00110011;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00000001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11010000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10100110;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10001010;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & 
~(counter[5]) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b10000000;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10001010;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10100111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11010001;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b00000010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00110100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b01011101;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b01111000;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & ~(counter[5]) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & counter[5] &
 ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01110100;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01010111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00101100;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11111010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11001001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10100001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000111;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000000;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10001101;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10101100;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11011000;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00001001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00111010;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01100001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111010;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01110001;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01010010;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00100110;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11110011;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11000011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10011101;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000101;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000001;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010000;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10110000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11011101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00001111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00111111;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01100101;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & counter[5] & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01101111;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01001110;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00100001;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11101110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10111111;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10011010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000001;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010010;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10110100;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11100010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00010100;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01000011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01101000;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111101;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & 
~(counter[5]) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01101101;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01001010;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00011101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11101011;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10111100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010111;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b10000010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010100;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10110111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11100101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b00010111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01000101;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b01101001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b01111101;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & ~(counter[5]) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) 
== 1'b1) test_signal_fmtri_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & counter[5] &
 counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01101011;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01001000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00011010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11101000;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10111010;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010110;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010101;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10111000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11100111;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00011001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01000111;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01101010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111110;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01101010;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01000111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00011001;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11100111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10111001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010101;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000010;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000011;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010110;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10111001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11100111;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00011001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01000111;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01101011;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111110;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & counter[5] & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01101010;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01000111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00011001;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11100111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10111001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010110;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000010;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010101;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10111001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11100111;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00011001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01000111;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01101010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111101;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & 
~(counter[5]) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01101011;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01001000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00011010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11101000;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10111010;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010110;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & 
~(counter[5]) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b10000010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010101;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10110111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11100101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b00010111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01000101;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b01101001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fmtri_int = 8'b01111101;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & ~(counter[5]) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) 
== 1'b1) test_signal_fmtri_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & counter[5] &
 ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01101100;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01001010;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00011101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11101011;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10111100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10011000;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010011;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10110101;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11100010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00010011;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01000010;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01100111;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01101110;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01001101;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00100000;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11101111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11000000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10011010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000001;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10010001;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10110001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11011101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00001111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00111110;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01100100;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & counter[5] & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) 
== 1'b1) test_signal_fmtri_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01110001;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01010001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00100101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11110100;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11000100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10011110;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000110;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10000000;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10001110;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10101101;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11011000;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00001001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00111001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01100000;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01111001;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) 
== 1'b1) test_signal_fmtri_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01110011;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b01010110;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00101011;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11111010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11001010;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10100010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10001000;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) 
== 1'b1) test_signal_fmtri_int = 8'b10000000;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10001011;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b10101000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b11010001;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) 
== 1'b1) test_signal_fmtri_int = 8'b00000010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fmtri_int = 8'b00110010;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) 
== 1'b1) test_signal_fmtri_int = 8'b01011011;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) 
== 1'b1) test_signal_fmtri_int = 8'b01110110;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & ~(counter[5]) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])
) == 1'b1) test_signal_fmtri_int = 8'b01111111;
    else test_signal_fmtri_int = 8'b00000000;

  always @ ( counter )
    if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10001010;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10001010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10100111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11010001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00000011;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00110100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & counter[5] & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01011101;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111000;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01110100;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01010110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00101011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11111001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11001000;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10100000;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000111;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10001110;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10101101;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11011001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00001011;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00111011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & 
~(counter[5]) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01100011;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111010;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01110000;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01010000;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00100011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11110001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11000001;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & 
~(counter[5]) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10011011;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000100;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10010010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10110011;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11100001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00010011;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01000010;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & ~(counter[5]) & counter[6] & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01101000;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & counter[5] &
 ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111101;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111110;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01101100;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01001010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00011011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11101001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10111010;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10010110;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000011;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000010;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10010110;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10111010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11101001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00011011;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01001001;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01101100;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111110;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111101;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01101000;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01000011;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00010100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11100001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10110100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10010010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000001;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000100;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10011011;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11000001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11110000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00100011;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01010000;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & counter[5] & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01110000;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111011;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01100011;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00111100;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00001100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11011001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10101101;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10001110;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000000;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10100000;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11001000;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11111000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00101010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01010110;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & 
~(counter[5]) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01110100;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01011110;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00110101;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00000100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11010010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10100111;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10001011;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000000;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10001001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10100101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11001111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00000001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00110010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01011100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & ~(counter[5]) & ~(counter[6]) & counter[7] & counter[8] & counter[9]) == 1'b1
) test_signal_fm_int = 8'b01110111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & counter[5] &
 counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01110101;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01011000;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00101101;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11111011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11001010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10100010;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10001000;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000000;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10001101;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10101011;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11010111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00001001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00111001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01100001;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111010;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01110010;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01010010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00100110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11110011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11000011;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10011100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000101;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000001;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10010000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10110001;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11011110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00010001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01000000;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01100110;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & counter[5] & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111100;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01101110;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01001100;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00011110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11101011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10111100;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10011000;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000011;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000010;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10010100;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10111000;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11100110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00011000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01000111;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01101011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & 
~(counter[5]) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111101;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01101001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01000101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00010110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11100100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10110110;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10010011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & 
~(counter[5]) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000100;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10011001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10111110;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11101110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00100000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01001110;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01101111;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & ~(counter[5]) & counter[6] & ~(counter[7]) & counter[8] & counter[9]) == 1'b1
) test_signal_fm_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & counter[5] &
 ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111011;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01100101;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00111110;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00001110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11011100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10101111;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10001111;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000001;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000110;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10011110;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11000101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11110110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00101000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01010100;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01110011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111001;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01011111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00110111;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00000110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11010100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10101001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10001100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000000;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10001000;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10100011;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11001101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11111110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00110000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01011010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01110110;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & counter[5] & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1
) test_signal_fm_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01110110;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01011011;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00110010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00000010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11010001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10101000;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10001011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000000;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10001000;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10100010;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11001010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11111010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00101011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01010101;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01110011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1
) test_signal_fm_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111001;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b01100001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00111010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00001010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11011001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10101110;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10001111;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1
) test_signal_fm_int = 8'b10000001;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000110;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b10011101;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b11000011;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1
) test_signal_fm_int = 8'b11110010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1) test_signal_fm_int = 8'b00100011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1
) test_signal_fm_int = 8'b01001111;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1
) test_signal_fm_int = 8'b01101111;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & ~(counter[5]) & ~(counter[6]) & ~(counter[7]) & counter[8] & counter[9]) == 1'b1
) test_signal_fm_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & counter[5] &
 counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111100;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01100110;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01000001;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00010010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11100001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10110100;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10010011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000011;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10011000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10111100;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11101010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00011011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01001001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01101011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111101;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01101010;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01001000;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00011010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11101001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10111011;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10010111;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000011;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000010;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10010011;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10110101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11100010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00010100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01000010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01100111;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & counter[5] & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111100;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01101111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01001110;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00100010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11110000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11000001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10011100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000101;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000001;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10001111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10101111;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11011010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00001100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00111011;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01100010;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & 
~(counter[5]) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111010;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01110011;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01010100;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00101001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11111000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11001001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10100001;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & 
~(counter[5]) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10001000;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000000;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10001100;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10101001;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11010011;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00000100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00110100;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01011100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & ~(counter[5]) & counter[6] & counter[7] & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fm_int = 8'b01110111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & counter[5] &
 ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01110110;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01011010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00110001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00000001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11010000;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10100111;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10001011;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000000;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10001001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10100011;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11001011;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11111011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00101100;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01010111;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01110100;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01100000;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00111000;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00001001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11010111;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10101100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10001110;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000000;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000110;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10011110;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11000100;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11110011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00100101;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01010000;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & counter[5] & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fm_int = 8'b01110000;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111011;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01100101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00111111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00010001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11011111;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10110011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10010010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000001;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000100;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10011001;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10111101;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11101011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00011101;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01001010;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & 
~(counter[5]) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fm_int = 8'b01101100;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111110;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111101;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01101010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01000110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00011000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11100111;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10111001;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fm_int = 8'b10010110;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000011;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000010;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10010100;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fm_int = 8'b10110110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11100100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fm_int = 8'b00010101;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fm_int = 8'b01000011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & ~(counter[5]) & ~(counter[6]) & counter[7] & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fm_int = 8'b01101000;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & counter[5] &
 counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111100;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01101110;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01001101;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00100000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11101111;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11000000;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10011011;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000101;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10010000;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10110000;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11011100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00001101;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00111100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01100011;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111010;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01110010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01010011;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00101000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11110111;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11000111;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10100000;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000111;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10001100;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10101010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11010100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00000101;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00110101;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & counter[5] & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fm_int = 8'b01011101;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111000;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01110101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01011001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00110000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11111111;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11001111;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10100101;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10001010;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10001010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10100111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11010001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00000011;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00110100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & 
~(counter[5]) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fm_int = 8'b01011101;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111000;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01110100;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01010110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00101011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11111001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11001000;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & 
~(counter[5]) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fm_int = 8'b10100000;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000111;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10001110;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fm_int = 8'b10101101;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11011001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fm_int = 8'b00001011;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fm_int = 8'b00111011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & ~(counter[5]) & counter[6] & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fm_int = 8'b01100011;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & counter[5] &
 ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111010;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01110000;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01010000;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00100011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11110001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11000001;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10011011;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000100;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10010010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10110011;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11100001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00010011;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01000010;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01101000;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111101;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111110;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01101100;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01001010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00011011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11101001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10111010;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10010110;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000011;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000010;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10010110;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10111010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11101001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00011011;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01001001;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & counter[5] & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fm_int = 8'b01101100;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111110;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111101;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01101000;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01000011;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00010100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11100001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10110100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10010010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000001;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000100;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10011011;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11000001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11110000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00100011;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01010000;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fm_int = 8'b01110000;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01111011;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b01100011;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00111100;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b00001100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11011001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10101101;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fm_int = 8'b10001110;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000000;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10000111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b10100000;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fm_int = 8'b11001000;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1) test_signal_fm_int = 8'b11111000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fm_int = 8'b00101010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) == 1'b1
) test_signal_fm_int = 8'b01010110;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & ~(counter[5]) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & counter[9]) 
== 1'b1) test_signal_fm_int = 8'b01110100;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & counter[5] &
 counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01011110;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00110101;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00000100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11010010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10100111;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10001011;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000000;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10001001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10100101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11001111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00000001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00110010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01011100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01110111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01110101;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01011000;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00101101;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11111011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11001010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10100010;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10001000;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000000;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10001101;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10101011;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11010111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00001001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00111001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01100001;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & counter[5] & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111010;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01110010;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01010010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00100110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11110011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11000011;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10011100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000101;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000001;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10010000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10110001;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11011110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00010001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01000000;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01100110;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & 
~(counter[5]) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111100;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01101110;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01001100;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00011110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11101011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10111100;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10011000;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & 
~(counter[5]) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000011;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000010;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10010100;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10111000;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11100110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00011000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01000111;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01101011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & ~(counter[5]) & counter[6] & counter[7] & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & counter[5] &
 ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111101;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01101001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01000101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00010110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11100100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10110110;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10010011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000100;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10011001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10111110;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11101110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00100000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01001110;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01101111;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111011;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01100101;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00111110;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00001110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11011100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10101111;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10001111;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000001;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000110;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10011110;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11000101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11110110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00101000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01010100;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01110011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & counter[5] & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111001;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01011111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00110111;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00000110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11010100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10101001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10001100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000000;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10001000;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10100011;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11001101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11111110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00110000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01011010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01110110;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & 
~(counter[5]) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01110110;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01011011;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00110010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00000010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11010001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10101000;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10001011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b10000000;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10001000;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10100010;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11001010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b11111010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00101011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b01010101;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b01110011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & ~(counter[5]) & ~(counter[6]) & counter[7] & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & counter[5] &
 counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111001;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01100001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00111010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00001010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11011001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10101110;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10001111;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000001;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000110;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10011101;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11000011;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11110010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00100011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01001111;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01101111;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111100;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01100110;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01000001;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00010010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11100001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10110100;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10010011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000011;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10011000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10111100;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11101010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00011011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01001001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01101011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & counter[5] & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111101;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01101010;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01001000;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00011010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11101001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10111011;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10010111;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000011;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000010;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10010011;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10110101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11100010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00010100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01000010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01100111;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & 
~(counter[5]) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b01111100;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01101111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01001110;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00100010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11110000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11000001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10011100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & 
~(counter[5]) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b10000101;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000001;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10001111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10101111;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b11011010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00001100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b00111011;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b01100010;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & ~(counter[5]) & counter[6] & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b01111010;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & counter[5] &
 ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01110011;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01010100;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00101001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11111000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11001001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10100001;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10001000;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000000;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10001100;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10101001;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11010011;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00000100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00110100;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01011100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01110111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01110110;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01011010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00110001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00000001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11010000;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10100111;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10001011;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000000;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10001001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10100011;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11001011;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11111011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00101100;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01010111;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & counter[5] & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b01110100;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01100000;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00111000;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00001001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11010111;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10101100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10001110;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000000;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000110;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10011110;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11000100;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11110011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00100101;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01010000;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b01110000;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111011;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01100101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00111111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00010001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11011111;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10110011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b10010010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000001;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000100;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10011001;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b10111101;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11101011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b00011101;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b01001010;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & ~(counter[5]) & ~(counter[6]) & ~(counter[7]) & counter[8] & ~(counter[9])) 
== 1'b1) test_signal_fm_int = 8'b01101100;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & counter[5] &
 counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111110;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111101;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01101010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01000110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00011000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11100111;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10111001;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10010110;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000011;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000010;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10010100;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10110110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11100100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00010101;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01000011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01101000;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111100;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01101110;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01001101;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00100000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11101111;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11000000;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10011011;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000101;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10010000;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10110000;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11011100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00001101;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00111100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & counter[5] & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b01100011;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111010;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01110010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01010011;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00101000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11110111;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11000111;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10100000;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000111;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10001100;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10101010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11010100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00000101;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00110101;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & 
~(counter[5]) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b01011101;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111000;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01110101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01011001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00110000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11111111;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11001111;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & 
~(counter[5]) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b10100101;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10001010;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10001010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b10100111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11010001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b00000011;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b00110100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & ~(counter[5]) & counter[6] & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b01011101;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & counter[5] &
 ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111000;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01110100;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01010110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00101011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11111001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11001000;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10100000;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000111;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10001110;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10101101;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11011001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00001011;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00111011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01100011;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111010;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01110000;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01010000;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00100011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11110001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11000001;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10011011;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000100;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10010010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10110011;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11100001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00010011;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01000010;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & counter[5] & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b01101000;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111101;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111110;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01101100;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01001010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00011011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11101001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10111010;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10010110;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000011;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000010;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10010110;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10111010;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11101001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00011011;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01001001;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & 
~(counter[5]) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b01101100;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111110;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111101;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01101000;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01000011;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00010100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11100001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10110100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b10010010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000001;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000100;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10011011;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b11000001;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11110000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b00100011;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b01010000;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & ~(counter[5]) & ~(counter[6]) & counter[7] & ~(counter[8]) & ~(counter[9])) 
== 1'b1) test_signal_fm_int = 8'b01110000;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & counter[5] &
 counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111011;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01100011;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00111100;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00001100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11011001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10101101;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10001110;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000000;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10100000;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11001000;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11111000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00101010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01010110;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01110100;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01011110;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00110101;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00000100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11010010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10100111;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10001011;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000000;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10001001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10100101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11001111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00000001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00110010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01011100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & counter[5] & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b01110111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01110101;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01011000;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00101101;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11111011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11001010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10100010;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10001000;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000000;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10001101;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10101011;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11010111;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00001001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00111001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01100001;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & 
~(counter[5]) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b01111010;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01110010;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01010010;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00100110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11110011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11000011;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10011100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & 
~(counter[5]) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b10000101;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000001;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10010000;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10110001;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b11011110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00010001;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b01000000;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1
) test_signal_fm_int = 8'b01100110;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & ~(counter[5]) & counter[6] & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) 
== 1'b1) test_signal_fm_int = 8'b01111100;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & counter[5] &
 ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01101110;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01001100;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00011110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11101011;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10111100;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10011000;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000011;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000010;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10010100;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10111000;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11100110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00011000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01000111;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01101011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111110;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111101;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01101001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01000101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00010110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11100100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10110110;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10010011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000010;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000100;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10011001;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10111110;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11101110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00100000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01001110;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & counter[5]
 & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01101111;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & counter[5] & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) 
== 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111011;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01100101;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00111110;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00001110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11011100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10101111;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10001111;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000001;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10000110;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10011110;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11000101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11110110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00101000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01010100;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01110011;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & counter[4] & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) 
== 1'b1) test_signal_fm_int = 8'b01111111;
    else if ((counter[0] & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01111001;
    else if ((~(counter[0]) & counter[1] & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b01011111;
    else if ((counter[0] & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00110111;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00000110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11010100;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10101001;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10001100;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & counter[3] & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) 
== 1'b1) test_signal_fm_int = 8'b10000000;
    else if ((counter[0] & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10001000;
    else if ((~(counter[0]) & counter[1] & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b10100011;
    else if ((counter[0] & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b11001101;
    else if ((~(counter[0]) & ~(counter[1]) & counter[2] & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) 
== 1'b1) test_signal_fm_int = 8'b11111110;
    else if ((counter[0] & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & ~(counter[5]
) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) == 1'b1) test_signal_fm_int = 8'b00110000;
    else if ((~(counter[0]) & counter[1] & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) 
== 1'b1) test_signal_fm_int = 8'b01011010;
    else if ((counter[0] & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4]) & 
~(counter[5]) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])) 
== 1'b1) test_signal_fm_int = 8'b01110110;
    else if ((~(counter[0]) & ~(counter[1]) & ~(counter[2]) & ~(counter[3]) & ~(counter[4])
 & ~(counter[5]) & ~(counter[6]) & ~(counter[7]) & ~(counter[8]) & ~(counter[9])
) == 1'b1) test_signal_fm_int = 8'b01111111;
    else test_signal_fm_int = 8'b00000000;

  always @ ( posedge clock )
    begin
      if (clear == 1'b0) test_signal_fmtri = test_signal_fmtri_int;
    end

  always @ ( posedge clear or posedge clock )
    if (clear == 1'b1) test_signal_fm = 8'b00000000;
    else
    begin
      test_signal_fm = test_signal_fm_int;
    end

  always @ ( posedge clear or posedge clock )
    if (clear == 1'b1) counter = 10'b0000000000;
    else
    begin
      counter = counter_tmp[9:0];
    end
  assign	one_increment[9] = 1'b0;
  assign	one_increment[8] = 1'b0;
  assign	one_increment[7] = 1'b0;
  assign	one_increment[6] = 1'b0;
  assign	one_increment[5] = 1'b0;
  assign	one_increment[4] = 1'b0;
  assign	one_increment[3] = 1'b0;
  assign	one_increment[2] = 1'b0;
  assign	one_increment[1] = 1'b0;
  assign	one_increment[0] = 1'b1;
  adder_10bit counter_one (
   .addend_10bit(counter),
   .augend_10bit(one_increment),
   .adder10_output(counter_tmp)
  );

endmodule
