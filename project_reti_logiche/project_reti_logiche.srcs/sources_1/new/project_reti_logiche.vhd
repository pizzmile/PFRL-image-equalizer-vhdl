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

signal n_col : STD_LOGIC;
signal 
type STATE_TYPE is (
	RST,	-- Stato di reset della macchina
	REQ_N_COL,
	READ_N_COL,
	REQ_N_RIG,
	READ_N_RIG,
	INIT_COMP,
	COMP_EXT
	CALC_SHIFT,
	INIT_CALC,
	INIT_SHIFT,
	SHIFT_BIT,
	WRITE_NEW,
	REQ_PIXEL,
	DONE	
);
signal cur_state, next_state : STATE_TYPE;	-- Stati corrente e prossimo
begin
	
	-- Processo state per la memorizzazione dello stato corrente
	state : process(i_clk)
	begin
		if(i_clk'event and clk='1') then
			if(i_rst = '1') then
				cur_state <= RST;
			else
				cur_state <= next_state;
			end if;
		end if;
	end process;
	
	-- Processo delta per la memorizzazione dello stato prossimo
	delta : process(cur_state)
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
					next_state => CALC_SHIFT;
				end if;
			when CALC_SHIFT =>
				next_state <= INIT_CALC;
			when INIT_CALC =>
				if(pixel_counter_end = '0') then
					next_state <= INIT_SHIFT;
				end if;
				if(pixel_counter_end = '1') then
					next_state <= DONE;
				end if;
			when INIT_SHIFT =>
				if(shift_counter_end = '0') then
					next_state <= SHIFT_BIT;
				end if;
				if(shift_counter_end = '1') then
					next_state <= WRITE_NEW;
				end if;
			when WRITE_NEW =>
				next_state <= REQ_PIXEL;
			when REQ_PIXEL =>
				if(pixel_counter_end = '1') then
					next_state <= DONE;
				end if;
				if(pixel_counter_end = '0') then
					next_state <= INIT_SHIFT;
			when DONE =>
				if(i_start = '0') then
					next_state <= RST;
		end case;
	end process;
	
	-- Funzione lambda per modificare l'uscita della FSM
	lambda : process(cur_state)
	begin
		o_en <= '1';
		o_we <= '0';
		o_done <= '0';
		n_col_load <= '0';
		size_load <= '0';
		pixel_counter_rst <= '0';
		pixel_counter_en <= '0';
		address_sel <= "00";
		max_value_sel <= '0';
		max_value_load <= '0';
		min_value_sel <= '0';
		min_value_load <= '0';
		shift_level_load <= '0';
		shift_counter_rst <= '0';
		shift_counter_en <= '0';
		temp_value_load <= '0';
		new_value_load <= '0';
		
		when RST =>
			o_en <= '0';
			max_value_load <= '1';
			min_value_load <= '1';
			pixel_counter_rst <= '1';
			pixel_counter_en <= '1';
			shift_counter_rst <= '1';
			shift_counter_en <= '1';
		when READ_N_COL =>
			n_col_load <= '1';
		when REQ_N_RIG =>
			address_sel <= "01";
		when READ_N_RIG =>
			address_sel <= "01";
			n_col_load <= '1';
			size_load <= '1';
		when INIT_COMP =>
			pixel_counter_en <= '1';
			address_sel <= "10";
		when COMP_EXT =>
			max_value_sel <= '1';
			max_value_load <= '1';
			min_value_sel <= '1';
			min_value_load <= '1';
			pixel_counter_rst <='1';
			address_sel <= "10";
		when CALC_SHIFT =>
			shift_level_load <= '1';
			pixel_counter_rst <= '1';
			pixel_counter_en <= '1';
		when INIT_CALC =>
			pixel_counter_rst <= '0';
			pixel_counter_en <= '1';
			address_sel <= "10";
			shift_counter_rst <= '1';
			shift_counter_en <= '1';
		when INIT_SHIFT =>
			shift_counter_en <= '1';
			temp_value_load <= '1';
		when SHIFT_BIT =>
			o_en <= '0';
			shift_counter_en <= '1';
		when WRITE_NEW =>
			o_we <= '1';
			address_sel <= "11";
			shift_counter_en <= '1';
		when REQ_PIXEL =>
			address_sel <= "10";
			shift_counter_rst <=s '1';
			shift_counter_en <= '1';
			pixel_counter_en <= '1';
		when DONE =>
			o_en <= '0';
			o_done <= '1';
	end process;
	
end process;
end Behavioral;
