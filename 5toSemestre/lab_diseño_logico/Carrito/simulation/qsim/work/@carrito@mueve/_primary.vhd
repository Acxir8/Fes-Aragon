library verilog;
use verilog.vl_types.all;
entity CarritoMueve is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        ENTRADA         : out    vl_logic_vector(0 to 3);
        av              : out    vl_logic;
        re              : out    vl_logic;
        vd              : out    vl_logic;
        vi              : out    vl_logic;
        al              : out    vl_logic
    );
end CarritoMueve;
