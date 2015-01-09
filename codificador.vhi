
-- VHDL Instantiation Created from source file codificador.vhd -- 10:30:08 01/09/2015
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT codificador
	PORT(
		cod_in : IN std_logic_vector(3 downto 0);          
		cod_out : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

	Inst_codificador: codificador PORT MAP(
		cod_in => ,
		cod_out => 
	);


