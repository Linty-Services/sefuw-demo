library ieee;
use ieee.std_logic_1164.all;

entity sleep is
  port (
    clk : in std_logic;
    rst : in std_logic;
    i1 : in std_logic;
    i2 : in std_logic;
    o1 : out std_logic
  );
end entity;

architecture rtl of sleep is
begin
  process (clk) is
  begin
    if rising_edge(clk) then
      if rst = '1' then
        o1 <= '0';
      else
        o1 <= i1 and i2;
      end if;
    end if;
  end process;
end architecture;