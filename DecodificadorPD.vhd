
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DecodificadorPD is
	port(
		clk : in std_logic;
		AN3 : inout std_logic; 
		AN2 : inout std_logic; 
		AN1 : inout std_logic; 
		AN0 : inout std_logic; 
		LED : out std_logic_vector(6 downto 0)
	);
end DecodificadorPD;

architecture Behavioral of DecodificadorPD is

begin


end Behavioral;

