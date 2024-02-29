library verilog;
use verilog.vl_types.all;
entity Blink3 is
    port(
        clk             : in     vl_logic;
        led             : out    vl_logic;
        led2            : out    vl_logic;
        led3            : out    vl_logic
    );
end Blink3;
