module bench (clock, reset);

  input  	clock;
  input  	reset;

  wire	[7:0]  test_signal_fm;
  wire	[7:0]  test_signal_fmtri;
  wire	[11:0]  output_fm;

  fm myfm (
   .clk(clock),
   .reset(reset),
   .fmin(test_signal_fm),
   .dmout(output_fm)
  );
  input_fm myinput (
   .clock(clock),
   .clear(reset),
   .test_signal_fm(test_signal_fm),
   .test_signal_fmtri(test_signal_fmtri)
  );

endmodule
