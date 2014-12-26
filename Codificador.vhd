library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity codificador is
    Port ( cod_in : in  STD_LOGIC_VECtor(3 DOWNTO 0);
           cod_out : out  STD_LOGIC_VECtor(1 DOWNTO 0)
			  );
end  ENTITY codificador;
architecture dataflow of codificador is
	begin
		WITH cod_in SELECT
		cod_out <= 	"00" WHEN "0001",
						"01" WHEN "0010",
						"10" WHEN "0100",
						"11" WHEN "1000",
						"00" WHEN others;
	end ARCHITECTURE dataflow;


