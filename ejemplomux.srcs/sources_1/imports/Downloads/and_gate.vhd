
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_gate is
    Port ( i1 : in  STD_LOGIC;
           i2 : in  STD_LOGIC;
           o : out  STD_LOGIC);
end and_gate;

architecture RTL of and_gate is

begin

	o <= i1 and i2;

end RTL;

