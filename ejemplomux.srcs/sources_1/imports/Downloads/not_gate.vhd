library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity not_gate is
    Port ( i : in  STD_LOGIC;
           o : out  STD_LOGIC);
end not_gate;
architecture Behavioral of not_gate is
begin
	o <= not i;
end Behavioral;

