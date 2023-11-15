library verilog;
use verilog.vl_types.all;
entity luces_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        counter         : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end luces_vlg_sample_tst;
