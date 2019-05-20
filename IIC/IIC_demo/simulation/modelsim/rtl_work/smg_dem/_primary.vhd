library verilog;
use verilog.vl_types.all;
entity smg_dem is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        idata           : in     vl_logic_vector(23 downto 0);
        SEL             : out    vl_logic_vector(5 downto 0);
        DIG             : out    vl_logic_vector(7 downto 0)
    );
end smg_dem;
