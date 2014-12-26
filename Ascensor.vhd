library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL; 
use IEEE.STD_LOGIC_unsigned.ALL;

entity Ascensor is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           Piso_Deseado : in  STD_LOGIC_VECTOR(3 downto 0);
           Piso_Actual: out STD_LOGIC_VECTOR (6 downto 0);
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
		cod_out : OUT std_logic_vector(1 downto 0)
		);
END COMPONENT;
---------------------------------------------------	
COMPONENT MaquinaDeEstados
	PORT(
		clk_Maq : IN std_logic;
		reset : IN std_logic;
		Piso_Deseado : IN std_logic_vector(1 downto 0);          
		Piso_Actual : OUT std_logic_vector(1 downto 0);
		Puerta : OUT std_logic;
		Motor : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;
---------------------------------------------------
type mis_estados is (S0,S1,S2,S3);
signal Q_bus, D_bus : mis_estados;
signal salidas: STD_LOGIC_VECTOR (2 downto 0);
signal Piso_Deseado_i: STD_LOGIC_VECTOR (1 downto 0);
signal Piso_Actual_i: STD_LOGIC_VECTOR (1 downto 0);
signal clk_1s: STD_LOGIC;
begin
---------------------------------------------------
---CONEXIONES
---------------------------------------------------
	Inst_clk_divider: clk_divider PORT MAP(
		clk_in =>clk,
		reset_clk =>reset,
		clk_out => clk_1s
	);
---------------------------------------------------	
	Inst_decodificador: decodificador PORT MAP(
		code =>Piso_Actual_i ,
		led => Piso_Actual
	);
---------------------------------------------------	
Inst_codificador: codificador PORT MAP(
		cod_in =>Piso_Deseado ,
		cod_out =>Piso_Deseado_i 
	);
---------------------------------------------------	
Inst_MaquinaDeEstados: MaquinaDeEstados PORT MAP(
		clk_Maq =>clk_1s ,
		reset =>reset ,
		Piso_Deseado =>Piso_Deseado_i ,
		Piso_Actual =>Piso_Actual_i ,
		Puerta =>Puerta ,
		Motor =>Motor 
	);
---------------------------------------------------

end Behavioral;
