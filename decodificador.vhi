
-- VHDL Instantiation Created from source file decodificador.vhd -- 18:40:05 11/27/2014
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT decodificador
	PORT(
		code : IN std_logic_vector(3 downto 0);          
		led : OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;

	Inst_decodificador: decodificador PORT MAP(
		code => ,
		led => 
	);


