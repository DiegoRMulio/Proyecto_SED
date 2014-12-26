library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL; 
use IEEE.STD_LOGIC_unsigned.ALL;
entity MaquinaDeEstados is
    Port ( clk_Maq : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Piso_Deseado : in  STD_LOGIC_VECTOR(1 downto 0);
           Piso_Actual_in: in STD_LOGIC_VECTOR (1 downto 0);
			  Piso_Actual_out: out STD_LOGIC_VECTOR (1 downto 0);
           Puerta : out  STD_LOGIC;
           Motor : out  STD_LOGIC_VECTOR(1 downto 0)
           );
end MaquinaDeEstados;

architecture Behavioral of MaquinaDeEstados is
---------------------------------------------------
type mis_estados is (S0,S1,S2,S3,S4);
signal Q_bus, D_bus : mis_estados;
signal salidas: STD_LOGIC_VECTOR (2 downto 0);
--signal Piso_Actual_i: STD_LOGIC_VECTOR (1 downto 0);
--signal clk: STD_LOGIC;
---------------------------------------------------
begin
-----REGISTRO DE ESTADO---------
process (clk_Maq)
begin
	if clk_Maq'event and clk_Maq ='1' then
		if reset = '1' then
			Q_bus <= S0;
		else 
			Q_bus <= D_bus;
			end if;
		end if;
end process;
----LOGICA DEL ESTADO SIGUIENTE---
process(Q_bus,reset,Piso_Deseado,Piso_Actual_in)
begin
	CASE (Q_BUS) is
		when S0 =>
				--Piso_Actual_i <= "00";
				if reset = '0' then
					D_bus<=S1;
				elsif reset = '1' then
					D_bus <= S0;
				end if;
		when S1 =>
				if Piso_Deseado < Piso_Actual_in then
					D_bus <= S2;
				elsif Piso_Deseado > Piso_Actual_in then
					D_bus <= S3;
				elsif Piso_Deseado = Piso_Actual_in then
					D_bus <=S4;
				else
					D_bus <= S1;
				end if;
		when S2 =>
		--	process (Piso_Actual_in)
		--	begin 
					D_bus <= S1;
		--	end process;
--				if Piso_Actual_in'transaction then 
--					D_bus <= S1;
--				end if;
		when S3 =>
		--	process (Piso_Actual_in)
		--	begin 
					D_bus <= S1;
		--	end process;
		
--				if Piso_Actual_in'transaction then 
--					D_bus <= S1;
--				end if;
				--modificaciones
		when S4 =>
		--	process (Piso_Deseado)
		--	begin
					D_bus <= S1;
		--	end process;
--				if Piso_Deseado'transaction then 
--					D_bus <= S1;
--				end if;
			-- hasta aqui--
	end case;
end process;

------LOGICA DE LA SALIDA-------

	with Q_bus select
	salidas <= 	"100" when S0,
					"001" when S2,
					"010" when S3,
					"100" when S4,
					salidas when S1;
					
	Puerta <= salidas(2);
	Motor <= salidas(1) & salidas (0);
	Piso_Actual_out <= Piso_Actual_in; 

end Behavioral;


