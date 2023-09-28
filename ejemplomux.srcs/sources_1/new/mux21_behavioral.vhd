----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.09.2023 18:21:16
-- Design Name: 
-- Module Name: mux21_behavioral - Behavioral
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

ENTITY mux21_behavioral IS
    PORT (
        i1 : IN STD_LOGIC;
        i2 : IN STD_LOGIC;
        sel : IN STD_LOGIC;
        o : OUT STD_LOGIC
    );
END mux21_behavioral;

ARCHITECTURE Behavioral OF mux21_behavioral IS
BEGIN

    multiplex : PROCESS (i1, i2, sel)
    BEGIN
        IF SEL = '0' THEN
            o <= i1;
        ELSIF SEL = '1' THEN
            o <= i2;
        END IF;
    END PROCESS;

END Behavioral;