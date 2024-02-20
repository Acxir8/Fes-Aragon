library verilog;
use verilog.vl_types.all;
entity Exceso3_vlg_sample_tst is
    port(
        systemA         : in     vl_logic;
        systemB         : in     vl_logic;
        systemC         : in     vl_logic;
        systemD         : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Exceso3_vlg_sample_tst;
