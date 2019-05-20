library verilog;
use verilog.vl_types.all;
entity IIC_demo is
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        SDA             : out    vl_logic;
        SCL             : out    vl_logic;
        DIG             : out    vl_logic_vector(7 downto 0);
        SEL             : out    vl_logic_vector(5 downto 0);
        led             : out    vl_logic
    );
end IIC_demo;
