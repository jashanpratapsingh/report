library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CPU_TEST_Sim is
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
        LCD_RW   : out std_logic;
        LCD_EN   : out std_logic;
        LCD_ON   : out std_logic;
        LCD_DATA : inout std_logic_vector(7 downto 0)
    );
end CPU_TEST_Sim;

architecture rtl of CPU_TEST_Sim is
    constant CPU_DIV_MAX : natural := 12499999; -- 2 Hz CPU clock from 50 MHz

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

    signal cpu_clk       : std_logic := '0';
    signal mem_clk       : std_logic;
    signal lcd_clk       : std_logic;
    signal cpu_div_count : natural range 0 to CPU_DIV_MAX := 0;

    signal mem_to_cpu    : std_logic_vector(31 downto 0);
    signal cpu_to_mem    : std_logic_vector(31 downto 0);
    signal cpu_addr      : std_logic_vector(31 downto 0);
    signal cpu_wen       : std_logic;

    signal outA          : std_logic_vector(31 downto 0);
    signal outB          : std_logic_vector(31 downto 0);
    signal outIR         : std_logic_vector(31 downto 0);
    signal outPC         : std_logic_vector(31 downto 0);
    signal outC          : std_logic;
    signal outZ          : std_logic;
    signal t_info        : std_logic_vector(2 downto 0);
    signal wen_mem_dbg   : std_logic;
    signal en_mem_dbg    : std_logic;

    signal lcd_data_out  : std_logic_vector(7 downto 0);
    signal lcd_data_in   : std_logic_vector(7 downto 0);
    signal lcd_enin_dbg  : std_logic;
    signal lcd_endi_dbg  : std_logic;
    signal lcd_enpl_dbg  : std_logic;
    signal lcd_ready_dbg : std_logic;
    signal lcd_start_dbg : std_logic;

    function seg7_from_nibble(val : std_logic_vector(3 downto 0)) return std_logic_vector is
    begin
        case val is
            when "0000" => return "1000000"; -- 0
            when "0001" => return "1111001"; -- 1
            when "0010" => return "0100100"; -- 2
            when "0011" => return "0110000"; -- 3
            when "0100" => return "0011001"; -- 4
            when "0101" => return "0010010"; -- 5
            when "0110" => return "0000010"; -- 6
            when "0111" => return "1111000"; -- 7
            when "1000" => return "0000000"; -- 8
            when "1001" => return "0010000"; -- 9
            when "1010" => return "0001000"; -- A
            when "1011" => return "0000011"; -- b
            when "1100" => return "1000110"; -- C
            when "1101" => return "0100001"; -- d
            when "1110" => return "0000110"; -- E
            when others => return "0001110"; -- F
        end case;
    end function;
begin
    -- mem_clk stays automatic.
    mem_clk <= CLOCK_50;

    -- SW0 controls run/stop using a visible slow CPU clock.
    process (CLOCK_50)
    begin
        if rising_edge(CLOCK_50) then
            if SW(0) = '1' then
                if cpu_div_count = CPU_DIV_MAX then
                    cpu_div_count <= 0;
                    cpu_clk <= not cpu_clk;
                else
                    cpu_div_count <= cpu_div_count + 1;
                end if;
            else
                cpu_div_count <= 0;
                cpu_clk <= '0';
            end if;
        end if;
    end process;

    -- Keep legacy LCD slow clock path.
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
        dOutIR   => outIR,
        dOutPC   => outPC,
        outT     => t_info,
        wen_mem  => wen_mem_dbg,
        en_mem   => en_mem_dbg
    );

    -- Line 1 shows A and line 2 shows B via existing controller behavior.
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
        enIN      => lcd_enin_dbg,
        enDI      => lcd_endi_dbg,
        enPL      => lcd_enpl_dbg,
        ready     => lcd_ready_dbg,
        start     => lcd_start_dbg
    );

    -- Bidirectional LCD data bus behavior.
    LCD_DATA <= lcd_data_out when LCD_RW = '0' else (others => 'Z');
    lcd_data_in <= LCD_DATA;

    -- State display: T_info value on HEX0, HEX1 as 0, remaining HEX forced to 0.
    HEX0 <= seg7_from_nibble('0' & t_info);
    HEX1 <= "1000000";
    HEX2 <= "1000000";
    HEX3 <= "1000000";
    HEX4 <= "1000000";
    HEX5 <= "1000000";
    HEX6 <= "1000000";
    HEX7 <= "1000000";

    -- Keep basic debug visibility on board LEDs.
    LEDG(0) <= outC;
    LEDG(1) <= outZ;
    LEDG(2) <= t_info(0);
    LEDG(3) <= t_info(1);
    LEDG(4) <= t_info(2);
    LEDG(5) <= wen_mem_dbg;
    LEDG(6) <= en_mem_dbg;
    LEDG(7) <= lcd_ready_dbg;

    LEDR <= "00";
end rtl;
