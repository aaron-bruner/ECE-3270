transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {N:/GitHub/ECE-3270/Lab 3/lab3.vhd}
vcom -93 -work work {N:/GitHub/ECE-3270/Lab 3/DFlipFlop.vhd}
vcom -93 -work work {N:/GitHub/ECE-3270/Lab 3/ADD.vhd}
vcom -93 -work work {N:/GitHub/ECE-3270/Lab 3/AddSub.vhd}
vcom -93 -work work {N:/GitHub/ECE-3270/Lab 3/MUX.vhd}
vcom -93 -work work {N:/GitHub/ECE-3270/Lab 3/FiniteStateMachine.vhd}

vcom -93 -work work {N:/GitHub/ECE-3270/Lab 3/simulation/modelsim/lab3.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  lab3_vhd_tst

add wave *
view structure
view signals
run -all
