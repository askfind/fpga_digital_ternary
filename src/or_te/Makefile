task: compile simulation view_wave

verilator:
	verilator -Wall -Wno-unused -cc ./or_te.v
	verilator -Wall -Wno-unused -cc ./or_te_testbench.v

compile:
	iverilog -o extfile  ./or_te.v ./or_te_testbench.v

simulation:
	vvp extfile

view_wave:
	gtkwave extfile.vcd
