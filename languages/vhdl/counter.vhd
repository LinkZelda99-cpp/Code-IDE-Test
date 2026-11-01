library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity counter is port (clk : in std_logic; count : out unsigned(3 downto 0)); end entity;
architecture rtl of counter is signal value : unsigned(3 downto 0) := (others => '0');
begin
  process(clk) begin if rising_edge(clk) then value <= value + 1; end if; end process;
  count <= value;
end architecture;
