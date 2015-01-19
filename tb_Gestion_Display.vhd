LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_Gestion_Display IS
END tb_Gestion_Display;
 
ARCHITECTURE behavior OF tb_Gestion_Display IS 

    COMPONENT ModuloDisplay
    PORT(
         clk : IN  std_logic;
         SenalPisoActual : IN  std_logic_vector(6 downto 0);
         SenalPisoDeseado : IN  std_logic_vector(6 downto 0);
         Enable_Display : OUT  std_logic_vector(3 downto 0);
         LED : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal SenalPisoActual : std_logic_vector(6 downto 0) := (others => '0');
   signal SenalPisoDeseado : std_logic_vector(6 downto 0) := (others => '0');

 	--Outputs
   signal Enable_Display : std_logic_vector(3 downto 0);
   signal LED : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 2 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ModuloDisplay PORT MAP (
          clk => clk,
          SenalPisoActual => SenalPisoActual,
          SenalPisoDeseado => SenalPisoDeseado,
          Enable_Display => Enable_Display,
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
		SenalPisoActual<="1001111";
		SenalPisoDeseado<="1000101";
      wait;
   end process;

END;
