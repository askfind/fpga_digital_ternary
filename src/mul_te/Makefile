task: compile simulation view_wave

verilator:
	verilator -Wall -Wno-unused -cc ./mul_te.v
	verilator -Wall -Wno-unused -cc ./mul_te_testbench.v

compile:
	iverilog -o extfile  ./mul_te.v ./mul_te_testbench.v

simulation:
	vvp extfile

view_wave:
	gtkwave extfile.vcd
