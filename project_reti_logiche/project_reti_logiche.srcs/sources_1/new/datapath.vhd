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
        pixel_counter_rst : in STD_LOGIC;
        pixel_counter_en : in STD_LOGIC;
        address_sel : in STD_LOGIC_VECTOR(1 downto 0);
        max_value_sel : in STD_LOGIC;
        max_value_load : in STD_LOGIC;
        min_value_sel : in STD_LOGIC;
        min_value_load : in STD_LOGIC;
        temp_value_load : in STD_LOGIC;
        shift_level_load : in STD_LOGIC;
        shift_counter_rst : in STD_LOGIC;
        shift_counter_en : in STD_LOGIC;
        pixel_counter_end : out STD_LOGIC;
        shift_counter_end : out STD_LOGIC;
        o_address : out STD_LOGIC_VECTOR(15 downto 0);
        o_data : out STD_LOGIC_VECTOR(7 downto 0)
    );
end datapath;

architecture Behavioral of datapath is
	
    component reg_4_bit is
    	port (
        	i_clk : in STD_LOGIC;
            i_rst : in STD_LOGIC;
            i_load : in STD_LOGIC;
            i_data : in STD_LOGIC_VECTOR(3 downto 0);
            o_data : out STD_LOGIC_VECTOR(3 downto 0)
        );
    end component reg_4_bit;
    
    component reg_8_bit is
    	port (
        	i_clk : in STD_LOGIC;
            i_rst : in STD_LOGIC;
            i_load : in STD_LOGIC;
            i_data : in STD_LOGIC_VECTOR(3 downto 0);
            o_data : out STD_LOGIC_VECTOR(3 downto 0)
        );
    end component reg_8_bit;
    
    component reg_16_bit is
    	port (
        	i_clk : in STD_LOGIC;
            i_rst : in STD_LOGIC;
            i_load : in STD_LOGIC;
            i_data : in STD_LOGIC_VECTOR(3 downto 0);
            o_data : out STD_LOGIC_VECTOR(3 downto 0)
        );
    end component reg_16_bit;
	
	component reg_sll_8_bit is
	  Port ( 
		i_clk : in STD_LOGIC;
		i_rst : in STD_LOGIC;
		i_load : in STD_LOGIC;
		i_data : in STD_LOGIC_VECTOR(7 downto 0);
		o_data : out STD_LOGIC_VECTOR(7 downto 0)
	  );
	end component reg_sll_8_bit;
	
	component mux_2_1_8_bit is
	  Port (
		i_sel : in STD_LOGIC;
		i_data_0 : in STD_LOGIC_VECTOR(7 downto 0);
		i_data_1 : in STD_LOGIC_VECTOR(7 downto 0);
		o_data : out STD_LOGIC_VECTOR(7 downto 0)
	  );
	end component mux_2_1_8_bit;
	
	component mux_4_1_16_bit is
	  Port (
		i_sel : in STD_LOGIC_VECTOR(1 downto 0);
		i_data_00 : in STD_LOGIC_VECTOR(15 downto 0);
		i_data_01 : in STD_LOGIC_VECTOR(15 downto 0);
		i_data_10 : in STD_LOGIC_VECTOR(15 downto 0);
		i_data_11 : in STD_LOGIC_VECTOR(15 downto 0);
		o_data : out STD_LOGIC_VECTOR(15 downto 0)
	  );
	end component mux_4_1_16_bit;
	
	component counter_4_bit is
	  Port (
		i_clk : in STD_LOGIC;
		i_rst : in STD_LOGIC;
		i_en : in STD_LOGIC;
		o_data : out STD_LOGIC_VECTOR(3 downto 0)
	  );
	end component counter_4_bit;
	
	component counter_16_bit is
	  Port (
		i_clk : in STD_LOGIC;
		i_rst : in STD_LOGIC;
		i_en : in STD_LOGIC;
		o_data : out STD_LOGIC_VECTOR(15 downto 0)
	  );
	end component counter_16_bit;
    
    signal n_col : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal size_prod : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
    signal size : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
    signal pixel_count : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
    constant address_00 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
    constant address_01 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000001";
    signal address_10 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
    signal address_11 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
    signal max_comp_in : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
	signal max_comp_out : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal max_value : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal min_comp_in : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
	signal min_comp_out : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal min_value : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal delta_value : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
	signal shift_level_calc_out: STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal shift_level : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
	signal shift_count : STD_LOGIC_VECTOR(3 downto 0) := "0000";
	signal temp_value_sub : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
	signal temp_value : STD_LOGIC_VECTOR(7 downto 0) := "00000000";

begin
	
    n_col_reg : reg_8_bit port map(
    	i_clk => i_clk,
        i_rst => i_rst,
        i_load => n_col_load,
        i_data => i_data,
        o_data => n_col
    );
	
	size_prod <= n_col * i_data;
	
	size_reg : reg_16_bit port map(
		i_clk => i_clk,
		i_rst => i_rst,
		i_load => size_load,
		i_data => size_prod,
		o_data => size
	);
	
	pixel_counter : counter_16_bit port map(
		i_clk => i_clk,
		i_rst => pixel_counter_rst,
		i_en => pixel_counter_en,
		o_data => pixel_count
	);
	
	pixel_counter_end <= '1' when pixel_count = size else '0';
	
	address_10 <= pixel_count + "0000000000000010";
	
	address_11 <= address_10 + size;
	
	address_mux : mux_4_1_16_bit port map(
		i_sel => address_sel,
		i_data_00 => address_00,
		i_data_01 => address_01,
		i_data_10 => address_10,
		i_data_11 => address_11,
		o_data => o_address
	);
	
	max_value_mux : mux_2_1_8_bit port map(
		i_sel => max_value_sel,
		i_data_0 => "00000000",
		i_data_1 => i_data,
		o_data => max_comp_in
	);
	
	max_comp_out <= max_comp_in when max_comp_in > max_value else max_value;
	
	max_value_reg : reg_8_bit port map(
		i_clk => i_clk,
		i_rst => i_rst,
		i_load => max_value_load,
		i_data => max_comp_out,
		o_data => max_value
	);
	
	min_value_mux : mux_2_1_8_bit port map(
		i_sel => min_value_sel,
		i_data_0 => "11111111",
		i_data_1 => i_data,
		o_data => min_comp_in
	);
	
	min_comp_out <= min_comp_in when min_comp_in < min_value else min_value;			 
	
	min_value_reg : reg_8_bit port map(
		i_clk => i_clk,
		i_rst => i_rst,
		i_load => min_value_load,
		i_data => min_comp_out,
		o_data => min_value
	);
	
	delta_value <= max_value - min_value;
	
	shift_level_calc : process(delta_value)
    begin
        if (delta_value = "00000000") then
            shift_level_calc_out <= "1000";
        elsif ("00000000" < delta_value and delta_value < "00000011") then
            shift_level_calc_out <= "0111";
        elsif ("00000010" < delta_value and delta_value < "00000111") then
            shift_level_calc_out <= "0110";
        elsif ("00000110" < delta_value and delta_value < "00001111") then
            shift_level_calc_out <= "0101";
        elsif ("00001110" < delta_value and delta_value < "00011111") then
            shift_level_calc_out <= "0100";
        elsif ("00011110" < delta_value and delta_value < "00111111") then
            shift_level_calc_out <= "0011";
        elsif ("00111110" < delta_value and delta_value < "01111111") then
            shift_level_calc_out <= "0010";
        elsif ("01111110" < delta_value and delta_value < "11111111") then
            shift_level_calc_out <= "0001";
        elsif (delta_value = "11111111") then
            shift_level_calc_out <= "0000";
        end if;
    end process;
	
	shift_level_reg : reg_4_bit port map(
		i_clk => i_clk,
		i_rst => i_rst,
		i_load => shift_level_load,
		i_data => shift_level_calc_out,
		o_data => shift_level
	);
	
	shift_counter : counter_4_bit port map(
		i_clk => i_clk,
		i_rst => shift_counter_rst,
		i_en => shift_counter_en,
		o_data => shift_count
	);
	
	temp_value_sub <= i_data - min_value;
	
	temp_value_reg : reg_sll_8_bit port map(
		i_clk => i_clk,
		i_rst => i_rst,
		i_load => temp_value_load,
		i_data => temp_value_sub,
		o_data => temp_value
	);
	
	o_data <= temp_value(7 downto 0) when temp_value < "011111111" else "11111111";
	
	
end Behavioral;
