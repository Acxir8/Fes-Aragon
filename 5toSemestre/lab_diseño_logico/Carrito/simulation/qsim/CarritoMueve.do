onerror {exit -code 1}
vlib work
vlog -work work CarritoMueve.vo
vlog -work work Waveform6.vwf.vt
vsim -novopt -c -t 1ps -L maxii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.CarritoMueve_vlg_vec_tst -voptargs="+acc"
vcd file -direction CarritoMueve.msim.vcd
vcd add -internal CarritoMueve_vlg_vec_tst/*
vcd add -internal CarritoMueve_vlg_vec_tst/i1/*
run -all
quit -f
