
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY TBDecodificadorPD IS
END TBDecodificadorPD;
 
ARCHITECTURE behavior OF TBDecodificadorPD IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DecodificadorPD
    PORT(
         clk : IN  std_logic;
         Enable_Display : INOUT  std_logic_vector(3 downto 0);
         SenalPisoActual : IN  std_logic_vector(6 downto 0);
         SenalPisoDeseado : IN  std_logic_vector(6 downto 0);
         LED : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal SenalPisoActual : std_logic_vector(6 downto 0) := (others => '0');
   signal SenalPisoDeseado : std_logic_vector(6 downto 0) := (others => '0');

	--BiDirs
   signal Enable_Display : std_logic_vector(3 downto 0);

 	--Outputs
   signal LED : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DecodificadorPD PORT MAP (
          clk => clk,
          Enable_Display => Enable_Display,
          SenalPisoActual => SenalPisoActual,
          SenalPisoDeseado => SenalPisoDeseado,
          LED => LED
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin	  
	 Enable_Display<="1000";
	  SenalPisoActual<="1001111";
	  SenalPisoDeseado<="1000101";
      wait for clk_period*2;	
		Enable_Display<="0100";
	  SenalPisoActual<="1000000";
	  SenalPisoDeseado<="0111111";
	  wait for clk_period*2;
	  Enable_Display<="0010";
	  SenalPisoActual<="0000001";
	  SenalPisoDeseado<="1111110";
	    wait for clk_period*2;
		Enable_Display<="0001";
	  SenalPisoActual<="0111001";
	  SenalPisoDeseado<="1000110";
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
