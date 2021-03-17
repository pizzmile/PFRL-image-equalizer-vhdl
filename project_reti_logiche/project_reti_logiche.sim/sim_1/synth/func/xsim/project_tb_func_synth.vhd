-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Mar 17 18:43:27 2021
-- Host        : DESKTOP-D7FT5L0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/andre/Documents/GitHub/PFRL_pizzamiglio_prisciantelli/project_reti_logiche/project_reti_logiche.sim/sim_1/synth/func/xsim/project_tb_func_synth.vhd
-- Design      : project_reti_logiche
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity counter_16_bit is
  port (
    data_reg : out STD_LOGIC_VECTOR ( 15 downto 0 );
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
end counter_16_bit;

architecture STRUCTURE of counter_16_bit is
  signal \data[0]_i_3_n_0\ : STD_LOGIC;
  signal \data[0]_i_4_n_0\ : STD_LOGIC;
  signal \^data_reg\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \data_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \data_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \data_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \data_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \data_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \data_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \data_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \data_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \data_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \data_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \data_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \data_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \data_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \data_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \data_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \data_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \data_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \data_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \data_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \data_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \data_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \data_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \data_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \data_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \data_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \data_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \data_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \data_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \data_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal pixel_counter_en : STD_LOGIC;
  signal \NLW_data_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \data_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \data_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \data_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \data_reg[8]_i_1\ : label is 11;
begin
  data_reg(15 downto 0) <= \^data_reg\(15 downto 0);
\data[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => Q(3),
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(5),
      I4 => Q(4),
      I5 => Q(1),
      O => pixel_counter_en
    );
\data[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(0),
      I1 => Q(3),
      O => \data[0]_i_3_n_0\
    );
\data[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_reg\(0),
      O => \data[0]_i_4_n_0\
    );
\data_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => pixel_counter_en,
      CLR => \data[0]_i_3_n_0\,
      D => \data_reg[0]_i_2_n_7\,
      Q => \^data_reg\(0)
    );
\data_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \data_reg[0]_i_2_n_0\,
      CO(2) => \data_reg[0]_i_2_n_1\,
      CO(1) => \data_reg[0]_i_2_n_2\,
      CO(0) => \data_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \data_reg[0]_i_2_n_4\,
      O(2) => \data_reg[0]_i_2_n_5\,
      O(1) => \data_reg[0]_i_2_n_6\,
      O(0) => \data_reg[0]_i_2_n_7\,
      S(3 downto 1) => \^data_reg\(3 downto 1),
      S(0) => \data[0]_i_4_n_0\
    );
\data_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => pixel_counter_en,
      CLR => \data[0]_i_3_n_0\,
      D => \data_reg[8]_i_1_n_5\,
      Q => \^data_reg\(10)
    );
\data_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => pixel_counter_en,
      CLR => \data[0]_i_3_n_0\,
      D => \data_reg[8]_i_1_n_4\,
      Q => \^data_reg\(11)
    );
\data_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => pixel_counter_en,
      CLR => \data[0]_i_3_n_0\,
      D => \data_reg[12]_i_1_n_7\,
      Q => \^data_reg\(12)
    );
\data_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_reg[8]_i_1_n_0\,
      CO(3) => \NLW_data_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \data_reg[12]_i_1_n_1\,
      CO(1) => \data_reg[12]_i_1_n_2\,
      CO(0) => \data_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \data_reg[12]_i_1_n_4\,
      O(2) => \data_reg[12]_i_1_n_5\,
      O(1) => \data_reg[12]_i_1_n_6\,
      O(0) => \data_reg[12]_i_1_n_7\,
      S(3 downto 0) => \^data_reg\(15 downto 12)
    );
\data_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => pixel_counter_en,
      CLR => \data[0]_i_3_n_0\,
      D => \data_reg[12]_i_1_n_6\,
      Q => \^data_reg\(13)
    );
\data_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => pixel_counter_en,
      CLR => \data[0]_i_3_n_0\,
      D => \data_reg[12]_i_1_n_5\,
      Q => \^data_reg\(14)
    );
\data_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => pixel_counter_en,
      CLR => \data[0]_i_3_n_0\,
      D => \data_reg[12]_i_1_n_4\,
      Q => \^data_reg\(15)
    );
\data_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => pixel_counter_en,
      CLR => \data[0]_i_3_n_0\,
      D => \data_reg[0]_i_2_n_6\,
      Q => \^data_reg\(1)
    );
\data_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => pixel_counter_en,
      CLR => \data[0]_i_3_n_0\,
      D => \data_reg[0]_i_2_n_5\,
      Q => \^data_reg\(2)
    );
\data_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => pixel_counter_en,
      CLR => \data[0]_i_3_n_0\,
      D => \data_reg[0]_i_2_n_4\,
      Q => \^data_reg\(3)
    );
\data_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => pixel_counter_en,
      CLR => \data[0]_i_3_n_0\,
      D => \data_reg[4]_i_1_n_7\,
      Q => \^data_reg\(4)
    );
\data_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_reg[0]_i_2_n_0\,
      CO(3) => \data_reg[4]_i_1_n_0\,
      CO(2) => \data_reg[4]_i_1_n_1\,
      CO(1) => \data_reg[4]_i_1_n_2\,
      CO(0) => \data_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \data_reg[4]_i_1_n_4\,
      O(2) => \data_reg[4]_i_1_n_5\,
      O(1) => \data_reg[4]_i_1_n_6\,
      O(0) => \data_reg[4]_i_1_n_7\,
      S(3 downto 0) => \^data_reg\(7 downto 4)
    );
\data_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => pixel_counter_en,
      CLR => \data[0]_i_3_n_0\,
      D => \data_reg[4]_i_1_n_6\,
      Q => \^data_reg\(5)
    );
\data_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => pixel_counter_en,
      CLR => \data[0]_i_3_n_0\,
      D => \data_reg[4]_i_1_n_5\,
      Q => \^data_reg\(6)
    );
\data_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => pixel_counter_en,
      CLR => \data[0]_i_3_n_0\,
      D => \data_reg[4]_i_1_n_4\,
      Q => \^data_reg\(7)
    );
\data_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => pixel_counter_en,
      CLR => \data[0]_i_3_n_0\,
      D => \data_reg[8]_i_1_n_7\,
      Q => \^data_reg\(8)
    );
\data_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_reg[4]_i_1_n_0\,
      CO(3) => \data_reg[8]_i_1_n_0\,
      CO(2) => \data_reg[8]_i_1_n_1\,
      CO(1) => \data_reg[8]_i_1_n_2\,
      CO(0) => \data_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \data_reg[8]_i_1_n_4\,
      O(2) => \data_reg[8]_i_1_n_5\,
      O(1) => \data_reg[8]_i_1_n_6\,
      O(0) => \data_reg[8]_i_1_n_7\,
      S(3 downto 0) => \^data_reg\(11 downto 8)
    );
\data_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => pixel_counter_en,
      CLR => \data[0]_i_3_n_0\,
      D => \data_reg[8]_i_1_n_6\,
      Q => \^data_reg\(9)
    );
plusOp_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_reg\(1),
      O => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_16_bit is
  port (
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_reg[15]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_reg[6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_reg[10]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_reg[13]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \data_reg[14]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_reg[2]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_reg[6]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_reg[10]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    i_data_10 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_reg : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    D : in STD_LOGIC_VECTOR ( 14 downto 0 );
    O : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC
  );
end reg_16_bit;

architecture STRUCTURE of reg_16_bit is
  signal data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal size_load : STD_LOGIC;
  signal size_prod : STD_LOGIC_VECTOR ( 3 to 3 );
begin
\data[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(3),
      O => size_load
    );
\data[3]_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => O(0),
      I1 => \data_reg[3]_0\(0),
      O => size_prod(3)
    );
\data_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => size_load,
      CLR => Q(0),
      D => D(0),
      Q => data(0)
    );
\data_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => size_load,
      CLR => Q(0),
      D => D(9),
      Q => data(10)
    );
\data_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => size_load,
      CLR => Q(0),
      D => D(10),
      Q => data(11)
    );
\data_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => size_load,
      CLR => Q(0),
      D => D(11),
      Q => data(12)
    );
\data_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => size_load,
      CLR => Q(0),
      D => D(12),
      Q => data(13)
    );
\data_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => size_load,
      CLR => Q(0),
      D => D(13),
      Q => data(14)
    );
\data_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => size_load,
      CLR => Q(0),
      D => D(14),
      Q => data(15)
    );
\data_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => size_load,
      CLR => Q(0),
      D => D(1),
      Q => data(1)
    );
\data_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => size_load,
      CLR => Q(0),
      D => D(2),
      Q => data(2)
    );
\data_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => size_load,
      CLR => Q(0),
      D => size_prod(3),
      Q => data(3)
    );
\data_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => size_load,
      CLR => Q(0),
      D => D(3),
      Q => data(4)
    );
\data_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => size_load,
      CLR => Q(0),
      D => D(4),
      Q => data(5)
    );
\data_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => size_load,
      CLR => Q(0),
      D => D(5),
      Q => data(6)
    );
\data_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => size_load,
      CLR => Q(0),
      D => D(6),
      Q => data(7)
    );
\data_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => size_load,
      CLR => Q(0),
      D => D(7),
      Q => data(8)
    );
\data_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => size_load,
      CLR => Q(0),
      D => D(8),
      Q => data(9)
    );
\eqOp_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data(15),
      I1 => data_reg(15),
      O => \data_reg[15]_0\(1)
    );
\eqOp_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data(14),
      I1 => data_reg(14),
      I2 => data(13),
      I3 => data_reg(13),
      I4 => data_reg(12),
      I5 => data(12),
      O => \data_reg[15]_0\(0)
    );
eqOp_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data(11),
      I1 => data_reg(11),
      I2 => data(10),
      I3 => data_reg(10),
      I4 => data_reg(9),
      I5 => data(9),
      O => S(3)
    );
eqOp_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data(8),
      I1 => data_reg(8),
      I2 => data(7),
      I3 => data_reg(7),
      I4 => data_reg(6),
      I5 => data(6),
      O => S(2)
    );
eqOp_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data(5),
      I1 => data_reg(5),
      I2 => data(4),
      I3 => data_reg(4),
      I4 => data_reg(3),
      I5 => data(3),
      O => S(1)
    );
eqOp_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => data(2),
      I1 => data_reg(2),
      I2 => data(1),
      I3 => data_reg(1),
      I4 => data_reg(0),
      I5 => data(0),
      O => S(0)
    );
\minusOp__0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_data_10(6),
      I1 => data(6),
      O => \data_reg[6]_0\(3)
    );
\minusOp__0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_data_10(5),
      I1 => data(5),
      O => \data_reg[6]_0\(2)
    );
\minusOp__0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_data_10(4),
      I1 => data(4),
      O => \data_reg[6]_0\(1)
    );
\minusOp__0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_data_10(3),
      I1 => data(3),
      O => \data_reg[6]_0\(0)
    );
\minusOp__0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => data(6),
      I1 => i_data_10(6),
      I2 => data(7),
      I3 => i_data_10(7),
      O => \data_reg[6]_1\(3)
    );
\minusOp__0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => data(5),
      I1 => i_data_10(5),
      I2 => data(6),
      I3 => i_data_10(6),
      O => \data_reg[6]_1\(2)
    );
\minusOp__0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => data(4),
      I1 => i_data_10(4),
      I2 => data(5),
      I3 => i_data_10(5),
      O => \data_reg[6]_1\(1)
    );
\minusOp__0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => data(3),
      I1 => i_data_10(3),
      I2 => data(4),
      I3 => i_data_10(4),
      O => \data_reg[6]_1\(0)
    );
\minusOp__0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_data_10(10),
      I1 => data(10),
      O => \data_reg[10]_0\(3)
    );
\minusOp__0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_data_10(9),
      I1 => data(9),
      O => \data_reg[10]_0\(2)
    );
\minusOp__0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_data_10(8),
      I1 => data(8),
      O => \data_reg[10]_0\(1)
    );
\minusOp__0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_data_10(7),
      I1 => data(7),
      O => \data_reg[10]_0\(0)
    );
\minusOp__0_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => data(10),
      I1 => i_data_10(10),
      I2 => data(11),
      I3 => i_data_10(11),
      O => \data_reg[10]_1\(3)
    );
\minusOp__0_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => data(9),
      I1 => i_data_10(9),
      I2 => data(10),
      I3 => i_data_10(10),
      O => \data_reg[10]_1\(2)
    );
\minusOp__0_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => data(8),
      I1 => i_data_10(8),
      I2 => data(9),
      I3 => i_data_10(9),
      O => \data_reg[10]_1\(1)
    );
\minusOp__0_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => data(7),
      I1 => i_data_10(7),
      I2 => data(8),
      I3 => i_data_10(8),
      O => \data_reg[10]_1\(0)
    );
\minusOp__0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_data_10(13),
      I1 => data(13),
      O => \data_reg[13]_0\(2)
    );
\minusOp__0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_data_10(12),
      I1 => data(12),
      O => \data_reg[13]_0\(1)
    );
\minusOp__0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_data_10(11),
      I1 => data(11),
      O => \data_reg[13]_0\(0)
    );
\minusOp__0_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => data(14),
      I1 => i_data_10(14),
      I2 => data(15),
      I3 => i_data_10(15),
      O => \data_reg[14]_0\(3)
    );
\minusOp__0_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => data(13),
      I1 => i_data_10(13),
      I2 => i_data_10(14),
      I3 => data(14),
      O => \data_reg[14]_0\(2)
    );
\minusOp__0_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => data(12),
      I1 => i_data_10(12),
      I2 => data(13),
      I3 => i_data_10(13),
      O => \data_reg[14]_0\(1)
    );
\minusOp__0_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => data(11),
      I1 => i_data_10(11),
      I2 => data(12),
      I3 => i_data_10(12),
      O => \data_reg[14]_0\(0)
    );
\minusOp__0_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_data_10(2),
      I1 => data(2),
      O => DI(3)
    );
\minusOp__0_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => i_data_10(2),
      I1 => data(2),
      O => DI(2)
    );
\minusOp__0_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => i_data_10(0),
      I1 => data(0),
      O => DI(1)
    );
\minusOp__0_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data(0),
      I1 => i_data_10(0),
      O => DI(0)
    );
\minusOp__0_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1EE1"
    )
        port map (
      I0 => data(2),
      I1 => i_data_10(2),
      I2 => data(3),
      I3 => i_data_10(3),
      O => \data_reg[2]_0\(3)
    );
\minusOp__0_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => data(2),
      I1 => i_data_10(2),
      I2 => i_data_10(1),
      I3 => data(1),
      O => \data_reg[2]_0\(2)
    );
\minusOp__0_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E11E"
    )
        port map (
      I0 => data(0),
      I1 => i_data_10(0),
      I2 => data(1),
      I3 => i_data_10(1),
      O => \data_reg[2]_0\(1)
    );
\minusOp__0_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => i_data_10(0),
      I1 => data(0),
      O => \data_reg[2]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_8_bit is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \data_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \data_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_reg[7]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \data_reg[6]_0\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \minusOp_inferred__0/i__carry__0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    i_data_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    delta_value : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \data_reg[2]_0\ : in STD_LOGIC;
    \data_reg[3]_1\ : in STD_LOGIC;
    CLK : in STD_LOGIC
  );
end reg_8_bit;

architecture STRUCTURE of reg_8_bit is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \data[2]_i_2_n_0\ : STD_LOGIC;
  signal \^data_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal max_comp_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data[0]_i_1__1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data[1]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \data[2]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data[2]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data[3]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \data[3]_i_1__1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data[4]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data[4]_i_1__1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data[5]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data[6]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data[7]_i_1__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data[8]_i_2\ : label is "soft_lutpair1";
begin
  E(0) <= \^e\(0);
  \data_reg[7]_0\(7 downto 0) <= \^data_reg[7]_0\(7 downto 0);
\data[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_data_IBUF(0),
      I1 => CO(0),
      I2 => \^data_reg[7]_0\(0),
      O => max_comp_out(0)
    );
\data[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_data_IBUF(1),
      I1 => CO(0),
      I2 => \^data_reg[7]_0\(1),
      O => max_comp_out(1)
    );
\data[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_data_IBUF(2),
      I1 => CO(0),
      I2 => \^data_reg[7]_0\(2),
      O => max_comp_out(2)
    );
\data[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444441444444"
    )
        port map (
      I0 => delta_value(5),
      I1 => delta_value(4),
      I2 => \data[2]_i_2_n_0\,
      I3 => delta_value(0),
      I4 => delta_value(1),
      I5 => \data_reg[2]_0\,
      O => D(0)
    );
\data[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => delta_value(3),
      I1 => delta_value(2),
      O => \data[2]_i_2_n_0\
    );
\data[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_data_IBUF(3),
      I1 => CO(0),
      I2 => \^data_reg[7]_0\(3),
      O => max_comp_out(3)
    );
\data[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11000110"
    )
        port map (
      I0 => delta_value(5),
      I1 => delta_value(4),
      I2 => delta_value(2),
      I3 => delta_value(3),
      I4 => \data_reg[3]_1\,
      O => D(1)
    );
\data[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_data_IBUF(4),
      I1 => CO(0),
      I2 => \^data_reg[7]_0\(4),
      O => max_comp_out(4)
    );
\data[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000009"
    )
        port map (
      I0 => delta_value(2),
      I1 => \data_reg[3]_1\,
      I2 => delta_value(3),
      I3 => delta_value(4),
      I4 => delta_value(5),
      O => D(2)
    );
\data[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_data_IBUF(5),
      I1 => CO(0),
      I2 => \^data_reg[7]_0\(5),
      O => max_comp_out(5)
    );
\data[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_data_IBUF(6),
      I1 => CO(0),
      I2 => \^data_reg[7]_0\(6),
      O => max_comp_out(6)
    );
\data[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => \^e\(0)
    );
\data[7]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_data_IBUF(7),
      I1 => CO(0),
      I2 => \^data_reg[7]_0\(7),
      O => max_comp_out(7)
    );
\data[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => delta_value(3),
      I1 => delta_value(2),
      I2 => delta_value(4),
      I3 => delta_value(5),
      O => \data_reg[6]_0\
    );
\data_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      CLR => Q(0),
      D => max_comp_out(0),
      Q => \^data_reg[7]_0\(0)
    );
\data_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      CLR => Q(0),
      D => max_comp_out(1),
      Q => \^data_reg[7]_0\(1)
    );
\data_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      CLR => Q(0),
      D => max_comp_out(2),
      Q => \^data_reg[7]_0\(2)
    );
\data_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      CLR => Q(0),
      D => max_comp_out(3),
      Q => \^data_reg[7]_0\(3)
    );
\data_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      CLR => Q(0),
      D => max_comp_out(4),
      Q => \^data_reg[7]_0\(4)
    );
\data_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      CLR => Q(0),
      D => max_comp_out(5),
      Q => \^data_reg[7]_0\(5)
    );
\data_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      CLR => Q(0),
      D => max_comp_out(6),
      Q => \^data_reg[7]_0\(6)
    );
\data_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      CLR => Q(0),
      D => max_comp_out(7),
      Q => \^data_reg[7]_0\(7)
    );
gtOp_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => i_data_IBUF(6),
      I1 => \^data_reg[7]_0\(6),
      I2 => \^data_reg[7]_0\(7),
      I3 => i_data_IBUF(7),
      O => DI(3)
    );
gtOp_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => i_data_IBUF(4),
      I1 => \^data_reg[7]_0\(4),
      I2 => \^data_reg[7]_0\(5),
      I3 => i_data_IBUF(5),
      O => DI(2)
    );
gtOp_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => i_data_IBUF(2),
      I1 => \^data_reg[7]_0\(2),
      I2 => \^data_reg[7]_0\(3),
      I3 => i_data_IBUF(3),
      O => DI(1)
    );
gtOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => i_data_IBUF(0),
      I1 => \^data_reg[7]_0\(0),
      I2 => \^data_reg[7]_0\(1),
      I3 => i_data_IBUF(1),
      O => DI(0)
    );
gtOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => i_data_IBUF(7),
      I1 => \^data_reg[7]_0\(7),
      I2 => \^data_reg[7]_0\(6),
      I3 => i_data_IBUF(6),
      O => \data_reg[7]_1\(3)
    );
gtOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => i_data_IBUF(5),
      I1 => \^data_reg[7]_0\(5),
      I2 => \^data_reg[7]_0\(4),
      I3 => i_data_IBUF(4),
      O => \data_reg[7]_1\(2)
    );
gtOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => i_data_IBUF(3),
      I1 => \^data_reg[7]_0\(3),
      I2 => \^data_reg[7]_0\(2),
      I3 => i_data_IBUF(2),
      O => \data_reg[7]_1\(1)
    );
gtOp_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => i_data_IBUF(1),
      I1 => \^data_reg[7]_0\(1),
      I2 => \^data_reg[7]_0\(0),
      I3 => i_data_IBUF(0),
      O => \data_reg[7]_1\(0)
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^data_reg[7]_0\(6),
      I1 => \minusOp_inferred__0/i__carry__0\(6),
      O => S(2)
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^data_reg[7]_0\(5),
      I1 => \minusOp_inferred__0/i__carry__0\(5),
      O => S(1)
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^data_reg[7]_0\(4),
      I1 => \minusOp_inferred__0/i__carry__0\(4),
      O => S(0)
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^data_reg[7]_0\(3),
      I1 => \minusOp_inferred__0/i__carry__0\(3),
      O => \data_reg[3]_0\(3)
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^data_reg[7]_0\(2),
      I1 => \minusOp_inferred__0/i__carry__0\(2),
      O => \data_reg[3]_0\(2)
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^data_reg[7]_0\(1),
      I1 => \minusOp_inferred__0/i__carry__0\(1),
      O => \data_reg[3]_0\(1)
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^data_reg[7]_0\(0),
      I1 => \minusOp_inferred__0/i__carry__0\(0),
      O => \data_reg[3]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_8_bit_0 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    DI : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \data_reg[3]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \data_reg[6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_reg[7]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_reg[6]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_reg[7]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_reg[1]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_reg[3]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_reg[5]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_reg[7]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \data_reg[6]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_reg[6]_3\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_reg[6]_4\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_reg[6]_5\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \data_reg[4]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_reg[7]_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_data_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    O : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_reg[10]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \multOp__60_carry__0_i_5_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \multOp__60_carry__1_i_8_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \data_reg[14]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_reg[14]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of reg_8_bit_0 : entity is "reg_8_bit";
end reg_8_bit_0;

architecture STRUCTURE of reg_8_bit_0 is
  signal A : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^di\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^data_reg[3]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^data_reg[3]_1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^data_reg[5]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^data_reg[6]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^data_reg[6]_1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \multOp__0_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \multOp__30_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \multOp__30_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \multOp__30_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \multOp__30_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \multOp__60_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \multOp__60_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \multOp__60_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \multOp__60_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \multOp__60_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \multOp__60_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \multOp__60_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \multOp__60_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \multOp__60_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \multOp__60_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \multOp__60_carry__1_i_13_n_0\ : STD_LOGIC;
  signal \multOp__60_carry__1_i_14_n_0\ : STD_LOGIC;
  signal \multOp__60_carry__1_i_15_n_0\ : STD_LOGIC;
  signal \multOp__60_carry__1_i_16_n_0\ : STD_LOGIC;
  signal \multOp__60_carry__1_i_9_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \multOp__0_carry__0_i_10\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \multOp__0_carry__0_i_11\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \multOp__0_carry__0_i_12\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \multOp__0_carry__0_i_9\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \multOp__30_carry__0_i_10\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \multOp__30_carry__0_i_11\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \multOp__30_carry__0_i_12\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \multOp__30_carry__0_i_9\ : label is "soft_lutpair20";
  attribute HLUTNM : string;
  attribute HLUTNM of \multOp__60_carry__0_i_1\ : label is "lutpair0";
  attribute SOFT_HLUTNM of \multOp__60_carry__0_i_10\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \multOp__60_carry__0_i_11\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \multOp__60_carry__0_i_12\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \multOp__60_carry__0_i_13\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \multOp__60_carry__0_i_15\ : label is "soft_lutpair16";
  attribute HLUTNM of \multOp__60_carry__0_i_6\ : label is "lutpair0";
  attribute SOFT_HLUTNM of \multOp__60_carry__0_i_9\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \multOp__60_carry__1_i_10\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \multOp__60_carry__1_i_11\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \multOp__60_carry__1_i_12\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \multOp__60_carry__1_i_13\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \multOp__60_carry__1_i_14\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \multOp__60_carry__1_i_15\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \multOp__60_carry__1_i_16\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \multOp__60_carry__1_i_9\ : label is "soft_lutpair16";
begin
  DI(2 downto 0) <= \^di\(2 downto 0);
  E(0) <= \^e\(0);
  \data_reg[3]_0\(2 downto 0) <= \^data_reg[3]_0\(2 downto 0);
  \data_reg[3]_1\(3 downto 0) <= \^data_reg[3]_1\(3 downto 0);
  \data_reg[5]_0\(3 downto 0) <= \^data_reg[5]_0\(3 downto 0);
  \data_reg[6]_0\(3 downto 0) <= \^data_reg[6]_0\(3 downto 0);
  \data_reg[6]_1\(3 downto 0) <= \^data_reg[6]_1\(3 downto 0);
\data[7]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      O => \^e\(0)
    );
\data_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      CLR => Q(0),
      D => i_data_IBUF(0),
      Q => A(0)
    );
\data_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      CLR => Q(0),
      D => i_data_IBUF(1),
      Q => A(1)
    );
\data_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      CLR => Q(0),
      D => i_data_IBUF(2),
      Q => A(2)
    );
\data_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      CLR => Q(0),
      D => i_data_IBUF(3),
      Q => A(3)
    );
\data_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      CLR => Q(0),
      D => i_data_IBUF(4),
      Q => A(4)
    );
\data_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      CLR => Q(0),
      D => i_data_IBUF(5),
      Q => A(5)
    );
\data_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      CLR => Q(0),
      D => i_data_IBUF(6),
      Q => A(6)
    );
\data_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \^e\(0),
      CLR => Q(0),
      D => i_data_IBUF(7),
      Q => A(7)
    );
\multOp__0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880808088000000"
    )
        port map (
      I0 => i_data_IBUF(0),
      I1 => A(6),
      I2 => A(5),
      I3 => i_data_IBUF(2),
      I4 => A(4),
      I5 => i_data_IBUF(1),
      O => \^data_reg[6]_0\(3)
    );
\multOp__0_carry__0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_data_IBUF(0),
      I1 => A(6),
      O => \multOp__0_carry__0_i_10_n_0\
    );
\multOp__0_carry__0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_data_IBUF(0),
      I1 => A(5),
      O => \multOp__0_carry__0_i_11_n_0\
    );
\multOp__0_carry__0_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(3),
      I1 => i_data_IBUF(1),
      O => \multOp__0_carry__0_i_12_n_0\
    );
\multOp__0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880808088000000"
    )
        port map (
      I0 => i_data_IBUF(0),
      I1 => A(5),
      I2 => A(4),
      I3 => i_data_IBUF(2),
      I4 => A(3),
      I5 => i_data_IBUF(1),
      O => \^data_reg[6]_0\(2)
    );
\multOp__0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => i_data_IBUF(1),
      I1 => A(3),
      I2 => A(2),
      I3 => i_data_IBUF(2),
      I4 => i_data_IBUF(0),
      I5 => A(4),
      O => \^data_reg[6]_0\(1)
    );
\multOp__0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880808088000000"
    )
        port map (
      I0 => A(3),
      I1 => i_data_IBUF(0),
      I2 => A(2),
      I3 => i_data_IBUF(2),
      I4 => A(1),
      I5 => i_data_IBUF(1),
      O => \^data_reg[6]_0\(0)
    );
\multOp__0_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A959595956A6A6A"
    )
        port map (
      I0 => \^data_reg[6]_0\(3),
      I1 => A(6),
      I2 => i_data_IBUF(1),
      I3 => A(5),
      I4 => i_data_IBUF(2),
      I5 => \multOp__0_carry__0_i_9_n_0\,
      O => \data_reg[6]_2\(3)
    );
\multOp__0_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A959595956A6A6A"
    )
        port map (
      I0 => \^data_reg[6]_0\(2),
      I1 => A(5),
      I2 => i_data_IBUF(1),
      I3 => A(4),
      I4 => i_data_IBUF(2),
      I5 => \multOp__0_carry__0_i_10_n_0\,
      O => \data_reg[6]_2\(2)
    );
\multOp__0_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A959595956A6A6A"
    )
        port map (
      I0 => \^data_reg[6]_0\(1),
      I1 => A(4),
      I2 => i_data_IBUF(1),
      I3 => A(3),
      I4 => i_data_IBUF(2),
      I5 => \multOp__0_carry__0_i_11_n_0\,
      O => \data_reg[6]_2\(1)
    );
\multOp__0_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \^data_reg[6]_0\(0),
      I1 => i_data_IBUF(2),
      I2 => A(2),
      I3 => \multOp__0_carry__0_i_12_n_0\,
      I4 => i_data_IBUF(0),
      I5 => A(4),
      O => \data_reg[6]_2\(0)
    );
\multOp__0_carry__0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_data_IBUF(0),
      I1 => A(7),
      O => \multOp__0_carry__0_i_9_n_0\
    );
\multOp__0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(7),
      I1 => i_data_IBUF(2),
      O => \data_reg[7]_0\(1)
    );
\multOp__0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880808088000000"
    )
        port map (
      I0 => i_data_IBUF(0),
      I1 => A(7),
      I2 => A(6),
      I3 => i_data_IBUF(2),
      I4 => A(5),
      I5 => i_data_IBUF(1),
      O => \data_reg[7]_0\(0)
    );
\multOp__0_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7000"
    )
        port map (
      I0 => A(6),
      I1 => i_data_IBUF(1),
      I2 => i_data_IBUF(2),
      I3 => A(7),
      O => \data_reg[6]_3\(1)
    );
\multOp__0_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E57F70803000F000"
    )
        port map (
      I0 => A(5),
      I1 => i_data_IBUF(0),
      I2 => A(7),
      I3 => i_data_IBUF(1),
      I4 => A(6),
      I5 => i_data_IBUF(2),
      O => \data_reg[6]_3\(0)
    );
\multOp__0_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => A(3),
      I1 => i_data_IBUF(0),
      I2 => i_data_IBUF(2),
      I3 => A(1),
      I4 => i_data_IBUF(1),
      I5 => A(2),
      O => \^di\(2)
    );
\multOp__0_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => i_data_IBUF(1),
      I1 => A(1),
      I2 => i_data_IBUF(2),
      I3 => A(0),
      O => \^di\(1)
    );
\multOp__0_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(0),
      I1 => i_data_IBUF(1),
      O => \^di\(0)
    );
\multOp__0_carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^di\(2),
      I1 => A(1),
      I2 => i_data_IBUF(2),
      I3 => A(0),
      I4 => i_data_IBUF(1),
      O => S(3)
    );
\multOp__0_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => A(0),
      I1 => i_data_IBUF(2),
      I2 => A(1),
      I3 => i_data_IBUF(1),
      I4 => A(2),
      I5 => i_data_IBUF(0),
      O => S(2)
    );
\multOp__0_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => A(1),
      I1 => i_data_IBUF(0),
      I2 => i_data_IBUF(1),
      I3 => A(0),
      O => S(1)
    );
\multOp__0_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i_data_IBUF(0),
      I1 => A(0),
      O => S(0)
    );
\multOp__30_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880808088000000"
    )
        port map (
      I0 => A(6),
      I1 => i_data_IBUF(3),
      I2 => A(5),
      I3 => i_data_IBUF(5),
      I4 => A(4),
      I5 => i_data_IBUF(4),
      O => \^data_reg[6]_1\(3)
    );
\multOp__30_carry__0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(6),
      I1 => i_data_IBUF(3),
      O => \multOp__30_carry__0_i_10_n_0\
    );
\multOp__30_carry__0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(5),
      I1 => i_data_IBUF(3),
      O => \multOp__30_carry__0_i_11_n_0\
    );
\multOp__30_carry__0_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(3),
      I1 => i_data_IBUF(4),
      O => \multOp__30_carry__0_i_12_n_0\
    );
\multOp__30_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880808088000000"
    )
        port map (
      I0 => A(5),
      I1 => i_data_IBUF(3),
      I2 => A(4),
      I3 => i_data_IBUF(5),
      I4 => A(3),
      I5 => i_data_IBUF(4),
      O => \^data_reg[6]_1\(2)
    );
\multOp__30_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => i_data_IBUF(4),
      I1 => A(3),
      I2 => A(2),
      I3 => i_data_IBUF(5),
      I4 => A(4),
      I5 => i_data_IBUF(3),
      O => \^data_reg[6]_1\(1)
    );
\multOp__30_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880808088000000"
    )
        port map (
      I0 => A(3),
      I1 => i_data_IBUF(3),
      I2 => A(2),
      I3 => i_data_IBUF(5),
      I4 => A(1),
      I5 => i_data_IBUF(4),
      O => \^data_reg[6]_1\(0)
    );
\multOp__30_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A959595956A6A6A"
    )
        port map (
      I0 => \^data_reg[6]_1\(3),
      I1 => A(6),
      I2 => i_data_IBUF(4),
      I3 => A(5),
      I4 => i_data_IBUF(5),
      I5 => \multOp__30_carry__0_i_9_n_0\,
      O => \data_reg[6]_4\(3)
    );
\multOp__30_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A959595956A6A6A"
    )
        port map (
      I0 => \^data_reg[6]_1\(2),
      I1 => A(5),
      I2 => i_data_IBUF(4),
      I3 => A(4),
      I4 => i_data_IBUF(5),
      I5 => \multOp__30_carry__0_i_10_n_0\,
      O => \data_reg[6]_4\(2)
    );
\multOp__30_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A959595956A6A6A"
    )
        port map (
      I0 => \^data_reg[6]_1\(1),
      I1 => A(4),
      I2 => i_data_IBUF(4),
      I3 => A(3),
      I4 => i_data_IBUF(5),
      I5 => \multOp__30_carry__0_i_11_n_0\,
      O => \data_reg[6]_4\(1)
    );
\multOp__30_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \^data_reg[6]_1\(0),
      I1 => i_data_IBUF(5),
      I2 => A(2),
      I3 => \multOp__30_carry__0_i_12_n_0\,
      I4 => A(4),
      I5 => i_data_IBUF(3),
      O => \data_reg[6]_4\(0)
    );
\multOp__30_carry__0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(7),
      I1 => i_data_IBUF(3),
      O => \multOp__30_carry__0_i_9_n_0\
    );
\multOp__30_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(7),
      I1 => i_data_IBUF(5),
      O => \data_reg[7]_1\(1)
    );
\multOp__30_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880808088000000"
    )
        port map (
      I0 => A(7),
      I1 => i_data_IBUF(3),
      I2 => A(6),
      I3 => i_data_IBUF(5),
      I4 => A(5),
      I5 => i_data_IBUF(4),
      O => \data_reg[7]_1\(0)
    );
\multOp__30_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7000"
    )
        port map (
      I0 => A(6),
      I1 => i_data_IBUF(4),
      I2 => i_data_IBUF(5),
      I3 => A(7),
      O => \data_reg[6]_5\(1)
    );
\multOp__30_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E57F70803000F000"
    )
        port map (
      I0 => A(5),
      I1 => i_data_IBUF(3),
      I2 => A(7),
      I3 => i_data_IBUF(4),
      I4 => A(6),
      I5 => i_data_IBUF(5),
      O => \data_reg[6]_5\(0)
    );
\multOp__30_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => i_data_IBUF(3),
      I1 => A(3),
      I2 => i_data_IBUF(5),
      I3 => A(1),
      I4 => i_data_IBUF(4),
      I5 => A(2),
      O => \^data_reg[3]_0\(2)
    );
\multOp__30_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => i_data_IBUF(4),
      I1 => A(1),
      I2 => i_data_IBUF(5),
      I3 => A(0),
      O => \^data_reg[3]_0\(1)
    );
\multOp__30_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(0),
      I1 => i_data_IBUF(4),
      O => \^data_reg[3]_0\(0)
    );
\multOp__30_carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^data_reg[3]_0\(2),
      I1 => A(1),
      I2 => i_data_IBUF(5),
      I3 => A(0),
      I4 => i_data_IBUF(4),
      O => \data_reg[1]_0\(3)
    );
\multOp__30_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => A(0),
      I1 => i_data_IBUF(5),
      I2 => A(1),
      I3 => i_data_IBUF(4),
      I4 => i_data_IBUF(3),
      I5 => A(2),
      O => \data_reg[1]_0\(2)
    );
\multOp__30_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => i_data_IBUF(3),
      I1 => A(1),
      I2 => i_data_IBUF(4),
      I3 => A(0),
      O => \data_reg[1]_0\(1)
    );
\multOp__30_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(0),
      I1 => i_data_IBUF(3),
      O => \data_reg[1]_0\(0)
    );
\multOp__60_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7111"
    )
        port map (
      I0 => \multOp__60_carry__0_i_9_n_0\,
      I1 => \multOp__60_carry__0_i_10_n_0\,
      I2 => A(3),
      I3 => i_data_IBUF(6),
      O => \^data_reg[3]_1\(3)
    );
\multOp__60_carry__0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => i_data_IBUF(7),
      I1 => A(2),
      I2 => \multOp__60_carry__0_i_5_0\(1),
      I3 => \multOp__60_carry__1_i_8_0\(2),
      O => \multOp__60_carry__0_i_10_n_0\
    );
\multOp__60_carry__0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => i_data_IBUF(7),
      I1 => A(1),
      I2 => \multOp__60_carry__0_i_5_0\(0),
      I3 => \multOp__60_carry__1_i_8_0\(1),
      O => \multOp__60_carry__0_i_11_n_0\
    );
\multOp__60_carry__0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"077F"
    )
        port map (
      I0 => A(2),
      I1 => i_data_IBUF(7),
      I2 => \multOp__60_carry__1_i_8_0\(2),
      I3 => \multOp__60_carry__0_i_5_0\(1),
      O => \multOp__60_carry__0_i_12_n_0\
    );
\multOp__60_carry__0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => i_data_IBUF(7),
      I1 => A(3),
      I2 => CO(0),
      I3 => \multOp__60_carry__1_i_8_0\(3),
      O => \multOp__60_carry__0_i_13_n_0\
    );
\multOp__60_carry__0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7887877887788778"
    )
        port map (
      I0 => i_data_IBUF(7),
      I1 => A(1),
      I2 => \multOp__60_carry__0_i_5_0\(0),
      I3 => \multOp__60_carry__1_i_8_0\(1),
      I4 => A(2),
      I5 => i_data_IBUF(6),
      O => \multOp__60_carry__0_i_14_n_0\
    );
\multOp__60_carry__0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => i_data_IBUF(6),
      I1 => A(1),
      I2 => O(0),
      I3 => \data_reg[10]\(0),
      O => \multOp__60_carry__0_i_15_n_0\
    );
\multOp__60_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80000080000000"
    )
        port map (
      I0 => A(1),
      I1 => O(0),
      I2 => \data_reg[10]\(0),
      I3 => A(2),
      I4 => i_data_IBUF(6),
      I5 => \multOp__60_carry__0_i_11_n_0\,
      O => \^data_reg[3]_1\(2)
    );
\multOp__60_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80FF7FFF7F008000"
    )
        port map (
      I0 => \data_reg[10]\(0),
      I1 => O(0),
      I2 => A(1),
      I3 => i_data_IBUF(6),
      I4 => A(2),
      I5 => \multOp__60_carry__0_i_11_n_0\,
      O => \^data_reg[3]_1\(1)
    );
\multOp__60_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => i_data_IBUF(7),
      I1 => A(0),
      I2 => \data_reg[10]\(1),
      I3 => \multOp__60_carry__1_i_8_0\(0),
      O => \^data_reg[3]_1\(0)
    );
\multOp__60_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \^data_reg[3]_1\(3),
      I1 => \multOp__60_carry__0_i_12_n_0\,
      I2 => \multOp__60_carry__0_i_13_n_0\,
      I3 => A(4),
      I4 => i_data_IBUF(6),
      O => \data_reg[4]_0\(3)
    );
\multOp__60_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999666"
    )
        port map (
      I0 => \multOp__60_carry__0_i_9_n_0\,
      I1 => \multOp__60_carry__0_i_10_n_0\,
      I2 => A(3),
      I3 => i_data_IBUF(6),
      I4 => \^data_reg[3]_1\(2),
      O => \data_reg[4]_0\(2)
    );
\multOp__60_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9996966696669666"
    )
        port map (
      I0 => \multOp__60_carry__0_i_14_n_0\,
      I1 => \multOp__60_carry__0_i_15_n_0\,
      I2 => \multOp__60_carry__1_i_8_0\(0),
      I3 => \data_reg[10]\(1),
      I4 => i_data_IBUF(7),
      I5 => A(0),
      O => \data_reg[4]_0\(1)
    );
\multOp__60_carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"956A6A6A"
    )
        port map (
      I0 => \^data_reg[3]_1\(0),
      I1 => \data_reg[10]\(0),
      I2 => O(0),
      I3 => A(1),
      I4 => i_data_IBUF(6),
      O => \data_reg[4]_0\(0)
    );
\multOp__60_carry__0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"077F"
    )
        port map (
      I0 => A(1),
      I1 => i_data_IBUF(7),
      I2 => \multOp__60_carry__1_i_8_0\(1),
      I3 => \multOp__60_carry__0_i_5_0\(0),
      O => \multOp__60_carry__0_i_9_n_0\
    );
\multOp__60_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"088F0F008F080F00"
    )
        port map (
      I0 => \data_reg[14]\(1),
      I1 => A(5),
      I2 => \multOp__60_carry__1_i_9_n_0\,
      I3 => \data_reg[14]_0\(0),
      I4 => i_data_IBUF(7),
      I5 => A(6),
      O => \^data_reg[5]_0\(3)
    );
\multOp__60_carry__1_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => A(6),
      I1 => i_data_IBUF(6),
      O => \multOp__60_carry__1_i_10_n_0\
    );
\multOp__60_carry__1_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"077F"
    )
        port map (
      I0 => A(3),
      I1 => i_data_IBUF(7),
      I2 => \multOp__60_carry__1_i_8_0\(3),
      I3 => CO(0),
      O => \multOp__60_carry__1_i_11_n_0\
    );
\multOp__60_carry__1_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \data_reg[14]\(1),
      I1 => i_data_IBUF(7),
      I2 => A(5),
      O => \multOp__60_carry__1_i_12_n_0\
    );
\multOp__60_carry__1_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"956A6A6A"
    )
        port map (
      I0 => \data_reg[14]_0\(0),
      I1 => i_data_IBUF(7),
      I2 => A(6),
      I3 => A(7),
      I4 => i_data_IBUF(6),
      O => \multOp__60_carry__1_i_13_n_0\
    );
\multOp__60_carry__1_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"956A6A6A"
    )
        port map (
      I0 => \data_reg[14]\(1),
      I1 => i_data_IBUF(7),
      I2 => A(5),
      I3 => A(6),
      I4 => i_data_IBUF(6),
      O => \multOp__60_carry__1_i_14_n_0\
    );
\multOp__60_carry__1_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => A(4),
      I1 => i_data_IBUF(7),
      O => \multOp__60_carry__1_i_15_n_0\
    );
\multOp__60_carry__1_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A959595"
    )
        port map (
      I0 => \data_reg[14]\(0),
      I1 => i_data_IBUF(7),
      I2 => A(4),
      I3 => A(5),
      I4 => i_data_IBUF(6),
      O => \multOp__60_carry__1_i_16_n_0\
    );
\multOp__60_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"088F0F008F080F00"
    )
        port map (
      I0 => \data_reg[14]\(0),
      I1 => A(4),
      I2 => \multOp__60_carry__1_i_10_n_0\,
      I3 => \data_reg[14]\(1),
      I4 => i_data_IBUF(7),
      I5 => A(5),
      O => \^data_reg[5]_0\(2)
    );
\multOp__60_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40D5D5D5D5404040"
    )
        port map (
      I0 => \multOp__60_carry__1_i_11_n_0\,
      I1 => i_data_IBUF(6),
      I2 => A(5),
      I3 => A(4),
      I4 => i_data_IBUF(7),
      I5 => \data_reg[14]\(0),
      O => \^data_reg[5]_0\(1)
    );
\multOp__60_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7111"
    )
        port map (
      I0 => \multOp__60_carry__0_i_12_n_0\,
      I1 => \multOp__60_carry__0_i_13_n_0\,
      I2 => A(4),
      I3 => i_data_IBUF(6),
      O => \^data_reg[5]_0\(0)
    );
\multOp__60_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FEC1C801CEC7080"
    )
        port map (
      I0 => i_data_IBUF(6),
      I1 => \multOp__60_carry__1_i_12_n_0\,
      I2 => A(7),
      I3 => i_data_IBUF(7),
      I4 => \data_reg[14]_0\(0),
      I5 => A(6),
      O => \data_reg[7]_3\(3)
    );
\multOp__60_carry__1_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96666666"
    )
        port map (
      I0 => \^data_reg[5]_0\(2),
      I1 => \multOp__60_carry__1_i_13_n_0\,
      I2 => \data_reg[14]\(1),
      I3 => i_data_IBUF(7),
      I4 => A(5),
      O => \data_reg[7]_3\(2)
    );
\multOp__60_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08F7708F708FF708"
    )
        port map (
      I0 => A(5),
      I1 => i_data_IBUF(6),
      I2 => \multOp__60_carry__1_i_11_n_0\,
      I3 => \multOp__60_carry__1_i_14_n_0\,
      I4 => \data_reg[14]\(0),
      I5 => \multOp__60_carry__1_i_15_n_0\,
      O => \data_reg[7]_3\(1)
    );
\multOp__60_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"088FF770F770088F"
    )
        port map (
      I0 => i_data_IBUF(6),
      I1 => A(4),
      I2 => \multOp__60_carry__0_i_13_n_0\,
      I3 => \multOp__60_carry__0_i_12_n_0\,
      I4 => \multOp__60_carry__1_i_11_n_0\,
      I5 => \multOp__60_carry__1_i_16_n_0\,
      O => \data_reg[7]_3\(0)
    );
\multOp__60_carry__1_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => A(7),
      I1 => i_data_IBUF(6),
      O => \multOp__60_carry__1_i_9_n_0\
    );
\multOp__60_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => A(7),
      I1 => A(6),
      I2 => i_data_IBUF(7),
      I3 => \data_reg[14]_0\(0),
      O => \data_reg[7]_2\(0)
    );
\multOp__60_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9666"
    )
        port map (
      I0 => O(0),
      I1 => \data_reg[10]\(0),
      I2 => i_data_IBUF(6),
      I3 => A(0),
      O => \data_reg[0]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_8_bit_h is
  port (
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \data_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \data_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \data_reg[7]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \minusOp_inferred__0/i__carry__0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_data_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    \data_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end reg_8_bit_h;

architecture STRUCTURE of reg_8_bit_h is
  signal \^q\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \data_reg_n_0_[7]\ : STD_LOGIC;
  signal min_comp_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data[0]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \data[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \data[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data[5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \data[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data[7]_i_2\ : label is "soft_lutpair6";
begin
  Q(6 downto 0) <= \^q\(6 downto 0);
\data[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_data_IBUF(0),
      I1 => CO(0),
      I2 => \^q\(0),
      O => min_comp_out(0)
    );
\data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_data_IBUF(1),
      I1 => CO(0),
      I2 => \^q\(1),
      O => min_comp_out(1)
    );
\data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_data_IBUF(2),
      I1 => CO(0),
      I2 => \^q\(2),
      O => min_comp_out(2)
    );
\data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_data_IBUF(3),
      I1 => CO(0),
      I2 => \^q\(3),
      O => min_comp_out(3)
    );
\data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_data_IBUF(4),
      I1 => CO(0),
      I2 => \^q\(4),
      O => min_comp_out(4)
    );
\data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_data_IBUF(5),
      I1 => CO(0),
      I2 => \^q\(5),
      O => min_comp_out(5)
    );
\data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_data_IBUF(6),
      I1 => CO(0),
      I2 => \^q\(6),
      O => min_comp_out(6)
    );
\data[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => i_data_IBUF(7),
      I1 => CO(0),
      I2 => \data_reg_n_0_[7]\,
      O => min_comp_out(7)
    );
\data_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => min_comp_out(0),
      PRE => \data_reg[0]_0\(0),
      Q => \^q\(0)
    );
\data_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => min_comp_out(1),
      PRE => \data_reg[0]_0\(0),
      Q => \^q\(1)
    );
\data_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => min_comp_out(2),
      PRE => \data_reg[0]_0\(0),
      Q => \^q\(2)
    );
\data_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => min_comp_out(3),
      PRE => \data_reg[0]_0\(0),
      Q => \^q\(3)
    );
\data_reg[4]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => min_comp_out(4),
      PRE => \data_reg[0]_0\(0),
      Q => \^q\(4)
    );
\data_reg[5]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => min_comp_out(5),
      PRE => \data_reg[0]_0\(0),
      Q => \^q\(5)
    );
\data_reg[6]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => min_comp_out(6),
      PRE => \data_reg[0]_0\(0),
      Q => \^q\(6)
    );
\data_reg[7]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => E(0),
      D => min_comp_out(7),
      PRE => \data_reg[0]_0\(0),
      Q => \data_reg_n_0_[7]\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \data_reg_n_0_[7]\,
      I1 => i_data_IBUF(7),
      O => \data_reg[7]_0\(3)
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \data_reg_n_0_[7]\,
      I1 => \minusOp_inferred__0/i__carry__0\(0),
      O => S(0)
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => i_data_IBUF(6),
      I1 => \^q\(6),
      O => \data_reg[7]_0\(2)
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => i_data_IBUF(5),
      I1 => \^q\(5),
      O => \data_reg[7]_0\(1)
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => i_data_IBUF(4),
      I1 => \^q\(4),
      O => \data_reg[7]_0\(0)
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => i_data_IBUF(3),
      I1 => \^q\(3),
      O => \data_reg[3]_0\(3)
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => i_data_IBUF(2),
      I1 => \^q\(2),
      O => \data_reg[3]_0\(2)
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => i_data_IBUF(1),
      I1 => \^q\(1),
      O => \data_reg[3]_0\(1)
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => i_data_IBUF(0),
      I1 => \^q\(0),
      O => \data_reg[3]_0\(0)
    );
ltOp_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(6),
      I1 => i_data_IBUF(6),
      I2 => i_data_IBUF(7),
      I3 => \data_reg_n_0_[7]\,
      O => DI(3)
    );
ltOp_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(4),
      I1 => i_data_IBUF(4),
      I2 => i_data_IBUF(5),
      I3 => \^q\(5),
      O => DI(2)
    );
ltOp_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(2),
      I1 => i_data_IBUF(2),
      I2 => i_data_IBUF(3),
      I3 => \^q\(3),
      O => DI(1)
    );
ltOp_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \^q\(0),
      I1 => i_data_IBUF(0),
      I2 => i_data_IBUF(1),
      I3 => \^q\(1),
      O => DI(0)
    );
ltOp_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => i_data_IBUF(7),
      I1 => \data_reg_n_0_[7]\,
      I2 => \^q\(6),
      I3 => i_data_IBUF(6),
      O => \data_reg[7]_1\(3)
    );
ltOp_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(5),
      I1 => i_data_IBUF(5),
      I2 => \^q\(4),
      I3 => i_data_IBUF(4),
      O => \data_reg[7]_1\(2)
    );
ltOp_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(3),
      I1 => i_data_IBUF(3),
      I2 => \^q\(2),
      I3 => i_data_IBUF(2),
      O => \data_reg[7]_1\(1)
    );
ltOp_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^q\(1),
      I1 => i_data_IBUF(1),
      I2 => \^q\(0),
      I3 => i_data_IBUF(0),
      O => \data_reg[7]_1\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity reg_9_bit is
  port (
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \data_reg[8]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \data_reg[3]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_reg[6]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \data_reg[8]_1\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \data_reg[5]_0\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \data_reg[6]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_reg[4]_0\ : out STD_LOGIC;
    \data_reg[6]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \data_reg[8]_2\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_reg[3]_1\ : out STD_LOGIC;
    \data_reg[3]_2\ : out STD_LOGIC;
    \data_reg[1]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \data_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \data_reg[7]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \data_reg[6]_3\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \data_reg[7]_1\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \data_reg[7]_2\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    B : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \multOp_inferred__0/i___66_carry__1\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    O : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \i___66_carry__2_i_1_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    delta_value : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \data_reg[5]_1\ : in STD_LOGIC;
    \multOp_inferred__0/i___66_carry__1_0\ : in STD_LOGIC;
    \multOp_inferred__0/i___66_carry__1_1\ : in STD_LOGIC;
    \multOp_inferred__0/i___66_carry__1_2\ : in STD_LOGIC;
    \multOp_inferred__0/i___66_carry__2\ : in STD_LOGIC;
    \data_reg[0]_1\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CLK : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end reg_9_bit;

architecture STRUCTURE of reg_9_bit is
  signal \^di\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \data[0]_i_1__2_n_0\ : STD_LOGIC;
  signal \data[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \data[1]_i_2_n_0\ : STD_LOGIC;
  signal \data[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \data[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \data[7]_i_1__2_n_0\ : STD_LOGIC;
  signal \^data_reg[3]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^data_reg[6]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^data_reg[6]_1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^data_reg[8]_1\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \i___0_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \i___33_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \i___33_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \i___33_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \i___33_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i___66_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \i___66_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \i___66_carry__1_i_14_n_0\ : STD_LOGIC;
  signal \i___66_carry__1_i_15_n_0\ : STD_LOGIC;
  signal \i___66_carry__1_i_16_n_0\ : STD_LOGIC;
  signal \i___66_carry__2_i_4_n_0\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data[0]_i_1__2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \data[1]_i_1__1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \data[1]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \data[2]_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \data[5]_i_1__1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \data[6]_i_1__1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \data[7]_i_1__2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data[8]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \i___0_carry__0_i_12\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \i___33_carry__0_i_10\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \i___33_carry__0_i_11\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \i___33_carry__0_i_12\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \i___33_carry__0_i_9\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \i___66_carry__1_i_10\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \i___66_carry__1_i_12\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \i___66_carry__1_i_14\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \i___66_carry__1_i_15\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \i___66_carry__1_i_16\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \i___66_carry__1_i_19\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \i___66_carry__2_i_4\ : label is "soft_lutpair24";
begin
  DI(0) <= \^di\(0);
  Q(8 downto 0) <= \^q\(8 downto 0);
  \data_reg[3]_0\(1 downto 0) <= \^data_reg[3]_0\(1 downto 0);
  \data_reg[6]_0\(2 downto 0) <= \^data_reg[6]_0\(2 downto 0);
  \data_reg[6]_1\(1 downto 0) <= \^data_reg[6]_1\(1 downto 0);
  \data_reg[8]_1\(2 downto 0) <= \^data_reg[8]_1\(2 downto 0);
\data[0]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => delta_value(7),
      I1 => delta_value(0),
      I2 => delta_value(6),
      I3 => delta_value(1),
      I4 => \data[1]_i_2_n_0\,
      O => \data[0]_i_1__2_n_0\
    );
\data[1]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0080"
    )
        port map (
      I0 => delta_value(0),
      I1 => delta_value(6),
      I2 => delta_value(1),
      I3 => \data[1]_i_2_n_0\,
      I4 => delta_value(7),
      O => \data[1]_i_1__1_n_0\
    );
\data[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => delta_value(2),
      I1 => delta_value(3),
      I2 => delta_value(4),
      I3 => delta_value(5),
      O => \data[1]_i_2_n_0\
    );
\data[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => delta_value(3),
      I1 => delta_value(2),
      O => \data_reg[3]_2\
    );
\data[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => delta_value(2),
      I1 => delta_value(3),
      I2 => delta_value(1),
      I3 => delta_value(0),
      O => \data_reg[3]_1\
    );
\data[5]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6CCC0000"
    )
        port map (
      I0 => delta_value(2),
      I1 => delta_value(3),
      I2 => delta_value(1),
      I3 => delta_value(0),
      I4 => \data_reg[5]_1\,
      O => \data[5]_i_1__1_n_0\
    );
\data[6]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02080808"
    )
        port map (
      I0 => \data_reg[5]_1\,
      I1 => delta_value(2),
      I2 => delta_value(3),
      I3 => delta_value(1),
      I4 => delta_value(0),
      O => \data[6]_i_1__1_n_0\
    );
\data[7]_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020200"
    )
        port map (
      I0 => \data_reg[5]_1\,
      I1 => delta_value(2),
      I2 => delta_value(3),
      I3 => delta_value(1),
      I4 => delta_value(0),
      O => \data[7]_i_1__2_n_0\
    );
\data[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => delta_value(3),
      I1 => delta_value(2),
      I2 => delta_value(0),
      I3 => delta_value(1),
      I4 => \data_reg[5]_1\,
      O => sel0(7)
    );
\data_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \data_reg[0]_1\(1),
      CLR => \data_reg[0]_1\(0),
      D => \data[0]_i_1__2_n_0\,
      Q => \^q\(0)
    );
\data_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \data_reg[0]_1\(1),
      CLR => \data_reg[0]_1\(0),
      D => \data[1]_i_1__1_n_0\,
      Q => \^q\(1)
    );
\data_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \data_reg[0]_1\(1),
      CLR => \data_reg[0]_1\(0),
      D => D(0),
      Q => \^q\(2)
    );
\data_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \data_reg[0]_1\(1),
      CLR => \data_reg[0]_1\(0),
      D => D(1),
      Q => \^q\(3)
    );
\data_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \data_reg[0]_1\(1),
      CLR => \data_reg[0]_1\(0),
      D => D(2),
      Q => \^q\(4)
    );
\data_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \data_reg[0]_1\(1),
      CLR => \data_reg[0]_1\(0),
      D => \data[5]_i_1__1_n_0\,
      Q => \^q\(5)
    );
\data_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \data_reg[0]_1\(1),
      CLR => \data_reg[0]_1\(0),
      D => \data[6]_i_1__1_n_0\,
      Q => \^q\(6)
    );
\data_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \data_reg[0]_1\(1),
      CLR => \data_reg[0]_1\(0),
      D => \data[7]_i_1__2_n_0\,
      Q => \^q\(7)
    );
\data_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \data_reg[0]_1\(1),
      CLR => \data_reg[0]_1\(0),
      D => sel0(7),
      Q => \^q\(8)
    );
\i___0_carry__0_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(3),
      I1 => B(1),
      O => \i___0_carry__0_i_12_n_0\
    );
\i___0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880808088000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => B(0),
      I2 => \^q\(2),
      I3 => B(2),
      I4 => \^q\(1),
      I5 => B(1),
      O => \^di\(0)
    );
\i___0_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \^di\(0),
      I1 => B(2),
      I2 => \^q\(2),
      I3 => \i___0_carry__0_i_12_n_0\,
      I4 => B(0),
      I5 => \^q\(4),
      O => \data_reg[2]_0\(0)
    );
\i___0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(8),
      I1 => B(2),
      O => \data_reg[8]_0\(0)
    );
\i___0_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7000"
    )
        port map (
      I0 => \^q\(7),
      I1 => B(1),
      I2 => B(2),
      I3 => \^q\(8),
      O => \data_reg[7]_0\(1)
    );
\i___0_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E57F70803000F000"
    )
        port map (
      I0 => \^q\(6),
      I1 => B(0),
      I2 => \^q\(8),
      I3 => B(1),
      I4 => \^q\(7),
      I5 => B(2),
      O => \data_reg[7]_0\(0)
    );
\i___0_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(3),
      I1 => B(0),
      I2 => B(2),
      I3 => \^q\(1),
      I4 => B(1),
      I5 => \^q\(2),
      O => \^data_reg[3]_0\(1)
    );
\i___0_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => B(1),
      O => \^data_reg[3]_0\(0)
    );
\i___0_carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^data_reg[3]_0\(1),
      I1 => \^q\(1),
      I2 => B(2),
      I3 => \^q\(0),
      I4 => B(1),
      O => \data_reg[1]_0\(2)
    );
\i___0_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(0),
      I1 => B(2),
      I2 => \^q\(1),
      I3 => B(1),
      I4 => \^q\(2),
      I5 => B(0),
      O => \data_reg[1]_0\(1)
    );
\i___0_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \^q\(1),
      I1 => B(0),
      I2 => B(1),
      I3 => \^q\(0),
      O => \data_reg[1]_0\(0)
    );
\i___33_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880808088000000"
    )
        port map (
      I0 => \^q\(6),
      I1 => B(3),
      I2 => \^q\(5),
      I3 => B(5),
      I4 => \^q\(4),
      I5 => B(4),
      O => \^data_reg[6]_0\(2)
    );
\i___33_carry__0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(6),
      I1 => B(3),
      O => \i___33_carry__0_i_10_n_0\
    );
\i___33_carry__0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(5),
      I1 => B(3),
      O => \data_reg[5]_0\
    );
\i___33_carry__0_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(3),
      I1 => B(4),
      O => \i___33_carry__0_i_12_n_0\
    );
\i___33_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880808088000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => B(3),
      I2 => \^q\(4),
      I3 => B(5),
      I4 => \^q\(3),
      I5 => B(4),
      O => \^data_reg[6]_0\(1)
    );
\i___33_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880808088000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => B(3),
      I2 => \^q\(2),
      I3 => B(5),
      I4 => \^q\(1),
      I5 => B(4),
      O => \^data_reg[6]_0\(0)
    );
\i___33_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A959595956A6A6A"
    )
        port map (
      I0 => \^data_reg[6]_0\(2),
      I1 => \^q\(6),
      I2 => B(4),
      I3 => \^q\(5),
      I4 => B(5),
      I5 => \i___33_carry__0_i_9_n_0\,
      O => \data_reg[6]_3\(2)
    );
\i___33_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A959595956A6A6A"
    )
        port map (
      I0 => \^data_reg[6]_0\(1),
      I1 => \^q\(5),
      I2 => B(4),
      I3 => \^q\(4),
      I4 => B(5),
      I5 => \i___33_carry__0_i_10_n_0\,
      O => \data_reg[6]_3\(1)
    );
\i___33_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \^data_reg[6]_0\(0),
      I1 => B(5),
      I2 => \^q\(2),
      I3 => \i___33_carry__0_i_12_n_0\,
      I4 => \^q\(4),
      I5 => B(3),
      O => \data_reg[6]_3\(0)
    );
\i___33_carry__0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(7),
      I1 => B(3),
      O => \i___33_carry__0_i_9_n_0\
    );
\i___33_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(8),
      I1 => B(5),
      O => \^data_reg[8]_1\(2)
    );
\i___33_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880808088000000"
    )
        port map (
      I0 => \^q\(8),
      I1 => B(3),
      I2 => \^q\(7),
      I3 => B(5),
      I4 => \^q\(6),
      I5 => B(4),
      O => \^data_reg[8]_1\(1)
    );
\i___33_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880808088000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => B(3),
      I2 => \^q\(6),
      I3 => B(5),
      I4 => \^q\(5),
      I5 => B(4),
      O => \^data_reg[8]_1\(0)
    );
\i___33_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7000"
    )
        port map (
      I0 => \^q\(7),
      I1 => B(4),
      I2 => B(5),
      I3 => \^q\(8),
      O => \data_reg[7]_1\(2)
    );
\i___33_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E57F70803000F000"
    )
        port map (
      I0 => \^q\(6),
      I1 => B(3),
      I2 => \^q\(8),
      I3 => B(4),
      I4 => \^q\(7),
      I5 => B(5),
      O => \data_reg[7]_1\(1)
    );
\i___33_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A959595956A6A6A"
    )
        port map (
      I0 => \^data_reg[8]_1\(0),
      I1 => \^q\(7),
      I2 => B(4),
      I3 => \^q\(6),
      I4 => B(5),
      I5 => \i___33_carry__1_i_7_n_0\,
      O => \data_reg[7]_1\(0)
    );
\i___33_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(8),
      I1 => B(3),
      O => \i___33_carry__1_i_7_n_0\
    );
\i___33_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => B(4),
      O => \data_reg[0]_0\(0)
    );
\i___33_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(0),
      I1 => B(5),
      I2 => \^q\(1),
      I3 => B(4),
      I4 => B(3),
      I5 => \^q\(2),
      O => S(1)
    );
\i___33_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => B(3),
      O => S(0)
    );
\i___66_carry__1_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA80"
    )
        port map (
      I0 => CO(0),
      I1 => \^q\(4),
      I2 => B(7),
      I3 => O(0),
      O => \i___66_carry__1_i_10_n_0\
    );
\i___66_carry__1_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(4),
      I1 => B(7),
      O => \i___66_carry__1_i_12_n_0\
    );
\i___66_carry__1_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A959595"
    )
        port map (
      I0 => \i___66_carry__2_i_1_0\(0),
      I1 => B(7),
      I2 => \^q\(7),
      I3 => \^q\(8),
      I4 => B(6),
      O => \i___66_carry__1_i_14_n_0\
    );
\i___66_carry__1_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(6),
      I1 => B(7),
      O => \i___66_carry__1_i_15_n_0\
    );
\i___66_carry__1_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(6),
      I1 => B(6),
      O => \i___66_carry__1_i_16_n_0\
    );
\i___66_carry__1_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => B(7),
      I1 => \^q\(4),
      I2 => CO(0),
      I3 => O(0),
      O => \data_reg[4]_0\
    );
\i___66_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80EAEAEAEA808080"
    )
        port map (
      I0 => \i___66_carry__1_i_10_n_0\,
      I1 => B(6),
      I2 => \^q\(6),
      I3 => \^q\(5),
      I4 => B(7),
      I5 => O(1),
      O => \^data_reg[6]_1\(1)
    );
\i___66_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7DD7144114411441"
    )
        port map (
      I0 => \multOp_inferred__0/i___66_carry__1\,
      I1 => \i___66_carry__1_i_12_n_0\,
      I2 => CO(0),
      I3 => O(0),
      I4 => \^q\(5),
      I5 => B(6),
      O => \^data_reg[6]_1\(0)
    );
\i___66_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7088F708F7008F7"
    )
        port map (
      I0 => \^q\(7),
      I1 => B(6),
      I2 => \multOp_inferred__0/i___66_carry__1_2\,
      I3 => \i___66_carry__1_i_14_n_0\,
      I4 => O(2),
      I5 => \i___66_carry__1_i_15_n_0\,
      O => \data_reg[7]_2\(2)
    );
\i___66_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B4D2D2D2D24B4B4B"
    )
        port map (
      I0 => \i___66_carry__1_i_16_n_0\,
      I1 => \i___66_carry__1_i_10_n_0\,
      I2 => \multOp_inferred__0/i___66_carry__1_1\,
      I3 => B(7),
      I4 => \^q\(5),
      I5 => O(1),
      O => \data_reg[7]_2\(1)
    );
\i___66_carry__1_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96666999"
    )
        port map (
      I0 => \^data_reg[6]_1\(0),
      I1 => \i___66_carry__1_i_10_n_0\,
      I2 => B(6),
      I3 => \^q\(6),
      I4 => \multOp_inferred__0/i___66_carry__1_0\,
      O => \data_reg[7]_2\(0)
    );
\i___66_carry__2_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808080000000"
    )
        port map (
      I0 => O(2),
      I1 => B(7),
      I2 => \^q\(6),
      I3 => B(6),
      I4 => \^q\(8),
      I5 => \i___66_carry__2_i_4_n_0\,
      O => \data_reg[6]_2\(0)
    );
\i___66_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(7),
      I2 => B(7),
      I3 => \i___66_carry__2_i_1_0\(0),
      O => \data_reg[8]_2\(1)
    );
\i___66_carry__2_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FB3432043B3D020"
    )
        port map (
      I0 => B(6),
      I1 => \multOp_inferred__0/i___66_carry__2\,
      I2 => \^q\(8),
      I3 => B(7),
      I4 => \i___66_carry__2_i_1_0\(0),
      I5 => \^q\(7),
      O => \data_reg[8]_2\(0)
    );
\i___66_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \i___66_carry__2_i_1_0\(0),
      I1 => B(7),
      I2 => \^q\(7),
      O => \i___66_carry__2_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity datapath is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_cur_state_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    o_address_OBUF : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_data_OBUF : out STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 11 downto 0 );
    \o_address[0]\ : in STD_LOGIC;
    \o_address[1]\ : in STD_LOGIC;
    \o_address[1]_0\ : in STD_LOGIC;
    \FSM_onehot_cur_state_reg[0]\ : in STD_LOGIC;
    i_start_IBUF : in STD_LOGIC;
    i_data_IBUF : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end datapath;

architecture STRUCTURE of datapath is
  signal B : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \FSM_onehot_cur_state[11]_i_3_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_cur_state_reg[1]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal MAX_VALUE_REG_n_1 : STD_LOGIC;
  signal MAX_VALUE_REG_n_10 : STD_LOGIC;
  signal MAX_VALUE_REG_n_11 : STD_LOGIC;
  signal MAX_VALUE_REG_n_12 : STD_LOGIC;
  signal MAX_VALUE_REG_n_13 : STD_LOGIC;
  signal MAX_VALUE_REG_n_14 : STD_LOGIC;
  signal MAX_VALUE_REG_n_15 : STD_LOGIC;
  signal MAX_VALUE_REG_n_16 : STD_LOGIC;
  signal MAX_VALUE_REG_n_17 : STD_LOGIC;
  signal MAX_VALUE_REG_n_18 : STD_LOGIC;
  signal MAX_VALUE_REG_n_19 : STD_LOGIC;
  signal MAX_VALUE_REG_n_2 : STD_LOGIC;
  signal MAX_VALUE_REG_n_20 : STD_LOGIC;
  signal MAX_VALUE_REG_n_21 : STD_LOGIC;
  signal MAX_VALUE_REG_n_22 : STD_LOGIC;
  signal MAX_VALUE_REG_n_23 : STD_LOGIC;
  signal MAX_VALUE_REG_n_24 : STD_LOGIC;
  signal MAX_VALUE_REG_n_25 : STD_LOGIC;
  signal MAX_VALUE_REG_n_26 : STD_LOGIC;
  signal MAX_VALUE_REG_n_27 : STD_LOGIC;
  signal MAX_VALUE_REG_n_3 : STD_LOGIC;
  signal MAX_VALUE_REG_n_4 : STD_LOGIC;
  signal MAX_VALUE_REG_n_5 : STD_LOGIC;
  signal MAX_VALUE_REG_n_6 : STD_LOGIC;
  signal MAX_VALUE_REG_n_7 : STD_LOGIC;
  signal MAX_VALUE_REG_n_8 : STD_LOGIC;
  signal MAX_VALUE_REG_n_9 : STD_LOGIC;
  signal MIN_VALUE_REG_n_0 : STD_LOGIC;
  signal MIN_VALUE_REG_n_1 : STD_LOGIC;
  signal MIN_VALUE_REG_n_10 : STD_LOGIC;
  signal MIN_VALUE_REG_n_11 : STD_LOGIC;
  signal MIN_VALUE_REG_n_12 : STD_LOGIC;
  signal MIN_VALUE_REG_n_13 : STD_LOGIC;
  signal MIN_VALUE_REG_n_14 : STD_LOGIC;
  signal MIN_VALUE_REG_n_15 : STD_LOGIC;
  signal MIN_VALUE_REG_n_16 : STD_LOGIC;
  signal MIN_VALUE_REG_n_17 : STD_LOGIC;
  signal MIN_VALUE_REG_n_18 : STD_LOGIC;
  signal MIN_VALUE_REG_n_19 : STD_LOGIC;
  signal MIN_VALUE_REG_n_2 : STD_LOGIC;
  signal MIN_VALUE_REG_n_20 : STD_LOGIC;
  signal MIN_VALUE_REG_n_21 : STD_LOGIC;
  signal MIN_VALUE_REG_n_22 : STD_LOGIC;
  signal MIN_VALUE_REG_n_23 : STD_LOGIC;
  signal MIN_VALUE_REG_n_3 : STD_LOGIC;
  signal MIN_VALUE_REG_n_4 : STD_LOGIC;
  signal MIN_VALUE_REG_n_5 : STD_LOGIC;
  signal MIN_VALUE_REG_n_6 : STD_LOGIC;
  signal MIN_VALUE_REG_n_7 : STD_LOGIC;
  signal MIN_VALUE_REG_n_8 : STD_LOGIC;
  signal MIN_VALUE_REG_n_9 : STD_LOGIC;
  signal N_COL_REG_n_1 : STD_LOGIC;
  signal N_COL_REG_n_10 : STD_LOGIC;
  signal N_COL_REG_n_11 : STD_LOGIC;
  signal N_COL_REG_n_12 : STD_LOGIC;
  signal N_COL_REG_n_13 : STD_LOGIC;
  signal N_COL_REG_n_14 : STD_LOGIC;
  signal N_COL_REG_n_15 : STD_LOGIC;
  signal N_COL_REG_n_16 : STD_LOGIC;
  signal N_COL_REG_n_17 : STD_LOGIC;
  signal N_COL_REG_n_18 : STD_LOGIC;
  signal N_COL_REG_n_19 : STD_LOGIC;
  signal N_COL_REG_n_2 : STD_LOGIC;
  signal N_COL_REG_n_20 : STD_LOGIC;
  signal N_COL_REG_n_21 : STD_LOGIC;
  signal N_COL_REG_n_22 : STD_LOGIC;
  signal N_COL_REG_n_23 : STD_LOGIC;
  signal N_COL_REG_n_24 : STD_LOGIC;
  signal N_COL_REG_n_25 : STD_LOGIC;
  signal N_COL_REG_n_26 : STD_LOGIC;
  signal N_COL_REG_n_27 : STD_LOGIC;
  signal N_COL_REG_n_28 : STD_LOGIC;
  signal N_COL_REG_n_29 : STD_LOGIC;
  signal N_COL_REG_n_3 : STD_LOGIC;
  signal N_COL_REG_n_30 : STD_LOGIC;
  signal N_COL_REG_n_31 : STD_LOGIC;
  signal N_COL_REG_n_32 : STD_LOGIC;
  signal N_COL_REG_n_33 : STD_LOGIC;
  signal N_COL_REG_n_34 : STD_LOGIC;
  signal N_COL_REG_n_35 : STD_LOGIC;
  signal N_COL_REG_n_36 : STD_LOGIC;
  signal N_COL_REG_n_37 : STD_LOGIC;
  signal N_COL_REG_n_38 : STD_LOGIC;
  signal N_COL_REG_n_39 : STD_LOGIC;
  signal N_COL_REG_n_4 : STD_LOGIC;
  signal N_COL_REG_n_40 : STD_LOGIC;
  signal N_COL_REG_n_41 : STD_LOGIC;
  signal N_COL_REG_n_42 : STD_LOGIC;
  signal N_COL_REG_n_43 : STD_LOGIC;
  signal N_COL_REG_n_44 : STD_LOGIC;
  signal N_COL_REG_n_45 : STD_LOGIC;
  signal N_COL_REG_n_46 : STD_LOGIC;
  signal N_COL_REG_n_47 : STD_LOGIC;
  signal N_COL_REG_n_48 : STD_LOGIC;
  signal N_COL_REG_n_49 : STD_LOGIC;
  signal N_COL_REG_n_5 : STD_LOGIC;
  signal N_COL_REG_n_50 : STD_LOGIC;
  signal N_COL_REG_n_51 : STD_LOGIC;
  signal N_COL_REG_n_52 : STD_LOGIC;
  signal N_COL_REG_n_53 : STD_LOGIC;
  signal N_COL_REG_n_54 : STD_LOGIC;
  signal N_COL_REG_n_55 : STD_LOGIC;
  signal N_COL_REG_n_56 : STD_LOGIC;
  signal N_COL_REG_n_6 : STD_LOGIC;
  signal N_COL_REG_n_7 : STD_LOGIC;
  signal N_COL_REG_n_8 : STD_LOGIC;
  signal N_COL_REG_n_9 : STD_LOGIC;
  signal PIXEL_COUNTER_n_16 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_0 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_1 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_10 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_11 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_12 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_13 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_14 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_15 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_16 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_17 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_18 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_19 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_2 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_20 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_21 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_22 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_23 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_24 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_25 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_26 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_27 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_28 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_29 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_3 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_30 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_31 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_32 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_33 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_34 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_35 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_36 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_37 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_38 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_39 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_4 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_40 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_41 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_42 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_43 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_44 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_45 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_5 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_6 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_7 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_8 : STD_LOGIC;
  signal SHIFT_MULT_REG_n_9 : STD_LOGIC;
  signal SIZE_REG_n_0 : STD_LOGIC;
  signal SIZE_REG_n_1 : STD_LOGIC;
  signal SIZE_REG_n_10 : STD_LOGIC;
  signal SIZE_REG_n_11 : STD_LOGIC;
  signal SIZE_REG_n_12 : STD_LOGIC;
  signal SIZE_REG_n_13 : STD_LOGIC;
  signal SIZE_REG_n_14 : STD_LOGIC;
  signal SIZE_REG_n_15 : STD_LOGIC;
  signal SIZE_REG_n_16 : STD_LOGIC;
  signal SIZE_REG_n_17 : STD_LOGIC;
  signal SIZE_REG_n_18 : STD_LOGIC;
  signal SIZE_REG_n_19 : STD_LOGIC;
  signal SIZE_REG_n_2 : STD_LOGIC;
  signal SIZE_REG_n_20 : STD_LOGIC;
  signal SIZE_REG_n_21 : STD_LOGIC;
  signal SIZE_REG_n_22 : STD_LOGIC;
  signal SIZE_REG_n_23 : STD_LOGIC;
  signal SIZE_REG_n_24 : STD_LOGIC;
  signal SIZE_REG_n_25 : STD_LOGIC;
  signal SIZE_REG_n_26 : STD_LOGIC;
  signal SIZE_REG_n_27 : STD_LOGIC;
  signal SIZE_REG_n_28 : STD_LOGIC;
  signal SIZE_REG_n_29 : STD_LOGIC;
  signal SIZE_REG_n_3 : STD_LOGIC;
  signal SIZE_REG_n_30 : STD_LOGIC;
  signal SIZE_REG_n_31 : STD_LOGIC;
  signal SIZE_REG_n_32 : STD_LOGIC;
  signal SIZE_REG_n_33 : STD_LOGIC;
  signal SIZE_REG_n_34 : STD_LOGIC;
  signal SIZE_REG_n_35 : STD_LOGIC;
  signal SIZE_REG_n_36 : STD_LOGIC;
  signal SIZE_REG_n_4 : STD_LOGIC;
  signal SIZE_REG_n_5 : STD_LOGIC;
  signal SIZE_REG_n_6 : STD_LOGIC;
  signal SIZE_REG_n_7 : STD_LOGIC;
  signal SIZE_REG_n_8 : STD_LOGIC;
  signal SIZE_REG_n_9 : STD_LOGIC;
  signal data_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal delta_value : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \eqOp_carry__0_n_3\ : STD_LOGIC;
  signal eqOp_carry_n_0 : STD_LOGIC;
  signal eqOp_carry_n_1 : STD_LOGIC;
  signal eqOp_carry_n_2 : STD_LOGIC;
  signal eqOp_carry_n_3 : STD_LOGIC;
  signal gtOp : STD_LOGIC;
  signal gtOp_carry_n_1 : STD_LOGIC;
  signal gtOp_carry_n_2 : STD_LOGIC;
  signal gtOp_carry_n_3 : STD_LOGIC;
  signal \i___0_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i___0_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \i___0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_2_n_0\ : STD_LOGIC;
  signal \i___0_carry_i_7_n_0\ : STD_LOGIC;
  signal \i___33_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i___33_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i___33_carry_i_1_n_0\ : STD_LOGIC;
  signal \i___33_carry_i_2_n_0\ : STD_LOGIC;
  signal \i___33_carry_i_4_n_0\ : STD_LOGIC;
  signal \i___33_carry_i_6_n_0\ : STD_LOGIC;
  signal \i___66_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \i___66_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \i___66_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \i___66_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \i___66_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \i___66_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \i___66_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i___66_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i___66_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i___66_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i___66_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i___66_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i___66_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i___66_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \i___66_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \i___66_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \i___66_carry__1_i_13_n_0\ : STD_LOGIC;
  signal \i___66_carry__1_i_17_n_0\ : STD_LOGIC;
  signal \i___66_carry__1_i_18_n_0\ : STD_LOGIC;
  signal \i___66_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i___66_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i___66_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \i___66_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \i___66_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \i___66_carry_i_1_n_0\ : STD_LOGIC;
  signal \i___66_carry_i_2_n_0\ : STD_LOGIC;
  signal \i___66_carry_i_3_n_0\ : STD_LOGIC;
  signal \i___66_carry_i_4_n_0\ : STD_LOGIC;
  signal \i___66_carry_i_5_n_0\ : STD_LOGIC;
  signal i_data_10 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ltOp : STD_LOGIC;
  signal ltOp_carry_n_1 : STD_LOGIC;
  signal ltOp_carry_n_2 : STD_LOGIC;
  signal ltOp_carry_n_3 : STD_LOGIC;
  signal max_value_load : STD_LOGIC;
  signal minusOp : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \minusOp__0_carry__0_n_0\ : STD_LOGIC;
  signal \minusOp__0_carry__0_n_1\ : STD_LOGIC;
  signal \minusOp__0_carry__0_n_2\ : STD_LOGIC;
  signal \minusOp__0_carry__0_n_3\ : STD_LOGIC;
  signal \minusOp__0_carry__1_n_0\ : STD_LOGIC;
  signal \minusOp__0_carry__1_n_1\ : STD_LOGIC;
  signal \minusOp__0_carry__1_n_2\ : STD_LOGIC;
  signal \minusOp__0_carry__1_n_3\ : STD_LOGIC;
  signal \minusOp__0_carry__2_n_1\ : STD_LOGIC;
  signal \minusOp__0_carry__2_n_2\ : STD_LOGIC;
  signal \minusOp__0_carry__2_n_3\ : STD_LOGIC;
  signal \minusOp__0_carry_n_0\ : STD_LOGIC;
  signal \minusOp__0_carry_n_1\ : STD_LOGIC;
  signal \minusOp__0_carry_n_2\ : STD_LOGIC;
  signal \minusOp__0_carry_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \minusOp_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \multOp__0_carry__0_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__0_n_1\ : STD_LOGIC;
  signal \multOp__0_carry__0_n_2\ : STD_LOGIC;
  signal \multOp__0_carry__0_n_3\ : STD_LOGIC;
  signal \multOp__0_carry__0_n_4\ : STD_LOGIC;
  signal \multOp__0_carry__0_n_5\ : STD_LOGIC;
  signal \multOp__0_carry__0_n_6\ : STD_LOGIC;
  signal \multOp__0_carry__0_n_7\ : STD_LOGIC;
  signal \multOp__0_carry__1_n_1\ : STD_LOGIC;
  signal \multOp__0_carry__1_n_3\ : STD_LOGIC;
  signal \multOp__0_carry__1_n_6\ : STD_LOGIC;
  signal \multOp__0_carry__1_n_7\ : STD_LOGIC;
  signal \multOp__0_carry_n_0\ : STD_LOGIC;
  signal \multOp__0_carry_n_1\ : STD_LOGIC;
  signal \multOp__0_carry_n_2\ : STD_LOGIC;
  signal \multOp__0_carry_n_3\ : STD_LOGIC;
  signal \multOp__0_carry_n_4\ : STD_LOGIC;
  signal \multOp__30_carry__0_n_0\ : STD_LOGIC;
  signal \multOp__30_carry__0_n_1\ : STD_LOGIC;
  signal \multOp__30_carry__0_n_2\ : STD_LOGIC;
  signal \multOp__30_carry__0_n_3\ : STD_LOGIC;
  signal \multOp__30_carry__0_n_4\ : STD_LOGIC;
  signal \multOp__30_carry__0_n_5\ : STD_LOGIC;
  signal \multOp__30_carry__0_n_6\ : STD_LOGIC;
  signal \multOp__30_carry__0_n_7\ : STD_LOGIC;
  signal \multOp__30_carry__1_n_1\ : STD_LOGIC;
  signal \multOp__30_carry__1_n_3\ : STD_LOGIC;
  signal \multOp__30_carry__1_n_6\ : STD_LOGIC;
  signal \multOp__30_carry__1_n_7\ : STD_LOGIC;
  signal \multOp__30_carry_n_0\ : STD_LOGIC;
  signal \multOp__30_carry_n_1\ : STD_LOGIC;
  signal \multOp__30_carry_n_2\ : STD_LOGIC;
  signal \multOp__30_carry_n_3\ : STD_LOGIC;
  signal \multOp__30_carry_n_4\ : STD_LOGIC;
  signal \multOp__30_carry_n_5\ : STD_LOGIC;
  signal \multOp__30_carry_n_6\ : STD_LOGIC;
  signal \multOp__30_carry_n_7\ : STD_LOGIC;
  signal \multOp__60_carry__0_n_0\ : STD_LOGIC;
  signal \multOp__60_carry__0_n_1\ : STD_LOGIC;
  signal \multOp__60_carry__0_n_2\ : STD_LOGIC;
  signal \multOp__60_carry__0_n_3\ : STD_LOGIC;
  signal \multOp__60_carry__1_n_0\ : STD_LOGIC;
  signal \multOp__60_carry__1_n_1\ : STD_LOGIC;
  signal \multOp__60_carry__1_n_2\ : STD_LOGIC;
  signal \multOp__60_carry__1_n_3\ : STD_LOGIC;
  signal \multOp__60_carry_i_1_n_0\ : STD_LOGIC;
  signal \multOp__60_carry_i_3_n_0\ : STD_LOGIC;
  signal \multOp__60_carry_i_4_n_0\ : STD_LOGIC;
  signal \multOp__60_carry_i_5_n_0\ : STD_LOGIC;
  signal \multOp__60_carry_n_0\ : STD_LOGIC;
  signal \multOp__60_carry_n_1\ : STD_LOGIC;
  signal \multOp__60_carry_n_2\ : STD_LOGIC;
  signal \multOp__60_carry_n_3\ : STD_LOGIC;
  signal \multOp_inferred__0/i___0_carry__0_n_0\ : STD_LOGIC;
  signal \multOp_inferred__0/i___0_carry__0_n_1\ : STD_LOGIC;
  signal \multOp_inferred__0/i___0_carry__0_n_2\ : STD_LOGIC;
  signal \multOp_inferred__0/i___0_carry__0_n_3\ : STD_LOGIC;
  signal \multOp_inferred__0/i___0_carry__0_n_4\ : STD_LOGIC;
  signal \multOp_inferred__0/i___0_carry__0_n_5\ : STD_LOGIC;
  signal \multOp_inferred__0/i___0_carry__0_n_6\ : STD_LOGIC;
  signal \multOp_inferred__0/i___0_carry__0_n_7\ : STD_LOGIC;
  signal \multOp_inferred__0/i___0_carry__1_n_0\ : STD_LOGIC;
  signal \multOp_inferred__0/i___0_carry__1_n_2\ : STD_LOGIC;
  signal \multOp_inferred__0/i___0_carry__1_n_3\ : STD_LOGIC;
  signal \multOp_inferred__0/i___0_carry__1_n_5\ : STD_LOGIC;
  signal \multOp_inferred__0/i___0_carry__1_n_6\ : STD_LOGIC;
  signal \multOp_inferred__0/i___0_carry__1_n_7\ : STD_LOGIC;
  signal \multOp_inferred__0/i___0_carry_n_0\ : STD_LOGIC;
  signal \multOp_inferred__0/i___0_carry_n_1\ : STD_LOGIC;
  signal \multOp_inferred__0/i___0_carry_n_2\ : STD_LOGIC;
  signal \multOp_inferred__0/i___0_carry_n_3\ : STD_LOGIC;
  signal \multOp_inferred__0/i___0_carry_n_4\ : STD_LOGIC;
  signal \multOp_inferred__0/i___33_carry__0_n_0\ : STD_LOGIC;
  signal \multOp_inferred__0/i___33_carry__0_n_1\ : STD_LOGIC;
  signal \multOp_inferred__0/i___33_carry__0_n_2\ : STD_LOGIC;
  signal \multOp_inferred__0/i___33_carry__0_n_3\ : STD_LOGIC;
  signal \multOp_inferred__0/i___33_carry__0_n_4\ : STD_LOGIC;
  signal \multOp_inferred__0/i___33_carry__0_n_5\ : STD_LOGIC;
  signal \multOp_inferred__0/i___33_carry__0_n_6\ : STD_LOGIC;
  signal \multOp_inferred__0/i___33_carry__0_n_7\ : STD_LOGIC;
  signal \multOp_inferred__0/i___33_carry__1_n_0\ : STD_LOGIC;
  signal \multOp_inferred__0/i___33_carry__1_n_2\ : STD_LOGIC;
  signal \multOp_inferred__0/i___33_carry__1_n_3\ : STD_LOGIC;
  signal \multOp_inferred__0/i___33_carry__1_n_5\ : STD_LOGIC;
  signal \multOp_inferred__0/i___33_carry__1_n_6\ : STD_LOGIC;
  signal \multOp_inferred__0/i___33_carry__1_n_7\ : STD_LOGIC;
  signal \multOp_inferred__0/i___33_carry_n_0\ : STD_LOGIC;
  signal \multOp_inferred__0/i___33_carry_n_1\ : STD_LOGIC;
  signal \multOp_inferred__0/i___33_carry_n_2\ : STD_LOGIC;
  signal \multOp_inferred__0/i___33_carry_n_3\ : STD_LOGIC;
  signal \multOp_inferred__0/i___33_carry_n_4\ : STD_LOGIC;
  signal \multOp_inferred__0/i___33_carry_n_5\ : STD_LOGIC;
  signal \multOp_inferred__0/i___33_carry_n_6\ : STD_LOGIC;
  signal \multOp_inferred__0/i___33_carry_n_7\ : STD_LOGIC;
  signal \multOp_inferred__0/i___66_carry__0_n_0\ : STD_LOGIC;
  signal \multOp_inferred__0/i___66_carry__0_n_1\ : STD_LOGIC;
  signal \multOp_inferred__0/i___66_carry__0_n_2\ : STD_LOGIC;
  signal \multOp_inferred__0/i___66_carry__0_n_3\ : STD_LOGIC;
  signal \multOp_inferred__0/i___66_carry__1_n_0\ : STD_LOGIC;
  signal \multOp_inferred__0/i___66_carry__1_n_1\ : STD_LOGIC;
  signal \multOp_inferred__0/i___66_carry__1_n_2\ : STD_LOGIC;
  signal \multOp_inferred__0/i___66_carry__1_n_3\ : STD_LOGIC;
  signal \multOp_inferred__0/i___66_carry__2_n_3\ : STD_LOGIC;
  signal \multOp_inferred__0/i___66_carry_n_0\ : STD_LOGIC;
  signal \multOp_inferred__0/i___66_carry_n_1\ : STD_LOGIC;
  signal \multOp_inferred__0/i___66_carry_n_2\ : STD_LOGIC;
  signal \multOp_inferred__0/i___66_carry_n_3\ : STD_LOGIC;
  signal \o_data_OBUF[7]_inst_i_2_n_0\ : STD_LOGIC;
  signal pixel_counter_end : STD_LOGIC;
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal size_prod : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal temp_value : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_eqOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_eqOp_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_eqOp_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_gtOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ltOp_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_minusOp__0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_minusOp_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_minusOp_inferred__1/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_multOp__0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_multOp__0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_multOp__30_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_multOp__30_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_multOp__60_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_multOp__60_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_multOp__60_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_multOp_inferred__0/i___0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_multOp_inferred__0/i___0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_multOp_inferred__0/i___33_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_multOp_inferred__0/i___33_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_multOp_inferred__0/i___66_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_multOp_inferred__0/i___66_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_multOp_inferred__0/i___66_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_cur_state[11]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \FSM_onehot_cur_state[6]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \FSM_onehot_cur_state[7]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \FSM_onehot_cur_state[9]_i_1\ : label is "soft_lutpair35";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of gtOp_carry : label is 11;
  attribute SOFT_HLUTNM of \i___0_carry__0_i_10\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \i___0_carry__0_i_11\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \i___0_carry__0_i_9\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \i___66_carry__0_i_10\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \i___66_carry__0_i_11\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \i___66_carry__0_i_12\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \i___66_carry__0_i_13\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \i___66_carry__0_i_9\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \i___66_carry__1_i_11\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \i___66_carry__1_i_13\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \i___66_carry__1_i_17\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \i___66_carry__1_i_18\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \i___66_carry__1_i_9\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \i___66_carry__2_i_5\ : label is "soft_lutpair31";
  attribute COMPARATOR_THRESHOLD of ltOp_carry : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \minusOp__0_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp__0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp__0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp__0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_inferred__1/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \minusOp_inferred__1/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \multOp__60_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \multOp__60_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \multOp__60_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \multOp__60_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \multOp_inferred__0/i___66_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \multOp_inferred__0/i___66_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \multOp_inferred__0/i___66_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \multOp_inferred__0/i___66_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of plusOp_carry : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \plusOp_carry__2\ : label is 35;
begin
  \FSM_onehot_cur_state_reg[1]\(0) <= \^fsm_onehot_cur_state_reg[1]\(0);
\FSM_onehot_cur_state[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(9),
      I1 => pixel_counter_end,
      O => D(3)
    );
\FSM_onehot_cur_state[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => Q(10),
      I1 => Q(8),
      I2 => Q(5),
      I3 => \^fsm_onehot_cur_state_reg[1]\(0),
      I4 => Q(7),
      I5 => \FSM_onehot_cur_state[11]_i_3_n_0\,
      O => E(0)
    );
\FSM_onehot_cur_state[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => Q(8),
      I1 => Q(9),
      I2 => pixel_counter_end,
      O => D(4)
    );
\FSM_onehot_cur_state[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF8FFF8FFFFFF88"
    )
        port map (
      I0 => pixel_counter_end,
      I1 => Q(6),
      I2 => Q(0),
      I3 => \FSM_onehot_cur_state_reg[0]\,
      I4 => Q(11),
      I5 => i_start_IBUF,
      O => \FSM_onehot_cur_state[11]_i_3_n_0\
    );
\FSM_onehot_cur_state[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(5),
      I1 => pixel_counter_end,
      O => D(0)
    );
\FSM_onehot_cur_state[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => Q(5),
      I1 => pixel_counter_end,
      I2 => Q(6),
      O => D(1)
    );
\FSM_onehot_cur_state[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => pixel_counter_end,
      I1 => Q(8),
      I2 => Q(10),
      O => D(2)
    );
MAX_VALUE_REG: entity work.reg_8_bit
     port map (
      CLK => CLK,
      CO(0) => gtOp,
      D(2) => MAX_VALUE_REG_n_24,
      D(1) => MAX_VALUE_REG_n_25,
      D(0) => MAX_VALUE_REG_n_26,
      DI(3) => MAX_VALUE_REG_n_16,
      DI(2) => MAX_VALUE_REG_n_17,
      DI(1) => MAX_VALUE_REG_n_18,
      DI(0) => MAX_VALUE_REG_n_19,
      E(0) => max_value_load,
      Q(1) => Q(6),
      Q(0) => Q(0),
      S(2) => MAX_VALUE_REG_n_1,
      S(1) => MAX_VALUE_REG_n_2,
      S(0) => MAX_VALUE_REG_n_3,
      \data_reg[2]_0\ => SHIFT_MULT_REG_n_30,
      \data_reg[3]_0\(3) => MAX_VALUE_REG_n_12,
      \data_reg[3]_0\(2) => MAX_VALUE_REG_n_13,
      \data_reg[3]_0\(1) => MAX_VALUE_REG_n_14,
      \data_reg[3]_0\(0) => MAX_VALUE_REG_n_15,
      \data_reg[3]_1\ => SHIFT_MULT_REG_n_29,
      \data_reg[6]_0\ => MAX_VALUE_REG_n_27,
      \data_reg[7]_0\(7) => MAX_VALUE_REG_n_4,
      \data_reg[7]_0\(6) => MAX_VALUE_REG_n_5,
      \data_reg[7]_0\(5) => MAX_VALUE_REG_n_6,
      \data_reg[7]_0\(4) => MAX_VALUE_REG_n_7,
      \data_reg[7]_0\(3) => MAX_VALUE_REG_n_8,
      \data_reg[7]_0\(2) => MAX_VALUE_REG_n_9,
      \data_reg[7]_0\(1) => MAX_VALUE_REG_n_10,
      \data_reg[7]_0\(0) => MAX_VALUE_REG_n_11,
      \data_reg[7]_1\(3) => MAX_VALUE_REG_n_20,
      \data_reg[7]_1\(2) => MAX_VALUE_REG_n_21,
      \data_reg[7]_1\(1) => MAX_VALUE_REG_n_22,
      \data_reg[7]_1\(0) => MAX_VALUE_REG_n_23,
      delta_value(5 downto 2) => delta_value(7 downto 4),
      delta_value(1 downto 0) => delta_value(1 downto 0),
      i_data_IBUF(7 downto 0) => i_data_IBUF(7 downto 0),
      \minusOp_inferred__0/i__carry__0\(6) => MIN_VALUE_REG_n_5,
      \minusOp_inferred__0/i__carry__0\(5) => MIN_VALUE_REG_n_6,
      \minusOp_inferred__0/i__carry__0\(4) => MIN_VALUE_REG_n_7,
      \minusOp_inferred__0/i__carry__0\(3) => MIN_VALUE_REG_n_8,
      \minusOp_inferred__0/i__carry__0\(2) => MIN_VALUE_REG_n_9,
      \minusOp_inferred__0/i__carry__0\(1) => MIN_VALUE_REG_n_10,
      \minusOp_inferred__0/i__carry__0\(0) => MIN_VALUE_REG_n_11
    );
MIN_VALUE_REG: entity work.reg_8_bit_h
     port map (
      CLK => CLK,
      CO(0) => ltOp,
      DI(3) => MIN_VALUE_REG_n_16,
      DI(2) => MIN_VALUE_REG_n_17,
      DI(1) => MIN_VALUE_REG_n_18,
      DI(0) => MIN_VALUE_REG_n_19,
      E(0) => max_value_load,
      Q(6) => MIN_VALUE_REG_n_5,
      Q(5) => MIN_VALUE_REG_n_6,
      Q(4) => MIN_VALUE_REG_n_7,
      Q(3) => MIN_VALUE_REG_n_8,
      Q(2) => MIN_VALUE_REG_n_9,
      Q(1) => MIN_VALUE_REG_n_10,
      Q(0) => MIN_VALUE_REG_n_11,
      S(0) => MIN_VALUE_REG_n_0,
      \data_reg[0]_0\(0) => Q(0),
      \data_reg[3]_0\(3) => MIN_VALUE_REG_n_12,
      \data_reg[3]_0\(2) => MIN_VALUE_REG_n_13,
      \data_reg[3]_0\(1) => MIN_VALUE_REG_n_14,
      \data_reg[3]_0\(0) => MIN_VALUE_REG_n_15,
      \data_reg[7]_0\(3) => MIN_VALUE_REG_n_1,
      \data_reg[7]_0\(2) => MIN_VALUE_REG_n_2,
      \data_reg[7]_0\(1) => MIN_VALUE_REG_n_3,
      \data_reg[7]_0\(0) => MIN_VALUE_REG_n_4,
      \data_reg[7]_1\(3) => MIN_VALUE_REG_n_20,
      \data_reg[7]_1\(2) => MIN_VALUE_REG_n_21,
      \data_reg[7]_1\(1) => MIN_VALUE_REG_n_22,
      \data_reg[7]_1\(0) => MIN_VALUE_REG_n_23,
      i_data_IBUF(7 downto 0) => i_data_IBUF(7 downto 0),
      \minusOp_inferred__0/i__carry__0\(0) => MAX_VALUE_REG_n_4
    );
N_COL_REG: entity work.reg_8_bit_0
     port map (
      CLK => CLK,
      CO(0) => \multOp__0_carry__1_n_1\,
      DI(2) => N_COL_REG_n_1,
      DI(1) => N_COL_REG_n_2,
      DI(0) => N_COL_REG_n_3,
      E(0) => \^fsm_onehot_cur_state_reg[1]\(0),
      O(0) => \multOp__30_carry_n_4\,
      Q(2 downto 0) => Q(2 downto 0),
      S(3) => N_COL_REG_n_13,
      S(2) => N_COL_REG_n_14,
      S(1) => N_COL_REG_n_15,
      S(0) => N_COL_REG_n_16,
      \data_reg[0]_0\(0) => N_COL_REG_n_48,
      \data_reg[10]\(1) => \multOp__0_carry__0_n_4\,
      \data_reg[10]\(0) => \multOp__0_carry__0_n_5\,
      \data_reg[14]\(1) => \multOp__30_carry__1_n_6\,
      \data_reg[14]\(0) => \multOp__30_carry__1_n_7\,
      \data_reg[14]_0\(0) => \multOp__30_carry__1_n_1\,
      \data_reg[1]_0\(3) => N_COL_REG_n_23,
      \data_reg[1]_0\(2) => N_COL_REG_n_24,
      \data_reg[1]_0\(1) => N_COL_REG_n_25,
      \data_reg[1]_0\(0) => N_COL_REG_n_26,
      \data_reg[3]_0\(2) => N_COL_REG_n_4,
      \data_reg[3]_0\(1) => N_COL_REG_n_5,
      \data_reg[3]_0\(0) => N_COL_REG_n_6,
      \data_reg[3]_1\(3) => N_COL_REG_n_27,
      \data_reg[3]_1\(2) => N_COL_REG_n_28,
      \data_reg[3]_1\(1) => N_COL_REG_n_29,
      \data_reg[3]_1\(0) => N_COL_REG_n_30,
      \data_reg[4]_0\(3) => N_COL_REG_n_49,
      \data_reg[4]_0\(2) => N_COL_REG_n_50,
      \data_reg[4]_0\(1) => N_COL_REG_n_51,
      \data_reg[4]_0\(0) => N_COL_REG_n_52,
      \data_reg[5]_0\(3) => N_COL_REG_n_31,
      \data_reg[5]_0\(2) => N_COL_REG_n_32,
      \data_reg[5]_0\(1) => N_COL_REG_n_33,
      \data_reg[5]_0\(0) => N_COL_REG_n_34,
      \data_reg[6]_0\(3) => N_COL_REG_n_7,
      \data_reg[6]_0\(2) => N_COL_REG_n_8,
      \data_reg[6]_0\(1) => N_COL_REG_n_9,
      \data_reg[6]_0\(0) => N_COL_REG_n_10,
      \data_reg[6]_1\(3) => N_COL_REG_n_17,
      \data_reg[6]_1\(2) => N_COL_REG_n_18,
      \data_reg[6]_1\(1) => N_COL_REG_n_19,
      \data_reg[6]_1\(0) => N_COL_REG_n_20,
      \data_reg[6]_2\(3) => N_COL_REG_n_36,
      \data_reg[6]_2\(2) => N_COL_REG_n_37,
      \data_reg[6]_2\(1) => N_COL_REG_n_38,
      \data_reg[6]_2\(0) => N_COL_REG_n_39,
      \data_reg[6]_3\(1) => N_COL_REG_n_40,
      \data_reg[6]_3\(0) => N_COL_REG_n_41,
      \data_reg[6]_4\(3) => N_COL_REG_n_42,
      \data_reg[6]_4\(2) => N_COL_REG_n_43,
      \data_reg[6]_4\(1) => N_COL_REG_n_44,
      \data_reg[6]_4\(0) => N_COL_REG_n_45,
      \data_reg[6]_5\(1) => N_COL_REG_n_46,
      \data_reg[6]_5\(0) => N_COL_REG_n_47,
      \data_reg[7]_0\(1) => N_COL_REG_n_11,
      \data_reg[7]_0\(0) => N_COL_REG_n_12,
      \data_reg[7]_1\(1) => N_COL_REG_n_21,
      \data_reg[7]_1\(0) => N_COL_REG_n_22,
      \data_reg[7]_2\(0) => N_COL_REG_n_35,
      \data_reg[7]_3\(3) => N_COL_REG_n_53,
      \data_reg[7]_3\(2) => N_COL_REG_n_54,
      \data_reg[7]_3\(1) => N_COL_REG_n_55,
      \data_reg[7]_3\(0) => N_COL_REG_n_56,
      i_data_IBUF(7 downto 0) => i_data_IBUF(7 downto 0),
      \multOp__60_carry__0_i_5_0\(1) => \multOp__0_carry__1_n_6\,
      \multOp__60_carry__0_i_5_0\(0) => \multOp__0_carry__1_n_7\,
      \multOp__60_carry__1_i_8_0\(3) => \multOp__30_carry__0_n_4\,
      \multOp__60_carry__1_i_8_0\(2) => \multOp__30_carry__0_n_5\,
      \multOp__60_carry__1_i_8_0\(1) => \multOp__30_carry__0_n_6\,
      \multOp__60_carry__1_i_8_0\(0) => \multOp__30_carry__0_n_7\
    );
PIXEL_COUNTER: entity work.counter_16_bit
     port map (
      CLK => CLK,
      Q(5) => Q(10),
      Q(4 downto 1) => Q(8 downto 5),
      Q(0) => Q(0),
      S(0) => PIXEL_COUNTER_n_16,
      data_reg(15 downto 0) => data_reg(15 downto 0)
    );
SHIFT_MULT_REG: entity work.reg_9_bit
     port map (
      B(7 downto 0) => B(7 downto 0),
      CLK => CLK,
      CO(0) => \multOp_inferred__0/i___0_carry__1_n_0\,
      D(2) => MAX_VALUE_REG_n_24,
      D(1) => MAX_VALUE_REG_n_25,
      D(0) => MAX_VALUE_REG_n_26,
      DI(0) => SHIFT_MULT_REG_n_0,
      O(2) => \multOp_inferred__0/i___33_carry__1_n_5\,
      O(1) => \multOp_inferred__0/i___33_carry__1_n_6\,
      O(0) => \multOp_inferred__0/i___33_carry__1_n_7\,
      Q(8) => SHIFT_MULT_REG_n_1,
      Q(7) => SHIFT_MULT_REG_n_2,
      Q(6) => SHIFT_MULT_REG_n_3,
      Q(5) => SHIFT_MULT_REG_n_4,
      Q(4) => SHIFT_MULT_REG_n_5,
      Q(3) => SHIFT_MULT_REG_n_6,
      Q(2) => SHIFT_MULT_REG_n_7,
      Q(1) => SHIFT_MULT_REG_n_8,
      Q(0) => SHIFT_MULT_REG_n_9,
      S(1) => SHIFT_MULT_REG_n_20,
      S(0) => SHIFT_MULT_REG_n_21,
      \data_reg[0]_0\(0) => SHIFT_MULT_REG_n_22,
      \data_reg[0]_1\(1) => Q(7),
      \data_reg[0]_1\(0) => Q(0),
      \data_reg[1]_0\(2) => SHIFT_MULT_REG_n_31,
      \data_reg[1]_0\(1) => SHIFT_MULT_REG_n_32,
      \data_reg[1]_0\(0) => SHIFT_MULT_REG_n_33,
      \data_reg[2]_0\(0) => SHIFT_MULT_REG_n_34,
      \data_reg[3]_0\(1) => SHIFT_MULT_REG_n_11,
      \data_reg[3]_0\(0) => SHIFT_MULT_REG_n_12,
      \data_reg[3]_1\ => SHIFT_MULT_REG_n_29,
      \data_reg[3]_2\ => SHIFT_MULT_REG_n_30,
      \data_reg[4]_0\ => SHIFT_MULT_REG_n_25,
      \data_reg[5]_0\ => SHIFT_MULT_REG_n_19,
      \data_reg[5]_1\ => MAX_VALUE_REG_n_27,
      \data_reg[6]_0\(2) => SHIFT_MULT_REG_n_13,
      \data_reg[6]_0\(1) => SHIFT_MULT_REG_n_14,
      \data_reg[6]_0\(0) => SHIFT_MULT_REG_n_15,
      \data_reg[6]_1\(1) => SHIFT_MULT_REG_n_23,
      \data_reg[6]_1\(0) => SHIFT_MULT_REG_n_24,
      \data_reg[6]_2\(0) => SHIFT_MULT_REG_n_26,
      \data_reg[6]_3\(2) => SHIFT_MULT_REG_n_37,
      \data_reg[6]_3\(1) => SHIFT_MULT_REG_n_38,
      \data_reg[6]_3\(0) => SHIFT_MULT_REG_n_39,
      \data_reg[7]_0\(1) => SHIFT_MULT_REG_n_35,
      \data_reg[7]_0\(0) => SHIFT_MULT_REG_n_36,
      \data_reg[7]_1\(2) => SHIFT_MULT_REG_n_40,
      \data_reg[7]_1\(1) => SHIFT_MULT_REG_n_41,
      \data_reg[7]_1\(0) => SHIFT_MULT_REG_n_42,
      \data_reg[7]_2\(2) => SHIFT_MULT_REG_n_43,
      \data_reg[7]_2\(1) => SHIFT_MULT_REG_n_44,
      \data_reg[7]_2\(0) => SHIFT_MULT_REG_n_45,
      \data_reg[8]_0\(0) => SHIFT_MULT_REG_n_10,
      \data_reg[8]_1\(2) => SHIFT_MULT_REG_n_16,
      \data_reg[8]_1\(1) => SHIFT_MULT_REG_n_17,
      \data_reg[8]_1\(0) => SHIFT_MULT_REG_n_18,
      \data_reg[8]_2\(1) => SHIFT_MULT_REG_n_27,
      \data_reg[8]_2\(0) => SHIFT_MULT_REG_n_28,
      delta_value(7 downto 0) => delta_value(7 downto 0),
      \i___66_carry__2_i_1_0\(0) => \multOp_inferred__0/i___33_carry__1_n_0\,
      \multOp_inferred__0/i___66_carry__1\ => \i___66_carry__1_i_11_n_0\,
      \multOp_inferred__0/i___66_carry__1_0\ => \i___66_carry__1_i_18_n_0\,
      \multOp_inferred__0/i___66_carry__1_1\ => \i___66_carry__1_i_17_n_0\,
      \multOp_inferred__0/i___66_carry__1_2\ => \i___66_carry__1_i_13_n_0\,
      \multOp_inferred__0/i___66_carry__2\ => \i___66_carry__2_i_5_n_0\
    );
SIZE_REG: entity work.reg_16_bit
     port map (
      CLK => CLK,
      D(14 downto 3) => size_prod(15 downto 4),
      D(2 downto 0) => size_prod(2 downto 0),
      DI(3) => SIZE_REG_n_0,
      DI(2) => SIZE_REG_n_1,
      DI(1) => SIZE_REG_n_2,
      DI(0) => SIZE_REG_n_3,
      O(0) => \multOp__0_carry_n_4\,
      Q(3 downto 1) => Q(5 downto 3),
      Q(0) => Q(0),
      S(3) => SIZE_REG_n_4,
      S(2) => SIZE_REG_n_5,
      S(1) => SIZE_REG_n_6,
      S(0) => SIZE_REG_n_7,
      data_reg(15 downto 0) => data_reg(15 downto 0),
      \data_reg[10]_0\(3) => SIZE_REG_n_14,
      \data_reg[10]_0\(2) => SIZE_REG_n_15,
      \data_reg[10]_0\(1) => SIZE_REG_n_16,
      \data_reg[10]_0\(0) => SIZE_REG_n_17,
      \data_reg[10]_1\(3) => SIZE_REG_n_33,
      \data_reg[10]_1\(2) => SIZE_REG_n_34,
      \data_reg[10]_1\(1) => SIZE_REG_n_35,
      \data_reg[10]_1\(0) => SIZE_REG_n_36,
      \data_reg[13]_0\(2) => SIZE_REG_n_18,
      \data_reg[13]_0\(1) => SIZE_REG_n_19,
      \data_reg[13]_0\(0) => SIZE_REG_n_20,
      \data_reg[14]_0\(3) => SIZE_REG_n_21,
      \data_reg[14]_0\(2) => SIZE_REG_n_22,
      \data_reg[14]_0\(1) => SIZE_REG_n_23,
      \data_reg[14]_0\(0) => SIZE_REG_n_24,
      \data_reg[15]_0\(1) => SIZE_REG_n_8,
      \data_reg[15]_0\(0) => SIZE_REG_n_9,
      \data_reg[2]_0\(3) => SIZE_REG_n_25,
      \data_reg[2]_0\(2) => SIZE_REG_n_26,
      \data_reg[2]_0\(1) => SIZE_REG_n_27,
      \data_reg[2]_0\(0) => SIZE_REG_n_28,
      \data_reg[3]_0\(0) => \multOp__30_carry_n_7\,
      \data_reg[6]_0\(3) => SIZE_REG_n_10,
      \data_reg[6]_0\(2) => SIZE_REG_n_11,
      \data_reg[6]_0\(1) => SIZE_REG_n_12,
      \data_reg[6]_0\(0) => SIZE_REG_n_13,
      \data_reg[6]_1\(3) => SIZE_REG_n_29,
      \data_reg[6]_1\(2) => SIZE_REG_n_30,
      \data_reg[6]_1\(1) => SIZE_REG_n_31,
      \data_reg[6]_1\(0) => SIZE_REG_n_32,
      i_data_10(15 downto 0) => i_data_10(15 downto 0)
    );
eqOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => eqOp_carry_n_0,
      CO(2) => eqOp_carry_n_1,
      CO(1) => eqOp_carry_n_2,
      CO(0) => eqOp_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_eqOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => SIZE_REG_n_4,
      S(2) => SIZE_REG_n_5,
      S(1) => SIZE_REG_n_6,
      S(0) => SIZE_REG_n_7
    );
\eqOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => eqOp_carry_n_0,
      CO(3 downto 2) => \NLW_eqOp_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => pixel_counter_end,
      CO(0) => \eqOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_eqOp_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => SIZE_REG_n_8,
      S(0) => SIZE_REG_n_9
    );
gtOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => gtOp,
      CO(2) => gtOp_carry_n_1,
      CO(1) => gtOp_carry_n_2,
      CO(0) => gtOp_carry_n_3,
      CYINIT => '0',
      DI(3) => MAX_VALUE_REG_n_16,
      DI(2) => MAX_VALUE_REG_n_17,
      DI(1) => MAX_VALUE_REG_n_18,
      DI(0) => MAX_VALUE_REG_n_19,
      O(3 downto 0) => NLW_gtOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => MAX_VALUE_REG_n_20,
      S(2) => MAX_VALUE_REG_n_21,
      S(1) => MAX_VALUE_REG_n_22,
      S(0) => MAX_VALUE_REG_n_23
    );
\i___0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880808088000000"
    )
        port map (
      I0 => B(0),
      I1 => SHIFT_MULT_REG_n_3,
      I2 => SHIFT_MULT_REG_n_4,
      I3 => B(2),
      I4 => SHIFT_MULT_REG_n_5,
      I5 => B(1),
      O => \i___0_carry__0_i_1_n_0\
    );
\i___0_carry__0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => B(0),
      I1 => SHIFT_MULT_REG_n_3,
      O => \i___0_carry__0_i_10_n_0\
    );
\i___0_carry__0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => B(0),
      I1 => SHIFT_MULT_REG_n_4,
      O => \i___0_carry__0_i_11_n_0\
    );
\i___0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880808088000000"
    )
        port map (
      I0 => B(0),
      I1 => SHIFT_MULT_REG_n_4,
      I2 => SHIFT_MULT_REG_n_5,
      I3 => B(2),
      I4 => SHIFT_MULT_REG_n_6,
      I5 => B(1),
      O => \i___0_carry__0_i_2_n_0\
    );
\i___0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => B(1),
      I1 => SHIFT_MULT_REG_n_6,
      I2 => SHIFT_MULT_REG_n_7,
      I3 => B(2),
      I4 => B(0),
      I5 => SHIFT_MULT_REG_n_5,
      O => \i___0_carry__0_i_3_n_0\
    );
\i___0_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A959595956A6A6A"
    )
        port map (
      I0 => \i___0_carry__0_i_1_n_0\,
      I1 => SHIFT_MULT_REG_n_3,
      I2 => B(1),
      I3 => SHIFT_MULT_REG_n_4,
      I4 => B(2),
      I5 => \i___0_carry__0_i_9_n_0\,
      O => \i___0_carry__0_i_5_n_0\
    );
\i___0_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A959595956A6A6A"
    )
        port map (
      I0 => \i___0_carry__0_i_2_n_0\,
      I1 => SHIFT_MULT_REG_n_4,
      I2 => B(1),
      I3 => SHIFT_MULT_REG_n_5,
      I4 => B(2),
      I5 => \i___0_carry__0_i_10_n_0\,
      O => \i___0_carry__0_i_6_n_0\
    );
\i___0_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A959595956A6A6A"
    )
        port map (
      I0 => \i___0_carry__0_i_3_n_0\,
      I1 => SHIFT_MULT_REG_n_5,
      I2 => B(1),
      I3 => SHIFT_MULT_REG_n_6,
      I4 => B(2),
      I5 => \i___0_carry__0_i_11_n_0\,
      O => \i___0_carry__0_i_7_n_0\
    );
\i___0_carry__0_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => B(0),
      I1 => SHIFT_MULT_REG_n_2,
      O => \i___0_carry__0_i_9_n_0\
    );
\i___0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880808088000000"
    )
        port map (
      I0 => B(0),
      I1 => SHIFT_MULT_REG_n_1,
      I2 => SHIFT_MULT_REG_n_2,
      I3 => B(2),
      I4 => SHIFT_MULT_REG_n_3,
      I5 => B(1),
      O => \i___0_carry__1_i_2_n_0\
    );
\i___0_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880808088000000"
    )
        port map (
      I0 => B(0),
      I1 => SHIFT_MULT_REG_n_2,
      I2 => SHIFT_MULT_REG_n_3,
      I3 => B(2),
      I4 => SHIFT_MULT_REG_n_4,
      I5 => B(1),
      O => \i___0_carry__1_i_3_n_0\
    );
\i___0_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A959595956A6A6A"
    )
        port map (
      I0 => \i___0_carry__1_i_3_n_0\,
      I1 => SHIFT_MULT_REG_n_2,
      I2 => B(1),
      I3 => SHIFT_MULT_REG_n_3,
      I4 => B(2),
      I5 => \i___0_carry__1_i_7_n_0\,
      O => \i___0_carry__1_i_6_n_0\
    );
\i___0_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => B(0),
      I1 => SHIFT_MULT_REG_n_1,
      O => \i___0_carry__1_i_7_n_0\
    );
\i___0_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => B(1),
      I1 => SHIFT_MULT_REG_n_8,
      I2 => B(2),
      I3 => SHIFT_MULT_REG_n_9,
      O => \i___0_carry_i_2_n_0\
    );
\i___0_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => B(0),
      I1 => SHIFT_MULT_REG_n_9,
      O => \i___0_carry_i_7_n_0\
    );
\i___33_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => B(4),
      I1 => SHIFT_MULT_REG_n_6,
      I2 => SHIFT_MULT_REG_n_7,
      I3 => B(5),
      I4 => SHIFT_MULT_REG_n_5,
      I5 => B(3),
      O => \i___33_carry__0_i_3_n_0\
    );
\i___33_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A959595956A6A6A"
    )
        port map (
      I0 => \i___33_carry__0_i_3_n_0\,
      I1 => SHIFT_MULT_REG_n_5,
      I2 => B(4),
      I3 => SHIFT_MULT_REG_n_6,
      I4 => B(5),
      I5 => SHIFT_MULT_REG_n_19,
      O => \i___33_carry__0_i_7_n_0\
    );
\i___33_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => B(3),
      I1 => SHIFT_MULT_REG_n_6,
      I2 => B(5),
      I3 => SHIFT_MULT_REG_n_8,
      I4 => B(4),
      I5 => SHIFT_MULT_REG_n_7,
      O => \i___33_carry_i_1_n_0\
    );
\i___33_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => B(4),
      I1 => SHIFT_MULT_REG_n_8,
      I2 => B(5),
      I3 => SHIFT_MULT_REG_n_9,
      O => \i___33_carry_i_2_n_0\
    );
\i___33_carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \i___33_carry_i_1_n_0\,
      I1 => SHIFT_MULT_REG_n_8,
      I2 => B(5),
      I3 => SHIFT_MULT_REG_n_9,
      I4 => B(4),
      O => \i___33_carry_i_4_n_0\
    );
\i___33_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => B(3),
      I1 => SHIFT_MULT_REG_n_8,
      I2 => B(4),
      I3 => SHIFT_MULT_REG_n_9,
      O => \i___33_carry_i_6_n_0\
    );
\i___66_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7111"
    )
        port map (
      I0 => \i___66_carry__0_i_9_n_0\,
      I1 => \i___66_carry__0_i_10_n_0\,
      I2 => SHIFT_MULT_REG_n_6,
      I3 => B(6),
      O => \i___66_carry__0_i_1_n_0\
    );
\i___66_carry__0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => B(7),
      I1 => SHIFT_MULT_REG_n_7,
      I2 => \multOp_inferred__0/i___0_carry__1_n_6\,
      I3 => \multOp_inferred__0/i___33_carry__0_n_5\,
      O => \i___66_carry__0_i_10_n_0\
    );
\i___66_carry__0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => B(7),
      I1 => SHIFT_MULT_REG_n_8,
      I2 => \multOp_inferred__0/i___0_carry__1_n_7\,
      I3 => \multOp_inferred__0/i___33_carry__0_n_6\,
      O => \i___66_carry__0_i_11_n_0\
    );
\i___66_carry__0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"077F"
    )
        port map (
      I0 => SHIFT_MULT_REG_n_7,
      I1 => B(7),
      I2 => \multOp_inferred__0/i___33_carry__0_n_5\,
      I3 => \multOp_inferred__0/i___0_carry__1_n_6\,
      O => \i___66_carry__0_i_12_n_0\
    );
\i___66_carry__0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => B(7),
      I1 => SHIFT_MULT_REG_n_6,
      I2 => \multOp_inferred__0/i___0_carry__1_n_5\,
      I3 => \multOp_inferred__0/i___33_carry__0_n_4\,
      O => \i___66_carry__0_i_13_n_0\
    );
\i___66_carry__0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7887877887788778"
    )
        port map (
      I0 => B(7),
      I1 => SHIFT_MULT_REG_n_8,
      I2 => \multOp_inferred__0/i___0_carry__1_n_7\,
      I3 => \multOp_inferred__0/i___33_carry__0_n_6\,
      I4 => SHIFT_MULT_REG_n_7,
      I5 => B(6),
      O => \i___66_carry__0_i_14_n_0\
    );
\i___66_carry__0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => B(6),
      I1 => SHIFT_MULT_REG_n_8,
      I2 => \multOp_inferred__0/i___33_carry_n_4\,
      I3 => \multOp_inferred__0/i___0_carry__0_n_5\,
      O => \i___66_carry__0_i_15_n_0\
    );
\i___66_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80000080000000"
    )
        port map (
      I0 => SHIFT_MULT_REG_n_8,
      I1 => \multOp_inferred__0/i___33_carry_n_4\,
      I2 => \multOp_inferred__0/i___0_carry__0_n_5\,
      I3 => SHIFT_MULT_REG_n_7,
      I4 => B(6),
      I5 => \i___66_carry__0_i_11_n_0\,
      O => \i___66_carry__0_i_2_n_0\
    );
\i___66_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80FF7FFF7F008000"
    )
        port map (
      I0 => \multOp_inferred__0/i___0_carry__0_n_5\,
      I1 => \multOp_inferred__0/i___33_carry_n_4\,
      I2 => SHIFT_MULT_REG_n_8,
      I3 => B(6),
      I4 => SHIFT_MULT_REG_n_7,
      I5 => \i___66_carry__0_i_11_n_0\,
      O => \i___66_carry__0_i_3_n_0\
    );
\i___66_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => B(7),
      I1 => SHIFT_MULT_REG_n_9,
      I2 => \multOp_inferred__0/i___0_carry__0_n_4\,
      I3 => \multOp_inferred__0/i___33_carry__0_n_7\,
      O => \i___66_carry__0_i_4_n_0\
    );
\i___66_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999666"
    )
        port map (
      I0 => \i___66_carry__0_i_12_n_0\,
      I1 => \i___66_carry__0_i_13_n_0\,
      I2 => SHIFT_MULT_REG_n_5,
      I3 => B(6),
      I4 => \i___66_carry__0_i_1_n_0\,
      O => \i___66_carry__0_i_5_n_0\
    );
\i___66_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999666"
    )
        port map (
      I0 => \i___66_carry__0_i_9_n_0\,
      I1 => \i___66_carry__0_i_10_n_0\,
      I2 => SHIFT_MULT_REG_n_6,
      I3 => B(6),
      I4 => \i___66_carry__0_i_2_n_0\,
      O => \i___66_carry__0_i_6_n_0\
    );
\i___66_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9996966696669666"
    )
        port map (
      I0 => \i___66_carry__0_i_14_n_0\,
      I1 => \i___66_carry__0_i_15_n_0\,
      I2 => \multOp_inferred__0/i___33_carry__0_n_7\,
      I3 => \multOp_inferred__0/i___0_carry__0_n_4\,
      I4 => B(7),
      I5 => SHIFT_MULT_REG_n_9,
      O => \i___66_carry__0_i_7_n_0\
    );
\i___66_carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"956A6A6A"
    )
        port map (
      I0 => \i___66_carry__0_i_4_n_0\,
      I1 => \multOp_inferred__0/i___0_carry__0_n_5\,
      I2 => \multOp_inferred__0/i___33_carry_n_4\,
      I3 => SHIFT_MULT_REG_n_8,
      I4 => B(6),
      O => \i___66_carry__0_i_8_n_0\
    );
\i___66_carry__0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"077F"
    )
        port map (
      I0 => SHIFT_MULT_REG_n_8,
      I1 => B(7),
      I2 => \multOp_inferred__0/i___33_carry__0_n_6\,
      I3 => \multOp_inferred__0/i___0_carry__1_n_7\,
      O => \i___66_carry__0_i_9_n_0\
    );
\i___66_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808080000000"
    )
        port map (
      I0 => B(7),
      I1 => SHIFT_MULT_REG_n_4,
      I2 => \multOp_inferred__0/i___33_carry__1_n_6\,
      I3 => B(6),
      I4 => SHIFT_MULT_REG_n_2,
      I5 => \i___66_carry__1_i_9_n_0\,
      O => \i___66_carry__1_i_1_n_0\
    );
\i___66_carry__1_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"077F"
    )
        port map (
      I0 => SHIFT_MULT_REG_n_6,
      I1 => B(7),
      I2 => \multOp_inferred__0/i___33_carry__0_n_4\,
      I3 => \multOp_inferred__0/i___0_carry__1_n_5\,
      O => \i___66_carry__1_i_11_n_0\
    );
\i___66_carry__1_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => B(7),
      I1 => SHIFT_MULT_REG_n_4,
      I2 => \multOp_inferred__0/i___33_carry__1_n_6\,
      O => \i___66_carry__1_i_13_n_0\
    );
\i___66_carry__1_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6A959595"
    )
        port map (
      I0 => \multOp_inferred__0/i___33_carry__1_n_5\,
      I1 => B(7),
      I2 => SHIFT_MULT_REG_n_3,
      I3 => SHIFT_MULT_REG_n_2,
      I4 => B(6),
      O => \i___66_carry__1_i_17_n_0\
    );
\i___66_carry__1_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"95"
    )
        port map (
      I0 => \multOp_inferred__0/i___33_carry__1_n_6\,
      I1 => B(7),
      I2 => SHIFT_MULT_REG_n_4,
      O => \i___66_carry__1_i_18_n_0\
    );
\i___66_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7111"
    )
        port map (
      I0 => \i___66_carry__0_i_12_n_0\,
      I1 => \i___66_carry__0_i_13_n_0\,
      I2 => SHIFT_MULT_REG_n_5,
      I3 => B(6),
      O => \i___66_carry__1_i_4_n_0\
    );
\i___66_carry__1_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \i___66_carry__1_i_4_n_0\,
      I1 => \i___66_carry__1_i_11_n_0\,
      I2 => SHIFT_MULT_REG_n_25,
      I3 => SHIFT_MULT_REG_n_4,
      I4 => B(6),
      O => \i___66_carry__1_i_8_n_0\
    );
\i___66_carry__1_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \multOp_inferred__0/i___33_carry__1_n_5\,
      I1 => B(7),
      I2 => SHIFT_MULT_REG_n_3,
      O => \i___66_carry__1_i_9_n_0\
    );
\i___66_carry__2_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \multOp_inferred__0/i___33_carry__1_n_5\,
      I1 => B(7),
      I2 => SHIFT_MULT_REG_n_3,
      O => \i___66_carry__2_i_5_n_0\
    );
\i___66_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__0/i___0_carry__0_n_5\,
      I1 => \multOp_inferred__0/i___33_carry_n_4\,
      O => \i___66_carry_i_1_n_0\
    );
\i___66_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9666"
    )
        port map (
      I0 => \multOp_inferred__0/i___33_carry_n_4\,
      I1 => \multOp_inferred__0/i___0_carry__0_n_5\,
      I2 => B(6),
      I3 => SHIFT_MULT_REG_n_9,
      O => \i___66_carry_i_2_n_0\
    );
\i___66_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__0/i___0_carry__0_n_6\,
      I1 => \multOp_inferred__0/i___33_carry_n_5\,
      O => \i___66_carry_i_3_n_0\
    );
\i___66_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__0/i___0_carry__0_n_7\,
      I1 => \multOp_inferred__0/i___33_carry_n_6\,
      O => \i___66_carry_i_4_n_0\
    );
\i___66_carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__0/i___0_carry_n_4\,
      I1 => \multOp_inferred__0/i___33_carry_n_7\,
      O => \i___66_carry_i_5_n_0\
    );
ltOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ltOp,
      CO(2) => ltOp_carry_n_1,
      CO(1) => ltOp_carry_n_2,
      CO(0) => ltOp_carry_n_3,
      CYINIT => '0',
      DI(3) => MIN_VALUE_REG_n_16,
      DI(2) => MIN_VALUE_REG_n_17,
      DI(1) => MIN_VALUE_REG_n_18,
      DI(0) => MIN_VALUE_REG_n_19,
      O(3 downto 0) => NLW_ltOp_carry_O_UNCONNECTED(3 downto 0),
      S(3) => MIN_VALUE_REG_n_20,
      S(2) => MIN_VALUE_REG_n_21,
      S(1) => MIN_VALUE_REG_n_22,
      S(0) => MIN_VALUE_REG_n_23
    );
\minusOp__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \minusOp__0_carry_n_0\,
      CO(2) => \minusOp__0_carry_n_1\,
      CO(1) => \minusOp__0_carry_n_2\,
      CO(0) => \minusOp__0_carry_n_3\,
      CYINIT => '1',
      DI(3) => SIZE_REG_n_0,
      DI(2) => SIZE_REG_n_1,
      DI(1) => SIZE_REG_n_2,
      DI(0) => SIZE_REG_n_3,
      O(3 downto 0) => minusOp(3 downto 0),
      S(3) => SIZE_REG_n_25,
      S(2) => SIZE_REG_n_26,
      S(1) => SIZE_REG_n_27,
      S(0) => SIZE_REG_n_28
    );
\minusOp__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp__0_carry_n_0\,
      CO(3) => \minusOp__0_carry__0_n_0\,
      CO(2) => \minusOp__0_carry__0_n_1\,
      CO(1) => \minusOp__0_carry__0_n_2\,
      CO(0) => \minusOp__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => SIZE_REG_n_10,
      DI(2) => SIZE_REG_n_11,
      DI(1) => SIZE_REG_n_12,
      DI(0) => SIZE_REG_n_13,
      O(3 downto 0) => minusOp(7 downto 4),
      S(3) => SIZE_REG_n_29,
      S(2) => SIZE_REG_n_30,
      S(1) => SIZE_REG_n_31,
      S(0) => SIZE_REG_n_32
    );
\minusOp__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp__0_carry__0_n_0\,
      CO(3) => \minusOp__0_carry__1_n_0\,
      CO(2) => \minusOp__0_carry__1_n_1\,
      CO(1) => \minusOp__0_carry__1_n_2\,
      CO(0) => \minusOp__0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => SIZE_REG_n_14,
      DI(2) => SIZE_REG_n_15,
      DI(1) => SIZE_REG_n_16,
      DI(0) => SIZE_REG_n_17,
      O(3 downto 0) => minusOp(11 downto 8),
      S(3) => SIZE_REG_n_33,
      S(2) => SIZE_REG_n_34,
      S(1) => SIZE_REG_n_35,
      S(0) => SIZE_REG_n_36
    );
\minusOp__0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp__0_carry__1_n_0\,
      CO(3) => \NLW_minusOp__0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \minusOp__0_carry__2_n_1\,
      CO(1) => \minusOp__0_carry__2_n_2\,
      CO(0) => \minusOp__0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => SIZE_REG_n_18,
      DI(1) => SIZE_REG_n_19,
      DI(0) => SIZE_REG_n_20,
      O(3 downto 0) => minusOp(15 downto 12),
      S(3) => SIZE_REG_n_21,
      S(2) => SIZE_REG_n_22,
      S(1) => SIZE_REG_n_23,
      S(0) => SIZE_REG_n_24
    );
\minusOp_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \minusOp_inferred__0/i__carry_n_0\,
      CO(2) => \minusOp_inferred__0/i__carry_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => MAX_VALUE_REG_n_8,
      DI(2) => MAX_VALUE_REG_n_9,
      DI(1) => MAX_VALUE_REG_n_10,
      DI(0) => MAX_VALUE_REG_n_11,
      O(3 downto 0) => delta_value(3 downto 0),
      S(3) => MAX_VALUE_REG_n_12,
      S(2) => MAX_VALUE_REG_n_13,
      S(1) => MAX_VALUE_REG_n_14,
      S(0) => MAX_VALUE_REG_n_15
    );
\minusOp_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__0/i__carry_n_0\,
      CO(3) => \NLW_minusOp_inferred__0/i__carry__0_CO_UNCONNECTED\(3),
      CO(2) => \minusOp_inferred__0/i__carry__0_n_1\,
      CO(1) => \minusOp_inferred__0/i__carry__0_n_2\,
      CO(0) => \minusOp_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => MAX_VALUE_REG_n_5,
      DI(1) => MAX_VALUE_REG_n_6,
      DI(0) => MAX_VALUE_REG_n_7,
      O(3 downto 0) => delta_value(7 downto 4),
      S(3) => MIN_VALUE_REG_n_0,
      S(2) => MAX_VALUE_REG_n_1,
      S(1) => MAX_VALUE_REG_n_2,
      S(0) => MAX_VALUE_REG_n_3
    );
\minusOp_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \minusOp_inferred__1/i__carry_n_0\,
      CO(2) => \minusOp_inferred__1/i__carry_n_1\,
      CO(1) => \minusOp_inferred__1/i__carry_n_2\,
      CO(0) => \minusOp_inferred__1/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => i_data_IBUF(3 downto 0),
      O(3 downto 0) => B(3 downto 0),
      S(3) => MIN_VALUE_REG_n_12,
      S(2) => MIN_VALUE_REG_n_13,
      S(1) => MIN_VALUE_REG_n_14,
      S(0) => MIN_VALUE_REG_n_15
    );
\minusOp_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_inferred__1/i__carry_n_0\,
      CO(3) => \NLW_minusOp_inferred__1/i__carry__0_CO_UNCONNECTED\(3),
      CO(2) => \minusOp_inferred__1/i__carry__0_n_1\,
      CO(1) => \minusOp_inferred__1/i__carry__0_n_2\,
      CO(0) => \minusOp_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => i_data_IBUF(6 downto 4),
      O(3 downto 0) => B(7 downto 4),
      S(3) => MIN_VALUE_REG_n_1,
      S(2) => MIN_VALUE_REG_n_2,
      S(1) => MIN_VALUE_REG_n_3,
      S(0) => MIN_VALUE_REG_n_4
    );
\multOp__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \multOp__0_carry_n_0\,
      CO(2) => \multOp__0_carry_n_1\,
      CO(1) => \multOp__0_carry_n_2\,
      CO(0) => \multOp__0_carry_n_3\,
      CYINIT => '0',
      DI(3) => N_COL_REG_n_1,
      DI(2) => N_COL_REG_n_2,
      DI(1) => N_COL_REG_n_3,
      DI(0) => '0',
      O(3) => \multOp__0_carry_n_4\,
      O(2 downto 0) => size_prod(2 downto 0),
      S(3) => N_COL_REG_n_13,
      S(2) => N_COL_REG_n_14,
      S(1) => N_COL_REG_n_15,
      S(0) => N_COL_REG_n_16
    );
\multOp__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp__0_carry_n_0\,
      CO(3) => \multOp__0_carry__0_n_0\,
      CO(2) => \multOp__0_carry__0_n_1\,
      CO(1) => \multOp__0_carry__0_n_2\,
      CO(0) => \multOp__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => N_COL_REG_n_7,
      DI(2) => N_COL_REG_n_8,
      DI(1) => N_COL_REG_n_9,
      DI(0) => N_COL_REG_n_10,
      O(3) => \multOp__0_carry__0_n_4\,
      O(2) => \multOp__0_carry__0_n_5\,
      O(1) => \multOp__0_carry__0_n_6\,
      O(0) => \multOp__0_carry__0_n_7\,
      S(3) => N_COL_REG_n_36,
      S(2) => N_COL_REG_n_37,
      S(1) => N_COL_REG_n_38,
      S(0) => N_COL_REG_n_39
    );
\multOp__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp__0_carry__0_n_0\,
      CO(3) => \NLW_multOp__0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \multOp__0_carry__1_n_1\,
      CO(1) => \NLW_multOp__0_carry__1_CO_UNCONNECTED\(1),
      CO(0) => \multOp__0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => N_COL_REG_n_11,
      DI(0) => N_COL_REG_n_12,
      O(3 downto 2) => \NLW_multOp__0_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \multOp__0_carry__1_n_6\,
      O(0) => \multOp__0_carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => N_COL_REG_n_40,
      S(0) => N_COL_REG_n_41
    );
\multOp__30_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \multOp__30_carry_n_0\,
      CO(2) => \multOp__30_carry_n_1\,
      CO(1) => \multOp__30_carry_n_2\,
      CO(0) => \multOp__30_carry_n_3\,
      CYINIT => '0',
      DI(3) => N_COL_REG_n_4,
      DI(2) => N_COL_REG_n_5,
      DI(1) => N_COL_REG_n_6,
      DI(0) => '0',
      O(3) => \multOp__30_carry_n_4\,
      O(2) => \multOp__30_carry_n_5\,
      O(1) => \multOp__30_carry_n_6\,
      O(0) => \multOp__30_carry_n_7\,
      S(3) => N_COL_REG_n_23,
      S(2) => N_COL_REG_n_24,
      S(1) => N_COL_REG_n_25,
      S(0) => N_COL_REG_n_26
    );
\multOp__30_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp__30_carry_n_0\,
      CO(3) => \multOp__30_carry__0_n_0\,
      CO(2) => \multOp__30_carry__0_n_1\,
      CO(1) => \multOp__30_carry__0_n_2\,
      CO(0) => \multOp__30_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => N_COL_REG_n_17,
      DI(2) => N_COL_REG_n_18,
      DI(1) => N_COL_REG_n_19,
      DI(0) => N_COL_REG_n_20,
      O(3) => \multOp__30_carry__0_n_4\,
      O(2) => \multOp__30_carry__0_n_5\,
      O(1) => \multOp__30_carry__0_n_6\,
      O(0) => \multOp__30_carry__0_n_7\,
      S(3) => N_COL_REG_n_42,
      S(2) => N_COL_REG_n_43,
      S(1) => N_COL_REG_n_44,
      S(0) => N_COL_REG_n_45
    );
\multOp__30_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp__30_carry__0_n_0\,
      CO(3) => \NLW_multOp__30_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \multOp__30_carry__1_n_1\,
      CO(1) => \NLW_multOp__30_carry__1_CO_UNCONNECTED\(1),
      CO(0) => \multOp__30_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => N_COL_REG_n_21,
      DI(0) => N_COL_REG_n_22,
      O(3 downto 2) => \NLW_multOp__30_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1) => \multOp__30_carry__1_n_6\,
      O(0) => \multOp__30_carry__1_n_7\,
      S(3 downto 2) => B"01",
      S(1) => N_COL_REG_n_46,
      S(0) => N_COL_REG_n_47
    );
\multOp__60_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \multOp__60_carry_n_0\,
      CO(2) => \multOp__60_carry_n_1\,
      CO(1) => \multOp__60_carry_n_2\,
      CO(0) => \multOp__60_carry_n_3\,
      CYINIT => '0',
      DI(3) => \multOp__60_carry_i_1_n_0\,
      DI(2) => \multOp__0_carry__0_n_6\,
      DI(1) => \multOp__0_carry__0_n_7\,
      DI(0) => \multOp__0_carry_n_4\,
      O(3 downto 1) => size_prod(6 downto 4),
      O(0) => \NLW_multOp__60_carry_O_UNCONNECTED\(0),
      S(3) => N_COL_REG_n_48,
      S(2) => \multOp__60_carry_i_3_n_0\,
      S(1) => \multOp__60_carry_i_4_n_0\,
      S(0) => \multOp__60_carry_i_5_n_0\
    );
\multOp__60_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp__60_carry_n_0\,
      CO(3) => \multOp__60_carry__0_n_0\,
      CO(2) => \multOp__60_carry__0_n_1\,
      CO(1) => \multOp__60_carry__0_n_2\,
      CO(0) => \multOp__60_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => N_COL_REG_n_27,
      DI(2) => N_COL_REG_n_28,
      DI(1) => N_COL_REG_n_29,
      DI(0) => N_COL_REG_n_30,
      O(3 downto 0) => size_prod(10 downto 7),
      S(3) => N_COL_REG_n_49,
      S(2) => N_COL_REG_n_50,
      S(1) => N_COL_REG_n_51,
      S(0) => N_COL_REG_n_52
    );
\multOp__60_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp__60_carry__0_n_0\,
      CO(3) => \multOp__60_carry__1_n_0\,
      CO(2) => \multOp__60_carry__1_n_1\,
      CO(1) => \multOp__60_carry__1_n_2\,
      CO(0) => \multOp__60_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => N_COL_REG_n_31,
      DI(2) => N_COL_REG_n_32,
      DI(1) => N_COL_REG_n_33,
      DI(0) => N_COL_REG_n_34,
      O(3 downto 0) => size_prod(14 downto 11),
      S(3) => N_COL_REG_n_53,
      S(2) => N_COL_REG_n_54,
      S(1) => N_COL_REG_n_55,
      S(0) => N_COL_REG_n_56
    );
\multOp__60_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp__60_carry__1_n_0\,
      CO(3 downto 0) => \NLW_multOp__60_carry__2_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_multOp__60_carry__2_O_UNCONNECTED\(3 downto 1),
      O(0) => size_prod(15),
      S(3 downto 1) => B"000",
      S(0) => N_COL_REG_n_35
    );
\multOp__60_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__0_carry__0_n_5\,
      I1 => \multOp__30_carry_n_4\,
      O => \multOp__60_carry_i_1_n_0\
    );
\multOp__60_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__0_carry__0_n_6\,
      I1 => \multOp__30_carry_n_5\,
      O => \multOp__60_carry_i_3_n_0\
    );
\multOp__60_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__0_carry__0_n_7\,
      I1 => \multOp__30_carry_n_6\,
      O => \multOp__60_carry_i_4_n_0\
    );
\multOp__60_carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__0_carry_n_4\,
      I1 => \multOp__30_carry_n_7\,
      O => \multOp__60_carry_i_5_n_0\
    );
\multOp_inferred__0/i___0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \multOp_inferred__0/i___0_carry_n_0\,
      CO(2) => \multOp_inferred__0/i___0_carry_n_1\,
      CO(1) => \multOp_inferred__0/i___0_carry_n_2\,
      CO(0) => \multOp_inferred__0/i___0_carry_n_3\,
      CYINIT => '0',
      DI(3) => SHIFT_MULT_REG_n_11,
      DI(2) => \i___0_carry_i_2_n_0\,
      DI(1) => SHIFT_MULT_REG_n_12,
      DI(0) => '0',
      O(3) => \multOp_inferred__0/i___0_carry_n_4\,
      O(2 downto 0) => temp_value(2 downto 0),
      S(3) => SHIFT_MULT_REG_n_31,
      S(2) => SHIFT_MULT_REG_n_32,
      S(1) => SHIFT_MULT_REG_n_33,
      S(0) => \i___0_carry_i_7_n_0\
    );
\multOp_inferred__0/i___0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp_inferred__0/i___0_carry_n_0\,
      CO(3) => \multOp_inferred__0/i___0_carry__0_n_0\,
      CO(2) => \multOp_inferred__0/i___0_carry__0_n_1\,
      CO(1) => \multOp_inferred__0/i___0_carry__0_n_2\,
      CO(0) => \multOp_inferred__0/i___0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i___0_carry__0_i_1_n_0\,
      DI(2) => \i___0_carry__0_i_2_n_0\,
      DI(1) => \i___0_carry__0_i_3_n_0\,
      DI(0) => SHIFT_MULT_REG_n_0,
      O(3) => \multOp_inferred__0/i___0_carry__0_n_4\,
      O(2) => \multOp_inferred__0/i___0_carry__0_n_5\,
      O(1) => \multOp_inferred__0/i___0_carry__0_n_6\,
      O(0) => \multOp_inferred__0/i___0_carry__0_n_7\,
      S(3) => \i___0_carry__0_i_5_n_0\,
      S(2) => \i___0_carry__0_i_6_n_0\,
      S(1) => \i___0_carry__0_i_7_n_0\,
      S(0) => SHIFT_MULT_REG_n_34
    );
\multOp_inferred__0/i___0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp_inferred__0/i___0_carry__0_n_0\,
      CO(3) => \multOp_inferred__0/i___0_carry__1_n_0\,
      CO(2) => \NLW_multOp_inferred__0/i___0_carry__1_CO_UNCONNECTED\(2),
      CO(1) => \multOp_inferred__0/i___0_carry__1_n_2\,
      CO(0) => \multOp_inferred__0/i___0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => SHIFT_MULT_REG_n_10,
      DI(1) => \i___0_carry__1_i_2_n_0\,
      DI(0) => \i___0_carry__1_i_3_n_0\,
      O(3) => \NLW_multOp_inferred__0/i___0_carry__1_O_UNCONNECTED\(3),
      O(2) => \multOp_inferred__0/i___0_carry__1_n_5\,
      O(1) => \multOp_inferred__0/i___0_carry__1_n_6\,
      O(0) => \multOp_inferred__0/i___0_carry__1_n_7\,
      S(3) => '1',
      S(2) => SHIFT_MULT_REG_n_35,
      S(1) => SHIFT_MULT_REG_n_36,
      S(0) => \i___0_carry__1_i_6_n_0\
    );
\multOp_inferred__0/i___33_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \multOp_inferred__0/i___33_carry_n_0\,
      CO(2) => \multOp_inferred__0/i___33_carry_n_1\,
      CO(1) => \multOp_inferred__0/i___33_carry_n_2\,
      CO(0) => \multOp_inferred__0/i___33_carry_n_3\,
      CYINIT => '0',
      DI(3) => \i___33_carry_i_1_n_0\,
      DI(2) => \i___33_carry_i_2_n_0\,
      DI(1) => SHIFT_MULT_REG_n_22,
      DI(0) => '0',
      O(3) => \multOp_inferred__0/i___33_carry_n_4\,
      O(2) => \multOp_inferred__0/i___33_carry_n_5\,
      O(1) => \multOp_inferred__0/i___33_carry_n_6\,
      O(0) => \multOp_inferred__0/i___33_carry_n_7\,
      S(3) => \i___33_carry_i_4_n_0\,
      S(2) => SHIFT_MULT_REG_n_20,
      S(1) => \i___33_carry_i_6_n_0\,
      S(0) => SHIFT_MULT_REG_n_21
    );
\multOp_inferred__0/i___33_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp_inferred__0/i___33_carry_n_0\,
      CO(3) => \multOp_inferred__0/i___33_carry__0_n_0\,
      CO(2) => \multOp_inferred__0/i___33_carry__0_n_1\,
      CO(1) => \multOp_inferred__0/i___33_carry__0_n_2\,
      CO(0) => \multOp_inferred__0/i___33_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => SHIFT_MULT_REG_n_13,
      DI(2) => SHIFT_MULT_REG_n_14,
      DI(1) => \i___33_carry__0_i_3_n_0\,
      DI(0) => SHIFT_MULT_REG_n_15,
      O(3) => \multOp_inferred__0/i___33_carry__0_n_4\,
      O(2) => \multOp_inferred__0/i___33_carry__0_n_5\,
      O(1) => \multOp_inferred__0/i___33_carry__0_n_6\,
      O(0) => \multOp_inferred__0/i___33_carry__0_n_7\,
      S(3) => SHIFT_MULT_REG_n_37,
      S(2) => SHIFT_MULT_REG_n_38,
      S(1) => \i___33_carry__0_i_7_n_0\,
      S(0) => SHIFT_MULT_REG_n_39
    );
\multOp_inferred__0/i___33_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp_inferred__0/i___33_carry__0_n_0\,
      CO(3) => \multOp_inferred__0/i___33_carry__1_n_0\,
      CO(2) => \NLW_multOp_inferred__0/i___33_carry__1_CO_UNCONNECTED\(2),
      CO(1) => \multOp_inferred__0/i___33_carry__1_n_2\,
      CO(0) => \multOp_inferred__0/i___33_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => SHIFT_MULT_REG_n_16,
      DI(1) => SHIFT_MULT_REG_n_17,
      DI(0) => SHIFT_MULT_REG_n_18,
      O(3) => \NLW_multOp_inferred__0/i___33_carry__1_O_UNCONNECTED\(3),
      O(2) => \multOp_inferred__0/i___33_carry__1_n_5\,
      O(1) => \multOp_inferred__0/i___33_carry__1_n_6\,
      O(0) => \multOp_inferred__0/i___33_carry__1_n_7\,
      S(3) => '1',
      S(2) => SHIFT_MULT_REG_n_40,
      S(1) => SHIFT_MULT_REG_n_41,
      S(0) => SHIFT_MULT_REG_n_42
    );
\multOp_inferred__0/i___66_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \multOp_inferred__0/i___66_carry_n_0\,
      CO(2) => \multOp_inferred__0/i___66_carry_n_1\,
      CO(1) => \multOp_inferred__0/i___66_carry_n_2\,
      CO(0) => \multOp_inferred__0/i___66_carry_n_3\,
      CYINIT => '0',
      DI(3) => \i___66_carry_i_1_n_0\,
      DI(2) => \multOp_inferred__0/i___0_carry__0_n_6\,
      DI(1) => \multOp_inferred__0/i___0_carry__0_n_7\,
      DI(0) => \multOp_inferred__0/i___0_carry_n_4\,
      O(3 downto 1) => temp_value(6 downto 4),
      O(0) => \NLW_multOp_inferred__0/i___66_carry_O_UNCONNECTED\(0),
      S(3) => \i___66_carry_i_2_n_0\,
      S(2) => \i___66_carry_i_3_n_0\,
      S(1) => \i___66_carry_i_4_n_0\,
      S(0) => \i___66_carry_i_5_n_0\
    );
\multOp_inferred__0/i___66_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp_inferred__0/i___66_carry_n_0\,
      CO(3) => \multOp_inferred__0/i___66_carry__0_n_0\,
      CO(2) => \multOp_inferred__0/i___66_carry__0_n_1\,
      CO(1) => \multOp_inferred__0/i___66_carry__0_n_2\,
      CO(0) => \multOp_inferred__0/i___66_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \i___66_carry__0_i_1_n_0\,
      DI(2) => \i___66_carry__0_i_2_n_0\,
      DI(1) => \i___66_carry__0_i_3_n_0\,
      DI(0) => \i___66_carry__0_i_4_n_0\,
      O(3 downto 0) => temp_value(10 downto 7),
      S(3) => \i___66_carry__0_i_5_n_0\,
      S(2) => \i___66_carry__0_i_6_n_0\,
      S(1) => \i___66_carry__0_i_7_n_0\,
      S(0) => \i___66_carry__0_i_8_n_0\
    );
\multOp_inferred__0/i___66_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp_inferred__0/i___66_carry__0_n_0\,
      CO(3) => \multOp_inferred__0/i___66_carry__1_n_0\,
      CO(2) => \multOp_inferred__0/i___66_carry__1_n_1\,
      CO(1) => \multOp_inferred__0/i___66_carry__1_n_2\,
      CO(0) => \multOp_inferred__0/i___66_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \i___66_carry__1_i_1_n_0\,
      DI(2) => SHIFT_MULT_REG_n_23,
      DI(1) => SHIFT_MULT_REG_n_24,
      DI(0) => \i___66_carry__1_i_4_n_0\,
      O(3 downto 0) => temp_value(14 downto 11),
      S(3) => SHIFT_MULT_REG_n_43,
      S(2) => SHIFT_MULT_REG_n_44,
      S(1) => SHIFT_MULT_REG_n_45,
      S(0) => \i___66_carry__1_i_8_n_0\
    );
\multOp_inferred__0/i___66_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp_inferred__0/i___66_carry__1_n_0\,
      CO(3 downto 1) => \NLW_multOp_inferred__0/i___66_carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \multOp_inferred__0/i___66_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => SHIFT_MULT_REG_n_26,
      O(3 downto 2) => \NLW_multOp_inferred__0/i___66_carry__2_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => temp_value(16 downto 15),
      S(3 downto 2) => B"00",
      S(1) => SHIFT_MULT_REG_n_27,
      S(0) => SHIFT_MULT_REG_n_28
    );
\o_address_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAABBBB8AAA8BBB8"
    )
        port map (
      I0 => minusOp(0),
      I1 => Q(9),
      I2 => Q(3),
      I3 => Q(4),
      I4 => \o_address[0]\,
      I5 => i_data_10(0),
      O => o_address_OBUF(0)
    );
\o_address_OBUF[10]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => minusOp(10),
      I1 => \o_address[1]\,
      I2 => i_data_10(10),
      I3 => \o_address[1]_0\,
      O => o_address_OBUF(10)
    );
\o_address_OBUF[11]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => minusOp(11),
      I1 => \o_address[1]\,
      I2 => i_data_10(11),
      I3 => \o_address[1]_0\,
      O => o_address_OBUF(11)
    );
\o_address_OBUF[12]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => minusOp(12),
      I1 => \o_address[1]\,
      I2 => i_data_10(12),
      I3 => \o_address[1]_0\,
      O => o_address_OBUF(12)
    );
\o_address_OBUF[13]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => minusOp(13),
      I1 => \o_address[1]\,
      I2 => i_data_10(13),
      I3 => \o_address[1]_0\,
      O => o_address_OBUF(13)
    );
\o_address_OBUF[14]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => minusOp(14),
      I1 => \o_address[1]\,
      I2 => i_data_10(14),
      I3 => \o_address[1]_0\,
      O => o_address_OBUF(14)
    );
\o_address_OBUF[15]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => minusOp(15),
      I1 => \o_address[1]\,
      I2 => i_data_10(15),
      I3 => \o_address[1]_0\,
      O => o_address_OBUF(15)
    );
\o_address_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => minusOp(1),
      I1 => \o_address[1]\,
      I2 => i_data_10(1),
      I3 => \o_address[1]_0\,
      O => o_address_OBUF(1)
    );
\o_address_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => minusOp(2),
      I1 => \o_address[1]\,
      I2 => i_data_10(2),
      I3 => \o_address[1]_0\,
      O => o_address_OBUF(2)
    );
\o_address_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => minusOp(3),
      I1 => \o_address[1]\,
      I2 => i_data_10(3),
      I3 => \o_address[1]_0\,
      O => o_address_OBUF(3)
    );
\o_address_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => minusOp(4),
      I1 => \o_address[1]\,
      I2 => i_data_10(4),
      I3 => \o_address[1]_0\,
      O => o_address_OBUF(4)
    );
\o_address_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => minusOp(5),
      I1 => \o_address[1]\,
      I2 => i_data_10(5),
      I3 => \o_address[1]_0\,
      O => o_address_OBUF(5)
    );
\o_address_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => minusOp(6),
      I1 => \o_address[1]\,
      I2 => i_data_10(6),
      I3 => \o_address[1]_0\,
      O => o_address_OBUF(6)
    );
\o_address_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => minusOp(7),
      I1 => \o_address[1]\,
      I2 => i_data_10(7),
      I3 => \o_address[1]_0\,
      O => o_address_OBUF(7)
    );
\o_address_OBUF[8]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => minusOp(8),
      I1 => \o_address[1]\,
      I2 => i_data_10(8),
      I3 => \o_address[1]_0\,
      O => o_address_OBUF(8)
    );
\o_address_OBUF[9]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => minusOp(9),
      I1 => \o_address[1]\,
      I2 => i_data_10(9),
      I3 => \o_address[1]_0\,
      O => o_address_OBUF(9)
    );
\o_data_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => temp_value(0),
      I1 => temp_value(14),
      I2 => temp_value(12),
      I3 => temp_value(15),
      I4 => temp_value(10),
      I5 => \o_data_OBUF[7]_inst_i_2_n_0\,
      O => o_data_OBUF(0)
    );
\o_data_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => temp_value(1),
      I1 => temp_value(14),
      I2 => temp_value(12),
      I3 => temp_value(15),
      I4 => temp_value(10),
      I5 => \o_data_OBUF[7]_inst_i_2_n_0\,
      O => o_data_OBUF(1)
    );
\o_data_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => temp_value(2),
      I1 => temp_value(14),
      I2 => temp_value(12),
      I3 => temp_value(15),
      I4 => temp_value(10),
      I5 => \o_data_OBUF[7]_inst_i_2_n_0\,
      O => o_data_OBUF(2)
    );
\o_data_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => temp_value(3),
      I1 => temp_value(14),
      I2 => temp_value(12),
      I3 => temp_value(15),
      I4 => temp_value(10),
      I5 => \o_data_OBUF[7]_inst_i_2_n_0\,
      O => o_data_OBUF(3)
    );
\o_data_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp_inferred__0/i___0_carry_n_4\,
      I1 => \multOp_inferred__0/i___33_carry_n_7\,
      O => temp_value(3)
    );
\o_data_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => temp_value(4),
      I1 => temp_value(14),
      I2 => temp_value(12),
      I3 => temp_value(15),
      I4 => temp_value(10),
      I5 => \o_data_OBUF[7]_inst_i_2_n_0\,
      O => o_data_OBUF(4)
    );
\o_data_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => temp_value(5),
      I1 => temp_value(14),
      I2 => temp_value(12),
      I3 => temp_value(15),
      I4 => temp_value(10),
      I5 => \o_data_OBUF[7]_inst_i_2_n_0\,
      O => o_data_OBUF(5)
    );
\o_data_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => temp_value(6),
      I1 => temp_value(14),
      I2 => temp_value(12),
      I3 => temp_value(15),
      I4 => temp_value(10),
      I5 => \o_data_OBUF[7]_inst_i_2_n_0\,
      O => o_data_OBUF(6)
    );
\o_data_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => temp_value(7),
      I1 => temp_value(14),
      I2 => temp_value(12),
      I3 => temp_value(15),
      I4 => temp_value(10),
      I5 => \o_data_OBUF[7]_inst_i_2_n_0\,
      O => o_data_OBUF(7)
    );
\o_data_OBUF[7]_inst_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => temp_value(16),
      I1 => temp_value(11),
      I2 => temp_value(9),
      I3 => temp_value(13),
      I4 => temp_value(8),
      O => \o_data_OBUF[7]_inst_i_2_n_0\
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => data_reg(1),
      DI(0) => '0',
      O(3 downto 0) => i_data_10(3 downto 0),
      S(3 downto 2) => data_reg(3 downto 2),
      S(1) => PIXEL_COUNTER_n_16,
      S(0) => data_reg(0)
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => i_data_10(7 downto 4),
      S(3 downto 0) => data_reg(7 downto 4)
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => i_data_10(11 downto 8),
      S(3 downto 0) => data_reg(11 downto 8)
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3) => \NLW_plusOp_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \plusOp_carry__2_n_1\,
      CO(1) => \plusOp_carry__2_n_2\,
      CO(0) => \plusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => i_data_10(15 downto 12),
      S(3 downto 0) => data_reg(15 downto 12)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity project_reti_logiche is
  port (
    i_clk : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_start : in STD_LOGIC;
    i_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_address : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_done : out STD_LOGIC;
    o_en : out STD_LOGIC;
    o_we : out STD_LOGIC;
    o_data : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of project_reti_logiche : entity is true;
end project_reti_logiche;

architecture STRUCTURE of project_reti_logiche is
  signal DATAPATH0_n_0 : STD_LOGIC;
  signal DATAPATH0_n_2 : STD_LOGIC;
  signal DATAPATH0_n_3 : STD_LOGIC;
  signal DATAPATH0_n_4 : STD_LOGIC;
  signal DATAPATH0_n_5 : STD_LOGIC;
  signal DATAPATH0_n_6 : STD_LOGIC;
  signal \FSM_onehot_cur_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cur_state[11]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_cur_state_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_cur_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_cur_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_cur_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_cur_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_cur_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_cur_state_reg_n_0_[8]\ : STD_LOGIC;
  signal i_clk_IBUF : STD_LOGIC;
  signal i_clk_IBUF_BUFG : STD_LOGIC;
  signal i_data_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i_rst_IBUF : STD_LOGIC;
  signal i_start_IBUF : STD_LOGIC;
  signal max_value_sel : STD_LOGIC;
  signal n_col_load : STD_LOGIC;
  signal o_address_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \o_address_OBUF[0]_inst_i_2_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[15]_inst_i_2_n_0\ : STD_LOGIC;
  signal \o_address_OBUF[15]_inst_i_3_n_0\ : STD_LOGIC;
  signal o_data_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal o_done_OBUF : STD_LOGIC;
  signal o_en_OBUF : STD_LOGIC;
  signal o_we_OBUF : STD_LOGIC;
  signal reg_rst : STD_LOGIC;
  signal shift_mult_load : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_cur_state_reg[0]\ : label is "read_n_rig:0000000010000,req_n_rig:0000000001000,read_n_col:0000000000100,done:0100000000000,req_pixel:0010000000000,req_n_col:0000000000010,rst:0000000000001,calc_shift:0000010000000,write_new:0001000000000,init_calc:0000100000000,comp_ext:0000001000000,iSTATE:1000000000000,init_comp:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cur_state_reg[10]\ : label is "read_n_rig:0000000010000,req_n_rig:0000000001000,read_n_col:0000000000100,done:0100000000000,req_pixel:0010000000000,req_n_col:0000000000010,rst:0000000000001,calc_shift:0000010000000,write_new:0001000000000,init_calc:0000100000000,comp_ext:0000001000000,iSTATE:1000000000000,init_comp:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cur_state_reg[11]\ : label is "read_n_rig:0000000010000,req_n_rig:0000000001000,read_n_col:0000000000100,done:0100000000000,req_pixel:0010000000000,req_n_col:0000000000010,rst:0000000000001,calc_shift:0000010000000,write_new:0001000000000,init_calc:0000100000000,comp_ext:0000001000000,iSTATE:1000000000000,init_comp:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cur_state_reg[1]\ : label is "read_n_rig:0000000010000,req_n_rig:0000000001000,read_n_col:0000000000100,done:0100000000000,req_pixel:0010000000000,req_n_col:0000000000010,rst:0000000000001,calc_shift:0000010000000,write_new:0001000000000,init_calc:0000100000000,comp_ext:0000001000000,iSTATE:1000000000000,init_comp:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cur_state_reg[2]\ : label is "read_n_rig:0000000010000,req_n_rig:0000000001000,read_n_col:0000000000100,done:0100000000000,req_pixel:0010000000000,req_n_col:0000000000010,rst:0000000000001,calc_shift:0000010000000,write_new:0001000000000,init_calc:0000100000000,comp_ext:0000001000000,iSTATE:1000000000000,init_comp:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cur_state_reg[3]\ : label is "read_n_rig:0000000010000,req_n_rig:0000000001000,read_n_col:0000000000100,done:0100000000000,req_pixel:0010000000000,req_n_col:0000000000010,rst:0000000000001,calc_shift:0000010000000,write_new:0001000000000,init_calc:0000100000000,comp_ext:0000001000000,iSTATE:1000000000000,init_comp:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cur_state_reg[4]\ : label is "read_n_rig:0000000010000,req_n_rig:0000000001000,read_n_col:0000000000100,done:0100000000000,req_pixel:0010000000000,req_n_col:0000000000010,rst:0000000000001,calc_shift:0000010000000,write_new:0001000000000,init_calc:0000100000000,comp_ext:0000001000000,iSTATE:1000000000000,init_comp:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cur_state_reg[5]\ : label is "read_n_rig:0000000010000,req_n_rig:0000000001000,read_n_col:0000000000100,done:0100000000000,req_pixel:0010000000000,req_n_col:0000000000010,rst:0000000000001,calc_shift:0000010000000,write_new:0001000000000,init_calc:0000100000000,comp_ext:0000001000000,iSTATE:1000000000000,init_comp:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cur_state_reg[6]\ : label is "read_n_rig:0000000010000,req_n_rig:0000000001000,read_n_col:0000000000100,done:0100000000000,req_pixel:0010000000000,req_n_col:0000000000010,rst:0000000000001,calc_shift:0000010000000,write_new:0001000000000,init_calc:0000100000000,comp_ext:0000001000000,iSTATE:1000000000000,init_comp:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cur_state_reg[7]\ : label is "read_n_rig:0000000010000,req_n_rig:0000000001000,read_n_col:0000000000100,done:0100000000000,req_pixel:0010000000000,req_n_col:0000000000010,rst:0000000000001,calc_shift:0000010000000,write_new:0001000000000,init_calc:0000100000000,comp_ext:0000001000000,iSTATE:1000000000000,init_comp:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cur_state_reg[8]\ : label is "read_n_rig:0000000010000,req_n_rig:0000000001000,read_n_col:0000000000100,done:0100000000000,req_pixel:0010000000000,req_n_col:0000000000010,rst:0000000000001,calc_shift:0000010000000,write_new:0001000000000,init_calc:0000100000000,comp_ext:0000001000000,iSTATE:1000000000000,init_comp:0000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_cur_state_reg[9]\ : label is "read_n_rig:0000000010000,req_n_rig:0000000001000,read_n_col:0000000000100,done:0100000000000,req_pixel:0010000000000,req_n_col:0000000000010,rst:0000000000001,calc_shift:0000010000000,write_new:0001000000000,init_calc:0000100000000,comp_ext:0000001000000,iSTATE:1000000000000,init_comp:0000000100000";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \o_address_OBUF[15]_inst_i_2\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \o_address_OBUF[15]_inst_i_3\ : label is "soft_lutpair40";
begin
DATAPATH0: entity work.datapath
     port map (
      CLK => i_clk_IBUF_BUFG,
      D(4) => DATAPATH0_n_2,
      D(3) => DATAPATH0_n_3,
      D(2) => DATAPATH0_n_4,
      D(1) => DATAPATH0_n_5,
      D(0) => DATAPATH0_n_6,
      E(0) => DATAPATH0_n_0,
      \FSM_onehot_cur_state_reg[0]\ => \FSM_onehot_cur_state[11]_i_4_n_0\,
      \FSM_onehot_cur_state_reg[1]\(0) => n_col_load,
      Q(11) => o_done_OBUF,
      Q(10) => \FSM_onehot_cur_state_reg_n_0_[10]\,
      Q(9) => o_we_OBUF,
      Q(8) => \FSM_onehot_cur_state_reg_n_0_[8]\,
      Q(7) => shift_mult_load,
      Q(6) => max_value_sel,
      Q(5) => \FSM_onehot_cur_state_reg_n_0_[5]\,
      Q(4) => \FSM_onehot_cur_state_reg_n_0_[4]\,
      Q(3) => \FSM_onehot_cur_state_reg_n_0_[3]\,
      Q(2) => \FSM_onehot_cur_state_reg_n_0_[2]\,
      Q(1) => \FSM_onehot_cur_state_reg_n_0_[1]\,
      Q(0) => reg_rst,
      i_data_IBUF(7 downto 0) => i_data_IBUF(7 downto 0),
      i_start_IBUF => i_start_IBUF,
      \o_address[0]\ => \o_address_OBUF[0]_inst_i_2_n_0\,
      \o_address[1]\ => \o_address_OBUF[15]_inst_i_2_n_0\,
      \o_address[1]_0\ => \o_address_OBUF[15]_inst_i_3_n_0\,
      o_address_OBUF(15 downto 0) => o_address_OBUF(15 downto 0),
      o_data_OBUF(7 downto 0) => o_data_OBUF(7 downto 0)
    );
\FSM_onehot_cur_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => o_done_OBUF,
      I1 => i_start_IBUF,
      O => \FSM_onehot_cur_state[0]_i_1_n_0\
    );
\FSM_onehot_cur_state[11]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[4]\,
      I1 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I2 => o_we_OBUF,
      O => \FSM_onehot_cur_state[11]_i_4_n_0\
    );
\FSM_onehot_cur_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => DATAPATH0_n_0,
      D => \FSM_onehot_cur_state[0]_i_1_n_0\,
      Q => reg_rst,
      S => i_rst_IBUF
    );
\FSM_onehot_cur_state_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => DATAPATH0_n_0,
      D => DATAPATH0_n_3,
      Q => \FSM_onehot_cur_state_reg_n_0_[10]\,
      R => i_rst_IBUF
    );
\FSM_onehot_cur_state_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => DATAPATH0_n_0,
      D => DATAPATH0_n_2,
      Q => o_done_OBUF,
      R => i_rst_IBUF
    );
\FSM_onehot_cur_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => DATAPATH0_n_0,
      D => reg_rst,
      Q => \FSM_onehot_cur_state_reg_n_0_[1]\,
      R => i_rst_IBUF
    );
\FSM_onehot_cur_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => DATAPATH0_n_0,
      D => \FSM_onehot_cur_state_reg_n_0_[1]\,
      Q => \FSM_onehot_cur_state_reg_n_0_[2]\,
      R => i_rst_IBUF
    );
\FSM_onehot_cur_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => DATAPATH0_n_0,
      D => \FSM_onehot_cur_state_reg_n_0_[2]\,
      Q => \FSM_onehot_cur_state_reg_n_0_[3]\,
      R => i_rst_IBUF
    );
\FSM_onehot_cur_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => DATAPATH0_n_0,
      D => \FSM_onehot_cur_state_reg_n_0_[3]\,
      Q => \FSM_onehot_cur_state_reg_n_0_[4]\,
      R => i_rst_IBUF
    );
\FSM_onehot_cur_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => DATAPATH0_n_0,
      D => \FSM_onehot_cur_state_reg_n_0_[4]\,
      Q => \FSM_onehot_cur_state_reg_n_0_[5]\,
      R => i_rst_IBUF
    );
\FSM_onehot_cur_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => DATAPATH0_n_0,
      D => DATAPATH0_n_6,
      Q => max_value_sel,
      R => i_rst_IBUF
    );
\FSM_onehot_cur_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => DATAPATH0_n_0,
      D => DATAPATH0_n_5,
      Q => shift_mult_load,
      R => i_rst_IBUF
    );
\FSM_onehot_cur_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => DATAPATH0_n_0,
      D => shift_mult_load,
      Q => \FSM_onehot_cur_state_reg_n_0_[8]\,
      R => i_rst_IBUF
    );
\FSM_onehot_cur_state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => DATAPATH0_n_0,
      D => DATAPATH0_n_4,
      Q => o_we_OBUF,
      R => i_rst_IBUF
    );
i_clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => i_clk_IBUF,
      O => i_clk_IBUF_BUFG
    );
i_clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_clk,
      O => i_clk_IBUF
    );
\i_data_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(0),
      O => i_data_IBUF(0)
    );
\i_data_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(1),
      O => i_data_IBUF(1)
    );
\i_data_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(2),
      O => i_data_IBUF(2)
    );
\i_data_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(3),
      O => i_data_IBUF(3)
    );
\i_data_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(4),
      O => i_data_IBUF(4)
    );
\i_data_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(5),
      O => i_data_IBUF(5)
    );
\i_data_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(6),
      O => i_data_IBUF(6)
    );
\i_data_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(7),
      O => i_data_IBUF(7)
    );
i_rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_rst,
      O => i_rst_IBUF
    );
i_start_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_start,
      O => i_start_IBUF
    );
\o_address_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(0),
      O => o_address(0)
    );
\o_address_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[5]\,
      I1 => \FSM_onehot_cur_state_reg_n_0_[8]\,
      I2 => \FSM_onehot_cur_state_reg_n_0_[10]\,
      I3 => max_value_sel,
      O => \o_address_OBUF[0]_inst_i_2_n_0\
    );
\o_address_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(10),
      O => o_address(10)
    );
\o_address_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(11),
      O => o_address(11)
    );
\o_address_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(12),
      O => o_address(12)
    );
\o_address_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(13),
      O => o_address(13)
    );
\o_address_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(14),
      O => o_address(14)
    );
\o_address_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(15),
      O => o_address(15)
    );
\o_address_OBUF[15]_inst_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE0"
    )
        port map (
      I0 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I1 => \FSM_onehot_cur_state_reg_n_0_[4]\,
      I2 => \o_address_OBUF[0]_inst_i_2_n_0\,
      I3 => o_we_OBUF,
      O => \o_address_OBUF[15]_inst_i_2_n_0\
    );
\o_address_OBUF[15]_inst_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \o_address_OBUF[0]_inst_i_2_n_0\,
      I1 => o_we_OBUF,
      I2 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I3 => \FSM_onehot_cur_state_reg_n_0_[4]\,
      O => \o_address_OBUF[15]_inst_i_3_n_0\
    );
\o_address_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(1),
      O => o_address(1)
    );
\o_address_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(2),
      O => o_address(2)
    );
\o_address_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(3),
      O => o_address(3)
    );
\o_address_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(4),
      O => o_address(4)
    );
\o_address_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(5),
      O => o_address(5)
    );
\o_address_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(6),
      O => o_address(6)
    );
\o_address_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(7),
      O => o_address(7)
    );
\o_address_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(8),
      O => o_address(8)
    );
\o_address_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(9),
      O => o_address(9)
    );
\o_data_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(0),
      O => o_data(0)
    );
\o_data_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(1),
      O => o_data(1)
    );
\o_data_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(2),
      O => o_data(2)
    );
\o_data_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(3),
      O => o_data(3)
    );
\o_data_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(4),
      O => o_data(4)
    );
\o_data_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(5),
      O => o_data(5)
    );
\o_data_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(6),
      O => o_data(6)
    );
\o_data_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(7),
      O => o_data(7)
    );
o_done_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_done_OBUF,
      O => o_done
    );
o_en_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_en_OBUF,
      O => o_en
    );
o_en_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \o_address_OBUF[0]_inst_i_2_n_0\,
      I1 => n_col_load,
      I2 => \FSM_onehot_cur_state_reg_n_0_[4]\,
      I3 => \FSM_onehot_cur_state_reg_n_0_[3]\,
      I4 => o_we_OBUF,
      I5 => shift_mult_load,
      O => o_en_OBUF
    );
o_we_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_we_OBUF,
      O => o_we
    );
end STRUCTURE;
