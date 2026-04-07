library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CPU_TEST_Sim_rtl is
    port (
        CLOCK_50 : in std_logic;
        KEY      : in std_logic_vector(3 downto 0);
        SW       : in std_logic_vector(17 downto 0);

        LEDG     : out std_logic_vector(7 downto 0);
        LEDR     : out std_logic_vector(9 downto 8);

        HEX0     : out std_logic_vector(6 downto 0);
        HEX1     : out std_logic_vector(6 downto 0);
        HEX2     : out std_logic_vector(6 downto 0);
        HEX3     : out std_logic_vector(6 downto 0);
        HEX4     : out std_logic_vector(6 downto 0);
        HEX5     : out std_logic_vector(6 downto 0);
        HEX6     : out std_logic_vector(6 downto 0);
        HEX7     : out std_logic_vector(6 downto 0);

        LCD_RS   : out std_logic;
        LCD_RW   : buffer std_logic;
        LCD_EN   : out std_logic;
        LCD_ON   : out std_logic;
        LCD_DATA : inout std_logic_vector(7 downto 0)
    );
end entity CPU_TEST_Sim_rtl;

architecture rtl of CPU_TEST_Sim_rtl is
    component cpu1
        port (
            clk       : in std_logic;
            mem_clk   : in std_logic;
            rst       : in std_logic;
            dataIn    : in std_logic_vector(31 downto 0);
            dataOut   : out std_logic_vector(31 downto 0);
            addrOut   : out std_logic_vector(31 downto 0);
            wEn       : out std_logic;
            dOutA     : out std_logic_vector(31 downto 0);
            dOutB     : out std_logic_vector(31 downto 0);
            dOutC     : out std_logic;
            dOutZ     : out std_logic;
            dOutIR    : out std_logic_vector(31 downto 0);
            dOutPC    : out std_logic_vector(31 downto 0);
            outT      : out std_logic_vector(2 downto 0);
            wen_mem   : out std_logic;
            en_mem    : out std_logic
        );
    end component;

    component system_memory
        port (
            address : in std_logic_vector(5 downto 0);
            clock   : in std_logic;
            data    : in std_logic_vector(31 downto 0);
            wren    : in std_logic;
            q       : out std_logic_vector(31 downto 0)
        );
    end component;

    component clDivide
        port (
            clkIn  : in std_logic;
            clkOut : out std_logic
        );
    end component;

    component lcd_controller1
        port (
            clk       : in std_logic;
            enable    : in std_logic;
            lcdDataIn : in std_logic_vector(7 downto 0);
            inA       : in std_logic_vector(31 downto 0);
            inB       : in std_logic_vector(31 downto 0);
            lcd_RS    : out std_logic;
            lcd_RW    : out std_logic;
            lcd_EN    : out std_logic;
            lcd_ON    : out std_logic;
            lcd_DATA  : out std_logic_vector(7 downto 0);
            enIN      : out std_logic;
            enDI      : out std_logic;
            enPL      : out std_logic;
            ready     : out std_logic;
            start     : out std_logic
        );
    end component;

    component cpu_run_clock
        port (
            CLOCK_50 : in std_logic;
            SW0      : in std_logic;
            cpu_clk  : out std_logic
        );
    end component;

    component board_hex_out
        port (
            t_info : in std_logic_vector(2 downto 0);
            pc7_0  : in std_logic_vector(7 downto 0);
            HEX0   : out std_logic_vector(6 downto 0);
            HEX1   : out std_logic_vector(6 downto 0);
            HEX2   : out std_logic_vector(6 downto 0);
            HEX3   : out std_logic_vector(6 downto 0);
            HEX4   : out std_logic_vector(6 downto 0);
            HEX5   : out std_logic_vector(6 downto 0);
            HEX6   : out std_logic_vector(6 downto 0);
            HEX7   : out std_logic_vector(6 downto 0)
        );
    end component;

    signal cpu_clk       : std_logic;
    signal mem_clk       : std_logic;
    signal lcd_clk       : std_logic;

    signal mem_to_cpu    : std_logic_vector(31 downto 0);
    signal cpu_to_mem    : std_logic_vector(31 downto 0);
    signal cpu_addr      : std_logic_vector(31 downto 0);
    signal cpu_wen       : std_logic;

    signal outA          : std_logic_vector(31 downto 0);
    signal outB          : std_logic_vector(31 downto 0);
    signal outPC         : std_logic_vector(31 downto 0);
    signal outC          : std_logic;
    signal outZ          : std_logic;
    signal t_info        : std_logic_vector(2 downto 0);
    signal wen_mem_dbg   : std_logic;
    signal en_mem_dbg    : std_logic;

    signal lcd_data_out  : std_logic_vector(7 downto 0);
    signal lcd_data_in   : std_logic_vector(7 downto 0);
    signal lcd_ready_dbg : std_logic;
begin
    mem_clk <= CLOCK_50;

    u_cpu_clk : cpu_run_clock
        port map (
            CLOCK_50 => CLOCK_50,
            SW0      => SW(0),
            cpu_clk  => cpu_clk
        );

    lcd_div : clDivide
        port map (
            clkIn  => CLOCK_50,
            clkOut => lcd_clk
        );

    main_memory : system_memory
        port map (
            address => cpu_addr(5 downto 0),
            clock   => mem_clk,
            data    => cpu_to_mem,
            wren    => cpu_wen,
            q       => mem_to_cpu
        );

    main_cpu : cpu1
        port map (
            clk      => cpu_clk,
            mem_clk  => mem_clk,
            rst      => KEY(0),
            dataIn   => mem_to_cpu,
            dataOut  => cpu_to_mem,
            addrOut  => cpu_addr,
            wEn      => cpu_wen,
            dOutA    => outA,
            dOutB    => outB,
            dOutC    => outC,
            dOutZ    => outZ,
            dOutIR   => open,
            dOutPC   => outPC,
            outT     => t_info,
            wen_mem  => wen_mem_dbg,
            en_mem   => en_mem_dbg
        );

    lcd_ctrl : lcd_controller1
        port map (
            clk       => lcd_clk,
            enable    => '1',
            lcdDataIn => lcd_data_in,
            inA       => outA,
            inB       => outB,
            lcd_RS    => LCD_RS,
            lcd_RW    => LCD_RW,
            lcd_EN    => LCD_EN,
            lcd_ON    => LCD_ON,
            lcd_DATA  => lcd_data_out,
            enIN      => open,
            enDI      => open,
            enPL      => open,
            ready     => lcd_ready_dbg,
            start     => open
        );

    LCD_DATA    <= lcd_data_out when LCD_RW = '0' else (others => 'Z');
    lcd_data_in <= LCD_DATA;

    u_hex : board_hex_out
        port map (
            t_info => t_info,
            pc7_0  => outPC(7 downto 0),
            HEX0   => HEX0,
            HEX1   => HEX1,
            HEX2   => HEX2,
            HEX3   => HEX3,
            HEX4   => HEX4,
            HEX5   => HEX5,
            HEX6   => HEX6,
            HEX7   => HEX7
        );

    LEDG(0) <= outC;
    LEDG(1) <= outZ;
    LEDG(2) <= t_info(0);
    LEDG(3) <= t_info(1);
    LEDG(4) <= t_info(2);
    LEDG(5) <= wen_mem_dbg;
    LEDG(6) <= en_mem_dbg;
    LEDG(7) <= lcd_ready_dbg;

    LEDR <= "00";
end architecture rtl;
