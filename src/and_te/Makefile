task: compile simulation view_wave

verilator:
	verilator -Wall -Wno-unused -cc ./and_te.v
	verilator -Wall -Wno-unused -cc ./and_te_testbench.v

compile:
	iverilog -o extfile  ./and_te.v ./and_te_testbench.v

simulation:
	vvp extfile

view_wave:
	gtkwave extfile.vcd
