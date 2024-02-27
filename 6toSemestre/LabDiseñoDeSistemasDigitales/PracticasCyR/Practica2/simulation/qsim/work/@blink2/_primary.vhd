library verilog;
use verilog.vl_types.all;
entity Blink2 is
    port(
        clk             : in     vl_logic;
        led             : out    vl_logic
    );
end Blink2;
