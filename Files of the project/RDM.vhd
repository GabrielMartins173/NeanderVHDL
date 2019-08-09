----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:38:28 10/11/2018 
-- Design Name: 
-- Module Name:    RDM - Behavioral 
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

entity RDM is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           cargaRDM : in  STD_LOGIC;
           RD : in  STD_LOGIC_VECTOR (0 downto 0);
           entradaA : in  STD_LOGIC_VECTOR (7 downto 0);
           entradaB : in  STD_LOGIC_VECTOR (7 downto 0);
           saidaRDM : out  STD_LOGIC_VECTOR (7 downto 0));
end RDM;

architecture Behavioral of RDM is

signal entrada : std_logic_vector (7 downto 0);
signal cargaAnt, RDant : std_logic;

begin

	process(clk,reset)
	begin
		if(reset = '1') then
			entrada <= "00000000";
		elsif(clk'event and clk = '1') then
			if(cargaRDM = '1') then
				if(cargaAnt = '0') then
					entrada <= entradaA;
					cargaAnt <= '1';
				else
					cargaAnt <= '0';
				end if;
			elsif (RD = "0") then
				if(RDant = '0') then
					entrada <= entradaB;
					RDant <= '1';
				else
					RDant <= '0';
				end if;
			end if;
		end if;
	end process;
	
	saidaRDM <= entrada;
				


end Behavioral;

