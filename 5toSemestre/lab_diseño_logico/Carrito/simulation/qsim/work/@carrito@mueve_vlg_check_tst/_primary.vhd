library verilog;
use verilog.vl_types.all;
entity CarritoMueve_vlg_check_tst is
    port(
        al              : in     vl_logic;
        av              : in     vl_logic;
        ENTRADA         : in     vl_logic_vector(0 to 3);
        re              : in     vl_logic;
        vd              : in     vl_logic;
        vi              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end CarritoMueve_vlg_check_tst;
