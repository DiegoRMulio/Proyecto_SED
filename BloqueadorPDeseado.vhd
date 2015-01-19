library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL; 
use IEEE.STD_LOGIC_unsigned.ALL;

entity BloqueadorPDeseado is
    Port ( clk : in  STD_LOGIC;     
			  Enable : in  STD_LOGIC;
           Piso_Deseado_in : in  STD_LOGIC_VECTOR(1 downto 0);
           Piso_Deseado_out: out STD_LOGIC_VECTOR (1 downto 0)
           );
end BloqueadorPDeseado;

architecture Behavioral of BloqueadorPDeseado is
---------------------------------------------------
type mis_estados is (S5,S6);
signal Q_bus2, D_bus2 : mis_estados;
signal salidas2: STD_LOGIC_VECTOR (1 downto 0);
---------------------------------------------------
begin
-----REGISTRO DE ESTADO---------
process (clk)
begin
	if clk'event and clk ='1' then
					Q_bus2 <= D_bus2;
		
		end if;
end process;
----LOGICA DEL ESTADO SIGUIENTE---
process(Q_bus2,Enable)
begin
	CASE (Q_BUS2) is
		when S5 =>
				if Enable = '0' then
					D_bus2<=S6;
				elsif Enable = '1' then
					D_bus2 <= S5;
				end if;
		when S6 =>
				if Enable = '0' then
					D_bus2<=S6;
				elsif Enable = '1' then
					D_bus2 <= S5;
				end if;
		
	end case;
end process;

------LOGICA DE LA SALIDA-------

	with Q_bus2 select
			salidas2 <=	Piso_Deseado_in	when S5,
							salidas2  			when S6,
							salidas2  when others;		
	Piso_Deseado_out <= salidas2;

end Behavioral;


