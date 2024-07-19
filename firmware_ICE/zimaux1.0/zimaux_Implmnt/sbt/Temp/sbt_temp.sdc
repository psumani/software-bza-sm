####---- CreateClock list ----3
create_clock  -period 1000.00 -waveform {0.00 500.00} -name {zimaux|clk_16MHz} [get_nets {clk_16MHz}] 
create_clock  -period 1000.00 -waveform {0.00 500.00} -name {zimaux|clk_32MHz} [get_nets {clk_32MHz}] 
create_clock  -period 1000.00 -waveform {0.00 500.00} -name {zimaux|\comm_spi/iclk} [get_nets {comm_spi.iclk}] 

####---- SetFalsePath list ----6
set_false_path  -from [get_clocks {zimaux|\comm_spi/iclk}]  -to [get_clocks {zimaux|clk_32MHz}]
set_false_path  -from [get_clocks {zimaux|clk_16MHz}]  -to [get_clocks {zimaux|clk_32MHz}]
set_false_path  -from [get_clocks {zimaux|clk_32MHz}]  -to [get_clocks {zimaux|clk_16MHz}]
set_false_path  -from [get_clocks {zimaux|\comm_spi/iclk}]  -to [get_clocks {zimaux|clk_16MHz}]
set_false_path  -from [get_clocks {zimaux|clk_16MHz}]  -to [get_clocks {zimaux|\comm_spi/iclk}]
set_false_path  -from [get_clocks {zimaux|clk_32MHz}]  -to [get_clocks {zimaux|\comm_spi/iclk}]

