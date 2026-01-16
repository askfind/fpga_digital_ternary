task: compile simulation view_wave

verilator:
	verilator -Wall -Wno-unused -cc ./neg_te.v
	verilator -Wall -Wno-unused -cc ./neg_te_testbench.v

compile:
	iverilog -o extfile ./neg_te.v ./neg_te_testbench.v

simulation:
	vvp extfile

view_wave:
	gtkwave extfile.vcd
