library verilog;
use verilog.vl_types.all;
entity DivFrec is
    port(
        clk             : in     vl_logic;
        periodo         : out    vl_logic
    );
end DivFrec;
