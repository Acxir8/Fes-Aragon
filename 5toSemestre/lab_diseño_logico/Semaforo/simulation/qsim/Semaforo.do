onerror {exit -code 1}
vlib work
vlog -work work Semaforo.vo
vlog -work work Waveform2.vwf.vt
vsim -novopt -c -t 1ps -L maxii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Semaforo_vlg_vec_tst -voptargs="+acc"
vcd file -direction Semaforo.msim.vcd
vcd add -internal Semaforo_vlg_vec_tst/*
vcd add -internal Semaforo_vlg_vec_tst/i1/*
run -all
quit -f
