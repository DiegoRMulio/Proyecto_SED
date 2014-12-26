
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_MaquinaDeEstados IS
END tb_MaquinaDeEstados;
 
ARCHITECTURE behavior OF tb_MaquinaDeEstados IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MaquinaDeEstados
    PORT(
         clk_Maq : IN  std_logic;
         reset : IN  std_logic;
         Piso_Deseado : IN  std_logic_vector(1 downto 0);
         Piso_Actual_in : IN  std_logic_vector(1 downto 0);
         Piso_Actual_out : OUT  std_logic_vector(1 downto 0);
         Puerta : OUT  std_logic;
         Motor : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk_Maq : std_logic := '0';
   signal reset : std_logic := '0';
   signal Piso_Deseado : std_logic_vector(1 downto 0) := (others => '0');
   signal Piso_Actual_in : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Piso_Actual_out : std_logic_vector(1 downto 0);
   signal Puerta : std_logic;
   signal Motor : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant clk_Maq_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MaquinaDeEstados PORT MAP (
          clk_Maq => clk_Maq,
          reset => reset,
          Piso_Deseado => Piso_Deseado,
          Piso_Actual_in => Piso_Actual_in,
          Piso_Actual_out => Piso_Actual_out,
          Puerta => Puerta,
          Motor => Motor
        );

   -- Clock process definitions
   clk_Maq_process :process
   begin
		clk_Maq <= '0';
		wait for clk_Maq_period/2;
		clk_Maq <= '1';
		wait for clk_Maq_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		Piso_Deseado<="11";
		Piso_Actual_in<="00";
      wait for 10 ns;	
		Piso_Deseado<="11";
		Piso_Actual_in<="01";
		wait for 10 ns;
		Piso_Deseado<="11";
		Piso_Actual_in<="10";
		wait for 10 ns;
		Piso_Deseado<="11";
		Piso_Actual_in<="11";
		wait for 10 ns;


      -- insert stimulus here 

      wait;
   end process;

END;
