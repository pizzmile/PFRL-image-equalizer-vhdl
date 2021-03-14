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
    end component datapath;
    
    signal n_col_load : STD_LOGIC := '0';
    signal size_load : STD_LOGIC := '0';
    signal pixel_counter_rst : STD_LOGIC := '0';
    signal pixel_counter_en : STD_LOGIC := '0';
    signal address_sel : STD_LOGIC_VECTOR(1 downto 0) := "00";
    signal max_value_sel : STD_LOGIC := '0';
    signal max_value_load : STD_LOGIC := '0';
    signal min_value_sel : STD_LOGIC := '0';
    signal min_value_load : STD_LOGIC := '0';
    signal temp_value_load : STD_LOGIC := '0';
    signal shift_level_load : STD_LOGIC := '0';
    signal shift_counter_rst : STD_LOGIC := '0';
    signal shift_counter_en : STD_LOGIC := '0';
    signal pixel_counter_end : STD_LOGIC := '0';
    signal shift_counter_end : STD_LOGIC := '0';
    
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
        INIT_SHIFT,
        SHIFT_BIT,
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
	   n_col_load=> n_col_load,
       size_load=> size_load,
       pixel_counter_rst=> pixel_counter_rst,
       pixel_counter_en=> pixel_counter_en,
       address_sel=> address_sel,
       max_value_sel=> max_value_sel,
       max_value_load=> max_value_load,
       min_value_sel=> min_value_sel,
       min_value_load=> min_value_load,
       temp_value_load=> temp_value_load,
       shift_level_load=> shift_level_load,
       shift_counter_rst=> shift_counter_rst,
       shift_counter_en=> shift_counter_en,
       pixel_counter_end => pixel_counter_end, 
       shift_counter_end => shift_counter_end 
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
	delta : process(cur_state, i_start, pixel_counter_end, shift_counter_end)
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
					next_state <= INIT_SHIFT;
				end if;
				if(pixel_counter_end = '1') then
					next_state <= DONE;
				end if;
			when INIT_SHIFT =>
				if(shift_counter_end = '0') then
					next_state <= SHIFT_BIT;
				elsif(shift_counter_end = '1') then
					next_state <= WRITE_NEW;
				end if;
            when SHIFT_BIT => 
                if (shift_counter_end = '1') then
                    next_state <= WRITE_NEW;
                elsif (shift_counter_end = '0') then
                    next_state <= SHIFT_BIT;
                end if;
			when WRITE_NEW =>
				next_state <= REQ_PIXEL;
			when REQ_PIXEL =>
				if(pixel_counter_end = '1') then
					next_state <= DONE;
				end if;
				if(pixel_counter_end = '0') then
					next_state <= INIT_SHIFT;
                end if;
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
		
		case cur_state is
            when RST =>
                o_en <= '0';
                o_we <= '0';
                max_value_load <= '1';
                min_value_load <= '1';
                pixel_counter_rst <= '1';
                pixel_counter_en <= '1';
                shift_counter_rst <= '1';
                shift_counter_en <= '1';
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
                shift_level_load <= '1';
                pixel_counter_rst <= '1';
                pixel_counter_en <= '1';
            when INIT_CALC =>
                pixel_counter_rst <= '0';
                pixel_counter_en <= '1';
                address_sel <= "10";
                --shift_counter_rst <= '1';
                --shift_counter_en <= '1';
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
                shift_counter_rst <= '1';
                shift_counter_en <= '1';
                pixel_counter_en <= '1';
            when DONE =>
                o_en <= '0';
                o_done <= '1';
        end case;
        
	end process;
end Behavioral;
