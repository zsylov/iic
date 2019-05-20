library verilog;
use verilog.vl_types.all;
entity function_module is
    generic(
        T100US          : vl_logic_vector(0 to 12) := (Hi1, Hi0, Hi0, Hi1, Hi1, Hi1, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0)
    );
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        idata           : in     vl_logic_vector(23 downto 0);
        odata           : out    vl_logic_vector(9 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of T100US : constant is 1;
end function_module;
