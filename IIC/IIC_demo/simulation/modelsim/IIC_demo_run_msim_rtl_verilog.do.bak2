transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+F:/verilog/IIC/IIC_demo/source {F:/verilog/IIC/IIC_demo/source/smg_dem.v}
vlog -vlog01compat -work work +incdir+F:/verilog/IIC/IIC_demo/source {F:/verilog/IIC/IIC_demo/source/IIC_module.v}
vlog -vlog01compat -work work +incdir+F:/verilog/IIC/IIC_demo/source {F:/verilog/IIC/IIC_demo/source/IIC_demo.v}
vlog -vlog01compat -work work +incdir+F:/verilog/IIC/IIC_demo/source {F:/verilog/IIC/IIC_demo/source/function_smg.v}
vlog -vlog01compat -work work +incdir+F:/verilog/IIC/IIC_demo/source {F:/verilog/IIC/IIC_demo/source/encod_module.v}

vlog -vlog01compat -work work +incdir+F:/verilog/IIC/IIC_demo/simulation/modelsim {F:/verilog/IIC/IIC_demo/simulation/modelsim/IIC_demo.vt}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  IIC_demo_vlg_tst

add wave *
view structure
view signals
run 1 us
