library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mux_4_1_16_bit is
  Port (
  	i_sel : in STD_LOGIC_VECTOR(1 downto 0);
    i_data_00 : in STD_LOGIC_VECTOR(15 downto 0);
    i_data_01 : in STD_LOGIC_VECTOR(15 downto 0);
    i_data_10 : in STD_LOGIC_VECTOR(15 downto 0);
    i_data_11 : in STD_LOGIC_VECTOR(15 downto 0);
    o_data : out STD_LOGIC_VECTOR(15 downto 0)
  );
end mux_4_1_16_bit;

architecture Behavioral of mux_4_1_16_bit is

begin
	
    o_data <= i_data_00 when i_sel = "00" else
    	      i_data_01 when i_sel = "01" else
              i_data_10 when i_sel = "10" else
              i_data_11 when i_sel = "11" else
              "XXXXXXXXXXXXXXXX";

end Behavioral;