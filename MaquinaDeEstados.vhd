library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL; 
use IEEE.STD_LOGIC_unsigned.ALL;

entity MaquinaDeEstados is
    Port ( clk_Maq : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Piso_Deseado_in : in  STD_LOGIC_VECTOR(1 downto 0);
			  Piso_Deseado_out : out  STD_LOGIC_VECTOR(1 downto 0);
           Piso_Actual_in: in STD_LOGIC_VECTOR (1 downto 0);
			  Piso_Actual_out: out STD_LOGIC_VECTOR (1 downto 0);
           Puerta : out  STD_LOGIC;
           Motor : out  STD_LOGIC_VECTOR(1 downto 0);
			  EnablePDeseado: out STD_LOGIC
           );
end MaquinaDeEstados;

architecture Behavioral of MaquinaDeEstados is
---------------------------------------------------
type mis_estados is (S0,S1,S2,S3,S4);
signal Q_bus, D_bus : mis_estados;
signal salidas: STD_LOGIC_VECTOR (3 downto 0);
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
process(clk_Maq,Q_bus,reset,Piso_Deseado_in,Piso_Actual_in)
--variable salida_ant: std_logic_vector(3 downto 0);
begin
	CASE (Q_BUS) is
		when S0 =>
				if reset = '0' then
					D_bus<=S1;
				elsif reset = '1' then
					D_bus <= S0;
				end if;				
		when S1 =>
				if Piso_Deseado_in < Piso_Actual_in AND reset='0' then
					D_bus <= S2;
					salidas <= "0010";
				elsif Piso_Deseado_in > Piso_Actual_in AND reset='0' then
					D_bus <= S3;
					salidas <= "0100";
				elsif Piso_Deseado_in = Piso_Actual_in AND reset='0' then
					D_bus <=S4;
					salidas <= "1001";
				elsif reset='1' then
					D_bus <= S0;
					salidas <= 	"1001";
				else
					D_bus <= S1;
				end if;
		when S2 =>
					D_bus <= S1;
					salidas <= 	"0010";
					
					if reset='1' then
					D_bus <= S0;
					salidas <= 	"1001";
					end if;

					
		when S3 =>
					D_bus <= S1;
					salidas <= 	"0100";
					
					if reset='1' then
					D_bus <= S0;
					salidas <= 	"1001";
					end if;
					
		when S4 =>
					D_bus <= S1;
					salidas <= 	"1001";
					
					if reset='1' then
					D_bus <= S0;
					salidas <= 	"1001";
					end if;

					
	end case;
end process;

------LOGICA DE LA SALIDA-------

--	with Q_bus select
--	salidas <= 	"1001" when S0,
--					"0010" when S2,
--					"0100" when S3,
--					"1001" when S4,
--					 salidas when others;			
	
		
	Puerta <= salidas(3);
	Motor <= salidas(2) & salidas (1);	
	EnablePDeseado <= salidas(0);
	Piso_Actual_out <= Piso_Actual_in; 
	Piso_Deseado_out <= Piso_Deseado_in;
	
end Behavioral;


