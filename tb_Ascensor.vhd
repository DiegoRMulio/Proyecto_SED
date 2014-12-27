LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_Ascensor IS
END tb_Ascensor;
 
ARCHITECTURE behavior OF tb_Ascensor IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Ascensor
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         Piso_Deseado : IN  std_logic_vector(3 downto 0);
         Piso_Actual_Sensor : IN  std_logic_vector(3 downto 0);
         Piso_Actual_Display : OUT  std_logic_vector(6 downto 0);
         Puerta : OUT  std_logic;
         Motor : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal Piso_Deseado : std_logic_vector(3 downto 0) := (others => '0');
   signal Piso_Actual_Sensor : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal Piso_Actual_Display : std_logic_vector(6 downto 0);
   signal Puerta : std_logic;
   signal Motor : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Ascensor PORT MAP (
          clk => clk,
          reset => reset,
          Piso_Deseado => Piso_Deseado,
          Piso_Actual_Sensor => Piso_Actual_Sensor,
          Piso_Actual_Display => Piso_Actual_Display,
          Puerta => Puerta,
          Motor => Motor
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
			reset<='1';
			wait for clk_period;
			reset<='0';
			Piso_Deseado<="1000";
			Piso_Actual_Sensor<="0000";
			wait for 1000 ms;
			Piso_Deseado<="1000";
			Piso_Actual_Sensor<="0001";
			wait for 1000 ms;
			Piso_Deseado<="1000";
			Piso_Actual_Sensor<="0010";
			wait for 1000 ms;
			Piso_Deseado<="1000";
			Piso_Actual_Sensor<="0100";
			wait for 1000 ms ;
			Piso_Deseado<="1000";
			Piso_Actual_Sensor<="1000";
			wait for 1000 ms;
	
      -- hold reset state for 100 ns.
     -- wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
