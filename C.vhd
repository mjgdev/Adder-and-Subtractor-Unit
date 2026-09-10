library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY C is
--501227721
    Port (
        S : in STD_LOGIC_VECTOR (3 DOWNTO 0);  
        L : out STD_LOGIC_VECTOR (3 DOWNTO 0)
    );
END C;

ARCHITECTURE rt1 OF C IS
BEGIN
--501227721

    L(3) <= '0';
	 
    L(2) <= (NOT S(1) AND NOT S(0)AND NOT S(3)AND NOT S(2)) OR (NOT S(1) AND S(0) AND S(2)) OR (S(1) AND NOT S(0) AND S(2));
    
    L(1) <= (S(2)) OR (S(1) AND S(0));
    
    L(0) <= (NOT S(0) AND NOT S(1) AND NOT S(2)) OR (NOT S(1) AND S(0) AND S(2)) OR (S(1) AND NOT S(0));

END rt1;



