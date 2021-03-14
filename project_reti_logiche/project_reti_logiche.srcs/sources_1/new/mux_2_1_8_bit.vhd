library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mux_2_1_8_bit is
  Port (
  	i_sel : in STD_LOGIC;
    i_data_0 : in STD_LOGIC_VECTOR(7 downto 0);
    i_data_1 : in STD_LOGIC_VECTOR(7 downto 0);
    o_data : out STD_LOGIC_VECTOR(7 downto 0);
  );
end mux_2_1_8_bit;

architecture Behavioral of mux_2_1_8_bit is

begin
	
    o_data <= i_data_0 when i_sel = '0' else
    	      i_data_1 when i_sel = '1' else
              "XXXXXXXX";

end Behavioral;