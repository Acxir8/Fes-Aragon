library verilog;
use verilog.vl_types.all;
entity Blink3_vlg_check_tst is
    port(
        led             : in     vl_logic;
        led2            : in     vl_logic;
        led3            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Blink3_vlg_check_tst;
