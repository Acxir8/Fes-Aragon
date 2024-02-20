library verilog;
use verilog.vl_types.all;
entity myAND is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        z               : out    vl_logic
    );
end myAND;
