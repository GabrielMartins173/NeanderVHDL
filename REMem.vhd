----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:21:39 10/11/2018 
-- Design Name: 
-- Module Name:    REMem - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity REMem is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           cargaREM : in  STD_LOGIC;
           entradaREM : in  STD_LOGIC_VECTOR (7 downto 0);
           saidaREM : out  STD_LOGIC_VECTOR (7 downto 0));
end REMem;

architecture Behavioral of REMem is

signal entrada : std_logic_vector (7 downto 0);
signal cargaAnt : std_logic;

begin


	process(clk,reset)
	begin
		if(reset = '1') then
			entrada <= "00000000";
		elsif(clk'event and clk ='1') then
			if(cargaREM = '1') then
				if(cargaAnt = '0') then 
					entrada <= entradaREM;
					cargaAnt <= '1';
				else
					cargaAnt <= '0';
				end if;
			end if;
		end if;
	end process;
	
saidaREM <= entrada;

end Behavioral;
