transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/My Drive/Clemson CpE Course Work/3000 Courses/ECE 3270 - Digital Computer Design/Lab 1/sevenSegOutput.vhd}

vcom -93 -work work {E:/My Drive/Clemson CpE Course Work/3000 Courses/ECE 3270 - Digital Computer Design/Lab 1/simulation/modelsim/sevenSegOutput.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  sevenSegOutput_vhd_tst

add wave *
view structure
view signals
run -all
