create_clock -period 1000.00 -name {vdc_gen_clk|ICLK} -waveform [list 0.00 500.00] [get_nets ICLK]
