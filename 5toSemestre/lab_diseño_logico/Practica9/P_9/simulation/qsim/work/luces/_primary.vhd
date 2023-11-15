library verilog;
use verilog.vl_types.all;
entity luces is
    port(
        clk             : in     vl_logic;
        counter         : out    vl_logic_vector(2 downto 0);
        leds            : out    vl_logic_vector(4 downto 0)
    );
end luces;
