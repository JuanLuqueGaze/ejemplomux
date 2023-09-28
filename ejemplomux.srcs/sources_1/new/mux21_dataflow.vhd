----------------------------------------------------------------------------------

-- Engineer: Juan Luque Girón

-- Create Date: 28.09.2023 17:32:56

-- Module Name: mux21_dataflow - Behavioral

----------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY mux21_dataflow IS
    PORT (
        i1 : IN STD_LOGIC;
        i2 : IN STD_LOGIC;
        sel : IN STD_LOGIC;
        o : OUT STD_LOGIC
    );
END mux21_dataflow;

ARCHITECTURE Behavioral OF mux21_dataflow IS
    SIGNAL and1_output : STD_LOGIC;
    SIGNAL and2_output : STD_LOGIC;
BEGIN

    and1_output <= i1 AND NOT(sel);
    and2_output <= i2 AND (sel);
    o <= and1_output OR and2_output;

END Behavioral;