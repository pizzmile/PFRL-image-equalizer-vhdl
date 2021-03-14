library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity datapath is
	Port (
    	i_clk : in STD_LOGIC;
        i_rst : in STD_LOGIC;
        i_data : in STD_LOGIC_VECTOR(7 downto 0);
    	n_col_load : in STD_LOGIC;
        size_load : in STD_LOGIC;
        pixel_count_rst : in STD_LOGIC;
        pixel_count_en : in STD_LOGIC;
        address_sel : in STD_LOGIC;
        max_value_sel : in STD_LOGIC;
        max_value_load : in STD_LOGIC;
        min_value_sel : in STD_LOGIC;
        min_value_load : in STD_LOGIC;
        temp_value_load : in STD_LOGIC;
        shift_level_load : in STD_LOGIC;
        level_count_rst : in STD_LOGIC;
        level_count_en : in STD_LOGIC;
        pixel_end : out STD_LOGIC;
        shift_end : out STD_LOGIC;
        o_address : out STD_LOGIC_VECTOR(15 downto 0);
        o_data : out STD_LOGIC_VECTOR(7 downto 0)
    );
end datapath;

architecture Behavioral of datapath is
	
    component reg_4_bit is
    	port (
        	i_clk : STD_LOGIC;
            i_rst : STD_LOGIC;
            i_load : STD_LOGIC;
            i_data : STD_LOGIC_VECTOR(3 downto 0);
            o_data : STD_LOGIC_VECTOR(3 downto 0)
        );
    end component reg_4_bit;
    
    component reg_8_bit is
    	port (
        	i_clk : STD_LOGIC;
            i_rst : STD_LOGIC;
            i_load : STD_LOGIC;
            i_data : STD_LOGIC_VECTOR(3 downto 0);
            o_data : STD_LOGIC_VECTOR(3 downto 0)
        );
    end component reg_8_bit;
    
    component reg_16_bit is
    	port (
        	i_clk : STD_LOGIC;
            i_rst : STD_LOGIC;
            i_load : STD_LOGIC;
            i_data : STD_LOGIC_VECTOR(3 downto 0);
            o_data : STD_LOGIC_VECTOR(3 downto 0)
        );
    end component reg_16_bit;
    
    signal n_col : STD_LOGIC_VECTOR(7 downto 0) := "00000000";

begin
	
    n_col_reg : reg_4_bit port map(
    	i_clk => i_clk,
        i_rst => i_rst,
        i_load => n_col_load,
        i_data => i_data,
        o_data => n_col
    );

end Behavioral;
