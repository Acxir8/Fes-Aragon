library verilog;
use verilog.vl_types.all;
entity Contador is
    port(
        A               : out    vl_logic;
        ENTRADA         : in     vl_logic;
        CLK             : in     vl_logic;
        B               : out    vl_logic;
        C               : out    vl_logic
    );
end Contador;
