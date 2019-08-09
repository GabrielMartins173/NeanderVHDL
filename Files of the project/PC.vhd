----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:41:35 09/18/2018 
-- Design Name: 
-- Module Name:    PC - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PC is
    Port ( clk : in STD_LOGIC;
			  reset : in STD_LOGIC;
			  cargaPC : in  STD_LOGIC;
           incrementaPC : in  STD_LOGIC;
           entradaPC : in  STD_LOGIC_VECTOR (7 downto 0);
           saidaPC : out  STD_LOGIC_VECTOR (7 downto 0));
end PC;

architecture Behavioral of PC is

	signal dado : std_logic_vector (7 downto 0);
	signal cargaAnt, incAnt : std_logic;

begin

	process(clk,reset)
	begin
		if(reset = '1') then
			dado <= "00000000";
		elsif(clk'event and clk='1') then
			if(cargaPC = '1') then
				if(cargaAnt = '0') then
					dado <= entradaPC;
					cargaAnt <= '1';
				else
					cargaAnt <= '0';
				end if;
			elsif(incrementaPC = '1') then
				if(incAnt = '0') then
					dado <= dado + 1;
					incAnt <= '1'; 
				else 
					incAnt <= '0';
				end if;
			end if;
		end if;
	end process;
	
saidaPC <= dado;



end Behavioral;

