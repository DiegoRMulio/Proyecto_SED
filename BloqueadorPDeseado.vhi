
-- VHDL Instantiation Created from source file BloqueadorPDeseado.vhd -- 13:56:49 01/02/2015
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT BloqueadorPDeseado
	PORT(
		clk : IN std_logic;
		Enable : IN std_logic;
		Piso_Deseado_in : IN std_logic_vector(1 downto 0);          
		Piso_Deseado_out : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

	Inst_BloqueadorPDeseado: BloqueadorPDeseado PORT MAP(
		clk => ,
		Enable => ,
		Piso_Deseado_in => ,
		Piso_Deseado_out => 
	);


