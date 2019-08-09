--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:31:18 10/12/2018
-- Design Name:   
-- Module Name:   C:/Users/gabri/Dropbox/SD/Arquivos login INF/Trabalho 2 SD - Gabriel Martins dos Santos/Neander_Gabriel_Martins/Tb_Neander.vhd
-- Project Name:  Neander_Gabriel_Martins
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Neander
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
 
ENTITY Tb_Neander IS
END Tb_Neander;
 
ARCHITECTURE behavior OF Tb_Neander IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Neander
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
			acumulador : OUT std_logic_vector (7 downto 0);
         halt : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
	signal acumulador : std_logic_vector (7 downto 0);
   signal halt : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Neander PORT MAP (
          clk => clk,
          reset => reset,
			 acumulador => acumulador,
          halt => halt
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 
		
		wait for 100 ns;	

		reset <= '1';
		
		wait for clk_period;
		
		reset <= '0';
		

      wait;
   end process;

END;
