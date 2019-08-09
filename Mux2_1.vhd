----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:42:34 09/18/2018 
-- Design Name: 
-- Module Name:    Mux2_1 - Behavioral 
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

entity Mux2_1 is
    Port ( seletorMux : in  STD_LOGIC;
           entrada1MUX : in  STD_LOGIC_VECTOR (7 downto 0);
			  entrada2MUX : in  STD_LOGIC_VECTOR (7 downto 0);
           saidaMux : out  STD_LOGIC_VECTOR (7 downto 0));
end Mux2_1;

architecture Behavioral of Mux2_1 is


begin

process(seletorMux, entrada1MUX, entrada2MUX)
		begin
			if(seletorMux = '0') then
				saidaMux <= entrada1MUX;
			else saidaMux <= entrada2MUX;
			end if;				
	end process;

end Behavioral;

