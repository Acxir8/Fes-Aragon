library verilog;
use verilog.vl_types.all;
entity luces_vlg_check_tst is
    port(
        counter         : in     vl_logic_vector(2 downto 0);
        leds            : in     vl_logic_vector(9 downto 0);
        sampler_rx      : in     vl_logic
    );
end luces_vlg_check_tst;
