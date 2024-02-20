library verilog;
use verilog.vl_types.all;
entity Exceso3 is
    port(
        systemA         : in     vl_logic;
        systemB         : in     vl_logic;
        systemC         : in     vl_logic;
        systemD         : in     vl_logic;
        w               : out    vl_logic;
        x               : out    vl_logic;
        y               : out    vl_logic;
        z               : out    vl_logic
    );
end Exceso3;
