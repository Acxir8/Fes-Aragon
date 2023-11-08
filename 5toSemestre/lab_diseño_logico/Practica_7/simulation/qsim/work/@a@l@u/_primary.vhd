library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        X               : in     vl_logic_vector(3 downto 0);
        Y               : in     vl_logic_vector(3 downto 0);
        enable          : in     vl_logic;
        op              : in     vl_logic_vector(1 downto 0);
        z               : out    vl_logic_vector(5 downto 0)
    );
end ALU;
