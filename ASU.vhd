LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY ASU IS
    PORT (
        Cin       : IN  STD_LOGIC;  
        X, Y      : IN  STD_LOGIC_VECTOR(3 DOWNTO 0); 
        S         : OUT STD_LOGIC_VECTOR(3 DOWNTO 0); 
        Cout      : OUT STD_LOGIC; 
		  sign      : OUT STD_LOGIC; 
        Overflow  : OUT STD_LOGIC 
    );
END ASU;

ARCHITECTURE Behavior OF ASU IS 
    SIGNAL Y_modified : STD_LOGIC_VECTOR(3 DOWNTO 0); 
    SIGNAL Sum        : STD_LOGIC_VECTOR(4 DOWNTO 0);

BEGIN

    Y_modified(0) <= Y(0) XOR Cin;
    Y_modified(1) <= Y(1) XOR Cin;
    Y_modified(2) <= Y(2) XOR Cin;
    Y_modified(3) <= Y(3) XOR Cin;
	 
    Sum <= ('0' & X) + ('0' & Y_modified) + Cin;

    S <= Sum(3 DOWNTO 0);
	
    Cout <= Sum(4);

  
    Overflow <= Sum(4) XOR Sum(3) XOR X(3) XOR Y_modified(3);
END Behavior;
