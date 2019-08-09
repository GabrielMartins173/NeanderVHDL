--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:16:34 10/12/2018
-- Design Name:   
-- Module Name:   C:/Users/gabri/Dropbox/SD/Arquivos login INF/Trabalho 2 SD - Gabriel Martins dos Santos/Neander_Gabriel_Martins/Tb_UnidadeControle.vhd
-- Project Name:  Neander_Gabriel_Martins
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: UnidadeControle
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
 
ENTITY Tb_UnidadeControle IS
END Tb_UnidadeControle;
 
ARCHITECTURE behavior OF Tb_UnidadeControle IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT UnidadeControle
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         N : IN  std_logic;
         Z : IN  std_logic;
         Decoder : IN  std_logic_vector(3 downto 0);
         cargaAC : OUT  std_logic;
         selULA : OUT  std_logic_vector(2 downto 0);
         cargaNZ : OUT  std_logic;
         cargaRI : OUT  std_logic;
         cargaPC : OUT  std_logic;
         incPC : OUT  std_logic;
         sel : OUT  std_logic_vector(1 downto 0);
         cargaREM : OUT  std_logic;
         read_write : OUT  std_logic_vector(0 downto 0);
         halt : OUT  std_logic;
         selRDM : OUT  std_logic;
         cargaRDM : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal N : std_logic := '0';
   signal Z : std_logic := '0';
   signal Decoder : std_logic_vector(3 downto 0) := (others => '0');
	signal Temp : std_logic_vector(7 downto 0) := (others => '0') ;

 	--Outputs
   signal cargaAC : std_logic;
   signal selULA : std_logic_vector(2 downto 0);
   signal cargaNZ : std_logic;
   signal cargaRI : std_logic;
   signal cargaPC : std_logic;
   signal incPC : std_logic;
   signal sel : std_logic_vector(1 downto 0);
   signal cargaREM : std_logic;
   signal read_write : std_logic_vector(0 downto 0);
   signal halt : std_logic;
   signal selRDM : std_logic;
   signal cargaRDM : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: UnidadeControle PORT MAP (
          clk => clk,
          reset => reset,
          N => N,
          Z => Z,
          Decoder => Decoder,
          cargaAC => cargaAC,
          selULA => selULA,
          cargaNZ => cargaNZ,
          cargaRI => cargaRI,
          cargaPC => cargaPC,
          incPC => incPC,
          sel => sel,
          cargaREM => cargaREM,
          read_write => read_write,
          halt => halt,
          selRDM => selRDM,
          cargaRDM => cargaRDM
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
		
		reset <= '1';
      wait for 100 ns;	
		reset <= '0';
		
      wait for clk_period*10;
		
		Decoder <= "0001";
		temp <= "00000001";
	   wait for clk_period;
		temp <= "00000010";		
      wait for clk_period;
		temp <= "00000100";
      wait for clk_period;
		temp <= "00001000";
      wait for clk_period;
		temp <= "00010000";
      wait for clk_period;
		temp <= "00100000";
      wait for clk_period;
		temp <= "01000000";
      wait for clk_period;
		temp <= "10000000";
		
		
		

      wait;
   end process;

END;
