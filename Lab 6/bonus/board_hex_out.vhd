library ieee;
use ieee.std_logic_1164.all;

entity board_hex_out is
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
end entity board_hex_out;

architecture rtl of board_hex_out is
    function seg7_from_nibble(val : std_logic_vector(3 downto 0)) return std_logic_vector is
    begin
        case val is
            when "0000" => return "1000000";
            when "0001" => return "1111001";
            when "0010" => return "0100100";
            when "0011" => return "0110000";
            when "0100" => return "0011001";
            when "0101" => return "0010010";
            when "0110" => return "0000010";
            when "0111" => return "1111000";
            when "1000" => return "0000000";
            when "1001" => return "0010000";
            when "1010" => return "0001000";
            when "1011" => return "0000011";
            when "1100" => return "1000110";
            when "1101" => return "0100001";
            when "1110" => return "0000110";
            when others => return "0001110";
        end case;
    end function;

    constant seg_blank : std_logic_vector(6 downto 0) := "1000000";
begin
    HEX0 <= seg7_from_nibble('0' & t_info);
    HEX1 <= seg_blank;
    HEX2 <= seg_blank;
    HEX3 <= seg_blank;
    HEX4 <= seg_blank;
    HEX5 <= seg_blank;
    HEX6 <= seg7_from_nibble(pc7_0(7 downto 4));
    HEX7 <= seg7_from_nibble(pc7_0(3 downto 0));
end architecture rtl;
