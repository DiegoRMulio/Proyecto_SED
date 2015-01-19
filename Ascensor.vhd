library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL; 
use IEEE.STD_LOGIC_unsigned.ALL;

entity Ascensor is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Piso_Deseado : in  STD_LOGIC_VECTOR(3 downto 0);
			  Piso_Actual_Sensor: in  STD_LOGIC_VECTOR(3 downto 0);
           Enable_Display: out STD_LOGIC_VECTOR (3 downto 0);
			  LED_Display: out STD_LOGIC_VECTOR (6 downto 0);
           Puerta : out  STD_LOGIC;
           Motor : out  STD_LOGIC_VECTOR(1 downto 0)
			  
           );
end Ascensor;

architecture Behavioral of Ascensor is
---------------------------------------------------
	COMPONENT clk_divider
	PORT(
		clk_in : IN std_logic;
		reset_clk : IN std_logic;          
		clk_out : OUT std_logic
		);
	END COMPONENT;
---------------------------------------------------	
COMPONENT decodificador
	PORT(
		code : IN std_logic_vector(1 downto 0);          
		led : OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;
---------------------------------------------------	
COMPONENT codificador
	PORT(
		cod_in : IN std_logic_vector(3 downto 0); 
			CLK: IN STD_LOGIC;
		cod_out : OUT std_logic_vector(1 downto 0)
		);
END COMPONENT;
---------------------------------------------------	
	COMPONENT BloqueadorPDeseado
	PORT(
		clk : IN std_logic;
		Enable : IN std_logic;
		Piso_Deseado_in : IN std_logic_vector(1 downto 0);          
		Piso_Deseado_out : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;
---------------------------------------------------	
	COMPONENT MaquinaDeEstados
	PORT(
		clk_Maq : IN std_logic;
		reset : IN std_logic;
		Piso_Deseado_in : IN std_logic_vector(1 downto 0);
		Piso_Actual_in : IN std_logic_vector(1 downto 0);          
		Piso_Deseado_out : OUT std_logic_vector(1 downto 0);
		Piso_Actual_out : OUT std_logic_vector(1 downto 0);
		Puerta : OUT std_logic;
		Motor : OUT std_logic_vector(1 downto 0);
		EnablePDeseado : OUT std_logic
		);
	END COMPONENT;
---------------------------------------------------
COMPONENT ModuloDisplay
	PORT(
		clk : IN std_logic;
		SenalPisoActual : IN std_logic_vector(6 downto 0);
		SenalPisoDeseado : IN std_logic_vector(6 downto 0);          
		Enable_Display : OUT std_logic_vector(3 downto 0);
		LED : OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;
---------------------------------------------------
type mis_estados is (S0,S1,S2,S3);
signal Q_bus, D_bus : mis_estados;
signal salidas: STD_LOGIC_VECTOR (2 downto 0);
signal Piso_Deseado_BBLOQ: STD_LOGIC_VECTOR (1 downto 0);
signal Piso_Deseado_BFSM: STD_LOGIC_VECTOR (1 downto 0);--Antiguo ABLOQ
signal Piso_Deseado_AFSM: STD_LOGIC_VECTOR (1 downto 0);
signal Piso_Actual_BFSM: STD_LOGIC_VECTOR (1 downto 0);
signal Piso_Actual_AFSM: STD_LOGIC_VECTOR (1 downto 0);
signal Piso_Actual_LED: STD_LOGIC_VECTOR (6 downto 0);
signal Piso_Deseado_LED: STD_LOGIC_VECTOR (6 downto 0);

signal clk_1s: STD_LOGIC;
signal Enable_i: STD_LOGIC;
begin
---------------------------------------------------
---CONEXIONES
---------------------------------------------------
Inst_clk_Divider: clk_divider PORT MAP(
		clk_in =>clk,
		reset_clk =>reset,
		clk_out => clk_1s
	);
---------------------------------------------------	
Inst_Decodificador_PA: decodificador PORT MAP(
		code =>Piso_Actual_AFSM ,
		led => Piso_Actual_LED
	);
---------------------------------------------------	
Inst_Decodificador_PD: decodificador PORT MAP(
		code =>Piso_Deseado_AFSM ,
		led => Piso_Deseado_LED
	);
---------------------------------------------------	
Inst_Codificador_PD: codificador PORT MAP(
		cod_in =>Piso_Deseado ,		
		cod_out =>Piso_Deseado_BBLOQ ,
		CLK=> clk
	);
---------------------------------------------------	
Inst_Codificador_PA: codificador PORT MAP(
		cod_in =>Piso_Actual_Sensor ,
		cod_out =>Piso_Actual_BFSM,
		CLK=> clk
	);	
---------------------------------------------------

Inst_BloqueadorPDeseado: BloqueadorPDeseado PORT MAP(
		clk => clk ,
		Enable =>Enable_i ,
		Piso_Deseado_in =>Piso_Deseado_BBLOQ ,
		Piso_Deseado_out => Piso_Deseado_BFSM
	);
---------------------------------------------------
	
Inst_MaquinaDeEstados: MaquinaDeEstados PORT MAP(
		clk_Maq =>clk_1s ,
		reset => reset,
		Piso_Deseado_in => Piso_Deseado_BFSM  ,
		Piso_Deseado_out => Piso_Deseado_AFSM ,
		Piso_Actual_in => Piso_Actual_BFSM ,
		Piso_Actual_out => Piso_Actual_AFSM,
		Puerta =>Puerta ,
		Motor => Motor ,
		EnablePDeseado =>Enable_i 
	);
	
---------------------------------------------------
Inst_ModuloDisplay: ModuloDisplay PORT MAP(
		clk => clk,
		SenalPisoActual => Piso_Actual_LED  ,
		SenalPisoDeseado => Piso_Deseado_LED ,
		Enable_Display =>Enable_Display  ,
		LED => LED_Display
	);

end Behavioral;
