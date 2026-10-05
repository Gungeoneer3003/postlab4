## Decoder input: SW0-SW1

set_property PACKAGE_PIN V17 [get_ports {decoder_in[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {decoder_in[0]}]

set_property PACKAGE_PIN V16 [get_ports {decoder_in[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {decoder_in[1]}]


## Adder input: SW2-SW5

set_property PACKAGE_PIN W16 [get_ports {adder_in[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {adder_in[0]}]

set_property PACKAGE_PIN W17 [get_ports {adder_in[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {adder_in[1]}]

set_property PACKAGE_PIN W15 [get_ports {adder_in[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {adder_in[2]}]

set_property PACKAGE_PIN V15 [get_ports {adder_in[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {adder_in[3]}]


## Sum output: LED0-LED3

set_property PACKAGE_PIN U16 [get_ports {sum[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sum[0]}]

set_property PACKAGE_PIN E19 [get_ports {sum[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sum[1]}]

set_property PACKAGE_PIN U19 [get_ports {sum[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sum[2]}]

set_property PACKAGE_PIN V19 [get_ports {sum[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {sum[3]}]


## Carry output: LED4

set_property PACKAGE_PIN W18 [get_ports {carry}]
set_property IOSTANDARD LVCMOS33 [get_ports {carry}]


## Seven-segment display
## seg[0] through seg[6] = a through g

set_property PACKAGE_PIN W7 [get_ports {seg[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[0]}]

set_property PACKAGE_PIN W6 [get_ports {seg[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[1]}]

set_property PACKAGE_PIN U8 [get_ports {seg[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[2]}]

set_property PACKAGE_PIN V8 [get_ports {seg[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[3]}]

set_property PACKAGE_PIN U5 [get_ports {seg[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[4]}]

set_property PACKAGE_PIN V5 [get_ports {seg[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[5]}]

set_property PACKAGE_PIN U7 [get_ports {seg[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {seg[6]}]


## Display digit enables

set_property PACKAGE_PIN U2 [get_ports {an[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}]

set_property PACKAGE_PIN U4 [get_ports {an[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}]

set_property PACKAGE_PIN V4 [get_ports {an[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}]

set_property PACKAGE_PIN W4 [get_ports {an[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}]
