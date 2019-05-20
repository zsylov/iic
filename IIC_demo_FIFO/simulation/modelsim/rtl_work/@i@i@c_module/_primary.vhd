library verilog;
use verilog.vl_types.all;
entity IIC_module is
    generic(
        FCLK            : vl_logic_vector(0 to 9) := (Hi0, Hi0, Hi0, Hi1, Hi1, Hi1, Hi1, Hi1, Hi0, Hi1);
        FHALF           : vl_logic_vector(0 to 9) := (Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi1, Hi1, Hi1, Hi0);
        FQUARTER        : vl_logic_vector(0 to 9) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi1, Hi1, Hi1);
        THIGH           : vl_logic_vector(0 to 9) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi1, Hi1, Hi0);
        TLOW            : vl_logic_vector(0 to 9) := (Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1);
        TR              : vl_logic_vector(0 to 9) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi1, Hi1);
        TF              : vl_logic_vector(0 to 9) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi1, Hi1);
        THD_STA         : vl_logic_vector(0 to 9) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi1, Hi1, Hi0);
        TSU_STA         : vl_logic_vector(0 to 9) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi1, Hi1, Hi0);
        TSU_STO         : vl_logic_vector(0 to 9) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi1, Hi1, Hi0);
        WRFUNC1         : vl_logic_vector(0 to 4) := (Hi0, Hi0, Hi1, Hi1, Hi1);
        WRFUNC2         : vl_logic_vector(0 to 4) := (Hi0, Hi1, Hi0, Hi0, Hi1);
        RDFUNC          : vl_logic_vector(0 to 4) := (Hi1, Hi0, Hi0, Hi1, Hi1)
    );
    port(
        clk             : in     vl_logic;
        rst_n           : in     vl_logic;
        SCL             : out    vl_logic;
        SDA             : inout  vl_logic;
        iCall           : in     vl_logic_vector(1 downto 0);
        idata           : in     vl_logic_vector(7 downto 0);
        iAddr           : in     vl_logic_vector(7 downto 0);
        odata           : out    vl_logic_vector(7 downto 0);
        oDone           : out    vl_logic;
        led             : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of FCLK : constant is 1;
    attribute mti_svvh_generic_type of FHALF : constant is 1;
    attribute mti_svvh_generic_type of FQUARTER : constant is 1;
    attribute mti_svvh_generic_type of THIGH : constant is 1;
    attribute mti_svvh_generic_type of TLOW : constant is 1;
    attribute mti_svvh_generic_type of TR : constant is 1;
    attribute mti_svvh_generic_type of TF : constant is 1;
    attribute mti_svvh_generic_type of THD_STA : constant is 1;
    attribute mti_svvh_generic_type of TSU_STA : constant is 1;
    attribute mti_svvh_generic_type of TSU_STO : constant is 1;
    attribute mti_svvh_generic_type of WRFUNC1 : constant is 1;
    attribute mti_svvh_generic_type of WRFUNC2 : constant is 1;
    attribute mti_svvh_generic_type of RDFUNC : constant is 1;
end IIC_module;
