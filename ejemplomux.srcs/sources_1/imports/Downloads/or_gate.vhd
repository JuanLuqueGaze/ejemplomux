library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity or_gate is
    Port ( i1 : in  STD_LOGIC;
           i2 : in  STD_LOGIC;
           o : out  STD_LOGIC);
end or_gate;
architecture RTL of or_gate is
begin
	o <= i1 or i2;
end RTL;

