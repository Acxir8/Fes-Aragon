library verilog;
use verilog.vl_types.all;
entity semaforo is
    port(
        clk             : in     vl_logic;
        semaforoRojo    : out    vl_logic;
        semaforoAmarillo: out    vl_logic;
        semaforoVerde   : out    vl_logic
    );
end semaforo;
