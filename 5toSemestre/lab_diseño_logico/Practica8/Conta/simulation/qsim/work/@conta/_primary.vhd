library verilog;
use verilog.vl_types.all;
entity Conta is
    port(
        clk             : in     vl_logic;
        res             : out    vl_logic_vector(3 downto 0);
        L1              : out    vl_logic_vector(6 downto 0);
        L2              : out    vl_logic_vector(6 downto 0)
    );
end Conta;
