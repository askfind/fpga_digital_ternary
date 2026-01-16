task: compile simulation view_wave

compile:
	iverilog -o extFile ./and_gate.v ./ang_gate_test.v

simulation:
	vvp extFile

view_wave:
	gtkwave extFile.vcd
