library ieee;
use ieee.std_logic_1164.all;

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
        LCD_RW   : buffer std_logic;
        LCD_EN   : out std_logic;
        LCD_ON   : out std_logic;
        LCD_DATA : inout std_logic_vector(7 downto 0)
    );
end entity CPU_TEST_Sim;

architecture struct of CPU_TEST_Sim is
begin
    U_rtl : entity work.CPU_TEST_Sim_rtl
        port map (
            CLOCK_50 => CLOCK_50,
            KEY      => KEY,
            SW       => SW,
            LEDG     => LEDG,
            LEDR     => LEDR,
            HEX0     => HEX0,
            HEX1     => HEX1,
            HEX2     => HEX2,
            HEX3     => HEX3,
            HEX4     => HEX4,
            HEX5     => HEX5,
            HEX6     => HEX6,
            HEX7     => HEX7,
            LCD_RS   => LCD_RS,
            LCD_RW   => LCD_RW,
            LCD_EN   => LCD_EN,
            LCD_ON   => LCD_ON,
            LCD_DATA => LCD_DATA
        );
end architecture struct;
