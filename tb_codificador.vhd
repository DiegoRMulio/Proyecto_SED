--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:32:42 12/26/2014
-- Design Name:   
-- Module Name:   C:/Users/Daniel/Desktop/Proyecto_SED/tb_codificador.vhd
-- Project Name:  Ascensor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: codificador
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_codificador IS
END tb_codificador;
 
ARCHITECTURE behavior OF tb_codificador IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT codificador
    PORT(
         cod_in : IN  std_logic_vector(3 downto 0);
         cod_out : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal cod_in : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal cod_out : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: codificador PORT MAP (
          cod_in => cod_in,
          cod_out => cod_out
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
