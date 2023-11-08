library verilog;
use verilog.vl_types.all;
entity Semaforo is
    port(
        clk             : in     vl_logic;
        semaforoRojo    : out    vl_logic;
        semaforoAmarillo: out    vl_logic;
        semaforoVerde   : out    vl_logic
    );
end Semaforo;
