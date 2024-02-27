library verilog;
use verilog.vl_types.all;
entity Blink2_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Blink2_vlg_sample_tst;
