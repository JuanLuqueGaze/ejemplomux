----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.09.2023 18:24:44
-- Design Name: 
-- Module Name: mux21_mixed - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

ENTITY mux21_mixed IS
    PORT (
        i1 : IN STD_LOGIC;
        i2 : IN STD_LOGIC;
        sel : IN STD_LOGIC;
        o : OUT STD_LOGIC
    );
END mux21_mixed;

ARCHITECTURE Behavioral OF mux21_mixed IS

    SIGNAL outga1, outga2, outn : STD_LOGIC;
    COMPONENT and_gate
        PORT (
            i1 : IN STD_LOGIC;
            i2 : IN STD_LOGIC;
            o : OUT STD_LOGIC);
    END COMPONENT;
BEGIN
    outn <= NOT(sel);
    and1 : and_gate
    PORT MAP(
        i1 => i1,
        i2 => outn,
        o => outga1
    );
    and2 : and_gate
    PORT MAP(
        i1 => i2,
        i2 => sel,
        o => outga2
    );

    o <= outga1 OR outga2;
END Behavioral;