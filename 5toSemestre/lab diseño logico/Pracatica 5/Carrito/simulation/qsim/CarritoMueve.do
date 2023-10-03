onerror {quit -f}
vlib work
vlog -work work CarritoMueve.vo
vlog -work work CarritoMueve.vt
vsim -novopt -c -t 1ps -L maxii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.CarritoMueve_vlg_vec_tst
vcd file -direction CarritoMueve.msim.vcd
vcd add -internal CarritoMueve_vlg_vec_tst/*
vcd add -internal CarritoMueve_vlg_vec_tst/i1/*
add wave /*
run -all
