----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:49:34 09/18/2018 
-- Design Name: 
-- Module Name:    Neander - Behavioral 
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

entity Neander is
    Port ( clk : in STD_LOGIC;
			  reset : in STD_LOGIC;
			  acumulador : out STD_LOGIC_VECTOR (7 downto 0);
           halt : out  STD_LOGIC);
end Neander;

architecture Behavioral of Neander is
----------------- sinais ---------------------------------------------------------------------------------------------------------------------
signal seletorMux2, cargaPC, cargaREM, cargaRI, cargaNZ, cargaAC, cargaRDM, incPC : STD_LOGIC; 	
signal saidaULA, opcode, saidaPC, saidaAC, saidaRDM, saidaREM, saidaMemoria, mult, saidaMUX3, saidaMUX2 : std_logic_vector(7 downto 0); 
signal write_read : std_logic_vector(0 downto 0);
signal seletorMux3, saidaNZ, entradaNZ : std_logic_vector(1 downto 0); 
signal selULA : std_logic_vector(2 downto 0);
signal inst : std_logic_vector(15 downto 0);

----------------- componentes ----------------------------------------------------------------------------------------------------------------
COMPONENT Mux2_1 is
PORT(
		seletorMux : in  STD_LOGIC;
      entrada1MUX : in  STD_LOGIC_VECTOR (7 downto 0);
		entrada2MUX : in STD_LOGIC_VECTOR (7 downto 0);
      saidaMux : out  STD_LOGIC_VECTOR (7 downto 0)
		);
	  
END COMPONENT;

COMPONENT PC is
PORT( 
      clk : in STD_LOGIC;
  	   reset : in STD_LOGIC;
  	   cargaPC : in  STD_LOGIC;
      incrementaPC : in  STD_LOGIC;
		entradaPC : in  STD_LOGIC_VECTOR (7 downto 0);
		saidaPC : out  STD_LOGIC_VECTOR (7 downto 0)
		);
	  
END COMPONENT;



COMPONENT Mux3_1 is
PORT(
		seletorMux : in  STD_LOGIC_VECTOR (1 downto 0);
      entrada1MUX : in  STD_LOGIC_VECTOR (7 downto 0);
		entrada2MUX : in STD_LOGIC_VECTOR (7 downto 0);
		entrada3MUX : in STD_LOGIC_VECTOR (7 downto 0);
      saidaMux : out  STD_LOGIC_VECTOR (7 downto 0)
		);
	  
END COMPONENT;

COMPONENT REMem is
  PORT (
		clk : in  STD_LOGIC;
      reset : in  STD_LOGIC;
      cargaREM : in  STD_LOGIC;
      entradaREM : in  STD_LOGIC_VECTOR (7 downto 0);
      saidaREM : out  STD_LOGIC_VECTOR (7 downto 0)
  );
END COMPONENT;


COMPONENT RDM is
  PORT (
		clk : in  STD_LOGIC;
      reset : in  STD_LOGIC;
      cargaRDM : in  STD_LOGIC;
      RD : in  STD_LOGIC_VECTOR (0 downto 0);
      entradaA : in  STD_LOGIC_VECTOR (7 downto 0);
      entradaB : in  STD_LOGIC_VECTOR (7 downto 0);
      saidaRDM : out  STD_LOGIC_VECTOR (7 downto 0)
  );
END COMPONENT;

COMPONENT AC is
  PORT (
		clk : in  STD_LOGIC;
      reset : in  STD_LOGIC;
      cargaAC : in  STD_LOGIC;
      entradaAC : in  STD_LOGIC_VECTOR (7 downto 0);
      saidaAC : out  STD_LOGIC_VECTOR (7 downto 0)
  );
END COMPONENT;

COMPONENT RI is
  PORT (
		clk : in  STD_LOGIC;
      reset : in  STD_LOGIC;
      cargaRI : in  STD_LOGIC;
      entradaRI : in  STD_LOGIC_VECTOR (7 downto 0);
      saidaRI : out  STD_LOGIC_VECTOR (7 downto 0)
  );
END COMPONENT;


COMPONENT Decoder is
  PORT (
		opcode : in  STD_LOGIC_VECTOR (3 downto 0);
      instrucao : out  STD_LOGIC_VECTOR (15 downto 0)
  );
END COMPONENT;


COMPONENT NZ is
  PORT (
		clk : in  STD_LOGIC;
      reset : in  STD_LOGIC;
      cargaNZ : in  STD_LOGIC;
      NZ : in  STD_LOGIC_VECTOR (1 downto 0);
      saidaNZ : out  STD_LOGIC_VECTOR (1 downto 0)
  );
END COMPONENT;


COMPONENT ULA is
  PORT (
		sel : in  STD_LOGIC_VECTOR (2 downto 0);
      X : in  STD_LOGIC_VECTOR (7 downto 0);
      Y : in  STD_LOGIC_VECTOR (7 downto 0);
      saidaULA : out  STD_LOGIC_VECTOR (7 downto 0);
      M : out  STD_LOGIC_VECTOR (7 downto 0);
      NZ : out  STD_LOGIC_VECTOR (1 downto 0)
  );
END COMPONENT;


COMPONENT UnidadeControle is
  PORT (
		clk : in  STD_LOGIC;
      reset : in  STD_LOGIC;
      N : in  STD_LOGIC;
      Z : in  STD_LOGIC;
      Decoder : in  STD_LOGIC_VECTOR (15 downto 0);
      cargaAC : out  STD_LOGIC;
      selULA : out  STD_LOGIC_VECTOR (2 downto 0);
      cargaNZ : out  STD_LOGIC;
      cargaRI : out  STD_LOGIC;
      cargaPC : out  STD_LOGIC;
      incPC : out  STD_LOGIC;
      sel : out  STD_LOGIC_VECTOR (1 downto 0);
      cargaREM : out  STD_LOGIC;
      read_write : out  STD_LOGIC_VECTOR (0 downto 0);
      halt : out  STD_LOGIC;
      selRDM : out  STD_LOGIC;
      cargaRDM : out  STD_LOGIC
  );
END COMPONENT;

COMPONENT memprog1 is
  PORT (
    clka : IN STD_LOGIC;
    wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    addra : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
  END COMPONENT;

-----------------------------------------------------------------------------------------------------------------------------------------------

begin

	Instancia_1 : Mux2_1     -- multiplexador que seleciona a entrada para rdm. (entre o acumulador que é o padrão do neander e a nova função de multiplicação).
		PORT MAP(
		
		seletorMux => seletorMux2,
		entrada1MUX => saidaAC,
		entrada2MUX => mult,
		saidaMux => saidaMUX2
		);
		
	Instancia_2 : PC
		PORT MAP(
		
		clk => clk,
  	   reset => reset,
  	   cargaPC => cargaPC,
      incrementaPC => incPC,
		entradaPC => saidaRDM,
		saidaPC => saidaPC
		);
		

		
	Instancia_3 : Mux3_1     -- multiplexador que seleciona a entrada para rem. (trata-se do mux padrao do neander com mais uma opção que foi a da multiplicação implementada).
		PORT MAP(
		
		seletorMux => seletorMux3,
		entrada1MUX => saidaPC,
		entrada2MUX => saidaRDM,
		entrada3MUX => mult,
		saidaMux => saidaMUX3
		);
		
	Instancia_4 : REMem
		PORT MAP(
		
		clk => clk,
  	   reset => reset,
  	   cargaREM => cargaREM,
      entradaREM => saidaMUX3,
		saidaREM => saidaREM
		);
		
	Instancia_5 : RDM
		PORT MAP(
		
		clk => clk,
  	   reset => reset,
  	   cargaRDM => cargaRDM,
      RD => write_read,   -- read
		entradaA => saidaMUX2,
		entradaB => saidaMemoria,
		saidaRDM => saidaRDM
		);
		
	Instancia_6 : AC
		PORT MAP(
		
		clk => clk,
  	   reset => reset,
  	   cargaAC => cargaAC,
      entradaAC => saidaULA,
		saidaAC => saidaAC
		);
		
	Instancia_7 : RI
		PORT MAP(
		
		clk => clk,
  	   reset => reset,
  	   cargaRI => cargaRI,
      entradaRI => saidaRDM,
		saidaRI => opcode
		);
		
	Instancia_8 : Decoder
		PORT MAP(
		
		opcode => opcode (7 downto 4),
		instrucao => inst
		);
		
		
	Instancia_9 : NZ
		PORT MAP(
		
		clk => clk,
  	   reset => reset,
  	   cargaNZ => cargaNZ,
      NZ => entradaNZ,
		saidaNZ => saidaNZ
		);
		
		
	Instancia_10 : ULA
		PORT MAP(
		
		sel => selULA,
  	   X => saidaAC,
  	   Y => saidaRDM,
      saidaULA => saidaULA,
		M => mult,
		NZ => entradaNZ
		);
		
		
	Instancia_11 : UnidadeControle
		PORT MAP(
		
		clk => clk,
      reset => reset,
      N => saidaNZ(1),
      Z => saidaNZ(0),
      Decoder => inst,
      cargaAC => cargaAC,
      selULA => selULA,
      cargaNZ => cargaNZ,
      cargaRI => cargaRI,
      cargaPC => cargaPC,
      incPC => incPC,
      sel => seletorMux3,
      cargaREM => cargaREM,
      read_write => write_read,
      halt => halt,
      selRDM => seletorMux2,
      cargaRDM => cargaRDM
		);

	Instancia_12 : memprog1
		PORT MAP(
		
		clka => clk,
  	   wea => write_read,
  	   addra => saidaREM,
      dina => saidaRDM,
		douta => saidaMemoria
		);
		
		acumulador <= saidaAC;


end Behavioral;

