-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

	ENTITY decoder_decoder_tb_vhd_tb IS
	END decoder_decoder_tb_vhd_tb;
	ARCHITECTURE behavior OF decoder_decoder_tb_vhd_tb IS
		COMPONENT decoder
		PORT(
				code : IN std_logic_vector(3 DOWNTO 0);
				led : OUT std_logic_vector(6 DOWNTO 0)
			);
	END COMPONENT;
	SIGNAL code : std_logic_vector(3 DOWNTO 0);
	SIGNAL led : std_logic_vector(6 DOWNTO 0);
	TYPE vtest is record
		code : std_logic_vector(3 DOWNTO 0);
		led : std_logic_vector(6 DOWNTO 0);
	END RECORD;
	TYPE vtest_vector IS ARRAY (natural RANGE <>) OF vtest;
	CONSTANT test: vtest_vector := (
		(code => "0000", led => "0000001"),
		(code => "0001", led => "1001111"),
		(code => "0010", led => "0010010"),
		(code => "0011", led => "0000110"),
		(code => "0100", led => "1001100"),
		(code => "0101", led => "0100100"),
		(code => "0110", led => "0100000"),
		(code => "0111", led => "0001111"),
		(code => "1000", led => "0000000"),
		(code => "1001", led => "0000100"),
		(code => "1010", led => "1111110"),
		(code => "1011", led => "1111110"),
		(code => "1100", led => "1111110"),
		(code => "1101", led => "1111110"),
		(code => "1110", led => "1111110"),
		(code => "1111", led => "1111110")
	);
	BEGIN

		  uut: decoder PORT MAP(
		code => code,
		led => led
		);
	tb: PROCESS
	BEGIN
		FOR i IN 0 TO test'HIGH LOOP
			code <= test(i).code;
			WAIT FOR 20 ns;
			ASSERT led = test(i).led
				REPORT "Salida incorrecta."
				SEVERITY FAILURE;
		END LOOP;
		ASSERT false
				REPORT "Simulaci�n finalizada. Test superado."
				SEVERITY FAILURE;
	END PROCESS;
	END;
	
	LIBRARY ieee;
	USE ieee.std_logic_1164.ALL;
	USE ieee.std_logic_arith.ALL;
	USE ieee.std_logic_unsigned.ALL;
	
	ENTITY decoder IS
		PORT (
					code : IN std_logic_vector(3 DOWNTO 0);
					led : OUT std_logic_vector(6 DOWNTO 0)
				);
END ENTITY decoder;

ARCHITECTURE dataflow OF decoder IS
BEGIN

WITH code SELECT
	led <="0000001" WHEN "0000",
			"1001111" WHEN "0001",
			"0010010" WHEN "0010",
			"0000110" WHEN "0011",
			"1001100" WHEN "0100",
			"0100100" WHEN "0101",
			"0100000" WHEN "0110",
			"0001111" WHEN "0111",
			"0000000" WHEN "1000",
			"0000100" WHEN "1001",
			"1111110" WHEN others;
	END ARCHITECTURE dataflow;