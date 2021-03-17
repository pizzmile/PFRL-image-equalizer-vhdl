----------------------------------------------------------------------------------
-- Company: Politecnico di Milano
-- Engineer: Giacomo Pizzamiglio, Andrea Prisciantelli
-- 
-- Create Date: 14.03.2021 10:39:30
-- Design Name: 
-- Module Name: reg_8_bit - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use IEEE.NUMERIC_STD.ALL;

entity project_reti_logiche is
	port (
		i_clk : in std_logic;
		i_rst : in std_logic;
		i_start : in std_logic;
		i_data : in std_logic_vector(7 downto 0);
		o_address : out std_logic_vector(15 downto 0);
		o_done : out std_logic;
		o_en : out std_logic;
		o_we : out std_logic;
		o_data : out std_logic_vector (7 downto 0)
	);
end project_reti_logiche;

architecture Behavioral of project_reti_logiche is

    component datapath is
        port(
            i_clk : in STD_LOGIC;
            i_rst : in STD_LOGIC;
            i_data : in STD_LOGIC_VECTOR(7 downto 0);
            reg_rst : in STD_LOGIC;
            n_col_load : in STD_LOGIC;
            size_load : in STD_LOGIC;
            pixel_counter_rst : in STD_LOGIC;
            pixel_counter_en : in STD_LOGIC;
            address_sel : in STD_LOGIC_VECTOR(1 downto 0);
            max_value_sel : in STD_LOGIC;
            max_value_load : in STD_LOGIC;
            min_value_sel : in STD_LOGIC;
            min_value_load : in STD_LOGIC;
            shift_mult_load : in STD_LOGIC;
            pixel_counter_end : out STD_LOGIC;
            o_address : out STD_LOGIC_VECTOR(15 downto 0);
            o_data : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component datapath;
    
    signal reg_rst : STD_LOGIC := '0';
    signal n_col_load : STD_LOGIC := '0';
    signal size_load : STD_LOGIC := '0';
    signal pixel_counter_rst : STD_LOGIC := '0';
    signal pixel_counter_en : STD_LOGIC := '0';
    signal address_sel : STD_LOGIC_VECTOR(1 downto 0) := "00";
    signal max_value_sel : STD_LOGIC := '0';
    signal max_value_load : STD_LOGIC := '0';
    signal min_value_sel : STD_LOGIC := '0';
    signal min_value_load : STD_LOGIC := '0';
    signal shift_mult_load : STD_LOGIC := '0';
    signal pixel_counter_end : STD_LOGIC := '0';
    
    type STATE_TYPE is (
        RST,	-- Stato di reset della macchina
        REQ_N_COL,
        READ_N_COL,
        REQ_N_RIG,
        READ_N_RIG,
        INIT_COMP,
        COMP_EXT,
        CALC_SHIFT,
        INIT_CALC,
        WRITE_NEW,
        REQ_PIXEL,
        DONE	
    );
    
    signal cur_state, next_state : STATE_TYPE;	-- Stati corrente e prossimo

begin
	
	DATAPATH0 : datapath port map(
	   i_clk => i_clk,
	   i_rst => i_rst,
	   i_data => i_data,
	   o_data => o_data,
	   o_address => o_address,
	   reg_rst => reg_rst,
	   n_col_load=> n_col_load,
       size_load=> size_load,
       pixel_counter_rst=> pixel_counter_rst,
       pixel_counter_en=> pixel_counter_en,
       address_sel=> address_sel,
       max_value_sel=> max_value_sel,
       max_value_load=> max_value_load,
       min_value_sel=> min_value_sel,
       min_value_load=> min_value_load,
       shift_mult_load=> shift_mult_load,
       pixel_counter_end => pixel_counter_end
	);
	
	-- Processo state per la memorizzazione dello stato corrente
	state : process(i_clk, i_rst, cur_state)
	begin
		if(i_clk'event and i_clk='1') then
			if(i_rst = '1') then
				cur_state <= RST;
			else
				cur_state <= next_state;
			end if;
		end if;
	end process;
	
	-- Processo delta per la memorizzazione dello stato prossimo
	delta : process(cur_state, i_start, pixel_counter_end)
	begin
		next_state <= cur_state;
		case cur_state is
			when RST =>
				if(i_start = '1') then
					next_state <= REQ_N_COL;
				end if;
			when REQ_N_COL =>
				next_state <= READ_N_COL;
			when READ_N_COL =>
				next_state <= REQ_N_RIG;
			when REQ_N_RIG =>
				next_state <= READ_N_RIG;
			when READ_N_RIG =>
				next_state <= INIT_COMP;
			when INIT_COMP =>
				if(pixel_counter_end = '0') then
					next_state <= COMP_EXT;
				end if;
				if(pixel_counter_end = '1') then
					next_state <= CALC_SHIFT;
				end if;
			when COMP_EXT =>
				if(pixel_counter_end = '1') then
					next_state <= CALC_SHIFT;
				end if;
			when CALC_SHIFT =>
				next_state <= INIT_CALC;
			when INIT_CALC =>
				if(pixel_counter_end = '0') then
					next_state <= WRITE_NEW;
				end if;
				if(pixel_counter_end = '1') then
					next_state <= DONE;
				end if;
			when WRITE_NEW =>
				if (pixel_counter_end = '0') then
				    next_state <= REQ_PIXEL;
                elsif (pixel_counter_end = '1') then
                    next_state <= DONE;
                end if;
 			when REQ_PIXEL =>
                next_state <= WRITE_NEW;
			when DONE =>
				if(i_start = '0') then
					next_state <= RST;
                end if;
		end case;
	end process;
	
	-- Funzione lambda per modificare l'uscita della FSM
	lambda : process(cur_state)
	begin
		o_en <= '1';
		o_we <= '0';
		o_done <= '0';
		reg_rst <= '0';
		n_col_load <= '0';
		size_load <= '0';
		pixel_counter_rst <= '0';
		pixel_counter_en <= '0';
		address_sel <= "00";
		max_value_sel <= '0';
		max_value_load <= '0';
		min_value_sel <= '0';
		min_value_load <= '0';
		shift_mult_load <= '0';
		
		case cur_state is
            when RST =>
                o_en <= '0';
                o_we <= '0';
                max_value_load <= '1';
                min_value_load <= '1';
                pixel_counter_rst <= '1';
                pixel_counter_en <= '1';
                reg_rst <= '1'; 
            when REQ_N_COL =>
                o_en <= '1';
                o_we <= '0';
                address_sel <= "00";
                n_col_load <= '1';
            when READ_N_COL =>
                o_en <= '1';
                o_we <= '0';
                address_sel <= "00";
                n_col_load <= '1';
            when REQ_N_RIG =>
                o_en <= '1';
                o_we <= '0';
                address_sel <= "01";
                size_load <= '1';
            when READ_N_RIG =>
                o_en <= '1';
                o_we <= '0';
                address_sel <= "01";
                size_load <= '1';
            when INIT_COMP =>
                size_load <= '1';
                pixel_counter_en <= '1';
                address_sel <= "10";
            when COMP_EXT =>
                max_value_sel <= '1';
                max_value_load <= '1';
                min_value_sel <= '1';
                min_value_load <= '1';
                pixel_counter_en <='1';
                address_sel <= "10";
            when CALC_SHIFT =>
                shift_mult_load <= '1';
                pixel_counter_rst <= '1';
                pixel_counter_en <= '1';
            when INIT_CALC =>
                pixel_counter_rst <= '0';
                pixel_counter_en <= '1';
                address_sel <= "10";
            when WRITE_NEW =>
                o_we <= '1';
                address_sel <= "11";
            when REQ_PIXEL =>
                address_sel <= "10";
                pixel_counter_en <= '1';
            when DONE =>
                o_en <= '0';
                o_done <= '1';
        end case;
        
	end process;
end Behavioral;

------------------------------------------------------------------------------------------------------------------- DATAPATH
-------------------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity datapath is
	Port (
    	i_clk : in STD_LOGIC;
        i_rst : in STD_LOGIC;
        i_data : in STD_LOGIC_VECTOR(7 downto 0);
        reg_rst : in STD_LOGIC;
    	n_col_load : in STD_LOGIC;
        size_load : in STD_LOGIC;
        pixel_counter_rst : in STD_LOGIC;
        pixel_counter_en : in STD_LOGIC;
        address_sel : in STD_LOGIC_VECTOR(1 downto 0);
        max_value_sel : in STD_LOGIC;
        max_value_load : in STD_LOGIC;
        min_value_sel : in STD_LOGIC;
        min_value_load : in STD_LOGIC;
        shift_mult_load : in STD_LOGIC;
        pixel_counter_end : out STD_LOGIC;
        o_address : out STD_LOGIC_VECTOR(15 downto 0);
        o_data : out STD_LOGIC_VECTOR(7 downto 0)
    );
end datapath;

architecture Behavioral of datapath is
	
    component reg_9_bit is
    	port (
        	i_clk : in STD_LOGIC;
            i_rst : in STD_LOGIC;
            i_load : in STD_LOGIC;
            i_data : in STD_LOGIC_VECTOR(8 downto 0);
            o_data : out STD_LOGIC_VECTOR(8 downto 0)
        );
    end component reg_9_bit;
    
    component reg_8_bit is
    	port (
        	i_clk : in STD_LOGIC;
            i_rst : in STD_LOGIC;
            i_load : in STD_LOGIC;
            i_data : in STD_LOGIC_VECTOR(7 downto 0);
            o_data : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component reg_8_bit;
    
    component reg_8_bit_h is
    	port (
        	i_clk : in STD_LOGIC;
            i_rst : in STD_LOGIC;
            i_load : in STD_LOGIC;
            i_data : in STD_LOGIC_VECTOR(7 downto 0);
            o_data : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component reg_8_bit_h;
    
    component reg_16_bit is
    	port (
        	i_clk : in STD_LOGIC;
            i_rst : in STD_LOGIC;
            i_load : in STD_LOGIC;
            i_data : in STD_LOGIC_VECTOR(15 downto 0);
            o_data : out STD_LOGIC_VECTOR(15 downto 0)
        );
    end component reg_16_bit;
	
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
    signal address_10 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
    signal address_11 : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
    signal max_comp_in : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
	signal max_comp_out : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal max_value : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal min_comp_in : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
	signal min_comp_out : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal min_value : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal delta_value : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
	signal shift_mult_calc_out: STD_LOGIC_VECTOR(8 downto 0) := "000000000";
    signal shift_mult : STD_LOGIC_VECTOR(8 downto 0) := "000000000";
	signal temp_value : STD_LOGIC_VECTOR(16 downto 0) := "00000000000000000";

begin
	
    N_COL_REG : reg_8_bit port map(
    	i_clk => i_clk,
        i_rst => reg_rst,
        i_load => n_col_load,
        i_data => i_data,
        o_data => n_col
    );
	
	size_prod <= n_col * i_data;
	
	SIZE_REG : reg_16_bit port map(
		i_clk => i_clk,
		i_rst => reg_rst,
		i_load => size_load,
		i_data => size_prod,
		o_data => size
	);
	
	PIXEL_COUNTER : counter_16_bit port map(
		i_clk => i_clk,
		i_rst => pixel_counter_rst,
		i_en => pixel_counter_en,
		o_data => pixel_count
	);
	
	pixel_counter_end <= '1' when pixel_count = size else '0';
	
	address_10 <= pixel_count + "0000000000000010";
	
	address_11 <= address_10 + size - "0000000000000001";
	
	ADDRESS_MUX : mux_4_1_16_bit port map(
		i_sel => address_sel,
		i_data_00 => "0000000000000000",
		i_data_01 => "0000000000000001",
		i_data_10 => address_10,
		i_data_11 => address_11,
		o_data => o_address
	);
	
	max_comp_out <= i_data when i_data > max_value else max_value;
	
	MAX_VALUE_REG : reg_8_bit port map(
		i_clk => i_clk,
		i_rst => reg_rst,
		i_load => max_value_load,
		i_data => max_comp_out,
		o_data => max_value
	);
	
	min_comp_out <= i_data when i_data < min_value else min_value;			 
	
	MIN_VALUE_REG : reg_8_bit_h port map(
		i_clk => i_clk,
		i_rst => reg_rst,
		i_load => min_value_load,
		i_data => min_comp_out,
		o_data => min_value
	);
	
	delta_value <= max_value - min_value;
	
	SHIFT_MULT_CALC : process(delta_value)
    begin 
        if (delta_value = "00000000") then
            shift_mult_calc_out <= "100000000";
        elsif ("00000000" < delta_value and delta_value < "00000011") then
            shift_mult_calc_out <= "010000000";
        elsif ("00000010" < delta_value and delta_value < "00000111") then
            shift_mult_calc_out <= "001000000";
        elsif ("00000110" < delta_value and delta_value < "00001111") then
            shift_mult_calc_out <= "000100000";
        elsif ("00001110" < delta_value and delta_value < "00011111") then
            shift_mult_calc_out <= "000010000";
        elsif ("00011110" < delta_value and delta_value < "00111111") then
            shift_mult_calc_out <= "000001000";
        elsif ("00111110" < delta_value and delta_value < "01111111") then
            shift_mult_calc_out <= "000000100";
        elsif ("01111110" < delta_value and delta_value < "11111111") then
            shift_mult_calc_out <= "000000010";
        elsif (delta_value = "11111111") then
            shift_mult_calc_out <= "000000001";
        else 
            shift_mult_calc_out <= "XXXXXXXXX";
        end if;
    end process;
	
	SHIFT_MULT_REG : reg_9_bit port map(
		i_clk => i_clk,
		i_rst => reg_rst,
		i_load => shift_mult_load,
		i_data => shift_mult_calc_out,
		o_data => shift_mult
	);
	
	temp_value <= (i_data - min_value) * shift_mult;
	
	o_data <= temp_value(7 downto 0) when temp_value <= "00000000011111111" else "11111111";
	
end Behavioral;

----------------------------------------------------------------------------------------------------------------------- REG_8_BIT
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity reg_8_bit is
  Port ( 
  	i_clk : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_load : in STD_LOGIC;
    i_data : in STD_LOGIC_VECTOR(7 downto 0);
    o_data : out STD_LOGIC_VECTOR(7 downto 0)
  );
end reg_8_bit;

architecture Behavioral of reg_8_bit is
	signal data : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
begin
    
    -- logica di controllo del registro
	reg : process(i_clk, i_rst)
    begin
    	if (i_rst = '1') then 
        	data <= "00000000"; 
        elsif (i_clk'event and i_clk = '1') then 
        	if (i_load = '1') then
            	data <= i_data;
            end if;
        end if; 
    end process;
	
    -- assegna il contenuto del registro all'uscita
    o_data <= data;
    
end Behavioral;

----------------------------------------------------------------------------------------------------------------------- REG_8_BIT_H
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity reg_8_bit_h is
  Port ( 
  	i_clk : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_load : in STD_LOGIC;
    i_data : in STD_LOGIC_VECTOR(7 downto 0);
    o_data : out STD_LOGIC_VECTOR(7 downto 0)
  );
end reg_8_bit_h;

architecture Behavioral of reg_8_bit_h is
	signal data : STD_LOGIC_VECTOR(7 downto 0) := "11111111";
begin
    
    -- logica di controllo del registro
	reg : process(i_clk, i_rst)
    begin
    	if (i_rst = '1') then 
        	data <= "11111111"; 
        elsif (i_clk'event and i_clk = '1') then 
        	if (i_load = '1') then
            	data <= i_data;
            end if;
        end if; 
    end process;
	
    -- assegna il contenuto del registro all'uscita
   o_data <= data;
    
end Behavioral;

----------------------------------------------------------------------------------------------------------------------- REG_9_BIT
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity reg_9_bit is
  Port ( 
  	i_clk : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_load : in STD_LOGIC;
    i_data : in STD_LOGIC_VECTOR(8 downto 0);
    o_data : out STD_LOGIC_VECTOR(8 downto 0)
  );
end reg_9_bit;

architecture Behavioral of reg_9_bit is
	signal data : STD_LOGIC_VECTOR(8 downto 0) := "000000000";
begin
    
    -- logica di controllo del registro
	reg : process(i_clk, i_rst)
    begin
    	if (i_rst = '1') then 
        	data <= "000000000"; 
        elsif (i_clk'event and i_clk = '1') then 
        	if (i_load = '1') then
            	data <= i_data;
            end if;
        end if; 
    end process;
	
    -- assegna il contenuto del registro all'uscita
    o_data <= data;
    
end Behavioral;

----------------------------------------------------------------------------------------------------------------------- REG_16_BIT
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity reg_16_bit is
  Port ( 
  	i_clk : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_load : in STD_LOGIC;
    i_data : in STD_LOGIC_VECTOR(15 downto 0);
    o_data : out STD_LOGIC_VECTOR(15 downto 0)
  );
end reg_16_bit;

architecture Behavioral of reg_16_bit is
	signal data : STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
begin
    
    -- logica di controllo del registro
	reg : process(i_clk, i_rst)
    begin
    	if (i_rst = '1') then 
        	data <= "0000000000000000"; 
        elsif (i_clk'event and i_clk = '1') then 
        	if (i_load = '1') then
            	data <= i_data;
            end if;
        end if; 
    end process;
	
    -- assegna il contenuto del registro all'uscita
    o_data <= data;
    
end Behavioral;

----------------------------------------------------------------------------------------------------------------------- MUX_4_1_16_BIT
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

----------------------------------------------------------------------------------------------------------------------- COUNTER_16_BIT
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity counter_16_bit is
  Port (
  	i_clk : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_en : in STD_LOGIC;
    o_data : out STD_LOGIC_VECTOR(15 downto 0)
  );
end counter_16_bit;

architecture Behavioral of counter_16_bit is

	signal data : STD_LOGIC_VECTOR(15 downto 0);
    
begin
	
    -- logica di controllo
    counter : process(i_clk, i_rst, i_en)
    begin
    	if (i_rst = '1') then 
        	data <= "0000000000000000"; 
        elsif (i_clk'event and i_clk = '1') then 
        	if (i_en = '1') then
            	data <= data + "0000000000000001";
            end if;
        end if; 
    end process;
	
    -- assegna il valore di uscita
    o_data <= data;
    
end Behavioral;