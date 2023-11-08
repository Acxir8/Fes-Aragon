library verilog;
use verilog.vl_types.all;
entity DIV is
    port(
        clk             : in     vl_logic;
        periodo         : out    vl_logic
    );
end DIV;
