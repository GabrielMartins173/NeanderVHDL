--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:03:23 10/12/2018
-- Design Name:   
-- Module Name:   C:/Users/gabri/Dropbox/SD/Arquivos login INF/Trabalho 2 SD - Gabriel Martins dos Santos/Neander_Gabriel_Martins/Tb_ULA.vhd
-- Project Name:  Neander_Gabriel_Martins
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ULA
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
USE ieee.std_logic_unsigned.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Tb_ULA IS
END Tb_ULA;
 
ARCHITECTURE behavior OF Tb_ULA IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ULA
    PORT(
         sel : IN  std_logic_vector(2 downto 0);
         X : IN  std_logic_vector(7 downto 0);
         Y : IN  std_logic_vector(7 downto 0);
         saidaULA : OUT  std_logic_vector(7 downto 0);
         M : OUT  std_logic_vector(7 downto 0);
         NZ : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
	signal clk : std_logic := '0';
   signal sel : std_logic_vector(2 downto 0) := (others => '0');
   signal X : std_logic_vector(7 downto 0) := (others => '0');
   signal Y : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal saidaULA : std_logic_vector(7 downto 0);
   signal M : std_logic_vector(7 downto 0);
   signal NZ : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ULA PORT MAP (
          sel => sel,
          X => X,
          Y => Y,
          saidaULA => saidaULA,
          M => M,
          NZ => NZ
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
      
		wait for 103 ns;	
      
		-- insert stimulus here
		
		X <= "00001111"; 
		Y <= "00110011"; 
		sel <="000"; 
		
      wait for clk_period*1;
		
      X <= "00001001"; 
		Y <= "00000011";
 		sel <="000";
		
      wait for clk_period*1;
		
		X <= "01101001"; 
		Y <= "00000001"; 
		sel <="001";
		
      wait for clk_period*1;
		
		X <= "11101001"; 
		Y <= "11100001"; 
		sel <="011"; 
		
      wait for clk_period*3;
		
		X <= "11101111"; 
		Y <= "11111001"; 
		sel <="010"; 
      
		wait for clk_period*3;
       

      wait;
   end process;

END;
