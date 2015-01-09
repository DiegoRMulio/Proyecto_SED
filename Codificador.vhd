library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity codificador is
    Port ( cod_in : in  STD_LOGIC_VECtor(3 DOWNTO 0);
           cod_out : out  STD_LOGIC_VECtor(1 DOWNTO 0);
			  CLK: IN STD_LOGIC
			  );
end  ENTITY codificador;

architecture dataflow of codificador is
signal cod_out_s: STD_LOGIC_VECTOR (1 downto 0) := "00"; 
	begin	
		PROCESS(CLK)
		BEGIN
		IF CLK='1' THEN
				IF COD_IN(0)='1' THEN COD_OUT_S<= "00";
				ELSIF COD_IN(1)='1' THEN COD_OUT_S<= "01";
				ELSIF COD_IN(2)='1' THEN COD_OUT_S<= "10";
				ELSIF COD_IN(3)='1' THEN COD_OUT_S<= "11";
				END IF;
		END IF;
		END PROCESS;
		
		cod_out <= cod_out_s;
	end ARCHITECTURE dataflow;


