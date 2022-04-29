transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {N:/GitHub/ECE-3270/Lab 4/REG1.vhd}

vcom -93 -work work {N:/GitHub/ECE-3270/Lab 4/simulation/modelsim/REG1.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  REG1_vhd_tst

add wave *
view structure
view signals
run -all
