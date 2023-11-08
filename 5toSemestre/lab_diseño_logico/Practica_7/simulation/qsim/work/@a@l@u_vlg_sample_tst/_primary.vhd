library verilog;
use verilog.vl_types.all;
entity ALU_vlg_sample_tst is
    port(
        X               : in     vl_logic_vector(3 downto 0);
        Y               : in     vl_logic_vector(3 downto 0);
        enable          : in     vl_logic;
        op              : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end ALU_vlg_sample_tst;
