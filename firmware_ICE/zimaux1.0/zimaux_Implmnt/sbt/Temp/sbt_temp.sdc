####---- CreateClock list ----2
create_clock  -period 1000.00 -waveform {0.00 500.00} -name {zimaux|clk_32MHz} [get_nets {clk_32MHz}] 
create_clock  -period 1000.00 -waveform {0.00 500.00} -name {zimaux|clk_16MHz} [get_nets {clk_16MHz}] 

####---- SetFalsePath list ----2
set_false_path  -from [get_clocks {zimaux|clk_16MHz}]  -to [get_clocks {zimaux|clk_32MHz}]
set_false_path  -from [get_clocks {zimaux|clk_32MHz}]  -to [get_clocks {zimaux|clk_16MHz}]

