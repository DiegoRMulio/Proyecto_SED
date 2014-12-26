library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity decodificador is
    Port ( code : in  STD_LOGIC_VECtor(1 DOWNTO 0);
           led : out  STD_LOGIC_VECtor(6 DOWNTO 0)
			  );
end  ENTITY decodificador;
architecture dataflow of decodificador is
begin
	WITH code SELECT
	led <= 
	"0000001" WHEN "00",
	"1001111" WHEN "01",
	"0010010" WHEN "10",
	"0000110" WHEN "11",
	"1111110" WHEN others;
end ARCHITECTURE dataflow;