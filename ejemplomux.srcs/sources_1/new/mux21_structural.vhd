----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 28.09.2023 18:09:25
-- Design Name: 
-- Module Name: mux21_structural - Behavioral
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
ENTITY mux21_structural IS
    PORT ();
END mux21_structural;

ARCHITECTURE Behavioral OF mux21_structural IS
    COMPONENT and_gate
        PORT (
            i1 : IN STD_LOGIC;
            i2 : IN STD_LOGIC;
            o : OUT STD_LOGIC);
    END COMPONENT;

    COMPONENT not_gate
        PORT (
            i : IN STD_LOGIC;
            o : OUT STD_LOGIC);
    END COMPONENT;

    COMPONENT or_gate
        PORT (
            i1 : IN STD_LOGIC;
            i2 : IN STD_LOGIC;
            o : OUT STD_LOGIC);
    END COMPONENT;
BEGIN
END Behavioral;