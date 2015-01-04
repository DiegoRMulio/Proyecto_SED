
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_BloqueadorPDeseado IS
END tb_BloqueadorPDeseado;
 
ARCHITECTURE behavior OF tb_BloqueadorPDeseado IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT BloqueadorPDeseado
    PORT(
         clk : IN  std_logic;
         Enable : IN  std_logic;
         Piso_Deseado_in : IN  std_logic_vector(1 downto 0);
         Piso_Deseado_out : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal Enable : std_logic := '0';
   signal Piso_Deseado_in : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal Piso_Deseado_out : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: BloqueadorPDeseado PORT MAP (
          clk => clk,
          Enable => Enable,
          Piso_Deseado_in => Piso_Deseado_in,
          Piso_Deseado_out => Piso_Deseado_out
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
	
     Enable <='0';
	  Piso_Deseado_in<="10";
     wait for clk_period*3;
		Enable <='1';
		Piso_Deseado_in<="10";
	  wait for clk_period*2;
		Enable <='0';
		Piso_Deseado_in<="00";
      wait for clk_period*3;
		Enable <='1';
		Piso_Deseado_in<="11";
		wait for clk_period*3;
		Enable <='0';
		Piso_Deseado_in<="00";
		wait for clk_period*3;
		Enable <='0';
		Piso_Deseado_in<="01";
		wait for clk_period*3;
		Enable <='0';
		Piso_Deseado_in<="10";
		wait for clk_period*3;
		Enable <='0';
		Piso_Deseado_in<="11";
		wait for clk_period*3;
      -- insert stimulus here 

      wait;
   end process;

END;
