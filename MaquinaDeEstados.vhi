
-- VHDL Instantiation Created from source file MaquinaDeEstados.vhd -- 13:59:27 01/02/2015
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT MaquinaDeEstados
	PORT(
		clk_Maq : IN std_logic;
		reset : IN std_logic;
		Piso_Deseado : IN std_logic_vector(1 downto 0);
		Piso_Actual_in : IN std_logic_vector(1 downto 0);          
		Piso_Actual_out : OUT std_logic_vector(1 downto 0);
		Puerta : OUT std_logic;
		Motor : OUT std_logic_vector(1 downto 0);
		EnablePDeseado : OUT std_logic
		);
	END COMPONENT;

	Inst_MaquinaDeEstados: MaquinaDeEstados PORT MAP(
		clk_Maq => ,
		reset => ,
		Piso_Deseado => ,
		Piso_Actual_in => ,
		Piso_Actual_out => ,
		Puerta => ,
		Motor => ,
		EnablePDeseado => 
	);


