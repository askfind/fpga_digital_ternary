task: compile simulation view_wave

verilator:
	verilator -Wall -Wno-unused -cc ./opers_trit.v
	verilator -Wall -Wno-unused -cc ./opers_trit_testbench.v

compile:
	iverilog -o extfile ./opers_trit.v ./opers_trit_testbench.v

simulation:
	vvp extfile

view_wave:
	gtkwave extfile.vcd
