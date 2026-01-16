task: compile simulation view_wave

verilator:
	verilator -Wall -Wno-unused -cc ./add_full_te.v
	verilator -Wall -Wno-unused -cc ./add_full_te_testbench.v

compile:
	iverilog -o extfile  ./add_full_te.v ./add_full_te_testbench.v

simulation:
	vvp extfile

view_wave:
	gtkwave extfile.vcd
