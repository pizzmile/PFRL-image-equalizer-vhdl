library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity counter_4_bit is
  Port (
  	i_clk : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_en : in STD_LOGIC;
    o_data : out STD_LOGIC_VECTOR(3 downto 0);
  );
end counter_4_bit;

architecture Behavioral of counter_4_bit is

	signal data : STD_LOGIC_VECTOR(3 downto 0);
    
begin
	
    -- logica di controllo
    counter : process(i_clk, i_rst, i_en)
    begin
    	if (i_rst = ’1’) then 
        	data <= ”0000”; 
        elsif (i_clk’event and CLK = '1') then 
        	if (i_en = '1') then
            	data <= data + "0001";
            end if;
        end if; 
    end process;
	
    -- assegna il valore di uscita
    o_data <= data;
    
end Behavioral;