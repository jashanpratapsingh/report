library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cpu_run_clock is
    generic (
        CPU_DIV_MAX : natural := 12499999
    );
    port (
        CLOCK_50 : in std_logic;
        SW0      : in std_logic;
        cpu_clk  : out std_logic
    );
end entity cpu_run_clock;

architecture rtl of cpu_run_clock is
    signal cpu_div_count : natural range 0 to CPU_DIV_MAX := 0;
    signal cpu_clk_i     : std_logic := '0';
begin
    cpu_clk <= cpu_clk_i;

    process (CLOCK_50)
    begin
        if rising_edge(CLOCK_50) then
            if SW0 = '1' then
                if cpu_div_count = CPU_DIV_MAX then
                    cpu_div_count <= 0;
                    cpu_clk_i     <= not cpu_clk_i;
                else
                    cpu_div_count <= cpu_div_count + 1;
                end if;
            else
                cpu_div_count <= 0;
                cpu_clk_i     <= '0';
            end if;
        end if;
    end process;
end architecture rtl;
