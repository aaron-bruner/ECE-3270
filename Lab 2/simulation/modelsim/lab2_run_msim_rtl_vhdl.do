transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/GitHub/ECE-3270/Lab 2/MooreFSM.vhd}
vcom -93 -work work {D:/GitHub/ECE-3270/Lab 2/MooreFSMb.vhd}

vcom -93 -work work {D:/GitHub/ECE-3270/Lab 2/simulation/modelsim/MooreFSM.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  MooreFSM_vhd_tst

add wave *
view structure
view signals
run -all
