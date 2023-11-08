library verilog;
use verilog.vl_types.all;
entity semaforo_vlg_check_tst is
    port(
        semaforoAmarillo: in     vl_logic;
        semaforoRojo    : in     vl_logic;
        semaforoVerde   : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end semaforo_vlg_check_tst;
