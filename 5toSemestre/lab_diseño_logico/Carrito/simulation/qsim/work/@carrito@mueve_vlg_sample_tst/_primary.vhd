library verilog;
use verilog.vl_types.all;
entity CarritoMueve_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        ENTRADA         : in     vl_logic_vector(0 to 3);
        rst             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end CarritoMueve_vlg_sample_tst;
