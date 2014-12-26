--------------------------------------------------------------------------------
-- Company: 
-- Engineer:

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_decodificador IS
END tb_decodificador;
 
ARCHITECTURE behavior OF tb_decodificador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT decodificador
    PORT(
         code : IN  std_logic_vector(1 downto 0);
         led : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal code : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal led : std_logic_vector(6 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: decodificador PORT MAP (
          code => code,
          led => led
        );

   -- Stimulus process
   stim_proc: process
   begin		
			code<= "00";
      wait for 100 ns;	
			code<= "01";
      wait for 100 ns;
			code<= "10";
      wait for 100 ns;
			code<= "11";
      wait for 100 ns;


      -- insert stimulus here 

      wait;
   end process;

END;
