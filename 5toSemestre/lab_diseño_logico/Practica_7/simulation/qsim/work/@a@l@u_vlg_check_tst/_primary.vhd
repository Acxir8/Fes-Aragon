library verilog;
use verilog.vl_types.all;
entity ALU_vlg_check_tst is
    port(
        z               : in     vl_logic_vector(5 downto 0);
        sampler_rx      : in     vl_logic
    );
end ALU_vlg_check_tst;
