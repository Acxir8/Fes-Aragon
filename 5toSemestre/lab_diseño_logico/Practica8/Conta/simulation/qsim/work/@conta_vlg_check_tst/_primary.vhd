library verilog;
use verilog.vl_types.all;
entity Conta_vlg_check_tst is
    port(
        L1              : in     vl_logic_vector(6 downto 0);
        L2              : in     vl_logic_vector(6 downto 0);
        res             : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end Conta_vlg_check_tst;
