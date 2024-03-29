----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:40:31 10/11/2018 
-- Design Name: 
-- Module Name:    ULA - Behavioral 
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

entity ULA is
    Port ( sel : in  STD_LOGIC_VECTOR (2 downto 0);
           X : in  STD_LOGIC_VECTOR (7 downto 0);
           Y : in  STD_LOGIC_VECTOR (7 downto 0);
           saidaULA : out  STD_LOGIC_VECTOR (7 downto 0);
           M : out  STD_LOGIC_VECTOR (7 downto 0);
           NZ : out  STD_LOGIC_VECTOR (1 downto 0));
end ULA;

architecture Behavioral of ULA is

signal operacao : std_logic_vector (7 downto 0);
signal mult : std_logic_vector (15 downto 0);

begin

	process(sel, X, Y)
	begin
		mult <= X*Y;
		case sel is
			when "000" => operacao <= X + Y;
			when "001" => operacao <= X and Y;
			when "010" => operacao <= X or Y;
			when "011" => operacao <= not X;
			when "100" => operacao <= Y;
			when "101" => operacao <= X - Y;
			when "110" => operacao <= mult(7 downto 0);
			when others => operacao <= Y;
		end case;
	end process;
	
	NZ(0) <= '1' when operacao = "00000000" else 
				'0';
				
	NZ(1) <= '1' when operacao(7) = '1' else 
				'0';
				
	saidaULA <= operacao;
	M <= mult(15 downto 8);

end Behavioral;

