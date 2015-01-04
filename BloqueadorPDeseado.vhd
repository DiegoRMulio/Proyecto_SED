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
signal Q_bus, D_bus : mis_estados;
signal salidas: STD_LOGIC_VECTOR (1 downto 0);
---------------------------------------------------
begin
-----REGISTRO DE ESTADO---------
process (clk)
begin
	if clk'event and clk ='1' then
					Q_bus <= D_bus;
		
		end if;
end process;
----LOGICA DEL ESTADO SIGUIENTE---
process(Q_bus,Enable)
begin
	CASE (Q_BUS) is
		when S5 =>
				if Enable = '0' then
					D_bus<=S6;
				elsif Enable = '1' then
					D_bus <= S5;
				end if;
		when S6 =>
				if Enable = '0' then
					D_bus<=S6;
				elsif Enable = '1' then
					D_bus <= S5;
				end if;
		
	end case;
end process;

------LOGICA DE LA SALIDA-------

	with Q_bus select
			salidas <=	Piso_Deseado_in	when S5,
							salidas  			when S6;

			Piso_Deseado_out <= salidas;

end Behavioral;


