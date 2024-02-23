library verilog;
use verilog.vl_types.all;
entity Blink_vlg_check_tst is
    port(
        led             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Blink_vlg_check_tst;
