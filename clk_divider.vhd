library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity clk_divider is
    Port ( 
		  clk_in : in  STD_LOGIC;
        reset_clk  : in  STD_LOGIC;
        clk_out: out STD_LOGIC
		  );
end clk_divider;

architecture Behavioral of clk_divider is
    signal temporal: STD_LOGIC;
begin	 
frequency_divider: process (reset_clk, clk_in) 
	variable counter : integer;    
	
begin	
        if (reset_clk = '1') then
            temporal <= '0';
            counter := 0;
        elsif rising_edge(clk_in) then
            if (counter = 24999999) then
				-- Poner 10 para testbench
				-- 24999999 para dividir a 1HZ
                temporal <= NOT(temporal);
                counter := 0;
            else
                counter := counter + 1;
            end if;
        end if;
    end process;    
    clk_out <= temporal;
end Behavioral;