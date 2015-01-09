
-- VHDL Instantiation Created from source file DecodificadorPD.vhd -- 13:23:47 01/09/2015
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT DecodificadorPD
	PORT(
		clk : IN std_logic;
		SenalPisoActual : IN std_logic_vector(6 downto 0);
		SenalPisoDeseado : IN std_logic_vector(6 downto 0);    
		Enable_Display : INOUT std_logic_vector(3 downto 0);      
		LED : OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;

	Inst_DecodificadorPD: DecodificadorPD PORT MAP(
		clk => ,
		Enable_Display => ,
		SenalPisoActual => ,
		SenalPisoDeseado => ,
		LED => 
	);


