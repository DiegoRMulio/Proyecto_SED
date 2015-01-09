
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL; 
use IEEE.STD_LOGIC_unsigned.ALL;

entity DecodificadorPD is
	port(
		clk : in std_logic;
		Enable_Display : inout std_logic_vector (3 downto 0);
		SenalPisoActual : in std_logic_vector(6 downto 0);
		SenalPisoDeseado : in std_logic_vector(6 downto 0);
		LED : out std_logic_vector(6 downto 0)
	);
end DecodificadorPD;

architecture Behavioral of DecodificadorPD is

signal CTR : STD_LOGIC_VECTOR(12 downto 0);
begin			
  Process (CLK)
  begin
    if CLK'event and CLK = '1' then
      if (CTR="0000000000000") then
        if (Enable_Display(0)='0') then 
			 Enable_Display(0) <= '1';	 
          LED <= "1111110";             
          Enable_Display(1) <= '0';
        elsif (Enable_Display(1)='0') then 
          Enable_Display(1) <= '1';	 	 
          LED <= "1111110";             
          Enable_Display(2) <= '0';
        elsif (Enable_Display(2)='0') then 
          Enable_Display(2) <= '1';	 
          LED <= SenalPisoActual;             
          Enable_Display(3) <= '0';
        elsif (Enable_Display(3)='0') then 
          Enable_Display(3) <= '1';
          LED <= SenalPisoDeseado;            
          Enable_Display(0) <= '0';
        end if;
      end if;
      CTR<=CTR+"0000000000001";
      if (CTR > "1000000000000") then   -- counter reaches 2^13
        CTR<="0000000000000";
      end if;
    end if; -- CLK'event and CLK = '1' 
  End Process;
End Behavioral;


