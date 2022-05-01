transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {N:/GitHub/ECE-3270/Lab 4/HEAD.vhd}
vcom -93 -work work {N:/GitHub/ECE-3270/Lab 4/REGA.vhd}
vcom -93 -work work {N:/GitHub/ECE-3270/Lab 4/REGB.vhd}
vcom -93 -work work {N:/GitHub/ECE-3270/Lab 4/REGC.vhd}
vcom -93 -work work {N:/GitHub/ECE-3270/Lab 4/REGD.vhd}
vcom -93 -work work {N:/GitHub/ECE-3270/Lab 4/FSM.vhd}
vcom -93 -work work {N:/GitHub/ECE-3270/Lab 4/ADD.vhd}
vcom -93 -work work {N:/GitHub/ECE-3270/Lab 4/MUX.vhd}
vcom -93 -work work {N:/GitHub/ECE-3270/Lab 4/smallMUX.vhd}

vcom -93 -work work {N:/GitHub/ECE-3270/Lab 4/simulation/modelsim/HEAD.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  HEAD_vhd_tst

add wave *
view structure
view signals
run -all
