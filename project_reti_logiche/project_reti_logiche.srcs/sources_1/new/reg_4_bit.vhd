library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity reg_4_bit is
  Port ( 
  	i_clk : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_load : in STD_LOGIC;
    i_data : in STD_LOGIC_VECTOR(3 downto 0);
    o_data : out STD_LOGIC_VECTOR(3 downto 0)
  );
end reg_4_bit;

architecture Behavioral of reg_4_bit is
	signal data : STD_LOGIC_VECTOR(3 downto 0) := "0000";
begin
    
    -- logica di controllo del registro
	reg : process(i_clk, i_rst)
    begin
    	if (i_rst = ’1’) then 
        	data <= ”0000”; 
        elsif (i_clk’event and CLK = '1') then 
        	if (i_load = '1') then
            	data <= i_data;
            end if;
        end if; 
    end process;
	
    -- assegna il contenuto del registro all'uscita
    o_data <= data;
    
end Behavioral;