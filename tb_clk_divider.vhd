LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
-- USE ieee.numeric_std.ALL;
 
ENTITY tb_clk_divider IS
END tb_clk_divider;
 
ARCHITECTURE behavior OF tb_clk_divider IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT clk_divider
    PORT(
         clk_in : IN  std_logic;
         reset_clk : IN  std_logic;
         clk_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk_in : std_logic := '0';
   signal reset_clk : std_logic := '0';

 	--Outputs
   signal clk_out : std_logic;

   -- Clock period definitions
	
   constant clk_in_period : time := 20 ns;
   --constant reset_clk_period : time := 40 ns;
   --constant clk_out_period : time := 1000 ms ;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: clk_divider PORT MAP (
          clk_in => clk_in,
          reset_clk => reset_clk,
          clk_out => clk_out
        );

   -- Clock process definitions
   clk_in_process :process
   begin
		clk_in <= '0';
		wait for clk_in_period/2;
		clk_in <= '1';
		wait for clk_in_period/2;
   end process;
 
   --reset_clk_process :process
   --begin
		--reset_clk <= '0';
		--wait for reset_clk_period/2;
		--reset_clk <= '1';
		--wait;
		--wait for reset_clk_period/2;
   --end process;
 
  -- clk_out_process :process
   --begin
		--clk_out <= '0';
		--wait for clk_out_period/2;
		--clk_out <= '1';
		--wait for clk_out_period/2;
   --end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
		reset_clk <= '1'; -- Initial conditions.
		wait for 100 ns;
		reset_clk <= '0'; -- Comienza a funcionar
		wait for 1500 ms;
		reset_clk <= '1'; --
      wait;
   end process;

END;
