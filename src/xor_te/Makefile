task: compile simulation view_wave

verilator:
	verilator -Wall -Wno-unused -cc ./xor_te.v
	verilator -Wall -Wno-unused -cc ./xor_te_testbench.v

compile:
	iverilog -o extfile  ./xor_te.v ./xor_te_testbench.v

simulation:
	vvp extfile

view_wave:
	gtkwave extfile.vcd
