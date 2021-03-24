// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Mar 24 19:23:23 2021
// Host        : DESKTOP-7BJ6MNB running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               E:/GitHub/PFRL_pizzamiglio_prisciantelli/project_reti_logiche_FINAL/project_reti_logiche/project_reti_logiche.sim/sim_1/synth/func/xsim/project_tb_func_synth.v
// Design      : project_reti_logiche
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module counter_16_bit
   (data_reg,
    S,
    \data_reg[12]_0 ,
    \data_reg[1]_0 ,
    CLK,
    Q,
    eqOp_carry__0);
  output [15:0]data_reg;
  output [3:0]S;
  output [0:0]\data_reg[12]_0 ;
  output [0:0]\data_reg[1]_0 ;
  input CLK;
  input [5:0]Q;
  input [14:0]eqOp_carry__0;

  wire CLK;
  wire [5:0]Q;
  wire [3:0]S;
  wire \data[0]_i_4_n_0 ;
  wire [15:0]data_reg;
  wire \data_reg[0]_i_2_n_0 ;
  wire \data_reg[0]_i_2_n_1 ;
  wire \data_reg[0]_i_2_n_2 ;
  wire \data_reg[0]_i_2_n_3 ;
  wire \data_reg[0]_i_2_n_4 ;
  wire \data_reg[0]_i_2_n_5 ;
  wire \data_reg[0]_i_2_n_6 ;
  wire \data_reg[0]_i_2_n_7 ;
  wire [0:0]\data_reg[12]_0 ;
  wire \data_reg[12]_i_1_n_1 ;
  wire \data_reg[12]_i_1_n_2 ;
  wire \data_reg[12]_i_1_n_3 ;
  wire \data_reg[12]_i_1_n_4 ;
  wire \data_reg[12]_i_1_n_5 ;
  wire \data_reg[12]_i_1_n_6 ;
  wire \data_reg[12]_i_1_n_7 ;
  wire [0:0]\data_reg[1]_0 ;
  wire \data_reg[4]_i_1_n_0 ;
  wire \data_reg[4]_i_1_n_1 ;
  wire \data_reg[4]_i_1_n_2 ;
  wire \data_reg[4]_i_1_n_3 ;
  wire \data_reg[4]_i_1_n_4 ;
  wire \data_reg[4]_i_1_n_5 ;
  wire \data_reg[4]_i_1_n_6 ;
  wire \data_reg[4]_i_1_n_7 ;
  wire \data_reg[8]_i_1_n_0 ;
  wire \data_reg[8]_i_1_n_1 ;
  wire \data_reg[8]_i_1_n_2 ;
  wire \data_reg[8]_i_1_n_3 ;
  wire \data_reg[8]_i_1_n_4 ;
  wire \data_reg[8]_i_1_n_5 ;
  wire \data_reg[8]_i_1_n_6 ;
  wire \data_reg[8]_i_1_n_7 ;
  wire [14:0]eqOp_carry__0;
  wire pixel_counter_en;
  wire pixel_counter_rst;
  wire [3:3]\NLW_data_reg[12]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \data[0]_i_1 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(pixel_counter_en));
  LUT2 #(
    .INIT(4'hE)) 
    \data[0]_i_3 
       (.I0(Q[0]),
        .I1(Q[3]),
        .O(pixel_counter_rst));
  LUT1 #(
    .INIT(2'h1)) 
    \data[0]_i_4 
       (.I0(data_reg[0]),
        .O(\data[0]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(CLK),
        .CE(pixel_counter_en),
        .CLR(pixel_counter_rst),
        .D(\data_reg[0]_i_2_n_7 ),
        .Q(data_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \data_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\data_reg[0]_i_2_n_0 ,\data_reg[0]_i_2_n_1 ,\data_reg[0]_i_2_n_2 ,\data_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\data_reg[0]_i_2_n_4 ,\data_reg[0]_i_2_n_5 ,\data_reg[0]_i_2_n_6 ,\data_reg[0]_i_2_n_7 }),
        .S({data_reg[3:1],\data[0]_i_4_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[10] 
       (.C(CLK),
        .CE(pixel_counter_en),
        .CLR(pixel_counter_rst),
        .D(\data_reg[8]_i_1_n_5 ),
        .Q(data_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[11] 
       (.C(CLK),
        .CE(pixel_counter_en),
        .CLR(pixel_counter_rst),
        .D(\data_reg[8]_i_1_n_4 ),
        .Q(data_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[12] 
       (.C(CLK),
        .CE(pixel_counter_en),
        .CLR(pixel_counter_rst),
        .D(\data_reg[12]_i_1_n_7 ),
        .Q(data_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \data_reg[12]_i_1 
       (.CI(\data_reg[8]_i_1_n_0 ),
        .CO({\NLW_data_reg[12]_i_1_CO_UNCONNECTED [3],\data_reg[12]_i_1_n_1 ,\data_reg[12]_i_1_n_2 ,\data_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_reg[12]_i_1_n_4 ,\data_reg[12]_i_1_n_5 ,\data_reg[12]_i_1_n_6 ,\data_reg[12]_i_1_n_7 }),
        .S(data_reg[15:12]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[13] 
       (.C(CLK),
        .CE(pixel_counter_en),
        .CLR(pixel_counter_rst),
        .D(\data_reg[12]_i_1_n_6 ),
        .Q(data_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[14] 
       (.C(CLK),
        .CE(pixel_counter_en),
        .CLR(pixel_counter_rst),
        .D(\data_reg[12]_i_1_n_5 ),
        .Q(data_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[15] 
       (.C(CLK),
        .CE(pixel_counter_en),
        .CLR(pixel_counter_rst),
        .D(\data_reg[12]_i_1_n_4 ),
        .Q(data_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(CLK),
        .CE(pixel_counter_en),
        .CLR(pixel_counter_rst),
        .D(\data_reg[0]_i_2_n_6 ),
        .Q(data_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(CLK),
        .CE(pixel_counter_en),
        .CLR(pixel_counter_rst),
        .D(\data_reg[0]_i_2_n_5 ),
        .Q(data_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(CLK),
        .CE(pixel_counter_en),
        .CLR(pixel_counter_rst),
        .D(\data_reg[0]_i_2_n_4 ),
        .Q(data_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(CLK),
        .CE(pixel_counter_en),
        .CLR(pixel_counter_rst),
        .D(\data_reg[4]_i_1_n_7 ),
        .Q(data_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \data_reg[4]_i_1 
       (.CI(\data_reg[0]_i_2_n_0 ),
        .CO({\data_reg[4]_i_1_n_0 ,\data_reg[4]_i_1_n_1 ,\data_reg[4]_i_1_n_2 ,\data_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_reg[4]_i_1_n_4 ,\data_reg[4]_i_1_n_5 ,\data_reg[4]_i_1_n_6 ,\data_reg[4]_i_1_n_7 }),
        .S(data_reg[7:4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(CLK),
        .CE(pixel_counter_en),
        .CLR(pixel_counter_rst),
        .D(\data_reg[4]_i_1_n_6 ),
        .Q(data_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(CLK),
        .CE(pixel_counter_en),
        .CLR(pixel_counter_rst),
        .D(\data_reg[4]_i_1_n_5 ),
        .Q(data_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(CLK),
        .CE(pixel_counter_en),
        .CLR(pixel_counter_rst),
        .D(\data_reg[4]_i_1_n_4 ),
        .Q(data_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[8] 
       (.C(CLK),
        .CE(pixel_counter_en),
        .CLR(pixel_counter_rst),
        .D(\data_reg[8]_i_1_n_7 ),
        .Q(data_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \data_reg[8]_i_1 
       (.CI(\data_reg[4]_i_1_n_0 ),
        .CO({\data_reg[8]_i_1_n_0 ,\data_reg[8]_i_1_n_1 ,\data_reg[8]_i_1_n_2 ,\data_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\data_reg[8]_i_1_n_4 ,\data_reg[8]_i_1_n_5 ,\data_reg[8]_i_1_n_6 ,\data_reg[8]_i_1_n_7 }),
        .S(data_reg[11:8]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[9] 
       (.C(CLK),
        .CE(pixel_counter_en),
        .CLR(pixel_counter_rst),
        .D(\data_reg[8]_i_1_n_6 ),
        .Q(data_reg[9]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry__0_i_2
       (.I0(data_reg[12]),
        .I1(eqOp_carry__0[12]),
        .I2(eqOp_carry__0[14]),
        .I3(data_reg[14]),
        .I4(eqOp_carry__0[13]),
        .I5(data_reg[13]),
        .O(\data_reg[12]_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry_i_1
       (.I0(data_reg[9]),
        .I1(eqOp_carry__0[9]),
        .I2(eqOp_carry__0[11]),
        .I3(data_reg[11]),
        .I4(eqOp_carry__0[10]),
        .I5(data_reg[10]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry_i_2
       (.I0(data_reg[6]),
        .I1(eqOp_carry__0[6]),
        .I2(eqOp_carry__0[8]),
        .I3(data_reg[8]),
        .I4(eqOp_carry__0[7]),
        .I5(data_reg[7]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry_i_3
       (.I0(data_reg[3]),
        .I1(eqOp_carry__0[3]),
        .I2(eqOp_carry__0[5]),
        .I3(data_reg[5]),
        .I4(eqOp_carry__0[4]),
        .I5(data_reg[4]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    eqOp_carry_i_4
       (.I0(data_reg[0]),
        .I1(eqOp_carry__0[0]),
        .I2(eqOp_carry__0[2]),
        .I3(data_reg[2]),
        .I4(eqOp_carry__0[1]),
        .I5(data_reg[1]),
        .O(S[0]));
  LUT1 #(
    .INIT(2'h1)) 
    plusOp_carry_i_1
       (.I0(data_reg[1]),
        .O(\data_reg[1]_0 ));
endmodule

module datapath
   (o_address_OBUF,
    E,
    D,
    o_data_OBUF,
    CLK,
    Q,
    address_sel,
    \FSM_onehot_cur_state_reg[0] ,
    i_start_IBUF,
    i_data_IBUF);
  output [15:0]o_address_OBUF;
  output [0:0]E;
  output [4:0]D;
  output [7:0]o_data_OBUF;
  input CLK;
  input [11:0]Q;
  input [0:0]address_sel;
  input \FSM_onehot_cur_state_reg[0] ;
  input i_start_IBUF;
  input [7:0]i_data_IBUF;

  wire [7:0]B;
  wire CLK;
  wire [4:0]D;
  wire [0:0]E;
  wire \FSM_onehot_cur_state[11]_i_3_n_0 ;
  wire \FSM_onehot_cur_state_reg[0] ;
  wire MAX_VALUE_REG_n_0;
  wire MAX_VALUE_REG_n_1;
  wire MAX_VALUE_REG_n_10;
  wire MAX_VALUE_REG_n_11;
  wire MAX_VALUE_REG_n_12;
  wire MAX_VALUE_REG_n_13;
  wire MAX_VALUE_REG_n_14;
  wire MAX_VALUE_REG_n_15;
  wire MAX_VALUE_REG_n_16;
  wire MAX_VALUE_REG_n_17;
  wire MAX_VALUE_REG_n_18;
  wire MAX_VALUE_REG_n_19;
  wire MAX_VALUE_REG_n_2;
  wire MAX_VALUE_REG_n_20;
  wire MAX_VALUE_REG_n_21;
  wire MAX_VALUE_REG_n_22;
  wire MAX_VALUE_REG_n_23;
  wire MAX_VALUE_REG_n_24;
  wire MAX_VALUE_REG_n_25;
  wire MAX_VALUE_REG_n_26;
  wire MAX_VALUE_REG_n_3;
  wire MAX_VALUE_REG_n_4;
  wire MAX_VALUE_REG_n_5;
  wire MAX_VALUE_REG_n_6;
  wire MAX_VALUE_REG_n_7;
  wire MAX_VALUE_REG_n_8;
  wire MAX_VALUE_REG_n_9;
  wire MIN_VALUE_REG_n_0;
  wire MIN_VALUE_REG_n_1;
  wire MIN_VALUE_REG_n_10;
  wire MIN_VALUE_REG_n_11;
  wire MIN_VALUE_REG_n_12;
  wire MIN_VALUE_REG_n_13;
  wire MIN_VALUE_REG_n_14;
  wire MIN_VALUE_REG_n_15;
  wire MIN_VALUE_REG_n_16;
  wire MIN_VALUE_REG_n_17;
  wire MIN_VALUE_REG_n_18;
  wire MIN_VALUE_REG_n_19;
  wire MIN_VALUE_REG_n_2;
  wire MIN_VALUE_REG_n_20;
  wire MIN_VALUE_REG_n_21;
  wire MIN_VALUE_REG_n_22;
  wire MIN_VALUE_REG_n_23;
  wire MIN_VALUE_REG_n_3;
  wire MIN_VALUE_REG_n_4;
  wire MIN_VALUE_REG_n_5;
  wire MIN_VALUE_REG_n_6;
  wire MIN_VALUE_REG_n_7;
  wire MIN_VALUE_REG_n_8;
  wire MIN_VALUE_REG_n_9;
  wire N_COL_REG_n_0;
  wire N_COL_REG_n_1;
  wire N_COL_REG_n_10;
  wire N_COL_REG_n_11;
  wire N_COL_REG_n_12;
  wire N_COL_REG_n_13;
  wire N_COL_REG_n_14;
  wire N_COL_REG_n_15;
  wire N_COL_REG_n_16;
  wire N_COL_REG_n_17;
  wire N_COL_REG_n_18;
  wire N_COL_REG_n_19;
  wire N_COL_REG_n_2;
  wire N_COL_REG_n_20;
  wire N_COL_REG_n_21;
  wire N_COL_REG_n_22;
  wire N_COL_REG_n_23;
  wire N_COL_REG_n_24;
  wire N_COL_REG_n_25;
  wire N_COL_REG_n_26;
  wire N_COL_REG_n_27;
  wire N_COL_REG_n_28;
  wire N_COL_REG_n_29;
  wire N_COL_REG_n_3;
  wire N_COL_REG_n_30;
  wire N_COL_REG_n_31;
  wire N_COL_REG_n_32;
  wire N_COL_REG_n_33;
  wire N_COL_REG_n_34;
  wire N_COL_REG_n_35;
  wire N_COL_REG_n_36;
  wire N_COL_REG_n_37;
  wire N_COL_REG_n_38;
  wire N_COL_REG_n_39;
  wire N_COL_REG_n_4;
  wire N_COL_REG_n_40;
  wire N_COL_REG_n_41;
  wire N_COL_REG_n_42;
  wire N_COL_REG_n_43;
  wire N_COL_REG_n_44;
  wire N_COL_REG_n_45;
  wire N_COL_REG_n_46;
  wire N_COL_REG_n_47;
  wire N_COL_REG_n_48;
  wire N_COL_REG_n_49;
  wire N_COL_REG_n_5;
  wire N_COL_REG_n_50;
  wire N_COL_REG_n_51;
  wire N_COL_REG_n_52;
  wire N_COL_REG_n_53;
  wire N_COL_REG_n_54;
  wire N_COL_REG_n_55;
  wire N_COL_REG_n_6;
  wire N_COL_REG_n_7;
  wire N_COL_REG_n_8;
  wire N_COL_REG_n_9;
  wire PIXEL_COUNTER_n_16;
  wire PIXEL_COUNTER_n_17;
  wire PIXEL_COUNTER_n_18;
  wire PIXEL_COUNTER_n_19;
  wire PIXEL_COUNTER_n_20;
  wire PIXEL_COUNTER_n_21;
  wire [11:0]Q;
  wire SHIFT_MULT_REG_n_0;
  wire SHIFT_MULT_REG_n_1;
  wire SHIFT_MULT_REG_n_10;
  wire SHIFT_MULT_REG_n_11;
  wire SHIFT_MULT_REG_n_12;
  wire SHIFT_MULT_REG_n_13;
  wire SHIFT_MULT_REG_n_14;
  wire SHIFT_MULT_REG_n_15;
  wire SHIFT_MULT_REG_n_16;
  wire SHIFT_MULT_REG_n_17;
  wire SHIFT_MULT_REG_n_18;
  wire SHIFT_MULT_REG_n_19;
  wire SHIFT_MULT_REG_n_2;
  wire SHIFT_MULT_REG_n_20;
  wire SHIFT_MULT_REG_n_21;
  wire SHIFT_MULT_REG_n_22;
  wire SHIFT_MULT_REG_n_23;
  wire SHIFT_MULT_REG_n_24;
  wire SHIFT_MULT_REG_n_25;
  wire SHIFT_MULT_REG_n_26;
  wire SHIFT_MULT_REG_n_27;
  wire SHIFT_MULT_REG_n_28;
  wire SHIFT_MULT_REG_n_29;
  wire SHIFT_MULT_REG_n_3;
  wire SHIFT_MULT_REG_n_30;
  wire SHIFT_MULT_REG_n_31;
  wire SHIFT_MULT_REG_n_32;
  wire SHIFT_MULT_REG_n_33;
  wire SHIFT_MULT_REG_n_34;
  wire SHIFT_MULT_REG_n_35;
  wire SHIFT_MULT_REG_n_36;
  wire SHIFT_MULT_REG_n_37;
  wire SHIFT_MULT_REG_n_38;
  wire SHIFT_MULT_REG_n_39;
  wire SHIFT_MULT_REG_n_4;
  wire SHIFT_MULT_REG_n_40;
  wire SHIFT_MULT_REG_n_41;
  wire SHIFT_MULT_REG_n_42;
  wire SHIFT_MULT_REG_n_43;
  wire SHIFT_MULT_REG_n_44;
  wire SHIFT_MULT_REG_n_45;
  wire SHIFT_MULT_REG_n_5;
  wire SHIFT_MULT_REG_n_6;
  wire SHIFT_MULT_REG_n_7;
  wire SHIFT_MULT_REG_n_8;
  wire SHIFT_MULT_REG_n_9;
  wire SIZE_REG_n_0;
  wire SIZE_REG_n_1;
  wire SIZE_REG_n_19;
  wire SIZE_REG_n_2;
  wire SIZE_REG_n_20;
  wire SIZE_REG_n_21;
  wire SIZE_REG_n_22;
  wire SIZE_REG_n_23;
  wire SIZE_REG_n_24;
  wire SIZE_REG_n_25;
  wire SIZE_REG_n_26;
  wire SIZE_REG_n_27;
  wire SIZE_REG_n_28;
  wire SIZE_REG_n_29;
  wire SIZE_REG_n_3;
  wire SIZE_REG_n_30;
  wire SIZE_REG_n_31;
  wire SIZE_REG_n_32;
  wire SIZE_REG_n_33;
  wire SIZE_REG_n_34;
  wire SIZE_REG_n_35;
  wire SIZE_REG_n_36;
  wire SIZE_REG_n_37;
  wire SIZE_REG_n_38;
  wire SIZE_REG_n_39;
  wire SIZE_REG_n_40;
  wire SIZE_REG_n_41;
  wire SIZE_REG_n_42;
  wire SIZE_REG_n_43;
  wire SIZE_REG_n_44;
  wire SIZE_REG_n_45;
  wire SIZE_REG_n_46;
  wire [0:0]address_sel;
  wire [14:0]data;
  wire [15:0]data_reg;
  wire [7:0]delta_value;
  wire eqOp_carry__0_n_3;
  wire eqOp_carry_n_0;
  wire eqOp_carry_n_1;
  wire eqOp_carry_n_2;
  wire eqOp_carry_n_3;
  wire gtOp;
  wire gtOp_carry_n_1;
  wire gtOp_carry_n_2;
  wire gtOp_carry_n_3;
  wire i___0_carry__0_i_10_n_0;
  wire i___0_carry__0_i_11_n_0;
  wire i___0_carry__0_i_1_n_0;
  wire i___0_carry__0_i_2_n_0;
  wire i___0_carry__0_i_3_n_0;
  wire i___0_carry__0_i_5_n_0;
  wire i___0_carry__0_i_6_n_0;
  wire i___0_carry__0_i_7_n_0;
  wire i___0_carry__0_i_9_n_0;
  wire i___0_carry__1_i_2_n_0;
  wire i___0_carry__1_i_3_n_0;
  wire i___0_carry__1_i_6_n_0;
  wire i___0_carry__1_i_7_n_0;
  wire i___0_carry_i_2_n_0;
  wire i___0_carry_i_7_n_0;
  wire i___33_carry__0_i_3_n_0;
  wire i___33_carry__0_i_7_n_0;
  wire i___33_carry_i_1_n_0;
  wire i___33_carry_i_2_n_0;
  wire i___33_carry_i_4_n_0;
  wire i___33_carry_i_6_n_0;
  wire i___66_carry__0_i_10_n_0;
  wire i___66_carry__0_i_11_n_0;
  wire i___66_carry__0_i_12_n_0;
  wire i___66_carry__0_i_13_n_0;
  wire i___66_carry__0_i_14_n_0;
  wire i___66_carry__0_i_15_n_0;
  wire i___66_carry__0_i_1_n_0;
  wire i___66_carry__0_i_2_n_0;
  wire i___66_carry__0_i_3_n_0;
  wire i___66_carry__0_i_4_n_0;
  wire i___66_carry__0_i_5_n_0;
  wire i___66_carry__0_i_6_n_0;
  wire i___66_carry__0_i_7_n_0;
  wire i___66_carry__0_i_8_n_0;
  wire i___66_carry__0_i_9_n_0;
  wire i___66_carry__1_i_11_n_0;
  wire i___66_carry__1_i_13_n_0;
  wire i___66_carry__1_i_17_n_0;
  wire i___66_carry__1_i_18_n_0;
  wire i___66_carry__1_i_1_n_0;
  wire i___66_carry__1_i_4_n_0;
  wire i___66_carry__1_i_8_n_0;
  wire i___66_carry__1_i_9_n_0;
  wire i___66_carry__2_i_5_n_0;
  wire i___66_carry_i_1_n_0;
  wire i___66_carry_i_2_n_0;
  wire i___66_carry_i_3_n_0;
  wire i___66_carry_i_4_n_0;
  wire i___66_carry_i_5_n_0;
  wire [15:0]i_data_10;
  wire [7:0]i_data_IBUF;
  wire i_start_IBUF;
  wire ltOp;
  wire ltOp_carry_n_1;
  wire ltOp_carry_n_2;
  wire ltOp_carry_n_3;
  wire [15:0]minusOp;
  wire minusOp__0_carry__0_n_0;
  wire minusOp__0_carry__0_n_1;
  wire minusOp__0_carry__0_n_2;
  wire minusOp__0_carry__0_n_3;
  wire minusOp__0_carry__1_n_0;
  wire minusOp__0_carry__1_n_1;
  wire minusOp__0_carry__1_n_2;
  wire minusOp__0_carry__1_n_3;
  wire minusOp__0_carry__2_n_1;
  wire minusOp__0_carry__2_n_2;
  wire minusOp__0_carry__2_n_3;
  wire minusOp__0_carry_n_0;
  wire minusOp__0_carry_n_1;
  wire minusOp__0_carry_n_2;
  wire minusOp__0_carry_n_3;
  wire \minusOp_inferred__0/i__carry__0_n_1 ;
  wire \minusOp_inferred__0/i__carry__0_n_2 ;
  wire \minusOp_inferred__0/i__carry__0_n_3 ;
  wire \minusOp_inferred__0/i__carry_n_0 ;
  wire \minusOp_inferred__0/i__carry_n_1 ;
  wire \minusOp_inferred__0/i__carry_n_2 ;
  wire \minusOp_inferred__0/i__carry_n_3 ;
  wire \minusOp_inferred__1/i__carry__0_n_1 ;
  wire \minusOp_inferred__1/i__carry__0_n_2 ;
  wire \minusOp_inferred__1/i__carry__0_n_3 ;
  wire \minusOp_inferred__1/i__carry_n_0 ;
  wire \minusOp_inferred__1/i__carry_n_1 ;
  wire \minusOp_inferred__1/i__carry_n_2 ;
  wire \minusOp_inferred__1/i__carry_n_3 ;
  wire multOp__0_carry__0_n_0;
  wire multOp__0_carry__0_n_1;
  wire multOp__0_carry__0_n_2;
  wire multOp__0_carry__0_n_3;
  wire multOp__0_carry__0_n_4;
  wire multOp__0_carry__0_n_5;
  wire multOp__0_carry__0_n_6;
  wire multOp__0_carry__0_n_7;
  wire multOp__0_carry__1_n_1;
  wire multOp__0_carry__1_n_3;
  wire multOp__0_carry__1_n_6;
  wire multOp__0_carry__1_n_7;
  wire multOp__0_carry_n_0;
  wire multOp__0_carry_n_1;
  wire multOp__0_carry_n_2;
  wire multOp__0_carry_n_3;
  wire multOp__0_carry_n_4;
  wire multOp__30_carry__0_n_0;
  wire multOp__30_carry__0_n_1;
  wire multOp__30_carry__0_n_2;
  wire multOp__30_carry__0_n_3;
  wire multOp__30_carry__0_n_4;
  wire multOp__30_carry__0_n_5;
  wire multOp__30_carry__0_n_6;
  wire multOp__30_carry__0_n_7;
  wire multOp__30_carry__1_n_1;
  wire multOp__30_carry__1_n_3;
  wire multOp__30_carry__1_n_6;
  wire multOp__30_carry__1_n_7;
  wire multOp__30_carry_n_0;
  wire multOp__30_carry_n_1;
  wire multOp__30_carry_n_2;
  wire multOp__30_carry_n_3;
  wire multOp__30_carry_n_4;
  wire multOp__30_carry_n_5;
  wire multOp__30_carry_n_6;
  wire multOp__30_carry_n_7;
  wire multOp__60_carry__0_n_0;
  wire multOp__60_carry__0_n_1;
  wire multOp__60_carry__0_n_2;
  wire multOp__60_carry__0_n_3;
  wire multOp__60_carry__1_n_0;
  wire multOp__60_carry__1_n_1;
  wire multOp__60_carry__1_n_2;
  wire multOp__60_carry__1_n_3;
  wire multOp__60_carry_i_1_n_0;
  wire multOp__60_carry_i_3_n_0;
  wire multOp__60_carry_i_4_n_0;
  wire multOp__60_carry_i_5_n_0;
  wire multOp__60_carry_n_0;
  wire multOp__60_carry_n_1;
  wire multOp__60_carry_n_2;
  wire multOp__60_carry_n_3;
  wire \multOp_inferred__0/i___0_carry__0_n_0 ;
  wire \multOp_inferred__0/i___0_carry__0_n_1 ;
  wire \multOp_inferred__0/i___0_carry__0_n_2 ;
  wire \multOp_inferred__0/i___0_carry__0_n_3 ;
  wire \multOp_inferred__0/i___0_carry__0_n_4 ;
  wire \multOp_inferred__0/i___0_carry__0_n_5 ;
  wire \multOp_inferred__0/i___0_carry__0_n_6 ;
  wire \multOp_inferred__0/i___0_carry__0_n_7 ;
  wire \multOp_inferred__0/i___0_carry__1_n_0 ;
  wire \multOp_inferred__0/i___0_carry__1_n_2 ;
  wire \multOp_inferred__0/i___0_carry__1_n_3 ;
  wire \multOp_inferred__0/i___0_carry__1_n_5 ;
  wire \multOp_inferred__0/i___0_carry__1_n_6 ;
  wire \multOp_inferred__0/i___0_carry__1_n_7 ;
  wire \multOp_inferred__0/i___0_carry_n_0 ;
  wire \multOp_inferred__0/i___0_carry_n_1 ;
  wire \multOp_inferred__0/i___0_carry_n_2 ;
  wire \multOp_inferred__0/i___0_carry_n_3 ;
  wire \multOp_inferred__0/i___0_carry_n_4 ;
  wire \multOp_inferred__0/i___33_carry__0_n_0 ;
  wire \multOp_inferred__0/i___33_carry__0_n_1 ;
  wire \multOp_inferred__0/i___33_carry__0_n_2 ;
  wire \multOp_inferred__0/i___33_carry__0_n_3 ;
  wire \multOp_inferred__0/i___33_carry__0_n_4 ;
  wire \multOp_inferred__0/i___33_carry__0_n_5 ;
  wire \multOp_inferred__0/i___33_carry__0_n_6 ;
  wire \multOp_inferred__0/i___33_carry__0_n_7 ;
  wire \multOp_inferred__0/i___33_carry__1_n_0 ;
  wire \multOp_inferred__0/i___33_carry__1_n_2 ;
  wire \multOp_inferred__0/i___33_carry__1_n_3 ;
  wire \multOp_inferred__0/i___33_carry__1_n_5 ;
  wire \multOp_inferred__0/i___33_carry__1_n_6 ;
  wire \multOp_inferred__0/i___33_carry__1_n_7 ;
  wire \multOp_inferred__0/i___33_carry_n_0 ;
  wire \multOp_inferred__0/i___33_carry_n_1 ;
  wire \multOp_inferred__0/i___33_carry_n_2 ;
  wire \multOp_inferred__0/i___33_carry_n_3 ;
  wire \multOp_inferred__0/i___33_carry_n_4 ;
  wire \multOp_inferred__0/i___33_carry_n_5 ;
  wire \multOp_inferred__0/i___33_carry_n_6 ;
  wire \multOp_inferred__0/i___33_carry_n_7 ;
  wire \multOp_inferred__0/i___66_carry__0_n_0 ;
  wire \multOp_inferred__0/i___66_carry__0_n_1 ;
  wire \multOp_inferred__0/i___66_carry__0_n_2 ;
  wire \multOp_inferred__0/i___66_carry__0_n_3 ;
  wire \multOp_inferred__0/i___66_carry__1_n_0 ;
  wire \multOp_inferred__0/i___66_carry__1_n_1 ;
  wire \multOp_inferred__0/i___66_carry__1_n_2 ;
  wire \multOp_inferred__0/i___66_carry__1_n_3 ;
  wire \multOp_inferred__0/i___66_carry__2_n_3 ;
  wire \multOp_inferred__0/i___66_carry_n_0 ;
  wire \multOp_inferred__0/i___66_carry_n_1 ;
  wire \multOp_inferred__0/i___66_carry_n_2 ;
  wire \multOp_inferred__0/i___66_carry_n_3 ;
  wire [15:0]o_address_OBUF;
  wire [7:0]o_data_OBUF;
  wire \o_data_OBUF[7]_inst_i_2_n_0 ;
  wire pixel_counter_end;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire [15:0]size_prod;
  wire [16:0]temp_value;
  wire [3:0]NLW_eqOp_carry_O_UNCONNECTED;
  wire [3:2]NLW_eqOp_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_eqOp_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_gtOp_carry_O_UNCONNECTED;
  wire [3:0]NLW_ltOp_carry_O_UNCONNECTED;
  wire [3:3]NLW_minusOp__0_carry__2_CO_UNCONNECTED;
  wire [3:3]\NLW_minusOp_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_minusOp_inferred__1/i__carry__0_CO_UNCONNECTED ;
  wire [3:1]NLW_multOp__0_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_multOp__0_carry__1_O_UNCONNECTED;
  wire [3:1]NLW_multOp__30_carry__1_CO_UNCONNECTED;
  wire [3:2]NLW_multOp__30_carry__1_O_UNCONNECTED;
  wire [0:0]NLW_multOp__60_carry_O_UNCONNECTED;
  wire [3:0]NLW_multOp__60_carry__2_CO_UNCONNECTED;
  wire [3:1]NLW_multOp__60_carry__2_O_UNCONNECTED;
  wire [2:2]\NLW_multOp_inferred__0/i___0_carry__1_CO_UNCONNECTED ;
  wire [3:3]\NLW_multOp_inferred__0/i___0_carry__1_O_UNCONNECTED ;
  wire [2:2]\NLW_multOp_inferred__0/i___33_carry__1_CO_UNCONNECTED ;
  wire [3:3]\NLW_multOp_inferred__0/i___33_carry__1_O_UNCONNECTED ;
  wire [0:0]\NLW_multOp_inferred__0/i___66_carry_O_UNCONNECTED ;
  wire [3:1]\NLW_multOp_inferred__0/i___66_carry__2_CO_UNCONNECTED ;
  wire [3:2]\NLW_multOp_inferred__0/i___66_carry__2_O_UNCONNECTED ;
  wire [3:3]NLW_plusOp_carry__2_CO_UNCONNECTED;

  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_cur_state[10]_i_1 
       (.I0(Q[9]),
        .I1(pixel_counter_end),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_cur_state[11]_i_1 
       (.I0(Q[1]),
        .I1(Q[10]),
        .I2(Q[2]),
        .I3(Q[9]),
        .I4(\FSM_onehot_cur_state[11]_i_3_n_0 ),
        .I5(\FSM_onehot_cur_state_reg[0] ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    \FSM_onehot_cur_state[11]_i_2 
       (.I0(Q[8]),
        .I1(pixel_counter_end),
        .I2(Q[9]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFFFF8F8F8FFF8)) 
    \FSM_onehot_cur_state[11]_i_3 
       (.I0(Q[6]),
        .I1(pixel_counter_end),
        .I2(Q[3]),
        .I3(Q[11]),
        .I4(i_start_IBUF),
        .I5(Q[0]),
        .O(\FSM_onehot_cur_state[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_cur_state[6]_i_1 
       (.I0(Q[5]),
        .I1(pixel_counter_end),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_cur_state[7]_i_1 
       (.I0(Q[6]),
        .I1(pixel_counter_end),
        .I2(Q[5]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_cur_state[9]_i_1 
       (.I0(Q[10]),
        .I1(pixel_counter_end),
        .I2(Q[8]),
        .O(D[2]));
  reg_8_bit MAX_VALUE_REG
       (.CLK(CLK),
        .CO(gtOp),
        .D({MAX_VALUE_REG_n_23,MAX_VALUE_REG_n_24,MAX_VALUE_REG_n_25}),
        .DI({MAX_VALUE_REG_n_15,MAX_VALUE_REG_n_16,MAX_VALUE_REG_n_17,MAX_VALUE_REG_n_18}),
        .Q({MAX_VALUE_REG_n_3,MAX_VALUE_REG_n_4,MAX_VALUE_REG_n_5,MAX_VALUE_REG_n_6,MAX_VALUE_REG_n_7,MAX_VALUE_REG_n_8,MAX_VALUE_REG_n_9,MAX_VALUE_REG_n_10}),
        .S({MAX_VALUE_REG_n_0,MAX_VALUE_REG_n_1,MAX_VALUE_REG_n_2}),
        .\data_reg[0]_0 ({Q[6],Q[0]}),
        .\data_reg[2]_0 (SHIFT_MULT_REG_n_30),
        .\data_reg[3]_0 ({MAX_VALUE_REG_n_11,MAX_VALUE_REG_n_12,MAX_VALUE_REG_n_13,MAX_VALUE_REG_n_14}),
        .\data_reg[3]_1 (SHIFT_MULT_REG_n_29),
        .\data_reg[6]_0 (MAX_VALUE_REG_n_26),
        .\data_reg[7]_0 ({MAX_VALUE_REG_n_19,MAX_VALUE_REG_n_20,MAX_VALUE_REG_n_21,MAX_VALUE_REG_n_22}),
        .delta_value({delta_value[7:4],delta_value[1:0]}),
        .i_data_IBUF(i_data_IBUF),
        .\minusOp_inferred__0/i__carry__0 ({MIN_VALUE_REG_n_5,MIN_VALUE_REG_n_6,MIN_VALUE_REG_n_7,MIN_VALUE_REG_n_8,MIN_VALUE_REG_n_9,MIN_VALUE_REG_n_10,MIN_VALUE_REG_n_11}));
  reg_8_bit_h MIN_VALUE_REG
       (.CLK(CLK),
        .CO(ltOp),
        .DI({MIN_VALUE_REG_n_16,MIN_VALUE_REG_n_17,MIN_VALUE_REG_n_18,MIN_VALUE_REG_n_19}),
        .Q(MAX_VALUE_REG_n_3),
        .S(MIN_VALUE_REG_n_0),
        .\data_reg[0]_0 ({Q[6],Q[0]}),
        .\data_reg[3]_0 ({MIN_VALUE_REG_n_12,MIN_VALUE_REG_n_13,MIN_VALUE_REG_n_14,MIN_VALUE_REG_n_15}),
        .\data_reg[6]_0 ({MIN_VALUE_REG_n_5,MIN_VALUE_REG_n_6,MIN_VALUE_REG_n_7,MIN_VALUE_REG_n_8,MIN_VALUE_REG_n_9,MIN_VALUE_REG_n_10,MIN_VALUE_REG_n_11}),
        .\data_reg[7]_0 ({MIN_VALUE_REG_n_1,MIN_VALUE_REG_n_2,MIN_VALUE_REG_n_3,MIN_VALUE_REG_n_4}),
        .\data_reg[7]_1 ({MIN_VALUE_REG_n_20,MIN_VALUE_REG_n_21,MIN_VALUE_REG_n_22,MIN_VALUE_REG_n_23}),
        .i_data_IBUF(i_data_IBUF));
  reg_8_bit_0 N_COL_REG
       (.CLK(CLK),
        .CO(multOp__0_carry__1_n_1),
        .DI({N_COL_REG_n_0,N_COL_REG_n_1,N_COL_REG_n_2}),
        .O(multOp__30_carry_n_4),
        .Q({Q[2],Q[0]}),
        .S({N_COL_REG_n_12,N_COL_REG_n_13,N_COL_REG_n_14,N_COL_REG_n_15}),
        .\data_reg[0]_0 (N_COL_REG_n_47),
        .\data_reg[10] ({multOp__0_carry__0_n_4,multOp__0_carry__0_n_5}),
        .\data_reg[14] ({multOp__30_carry__1_n_6,multOp__30_carry__1_n_7}),
        .\data_reg[14]_0 (multOp__30_carry__1_n_1),
        .\data_reg[1]_0 ({N_COL_REG_n_22,N_COL_REG_n_23,N_COL_REG_n_24,N_COL_REG_n_25}),
        .\data_reg[3]_0 ({N_COL_REG_n_3,N_COL_REG_n_4,N_COL_REG_n_5}),
        .\data_reg[3]_1 ({N_COL_REG_n_26,N_COL_REG_n_27,N_COL_REG_n_28,N_COL_REG_n_29}),
        .\data_reg[4]_0 ({N_COL_REG_n_48,N_COL_REG_n_49,N_COL_REG_n_50,N_COL_REG_n_51}),
        .\data_reg[5]_0 ({N_COL_REG_n_30,N_COL_REG_n_31,N_COL_REG_n_32,N_COL_REG_n_33}),
        .\data_reg[6]_0 ({N_COL_REG_n_6,N_COL_REG_n_7,N_COL_REG_n_8,N_COL_REG_n_9}),
        .\data_reg[6]_1 ({N_COL_REG_n_16,N_COL_REG_n_17,N_COL_REG_n_18,N_COL_REG_n_19}),
        .\data_reg[6]_2 ({N_COL_REG_n_35,N_COL_REG_n_36,N_COL_REG_n_37,N_COL_REG_n_38}),
        .\data_reg[6]_3 ({N_COL_REG_n_39,N_COL_REG_n_40}),
        .\data_reg[6]_4 ({N_COL_REG_n_41,N_COL_REG_n_42,N_COL_REG_n_43,N_COL_REG_n_44}),
        .\data_reg[6]_5 ({N_COL_REG_n_45,N_COL_REG_n_46}),
        .\data_reg[7]_0 ({N_COL_REG_n_10,N_COL_REG_n_11}),
        .\data_reg[7]_1 ({N_COL_REG_n_20,N_COL_REG_n_21}),
        .\data_reg[7]_2 (N_COL_REG_n_34),
        .\data_reg[7]_3 ({N_COL_REG_n_52,N_COL_REG_n_53,N_COL_REG_n_54,N_COL_REG_n_55}),
        .i_data_IBUF(i_data_IBUF),
        .multOp__60_carry__0_i_5_0({multOp__0_carry__1_n_6,multOp__0_carry__1_n_7}),
        .multOp__60_carry__1_i_8_0({multOp__30_carry__0_n_4,multOp__30_carry__0_n_5,multOp__30_carry__0_n_6,multOp__30_carry__0_n_7}));
  counter_16_bit PIXEL_COUNTER
       (.CLK(CLK),
        .Q({Q[10],Q[8:5],Q[0]}),
        .S({PIXEL_COUNTER_n_16,PIXEL_COUNTER_n_17,PIXEL_COUNTER_n_18,PIXEL_COUNTER_n_19}),
        .data_reg(data_reg),
        .\data_reg[12]_0 (PIXEL_COUNTER_n_20),
        .\data_reg[1]_0 (PIXEL_COUNTER_n_21),
        .eqOp_carry__0(data));
  reg_9_bit SHIFT_MULT_REG
       (.B(B),
        .CLK(CLK),
        .CO(\multOp_inferred__0/i___0_carry__1_n_0 ),
        .D({MAX_VALUE_REG_n_23,MAX_VALUE_REG_n_24,MAX_VALUE_REG_n_25}),
        .DI(SHIFT_MULT_REG_n_0),
        .O({\multOp_inferred__0/i___33_carry__1_n_5 ,\multOp_inferred__0/i___33_carry__1_n_6 ,\multOp_inferred__0/i___33_carry__1_n_7 }),
        .Q({SHIFT_MULT_REG_n_1,SHIFT_MULT_REG_n_2,SHIFT_MULT_REG_n_3,SHIFT_MULT_REG_n_4,SHIFT_MULT_REG_n_5,SHIFT_MULT_REG_n_6,SHIFT_MULT_REG_n_7,SHIFT_MULT_REG_n_8,SHIFT_MULT_REG_n_9}),
        .S({SHIFT_MULT_REG_n_20,SHIFT_MULT_REG_n_21}),
        .\data_reg[0]_0 (SHIFT_MULT_REG_n_22),
        .\data_reg[0]_1 ({Q[7],Q[0]}),
        .\data_reg[1]_0 ({SHIFT_MULT_REG_n_31,SHIFT_MULT_REG_n_32,SHIFT_MULT_REG_n_33}),
        .\data_reg[2]_0 (SHIFT_MULT_REG_n_34),
        .\data_reg[3]_0 ({SHIFT_MULT_REG_n_11,SHIFT_MULT_REG_n_12}),
        .\data_reg[3]_1 (SHIFT_MULT_REG_n_29),
        .\data_reg[3]_2 (SHIFT_MULT_REG_n_30),
        .\data_reg[4]_0 (SHIFT_MULT_REG_n_25),
        .\data_reg[5]_0 (SHIFT_MULT_REG_n_19),
        .\data_reg[5]_1 (MAX_VALUE_REG_n_26),
        .\data_reg[6]_0 ({SHIFT_MULT_REG_n_13,SHIFT_MULT_REG_n_14,SHIFT_MULT_REG_n_15}),
        .\data_reg[6]_1 ({SHIFT_MULT_REG_n_23,SHIFT_MULT_REG_n_24}),
        .\data_reg[6]_2 (SHIFT_MULT_REG_n_26),
        .\data_reg[6]_3 ({SHIFT_MULT_REG_n_37,SHIFT_MULT_REG_n_38,SHIFT_MULT_REG_n_39}),
        .\data_reg[7]_0 ({SHIFT_MULT_REG_n_35,SHIFT_MULT_REG_n_36}),
        .\data_reg[7]_1 ({SHIFT_MULT_REG_n_40,SHIFT_MULT_REG_n_41,SHIFT_MULT_REG_n_42}),
        .\data_reg[7]_2 ({SHIFT_MULT_REG_n_43,SHIFT_MULT_REG_n_44,SHIFT_MULT_REG_n_45}),
        .\data_reg[8]_0 (SHIFT_MULT_REG_n_10),
        .\data_reg[8]_1 ({SHIFT_MULT_REG_n_16,SHIFT_MULT_REG_n_17,SHIFT_MULT_REG_n_18}),
        .\data_reg[8]_2 ({SHIFT_MULT_REG_n_27,SHIFT_MULT_REG_n_28}),
        .delta_value(delta_value),
        .i___66_carry__2_i_1_0(\multOp_inferred__0/i___33_carry__1_n_0 ),
        .\multOp_inferred__0/i___66_carry__1 (i___66_carry__1_i_11_n_0),
        .\multOp_inferred__0/i___66_carry__1_0 (i___66_carry__1_i_18_n_0),
        .\multOp_inferred__0/i___66_carry__1_1 (i___66_carry__1_i_17_n_0),
        .\multOp_inferred__0/i___66_carry__1_2 (i___66_carry__1_i_13_n_0),
        .\multOp_inferred__0/i___66_carry__2 (i___66_carry__2_i_5_n_0));
  reg_16_bit SIZE_REG
       (.CLK(CLK),
        .D({size_prod[15:4],size_prod[2:0]}),
        .DI({SIZE_REG_n_0,SIZE_REG_n_1,SIZE_REG_n_2,SIZE_REG_n_3}),
        .O(multOp__0_carry_n_4),
        .Q(data),
        .S({SIZE_REG_n_30,SIZE_REG_n_31,SIZE_REG_n_32,SIZE_REG_n_33}),
        .data_reg(data_reg[15]),
        .\data_reg[0]_0 ({Q[4],Q[0]}),
        .\data_reg[10]_0 ({SIZE_REG_n_23,SIZE_REG_n_24,SIZE_REG_n_25,SIZE_REG_n_26}),
        .\data_reg[10]_1 ({SIZE_REG_n_38,SIZE_REG_n_39,SIZE_REG_n_40,SIZE_REG_n_41}),
        .\data_reg[13]_0 ({SIZE_REG_n_27,SIZE_REG_n_28,SIZE_REG_n_29}),
        .\data_reg[14]_0 ({SIZE_REG_n_42,SIZE_REG_n_43,SIZE_REG_n_44,SIZE_REG_n_45}),
        .\data_reg[15]_0 (SIZE_REG_n_46),
        .\data_reg[3]_0 (multOp__30_carry_n_7),
        .\data_reg[6]_0 ({SIZE_REG_n_19,SIZE_REG_n_20,SIZE_REG_n_21,SIZE_REG_n_22}),
        .\data_reg[6]_1 ({SIZE_REG_n_34,SIZE_REG_n_35,SIZE_REG_n_36,SIZE_REG_n_37}),
        .i_data_10(i_data_10));
  CARRY4 eqOp_carry
       (.CI(1'b0),
        .CO({eqOp_carry_n_0,eqOp_carry_n_1,eqOp_carry_n_2,eqOp_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_eqOp_carry_O_UNCONNECTED[3:0]),
        .S({PIXEL_COUNTER_n_16,PIXEL_COUNTER_n_17,PIXEL_COUNTER_n_18,PIXEL_COUNTER_n_19}));
  CARRY4 eqOp_carry__0
       (.CI(eqOp_carry_n_0),
        .CO({NLW_eqOp_carry__0_CO_UNCONNECTED[3:2],pixel_counter_end,eqOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_eqOp_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,SIZE_REG_n_46,PIXEL_COUNTER_n_20}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 gtOp_carry
       (.CI(1'b0),
        .CO({gtOp,gtOp_carry_n_1,gtOp_carry_n_2,gtOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({MAX_VALUE_REG_n_15,MAX_VALUE_REG_n_16,MAX_VALUE_REG_n_17,MAX_VALUE_REG_n_18}),
        .O(NLW_gtOp_carry_O_UNCONNECTED[3:0]),
        .S({MAX_VALUE_REG_n_19,MAX_VALUE_REG_n_20,MAX_VALUE_REG_n_21,MAX_VALUE_REG_n_22}));
  LUT6 #(
    .INIT(64'hF880808088000000)) 
    i___0_carry__0_i_1
       (.I0(B[0]),
        .I1(SHIFT_MULT_REG_n_3),
        .I2(SHIFT_MULT_REG_n_4),
        .I3(B[2]),
        .I4(SHIFT_MULT_REG_n_5),
        .I5(B[1]),
        .O(i___0_carry__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    i___0_carry__0_i_10
       (.I0(B[0]),
        .I1(SHIFT_MULT_REG_n_3),
        .O(i___0_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    i___0_carry__0_i_11
       (.I0(B[0]),
        .I1(SHIFT_MULT_REG_n_4),
        .O(i___0_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'hF880808088000000)) 
    i___0_carry__0_i_2
       (.I0(B[0]),
        .I1(SHIFT_MULT_REG_n_4),
        .I2(SHIFT_MULT_REG_n_5),
        .I3(B[2]),
        .I4(SHIFT_MULT_REG_n_6),
        .I5(B[1]),
        .O(i___0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    i___0_carry__0_i_3
       (.I0(B[1]),
        .I1(SHIFT_MULT_REG_n_6),
        .I2(SHIFT_MULT_REG_n_7),
        .I3(B[2]),
        .I4(B[0]),
        .I5(SHIFT_MULT_REG_n_5),
        .O(i___0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    i___0_carry__0_i_5
       (.I0(i___0_carry__0_i_1_n_0),
        .I1(SHIFT_MULT_REG_n_3),
        .I2(B[1]),
        .I3(SHIFT_MULT_REG_n_4),
        .I4(B[2]),
        .I5(i___0_carry__0_i_9_n_0),
        .O(i___0_carry__0_i_5_n_0));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    i___0_carry__0_i_6
       (.I0(i___0_carry__0_i_2_n_0),
        .I1(SHIFT_MULT_REG_n_4),
        .I2(B[1]),
        .I3(SHIFT_MULT_REG_n_5),
        .I4(B[2]),
        .I5(i___0_carry__0_i_10_n_0),
        .O(i___0_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    i___0_carry__0_i_7
       (.I0(i___0_carry__0_i_3_n_0),
        .I1(SHIFT_MULT_REG_n_5),
        .I2(B[1]),
        .I3(SHIFT_MULT_REG_n_6),
        .I4(B[2]),
        .I5(i___0_carry__0_i_11_n_0),
        .O(i___0_carry__0_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    i___0_carry__0_i_9
       (.I0(B[0]),
        .I1(SHIFT_MULT_REG_n_2),
        .O(i___0_carry__0_i_9_n_0));
  LUT6 #(
    .INIT(64'hF880808088000000)) 
    i___0_carry__1_i_2
       (.I0(B[0]),
        .I1(SHIFT_MULT_REG_n_1),
        .I2(SHIFT_MULT_REG_n_2),
        .I3(B[2]),
        .I4(SHIFT_MULT_REG_n_3),
        .I5(B[1]),
        .O(i___0_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'hF880808088000000)) 
    i___0_carry__1_i_3
       (.I0(B[0]),
        .I1(SHIFT_MULT_REG_n_2),
        .I2(SHIFT_MULT_REG_n_3),
        .I3(B[2]),
        .I4(SHIFT_MULT_REG_n_4),
        .I5(B[1]),
        .O(i___0_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    i___0_carry__1_i_6
       (.I0(i___0_carry__1_i_3_n_0),
        .I1(SHIFT_MULT_REG_n_2),
        .I2(B[1]),
        .I3(SHIFT_MULT_REG_n_3),
        .I4(B[2]),
        .I5(i___0_carry__1_i_7_n_0),
        .O(i___0_carry__1_i_6_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i___0_carry__1_i_7
       (.I0(B[0]),
        .I1(SHIFT_MULT_REG_n_1),
        .O(i___0_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h7888)) 
    i___0_carry_i_2
       (.I0(B[1]),
        .I1(SHIFT_MULT_REG_n_8),
        .I2(B[2]),
        .I3(SHIFT_MULT_REG_n_9),
        .O(i___0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i___0_carry_i_7
       (.I0(B[0]),
        .I1(SHIFT_MULT_REG_n_9),
        .O(i___0_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    i___33_carry__0_i_3
       (.I0(B[4]),
        .I1(SHIFT_MULT_REG_n_6),
        .I2(SHIFT_MULT_REG_n_7),
        .I3(B[5]),
        .I4(SHIFT_MULT_REG_n_5),
        .I5(B[3]),
        .O(i___33_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    i___33_carry__0_i_7
       (.I0(i___33_carry__0_i_3_n_0),
        .I1(SHIFT_MULT_REG_n_5),
        .I2(B[4]),
        .I3(SHIFT_MULT_REG_n_6),
        .I4(B[5]),
        .I5(SHIFT_MULT_REG_n_19),
        .O(i___33_carry__0_i_7_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    i___33_carry_i_1
       (.I0(B[3]),
        .I1(SHIFT_MULT_REG_n_6),
        .I2(B[5]),
        .I3(SHIFT_MULT_REG_n_8),
        .I4(B[4]),
        .I5(SHIFT_MULT_REG_n_7),
        .O(i___33_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h7888)) 
    i___33_carry_i_2
       (.I0(B[4]),
        .I1(SHIFT_MULT_REG_n_8),
        .I2(B[5]),
        .I3(SHIFT_MULT_REG_n_9),
        .O(i___33_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    i___33_carry_i_4
       (.I0(i___33_carry_i_1_n_0),
        .I1(SHIFT_MULT_REG_n_8),
        .I2(B[5]),
        .I3(SHIFT_MULT_REG_n_9),
        .I4(B[4]),
        .O(i___33_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h7888)) 
    i___33_carry_i_6
       (.I0(B[3]),
        .I1(SHIFT_MULT_REG_n_8),
        .I2(B[4]),
        .I3(SHIFT_MULT_REG_n_9),
        .O(i___33_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h7111)) 
    i___66_carry__0_i_1
       (.I0(i___66_carry__0_i_9_n_0),
        .I1(i___66_carry__0_i_10_n_0),
        .I2(SHIFT_MULT_REG_n_6),
        .I3(B[6]),
        .O(i___66_carry__0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    i___66_carry__0_i_10
       (.I0(B[7]),
        .I1(SHIFT_MULT_REG_n_7),
        .I2(\multOp_inferred__0/i___0_carry__1_n_6 ),
        .I3(\multOp_inferred__0/i___33_carry__0_n_5 ),
        .O(i___66_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    i___66_carry__0_i_11
       (.I0(B[7]),
        .I1(SHIFT_MULT_REG_n_8),
        .I2(\multOp_inferred__0/i___0_carry__1_n_7 ),
        .I3(\multOp_inferred__0/i___33_carry__0_n_6 ),
        .O(i___66_carry__0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h077F)) 
    i___66_carry__0_i_12
       (.I0(SHIFT_MULT_REG_n_7),
        .I1(B[7]),
        .I2(\multOp_inferred__0/i___33_carry__0_n_5 ),
        .I3(\multOp_inferred__0/i___0_carry__1_n_6 ),
        .O(i___66_carry__0_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    i___66_carry__0_i_13
       (.I0(B[7]),
        .I1(SHIFT_MULT_REG_n_6),
        .I2(\multOp_inferred__0/i___0_carry__1_n_5 ),
        .I3(\multOp_inferred__0/i___33_carry__0_n_4 ),
        .O(i___66_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'h7887877887788778)) 
    i___66_carry__0_i_14
       (.I0(B[7]),
        .I1(SHIFT_MULT_REG_n_8),
        .I2(\multOp_inferred__0/i___0_carry__1_n_7 ),
        .I3(\multOp_inferred__0/i___33_carry__0_n_6 ),
        .I4(SHIFT_MULT_REG_n_7),
        .I5(B[6]),
        .O(i___66_carry__0_i_14_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    i___66_carry__0_i_15
       (.I0(B[6]),
        .I1(SHIFT_MULT_REG_n_8),
        .I2(\multOp_inferred__0/i___33_carry_n_4 ),
        .I3(\multOp_inferred__0/i___0_carry__0_n_5 ),
        .O(i___66_carry__0_i_15_n_0));
  LUT6 #(
    .INIT(64'hFF80000080000000)) 
    i___66_carry__0_i_2
       (.I0(SHIFT_MULT_REG_n_8),
        .I1(\multOp_inferred__0/i___33_carry_n_4 ),
        .I2(\multOp_inferred__0/i___0_carry__0_n_5 ),
        .I3(SHIFT_MULT_REG_n_7),
        .I4(B[6]),
        .I5(i___66_carry__0_i_11_n_0),
        .O(i___66_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h80FF7FFF7F008000)) 
    i___66_carry__0_i_3
       (.I0(\multOp_inferred__0/i___0_carry__0_n_5 ),
        .I1(\multOp_inferred__0/i___33_carry_n_4 ),
        .I2(SHIFT_MULT_REG_n_8),
        .I3(B[6]),
        .I4(SHIFT_MULT_REG_n_7),
        .I5(i___66_carry__0_i_11_n_0),
        .O(i___66_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    i___66_carry__0_i_4
       (.I0(B[7]),
        .I1(SHIFT_MULT_REG_n_9),
        .I2(\multOp_inferred__0/i___0_carry__0_n_4 ),
        .I3(\multOp_inferred__0/i___33_carry__0_n_7 ),
        .O(i___66_carry__0_i_4_n_0));
  LUT5 #(
    .INIT(32'h69999666)) 
    i___66_carry__0_i_5
       (.I0(i___66_carry__0_i_12_n_0),
        .I1(i___66_carry__0_i_13_n_0),
        .I2(SHIFT_MULT_REG_n_5),
        .I3(B[6]),
        .I4(i___66_carry__0_i_1_n_0),
        .O(i___66_carry__0_i_5_n_0));
  LUT5 #(
    .INIT(32'h69999666)) 
    i___66_carry__0_i_6
       (.I0(i___66_carry__0_i_9_n_0),
        .I1(i___66_carry__0_i_10_n_0),
        .I2(SHIFT_MULT_REG_n_6),
        .I3(B[6]),
        .I4(i___66_carry__0_i_2_n_0),
        .O(i___66_carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'h9996966696669666)) 
    i___66_carry__0_i_7
       (.I0(i___66_carry__0_i_14_n_0),
        .I1(i___66_carry__0_i_15_n_0),
        .I2(\multOp_inferred__0/i___33_carry__0_n_7 ),
        .I3(\multOp_inferred__0/i___0_carry__0_n_4 ),
        .I4(B[7]),
        .I5(SHIFT_MULT_REG_n_9),
        .O(i___66_carry__0_i_7_n_0));
  LUT5 #(
    .INIT(32'h956A6A6A)) 
    i___66_carry__0_i_8
       (.I0(i___66_carry__0_i_4_n_0),
        .I1(\multOp_inferred__0/i___0_carry__0_n_5 ),
        .I2(\multOp_inferred__0/i___33_carry_n_4 ),
        .I3(SHIFT_MULT_REG_n_8),
        .I4(B[6]),
        .O(i___66_carry__0_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h077F)) 
    i___66_carry__0_i_9
       (.I0(SHIFT_MULT_REG_n_8),
        .I1(B[7]),
        .I2(\multOp_inferred__0/i___33_carry__0_n_6 ),
        .I3(\multOp_inferred__0/i___0_carry__1_n_7 ),
        .O(i___66_carry__0_i_9_n_0));
  LUT6 #(
    .INIT(64'hFF80808080000000)) 
    i___66_carry__1_i_1
       (.I0(B[7]),
        .I1(SHIFT_MULT_REG_n_4),
        .I2(\multOp_inferred__0/i___33_carry__1_n_6 ),
        .I3(B[6]),
        .I4(SHIFT_MULT_REG_n_2),
        .I5(i___66_carry__1_i_9_n_0),
        .O(i___66_carry__1_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h077F)) 
    i___66_carry__1_i_11
       (.I0(SHIFT_MULT_REG_n_6),
        .I1(B[7]),
        .I2(\multOp_inferred__0/i___33_carry__0_n_4 ),
        .I3(\multOp_inferred__0/i___0_carry__1_n_5 ),
        .O(i___66_carry__1_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    i___66_carry__1_i_13
       (.I0(B[7]),
        .I1(SHIFT_MULT_REG_n_4),
        .I2(\multOp_inferred__0/i___33_carry__1_n_6 ),
        .O(i___66_carry__1_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h6A959595)) 
    i___66_carry__1_i_17
       (.I0(\multOp_inferred__0/i___33_carry__1_n_5 ),
        .I1(B[7]),
        .I2(SHIFT_MULT_REG_n_3),
        .I3(SHIFT_MULT_REG_n_2),
        .I4(B[6]),
        .O(i___66_carry__1_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h95)) 
    i___66_carry__1_i_18
       (.I0(\multOp_inferred__0/i___33_carry__1_n_6 ),
        .I1(B[7]),
        .I2(SHIFT_MULT_REG_n_4),
        .O(i___66_carry__1_i_18_n_0));
  LUT4 #(
    .INIT(16'h7111)) 
    i___66_carry__1_i_4
       (.I0(i___66_carry__0_i_12_n_0),
        .I1(i___66_carry__0_i_13_n_0),
        .I2(SHIFT_MULT_REG_n_5),
        .I3(B[6]),
        .O(i___66_carry__1_i_4_n_0));
  LUT5 #(
    .INIT(32'h69969696)) 
    i___66_carry__1_i_8
       (.I0(i___66_carry__1_i_4_n_0),
        .I1(i___66_carry__1_i_11_n_0),
        .I2(SHIFT_MULT_REG_n_25),
        .I3(SHIFT_MULT_REG_n_4),
        .I4(B[6]),
        .O(i___66_carry__1_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    i___66_carry__1_i_9
       (.I0(\multOp_inferred__0/i___33_carry__1_n_5 ),
        .I1(B[7]),
        .I2(SHIFT_MULT_REG_n_3),
        .O(i___66_carry__1_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    i___66_carry__2_i_5
       (.I0(\multOp_inferred__0/i___33_carry__1_n_5 ),
        .I1(B[7]),
        .I2(SHIFT_MULT_REG_n_3),
        .O(i___66_carry__2_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___66_carry_i_1
       (.I0(\multOp_inferred__0/i___0_carry__0_n_5 ),
        .I1(\multOp_inferred__0/i___33_carry_n_4 ),
        .O(i___66_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9666)) 
    i___66_carry_i_2
       (.I0(\multOp_inferred__0/i___33_carry_n_4 ),
        .I1(\multOp_inferred__0/i___0_carry__0_n_5 ),
        .I2(B[6]),
        .I3(SHIFT_MULT_REG_n_9),
        .O(i___66_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___66_carry_i_3
       (.I0(\multOp_inferred__0/i___0_carry__0_n_6 ),
        .I1(\multOp_inferred__0/i___33_carry_n_5 ),
        .O(i___66_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___66_carry_i_4
       (.I0(\multOp_inferred__0/i___0_carry__0_n_7 ),
        .I1(\multOp_inferred__0/i___33_carry_n_6 ),
        .O(i___66_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i___66_carry_i_5
       (.I0(\multOp_inferred__0/i___0_carry_n_4 ),
        .I1(\multOp_inferred__0/i___33_carry_n_7 ),
        .O(i___66_carry_i_5_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 ltOp_carry
       (.CI(1'b0),
        .CO({ltOp,ltOp_carry_n_1,ltOp_carry_n_2,ltOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({MIN_VALUE_REG_n_16,MIN_VALUE_REG_n_17,MIN_VALUE_REG_n_18,MIN_VALUE_REG_n_19}),
        .O(NLW_ltOp_carry_O_UNCONNECTED[3:0]),
        .S({MIN_VALUE_REG_n_20,MIN_VALUE_REG_n_21,MIN_VALUE_REG_n_22,MIN_VALUE_REG_n_23}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp__0_carry
       (.CI(1'b0),
        .CO({minusOp__0_carry_n_0,minusOp__0_carry_n_1,minusOp__0_carry_n_2,minusOp__0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({SIZE_REG_n_0,SIZE_REG_n_1,SIZE_REG_n_2,SIZE_REG_n_3}),
        .O(minusOp[3:0]),
        .S({SIZE_REG_n_30,SIZE_REG_n_31,SIZE_REG_n_32,SIZE_REG_n_33}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp__0_carry__0
       (.CI(minusOp__0_carry_n_0),
        .CO({minusOp__0_carry__0_n_0,minusOp__0_carry__0_n_1,minusOp__0_carry__0_n_2,minusOp__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({SIZE_REG_n_19,SIZE_REG_n_20,SIZE_REG_n_21,SIZE_REG_n_22}),
        .O(minusOp[7:4]),
        .S({SIZE_REG_n_34,SIZE_REG_n_35,SIZE_REG_n_36,SIZE_REG_n_37}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp__0_carry__1
       (.CI(minusOp__0_carry__0_n_0),
        .CO({minusOp__0_carry__1_n_0,minusOp__0_carry__1_n_1,minusOp__0_carry__1_n_2,minusOp__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({SIZE_REG_n_23,SIZE_REG_n_24,SIZE_REG_n_25,SIZE_REG_n_26}),
        .O(minusOp[11:8]),
        .S({SIZE_REG_n_38,SIZE_REG_n_39,SIZE_REG_n_40,SIZE_REG_n_41}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 minusOp__0_carry__2
       (.CI(minusOp__0_carry__1_n_0),
        .CO({NLW_minusOp__0_carry__2_CO_UNCONNECTED[3],minusOp__0_carry__2_n_1,minusOp__0_carry__2_n_2,minusOp__0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,SIZE_REG_n_27,SIZE_REG_n_28,SIZE_REG_n_29}),
        .O(minusOp[15:12]),
        .S({SIZE_REG_n_42,SIZE_REG_n_43,SIZE_REG_n_44,SIZE_REG_n_45}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\minusOp_inferred__0/i__carry_n_0 ,\minusOp_inferred__0/i__carry_n_1 ,\minusOp_inferred__0/i__carry_n_2 ,\minusOp_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({MAX_VALUE_REG_n_7,MAX_VALUE_REG_n_8,MAX_VALUE_REG_n_9,MAX_VALUE_REG_n_10}),
        .O(delta_value[3:0]),
        .S({MAX_VALUE_REG_n_11,MAX_VALUE_REG_n_12,MAX_VALUE_REG_n_13,MAX_VALUE_REG_n_14}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__0/i__carry__0 
       (.CI(\minusOp_inferred__0/i__carry_n_0 ),
        .CO({\NLW_minusOp_inferred__0/i__carry__0_CO_UNCONNECTED [3],\minusOp_inferred__0/i__carry__0_n_1 ,\minusOp_inferred__0/i__carry__0_n_2 ,\minusOp_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,MAX_VALUE_REG_n_4,MAX_VALUE_REG_n_5,MAX_VALUE_REG_n_6}),
        .O(delta_value[7:4]),
        .S({MIN_VALUE_REG_n_0,MAX_VALUE_REG_n_0,MAX_VALUE_REG_n_1,MAX_VALUE_REG_n_2}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\minusOp_inferred__1/i__carry_n_0 ,\minusOp_inferred__1/i__carry_n_1 ,\minusOp_inferred__1/i__carry_n_2 ,\minusOp_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(i_data_IBUF[3:0]),
        .O(B[3:0]),
        .S({MIN_VALUE_REG_n_12,MIN_VALUE_REG_n_13,MIN_VALUE_REG_n_14,MIN_VALUE_REG_n_15}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \minusOp_inferred__1/i__carry__0 
       (.CI(\minusOp_inferred__1/i__carry_n_0 ),
        .CO({\NLW_minusOp_inferred__1/i__carry__0_CO_UNCONNECTED [3],\minusOp_inferred__1/i__carry__0_n_1 ,\minusOp_inferred__1/i__carry__0_n_2 ,\minusOp_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i_data_IBUF[6:4]}),
        .O(B[7:4]),
        .S({MIN_VALUE_REG_n_1,MIN_VALUE_REG_n_2,MIN_VALUE_REG_n_3,MIN_VALUE_REG_n_4}));
  CARRY4 multOp__0_carry
       (.CI(1'b0),
        .CO({multOp__0_carry_n_0,multOp__0_carry_n_1,multOp__0_carry_n_2,multOp__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({N_COL_REG_n_0,N_COL_REG_n_1,N_COL_REG_n_2,1'b0}),
        .O({multOp__0_carry_n_4,size_prod[2:0]}),
        .S({N_COL_REG_n_12,N_COL_REG_n_13,N_COL_REG_n_14,N_COL_REG_n_15}));
  CARRY4 multOp__0_carry__0
       (.CI(multOp__0_carry_n_0),
        .CO({multOp__0_carry__0_n_0,multOp__0_carry__0_n_1,multOp__0_carry__0_n_2,multOp__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({N_COL_REG_n_6,N_COL_REG_n_7,N_COL_REG_n_8,N_COL_REG_n_9}),
        .O({multOp__0_carry__0_n_4,multOp__0_carry__0_n_5,multOp__0_carry__0_n_6,multOp__0_carry__0_n_7}),
        .S({N_COL_REG_n_35,N_COL_REG_n_36,N_COL_REG_n_37,N_COL_REG_n_38}));
  CARRY4 multOp__0_carry__1
       (.CI(multOp__0_carry__0_n_0),
        .CO({NLW_multOp__0_carry__1_CO_UNCONNECTED[3],multOp__0_carry__1_n_1,NLW_multOp__0_carry__1_CO_UNCONNECTED[1],multOp__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,N_COL_REG_n_10,N_COL_REG_n_11}),
        .O({NLW_multOp__0_carry__1_O_UNCONNECTED[3:2],multOp__0_carry__1_n_6,multOp__0_carry__1_n_7}),
        .S({1'b0,1'b1,N_COL_REG_n_39,N_COL_REG_n_40}));
  CARRY4 multOp__30_carry
       (.CI(1'b0),
        .CO({multOp__30_carry_n_0,multOp__30_carry_n_1,multOp__30_carry_n_2,multOp__30_carry_n_3}),
        .CYINIT(1'b0),
        .DI({N_COL_REG_n_3,N_COL_REG_n_4,N_COL_REG_n_5,1'b0}),
        .O({multOp__30_carry_n_4,multOp__30_carry_n_5,multOp__30_carry_n_6,multOp__30_carry_n_7}),
        .S({N_COL_REG_n_22,N_COL_REG_n_23,N_COL_REG_n_24,N_COL_REG_n_25}));
  CARRY4 multOp__30_carry__0
       (.CI(multOp__30_carry_n_0),
        .CO({multOp__30_carry__0_n_0,multOp__30_carry__0_n_1,multOp__30_carry__0_n_2,multOp__30_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({N_COL_REG_n_16,N_COL_REG_n_17,N_COL_REG_n_18,N_COL_REG_n_19}),
        .O({multOp__30_carry__0_n_4,multOp__30_carry__0_n_5,multOp__30_carry__0_n_6,multOp__30_carry__0_n_7}),
        .S({N_COL_REG_n_41,N_COL_REG_n_42,N_COL_REG_n_43,N_COL_REG_n_44}));
  CARRY4 multOp__30_carry__1
       (.CI(multOp__30_carry__0_n_0),
        .CO({NLW_multOp__30_carry__1_CO_UNCONNECTED[3],multOp__30_carry__1_n_1,NLW_multOp__30_carry__1_CO_UNCONNECTED[1],multOp__30_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,N_COL_REG_n_20,N_COL_REG_n_21}),
        .O({NLW_multOp__30_carry__1_O_UNCONNECTED[3:2],multOp__30_carry__1_n_6,multOp__30_carry__1_n_7}),
        .S({1'b0,1'b1,N_COL_REG_n_45,N_COL_REG_n_46}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 multOp__60_carry
       (.CI(1'b0),
        .CO({multOp__60_carry_n_0,multOp__60_carry_n_1,multOp__60_carry_n_2,multOp__60_carry_n_3}),
        .CYINIT(1'b0),
        .DI({multOp__60_carry_i_1_n_0,multOp__0_carry__0_n_6,multOp__0_carry__0_n_7,multOp__0_carry_n_4}),
        .O(size_prod[6:3]),
        .S({N_COL_REG_n_47,multOp__60_carry_i_3_n_0,multOp__60_carry_i_4_n_0,multOp__60_carry_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 multOp__60_carry__0
       (.CI(multOp__60_carry_n_0),
        .CO({multOp__60_carry__0_n_0,multOp__60_carry__0_n_1,multOp__60_carry__0_n_2,multOp__60_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({N_COL_REG_n_26,N_COL_REG_n_27,N_COL_REG_n_28,N_COL_REG_n_29}),
        .O(size_prod[10:7]),
        .S({N_COL_REG_n_48,N_COL_REG_n_49,N_COL_REG_n_50,N_COL_REG_n_51}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 multOp__60_carry__1
       (.CI(multOp__60_carry__0_n_0),
        .CO({multOp__60_carry__1_n_0,multOp__60_carry__1_n_1,multOp__60_carry__1_n_2,multOp__60_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({N_COL_REG_n_30,N_COL_REG_n_31,N_COL_REG_n_32,N_COL_REG_n_33}),
        .O(size_prod[14:11]),
        .S({N_COL_REG_n_52,N_COL_REG_n_53,N_COL_REG_n_54,N_COL_REG_n_55}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 multOp__60_carry__2
       (.CI(multOp__60_carry__1_n_0),
        .CO(NLW_multOp__60_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_multOp__60_carry__2_O_UNCONNECTED[3:1],size_prod[15]}),
        .S({1'b0,1'b0,1'b0,N_COL_REG_n_34}));
  LUT2 #(
    .INIT(4'h6)) 
    multOp__60_carry_i_1
       (.I0(multOp__0_carry__0_n_5),
        .I1(multOp__30_carry_n_4),
        .O(multOp__60_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    multOp__60_carry_i_3
       (.I0(multOp__0_carry__0_n_6),
        .I1(multOp__30_carry_n_5),
        .O(multOp__60_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    multOp__60_carry_i_4
       (.I0(multOp__0_carry__0_n_7),
        .I1(multOp__30_carry_n_6),
        .O(multOp__60_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    multOp__60_carry_i_5
       (.I0(multOp__0_carry_n_4),
        .I1(multOp__30_carry_n_7),
        .O(multOp__60_carry_i_5_n_0));
  CARRY4 \multOp_inferred__0/i___0_carry 
       (.CI(1'b0),
        .CO({\multOp_inferred__0/i___0_carry_n_0 ,\multOp_inferred__0/i___0_carry_n_1 ,\multOp_inferred__0/i___0_carry_n_2 ,\multOp_inferred__0/i___0_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({SHIFT_MULT_REG_n_11,i___0_carry_i_2_n_0,SHIFT_MULT_REG_n_12,1'b0}),
        .O({\multOp_inferred__0/i___0_carry_n_4 ,temp_value[2:0]}),
        .S({SHIFT_MULT_REG_n_31,SHIFT_MULT_REG_n_32,SHIFT_MULT_REG_n_33,i___0_carry_i_7_n_0}));
  CARRY4 \multOp_inferred__0/i___0_carry__0 
       (.CI(\multOp_inferred__0/i___0_carry_n_0 ),
        .CO({\multOp_inferred__0/i___0_carry__0_n_0 ,\multOp_inferred__0/i___0_carry__0_n_1 ,\multOp_inferred__0/i___0_carry__0_n_2 ,\multOp_inferred__0/i___0_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i___0_carry__0_i_1_n_0,i___0_carry__0_i_2_n_0,i___0_carry__0_i_3_n_0,SHIFT_MULT_REG_n_0}),
        .O({\multOp_inferred__0/i___0_carry__0_n_4 ,\multOp_inferred__0/i___0_carry__0_n_5 ,\multOp_inferred__0/i___0_carry__0_n_6 ,\multOp_inferred__0/i___0_carry__0_n_7 }),
        .S({i___0_carry__0_i_5_n_0,i___0_carry__0_i_6_n_0,i___0_carry__0_i_7_n_0,SHIFT_MULT_REG_n_34}));
  CARRY4 \multOp_inferred__0/i___0_carry__1 
       (.CI(\multOp_inferred__0/i___0_carry__0_n_0 ),
        .CO({\multOp_inferred__0/i___0_carry__1_n_0 ,\NLW_multOp_inferred__0/i___0_carry__1_CO_UNCONNECTED [2],\multOp_inferred__0/i___0_carry__1_n_2 ,\multOp_inferred__0/i___0_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,SHIFT_MULT_REG_n_10,i___0_carry__1_i_2_n_0,i___0_carry__1_i_3_n_0}),
        .O({\NLW_multOp_inferred__0/i___0_carry__1_O_UNCONNECTED [3],\multOp_inferred__0/i___0_carry__1_n_5 ,\multOp_inferred__0/i___0_carry__1_n_6 ,\multOp_inferred__0/i___0_carry__1_n_7 }),
        .S({1'b1,SHIFT_MULT_REG_n_35,SHIFT_MULT_REG_n_36,i___0_carry__1_i_6_n_0}));
  CARRY4 \multOp_inferred__0/i___33_carry 
       (.CI(1'b0),
        .CO({\multOp_inferred__0/i___33_carry_n_0 ,\multOp_inferred__0/i___33_carry_n_1 ,\multOp_inferred__0/i___33_carry_n_2 ,\multOp_inferred__0/i___33_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___33_carry_i_1_n_0,i___33_carry_i_2_n_0,SHIFT_MULT_REG_n_22,1'b0}),
        .O({\multOp_inferred__0/i___33_carry_n_4 ,\multOp_inferred__0/i___33_carry_n_5 ,\multOp_inferred__0/i___33_carry_n_6 ,\multOp_inferred__0/i___33_carry_n_7 }),
        .S({i___33_carry_i_4_n_0,SHIFT_MULT_REG_n_20,i___33_carry_i_6_n_0,SHIFT_MULT_REG_n_21}));
  CARRY4 \multOp_inferred__0/i___33_carry__0 
       (.CI(\multOp_inferred__0/i___33_carry_n_0 ),
        .CO({\multOp_inferred__0/i___33_carry__0_n_0 ,\multOp_inferred__0/i___33_carry__0_n_1 ,\multOp_inferred__0/i___33_carry__0_n_2 ,\multOp_inferred__0/i___33_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({SHIFT_MULT_REG_n_13,SHIFT_MULT_REG_n_14,i___33_carry__0_i_3_n_0,SHIFT_MULT_REG_n_15}),
        .O({\multOp_inferred__0/i___33_carry__0_n_4 ,\multOp_inferred__0/i___33_carry__0_n_5 ,\multOp_inferred__0/i___33_carry__0_n_6 ,\multOp_inferred__0/i___33_carry__0_n_7 }),
        .S({SHIFT_MULT_REG_n_37,SHIFT_MULT_REG_n_38,i___33_carry__0_i_7_n_0,SHIFT_MULT_REG_n_39}));
  CARRY4 \multOp_inferred__0/i___33_carry__1 
       (.CI(\multOp_inferred__0/i___33_carry__0_n_0 ),
        .CO({\multOp_inferred__0/i___33_carry__1_n_0 ,\NLW_multOp_inferred__0/i___33_carry__1_CO_UNCONNECTED [2],\multOp_inferred__0/i___33_carry__1_n_2 ,\multOp_inferred__0/i___33_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,SHIFT_MULT_REG_n_16,SHIFT_MULT_REG_n_17,SHIFT_MULT_REG_n_18}),
        .O({\NLW_multOp_inferred__0/i___33_carry__1_O_UNCONNECTED [3],\multOp_inferred__0/i___33_carry__1_n_5 ,\multOp_inferred__0/i___33_carry__1_n_6 ,\multOp_inferred__0/i___33_carry__1_n_7 }),
        .S({1'b1,SHIFT_MULT_REG_n_40,SHIFT_MULT_REG_n_41,SHIFT_MULT_REG_n_42}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \multOp_inferred__0/i___66_carry 
       (.CI(1'b0),
        .CO({\multOp_inferred__0/i___66_carry_n_0 ,\multOp_inferred__0/i___66_carry_n_1 ,\multOp_inferred__0/i___66_carry_n_2 ,\multOp_inferred__0/i___66_carry_n_3 }),
        .CYINIT(1'b0),
        .DI({i___66_carry_i_1_n_0,\multOp_inferred__0/i___0_carry__0_n_6 ,\multOp_inferred__0/i___0_carry__0_n_7 ,\multOp_inferred__0/i___0_carry_n_4 }),
        .O({temp_value[6:4],\NLW_multOp_inferred__0/i___66_carry_O_UNCONNECTED [0]}),
        .S({i___66_carry_i_2_n_0,i___66_carry_i_3_n_0,i___66_carry_i_4_n_0,i___66_carry_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \multOp_inferred__0/i___66_carry__0 
       (.CI(\multOp_inferred__0/i___66_carry_n_0 ),
        .CO({\multOp_inferred__0/i___66_carry__0_n_0 ,\multOp_inferred__0/i___66_carry__0_n_1 ,\multOp_inferred__0/i___66_carry__0_n_2 ,\multOp_inferred__0/i___66_carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({i___66_carry__0_i_1_n_0,i___66_carry__0_i_2_n_0,i___66_carry__0_i_3_n_0,i___66_carry__0_i_4_n_0}),
        .O(temp_value[10:7]),
        .S({i___66_carry__0_i_5_n_0,i___66_carry__0_i_6_n_0,i___66_carry__0_i_7_n_0,i___66_carry__0_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \multOp_inferred__0/i___66_carry__1 
       (.CI(\multOp_inferred__0/i___66_carry__0_n_0 ),
        .CO({\multOp_inferred__0/i___66_carry__1_n_0 ,\multOp_inferred__0/i___66_carry__1_n_1 ,\multOp_inferred__0/i___66_carry__1_n_2 ,\multOp_inferred__0/i___66_carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({i___66_carry__1_i_1_n_0,SHIFT_MULT_REG_n_23,SHIFT_MULT_REG_n_24,i___66_carry__1_i_4_n_0}),
        .O(temp_value[14:11]),
        .S({SHIFT_MULT_REG_n_43,SHIFT_MULT_REG_n_44,SHIFT_MULT_REG_n_45,i___66_carry__1_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \multOp_inferred__0/i___66_carry__2 
       (.CI(\multOp_inferred__0/i___66_carry__1_n_0 ),
        .CO({\NLW_multOp_inferred__0/i___66_carry__2_CO_UNCONNECTED [3:1],\multOp_inferred__0/i___66_carry__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,SHIFT_MULT_REG_n_26}),
        .O({\NLW_multOp_inferred__0/i___66_carry__2_O_UNCONNECTED [3:2],temp_value[16:15]}),
        .S({1'b0,1'b0,SHIFT_MULT_REG_n_27,SHIFT_MULT_REG_n_28}));
  LUT5 #(
    .INIT(32'hABFCA8FC)) 
    \o_address_OBUF[0]_inst_i_1 
       (.I0(minusOp[0]),
        .I1(Q[3]),
        .I2(Q[9]),
        .I3(address_sel),
        .I4(i_data_10[0]),
        .O(o_address_OBUF[0]));
  LUT5 #(
    .INIT(32'hAAA80008)) 
    \o_address_OBUF[10]_inst_i_1 
       (.I0(address_sel),
        .I1(i_data_10[10]),
        .I2(Q[9]),
        .I3(Q[3]),
        .I4(minusOp[10]),
        .O(o_address_OBUF[10]));
  LUT5 #(
    .INIT(32'hAAA80008)) 
    \o_address_OBUF[11]_inst_i_1 
       (.I0(address_sel),
        .I1(i_data_10[11]),
        .I2(Q[9]),
        .I3(Q[3]),
        .I4(minusOp[11]),
        .O(o_address_OBUF[11]));
  LUT5 #(
    .INIT(32'hAAA80008)) 
    \o_address_OBUF[12]_inst_i_1 
       (.I0(address_sel),
        .I1(i_data_10[12]),
        .I2(Q[9]),
        .I3(Q[3]),
        .I4(minusOp[12]),
        .O(o_address_OBUF[12]));
  LUT5 #(
    .INIT(32'hAAA80008)) 
    \o_address_OBUF[13]_inst_i_1 
       (.I0(address_sel),
        .I1(i_data_10[13]),
        .I2(Q[9]),
        .I3(Q[3]),
        .I4(minusOp[13]),
        .O(o_address_OBUF[13]));
  LUT5 #(
    .INIT(32'hAAA80008)) 
    \o_address_OBUF[14]_inst_i_1 
       (.I0(address_sel),
        .I1(i_data_10[14]),
        .I2(Q[9]),
        .I3(Q[3]),
        .I4(minusOp[14]),
        .O(o_address_OBUF[14]));
  LUT5 #(
    .INIT(32'hAAA80008)) 
    \o_address_OBUF[15]_inst_i_1 
       (.I0(address_sel),
        .I1(i_data_10[15]),
        .I2(Q[9]),
        .I3(Q[3]),
        .I4(minusOp[15]),
        .O(o_address_OBUF[15]));
  LUT5 #(
    .INIT(32'hAAA80008)) 
    \o_address_OBUF[1]_inst_i_1 
       (.I0(address_sel),
        .I1(i_data_10[1]),
        .I2(Q[9]),
        .I3(Q[3]),
        .I4(minusOp[1]),
        .O(o_address_OBUF[1]));
  LUT5 #(
    .INIT(32'hAAA80008)) 
    \o_address_OBUF[2]_inst_i_1 
       (.I0(address_sel),
        .I1(i_data_10[2]),
        .I2(Q[9]),
        .I3(Q[3]),
        .I4(minusOp[2]),
        .O(o_address_OBUF[2]));
  LUT5 #(
    .INIT(32'hAAA80008)) 
    \o_address_OBUF[3]_inst_i_1 
       (.I0(address_sel),
        .I1(i_data_10[3]),
        .I2(Q[9]),
        .I3(Q[3]),
        .I4(minusOp[3]),
        .O(o_address_OBUF[3]));
  LUT5 #(
    .INIT(32'hAAA80008)) 
    \o_address_OBUF[4]_inst_i_1 
       (.I0(address_sel),
        .I1(i_data_10[4]),
        .I2(Q[9]),
        .I3(Q[3]),
        .I4(minusOp[4]),
        .O(o_address_OBUF[4]));
  LUT5 #(
    .INIT(32'hAAA80008)) 
    \o_address_OBUF[5]_inst_i_1 
       (.I0(address_sel),
        .I1(i_data_10[5]),
        .I2(Q[9]),
        .I3(Q[3]),
        .I4(minusOp[5]),
        .O(o_address_OBUF[5]));
  LUT5 #(
    .INIT(32'hAAA80008)) 
    \o_address_OBUF[6]_inst_i_1 
       (.I0(address_sel),
        .I1(i_data_10[6]),
        .I2(Q[9]),
        .I3(Q[3]),
        .I4(minusOp[6]),
        .O(o_address_OBUF[6]));
  LUT5 #(
    .INIT(32'hAAA80008)) 
    \o_address_OBUF[7]_inst_i_1 
       (.I0(address_sel),
        .I1(i_data_10[7]),
        .I2(Q[9]),
        .I3(Q[3]),
        .I4(minusOp[7]),
        .O(o_address_OBUF[7]));
  LUT5 #(
    .INIT(32'hAAA80008)) 
    \o_address_OBUF[8]_inst_i_1 
       (.I0(address_sel),
        .I1(i_data_10[8]),
        .I2(Q[9]),
        .I3(Q[3]),
        .I4(minusOp[8]),
        .O(o_address_OBUF[8]));
  LUT5 #(
    .INIT(32'hAAA80008)) 
    \o_address_OBUF[9]_inst_i_1 
       (.I0(address_sel),
        .I1(i_data_10[9]),
        .I2(Q[9]),
        .I3(Q[3]),
        .I4(minusOp[9]),
        .O(o_address_OBUF[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \o_data_OBUF[0]_inst_i_1 
       (.I0(temp_value[0]),
        .I1(temp_value[14]),
        .I2(temp_value[12]),
        .I3(temp_value[15]),
        .I4(temp_value[10]),
        .I5(\o_data_OBUF[7]_inst_i_2_n_0 ),
        .O(o_data_OBUF[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \o_data_OBUF[1]_inst_i_1 
       (.I0(temp_value[1]),
        .I1(temp_value[14]),
        .I2(temp_value[12]),
        .I3(temp_value[15]),
        .I4(temp_value[10]),
        .I5(\o_data_OBUF[7]_inst_i_2_n_0 ),
        .O(o_data_OBUF[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \o_data_OBUF[2]_inst_i_1 
       (.I0(temp_value[2]),
        .I1(temp_value[14]),
        .I2(temp_value[12]),
        .I3(temp_value[15]),
        .I4(temp_value[10]),
        .I5(\o_data_OBUF[7]_inst_i_2_n_0 ),
        .O(o_data_OBUF[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \o_data_OBUF[3]_inst_i_1 
       (.I0(temp_value[3]),
        .I1(temp_value[14]),
        .I2(temp_value[12]),
        .I3(temp_value[15]),
        .I4(temp_value[10]),
        .I5(\o_data_OBUF[7]_inst_i_2_n_0 ),
        .O(o_data_OBUF[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \o_data_OBUF[3]_inst_i_2 
       (.I0(\multOp_inferred__0/i___0_carry_n_4 ),
        .I1(\multOp_inferred__0/i___33_carry_n_7 ),
        .O(temp_value[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \o_data_OBUF[4]_inst_i_1 
       (.I0(temp_value[4]),
        .I1(temp_value[14]),
        .I2(temp_value[12]),
        .I3(temp_value[15]),
        .I4(temp_value[10]),
        .I5(\o_data_OBUF[7]_inst_i_2_n_0 ),
        .O(o_data_OBUF[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \o_data_OBUF[5]_inst_i_1 
       (.I0(temp_value[5]),
        .I1(temp_value[14]),
        .I2(temp_value[12]),
        .I3(temp_value[15]),
        .I4(temp_value[10]),
        .I5(\o_data_OBUF[7]_inst_i_2_n_0 ),
        .O(o_data_OBUF[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \o_data_OBUF[6]_inst_i_1 
       (.I0(temp_value[6]),
        .I1(temp_value[14]),
        .I2(temp_value[12]),
        .I3(temp_value[15]),
        .I4(temp_value[10]),
        .I5(\o_data_OBUF[7]_inst_i_2_n_0 ),
        .O(o_data_OBUF[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \o_data_OBUF[7]_inst_i_1 
       (.I0(temp_value[7]),
        .I1(temp_value[14]),
        .I2(temp_value[12]),
        .I3(temp_value[15]),
        .I4(temp_value[10]),
        .I5(\o_data_OBUF[7]_inst_i_2_n_0 ),
        .O(o_data_OBUF[7]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \o_data_OBUF[7]_inst_i_2 
       (.I0(temp_value[16]),
        .I1(temp_value[11]),
        .I2(temp_value[9]),
        .I3(temp_value[13]),
        .I4(temp_value[8]),
        .O(\o_data_OBUF[7]_inst_i_2_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,data_reg[1],1'b0}),
        .O(i_data_10[3:0]),
        .S({data_reg[3:2],PIXEL_COUNTER_n_21,data_reg[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_data_10[7:4]),
        .S(data_reg[7:4]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_data_10[11:8]),
        .S(data_reg[11:8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({NLW_plusOp_carry__2_CO_UNCONNECTED[3],plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(i_data_10[15:12]),
        .S(data_reg[15:12]));
endmodule

(* NotValidForBitStream *)
module project_reti_logiche
   (i_clk,
    i_rst,
    i_start,
    i_data,
    o_address,
    o_done,
    o_en,
    o_we,
    o_data);
  input i_clk;
  input i_rst;
  input i_start;
  input [7:0]i_data;
  output [15:0]o_address;
  output o_done;
  output o_en;
  output o_we;
  output [7:0]o_data;

  wire DATAPATH0_n_16;
  wire DATAPATH0_n_17;
  wire DATAPATH0_n_18;
  wire DATAPATH0_n_19;
  wire DATAPATH0_n_20;
  wire DATAPATH0_n_21;
  wire \FSM_onehot_cur_state[0]_i_1_n_0 ;
  wire \FSM_onehot_cur_state[11]_i_4_n_0 ;
  wire \FSM_onehot_cur_state_reg_n_0_[10] ;
  wire \FSM_onehot_cur_state_reg_n_0_[1] ;
  wire \FSM_onehot_cur_state_reg_n_0_[3] ;
  wire \FSM_onehot_cur_state_reg_n_0_[5] ;
  wire \FSM_onehot_cur_state_reg_n_0_[8] ;
  wire [1:1]address_sel;
  wire i_clk;
  wire i_clk_IBUF;
  wire i_clk_IBUF_BUFG;
  wire [7:0]i_data;
  wire [7:0]i_data_IBUF;
  wire i_rst;
  wire i_rst_IBUF;
  wire i_start;
  wire i_start_IBUF;
  wire max_value_load;
  wire n_col_load;
  wire [15:0]o_address;
  wire [15:0]o_address_OBUF;
  wire [7:0]o_data;
  wire [7:0]o_data_OBUF;
  wire o_done;
  wire o_done_OBUF;
  wire o_en;
  wire o_en_OBUF;
  wire o_en_OBUF_inst_i_2_n_0;
  wire o_en_OBUF_inst_i_3_n_0;
  wire o_we;
  wire o_we_OBUF;
  wire reg_rst;
  wire shift_mult_load;
  wire size_load;

  datapath DATAPATH0
       (.CLK(i_clk_IBUF_BUFG),
        .D({DATAPATH0_n_17,DATAPATH0_n_18,DATAPATH0_n_19,DATAPATH0_n_20,DATAPATH0_n_21}),
        .E(DATAPATH0_n_16),
        .\FSM_onehot_cur_state_reg[0] (\FSM_onehot_cur_state[11]_i_4_n_0 ),
        .Q({o_done_OBUF,\FSM_onehot_cur_state_reg_n_0_[10] ,o_we_OBUF,\FSM_onehot_cur_state_reg_n_0_[8] ,shift_mult_load,max_value_load,\FSM_onehot_cur_state_reg_n_0_[5] ,size_load,\FSM_onehot_cur_state_reg_n_0_[3] ,n_col_load,\FSM_onehot_cur_state_reg_n_0_[1] ,reg_rst}),
        .address_sel(address_sel),
        .i_data_IBUF(i_data_IBUF),
        .i_start_IBUF(i_start_IBUF),
        .o_address_OBUF(o_address_OBUF),
        .o_data_OBUF(o_data_OBUF));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_cur_state[0]_i_1 
       (.I0(o_done_OBUF),
        .I1(i_start_IBUF),
        .O(\FSM_onehot_cur_state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_cur_state[11]_i_4 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[8] ),
        .I1(shift_mult_load),
        .I2(size_load),
        .I3(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .O(\FSM_onehot_cur_state[11]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "read_n_rig:0000000010000,req_n_rig:0000000001000,read_n_col:0000000000100,done:0100000000000,req_pixel:0010000000000,req_n_col:0000000000010,rst:0000000000001,calc_shift:0000010000000,write_new:0001000000000,init_calc:0000100000000,comp_ext:0000001000000,iSTATE:1000000000000,init_comp:0000000100000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_cur_state_reg[0] 
       (.C(i_clk_IBUF_BUFG),
        .CE(DATAPATH0_n_16),
        .D(\FSM_onehot_cur_state[0]_i_1_n_0 ),
        .Q(reg_rst),
        .S(i_rst_IBUF));
  (* FSM_ENCODED_STATES = "read_n_rig:0000000010000,req_n_rig:0000000001000,read_n_col:0000000000100,done:0100000000000,req_pixel:0010000000000,req_n_col:0000000000010,rst:0000000000001,calc_shift:0000010000000,write_new:0001000000000,init_calc:0000100000000,comp_ext:0000001000000,iSTATE:1000000000000,init_comp:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[10] 
       (.C(i_clk_IBUF_BUFG),
        .CE(DATAPATH0_n_16),
        .D(DATAPATH0_n_18),
        .Q(\FSM_onehot_cur_state_reg_n_0_[10] ),
        .R(i_rst_IBUF));
  (* FSM_ENCODED_STATES = "read_n_rig:0000000010000,req_n_rig:0000000001000,read_n_col:0000000000100,done:0100000000000,req_pixel:0010000000000,req_n_col:0000000000010,rst:0000000000001,calc_shift:0000010000000,write_new:0001000000000,init_calc:0000100000000,comp_ext:0000001000000,iSTATE:1000000000000,init_comp:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[11] 
       (.C(i_clk_IBUF_BUFG),
        .CE(DATAPATH0_n_16),
        .D(DATAPATH0_n_17),
        .Q(o_done_OBUF),
        .R(i_rst_IBUF));
  (* FSM_ENCODED_STATES = "read_n_rig:0000000010000,req_n_rig:0000000001000,read_n_col:0000000000100,done:0100000000000,req_pixel:0010000000000,req_n_col:0000000000010,rst:0000000000001,calc_shift:0000010000000,write_new:0001000000000,init_calc:0000100000000,comp_ext:0000001000000,iSTATE:1000000000000,init_comp:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[1] 
       (.C(i_clk_IBUF_BUFG),
        .CE(DATAPATH0_n_16),
        .D(reg_rst),
        .Q(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .R(i_rst_IBUF));
  (* FSM_ENCODED_STATES = "read_n_rig:0000000010000,req_n_rig:0000000001000,read_n_col:0000000000100,done:0100000000000,req_pixel:0010000000000,req_n_col:0000000000010,rst:0000000000001,calc_shift:0000010000000,write_new:0001000000000,init_calc:0000100000000,comp_ext:0000001000000,iSTATE:1000000000000,init_comp:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[2] 
       (.C(i_clk_IBUF_BUFG),
        .CE(DATAPATH0_n_16),
        .D(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .Q(n_col_load),
        .R(i_rst_IBUF));
  (* FSM_ENCODED_STATES = "read_n_rig:0000000010000,req_n_rig:0000000001000,read_n_col:0000000000100,done:0100000000000,req_pixel:0010000000000,req_n_col:0000000000010,rst:0000000000001,calc_shift:0000010000000,write_new:0001000000000,init_calc:0000100000000,comp_ext:0000001000000,iSTATE:1000000000000,init_comp:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[3] 
       (.C(i_clk_IBUF_BUFG),
        .CE(DATAPATH0_n_16),
        .D(n_col_load),
        .Q(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .R(i_rst_IBUF));
  (* FSM_ENCODED_STATES = "read_n_rig:0000000010000,req_n_rig:0000000001000,read_n_col:0000000000100,done:0100000000000,req_pixel:0010000000000,req_n_col:0000000000010,rst:0000000000001,calc_shift:0000010000000,write_new:0001000000000,init_calc:0000100000000,comp_ext:0000001000000,iSTATE:1000000000000,init_comp:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[4] 
       (.C(i_clk_IBUF_BUFG),
        .CE(DATAPATH0_n_16),
        .D(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .Q(size_load),
        .R(i_rst_IBUF));
  (* FSM_ENCODED_STATES = "read_n_rig:0000000010000,req_n_rig:0000000001000,read_n_col:0000000000100,done:0100000000000,req_pixel:0010000000000,req_n_col:0000000000010,rst:0000000000001,calc_shift:0000010000000,write_new:0001000000000,init_calc:0000100000000,comp_ext:0000001000000,iSTATE:1000000000000,init_comp:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[5] 
       (.C(i_clk_IBUF_BUFG),
        .CE(DATAPATH0_n_16),
        .D(size_load),
        .Q(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .R(i_rst_IBUF));
  (* FSM_ENCODED_STATES = "read_n_rig:0000000010000,req_n_rig:0000000001000,read_n_col:0000000000100,done:0100000000000,req_pixel:0010000000000,req_n_col:0000000000010,rst:0000000000001,calc_shift:0000010000000,write_new:0001000000000,init_calc:0000100000000,comp_ext:0000001000000,iSTATE:1000000000000,init_comp:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[6] 
       (.C(i_clk_IBUF_BUFG),
        .CE(DATAPATH0_n_16),
        .D(DATAPATH0_n_21),
        .Q(max_value_load),
        .R(i_rst_IBUF));
  (* FSM_ENCODED_STATES = "read_n_rig:0000000010000,req_n_rig:0000000001000,read_n_col:0000000000100,done:0100000000000,req_pixel:0010000000000,req_n_col:0000000000010,rst:0000000000001,calc_shift:0000010000000,write_new:0001000000000,init_calc:0000100000000,comp_ext:0000001000000,iSTATE:1000000000000,init_comp:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[7] 
       (.C(i_clk_IBUF_BUFG),
        .CE(DATAPATH0_n_16),
        .D(DATAPATH0_n_20),
        .Q(shift_mult_load),
        .R(i_rst_IBUF));
  (* FSM_ENCODED_STATES = "read_n_rig:0000000010000,req_n_rig:0000000001000,read_n_col:0000000000100,done:0100000000000,req_pixel:0010000000000,req_n_col:0000000000010,rst:0000000000001,calc_shift:0000010000000,write_new:0001000000000,init_calc:0000100000000,comp_ext:0000001000000,iSTATE:1000000000000,init_comp:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[8] 
       (.C(i_clk_IBUF_BUFG),
        .CE(DATAPATH0_n_16),
        .D(shift_mult_load),
        .Q(\FSM_onehot_cur_state_reg_n_0_[8] ),
        .R(i_rst_IBUF));
  (* FSM_ENCODED_STATES = "read_n_rig:0000000010000,req_n_rig:0000000001000,read_n_col:0000000000100,done:0100000000000,req_pixel:0010000000000,req_n_col:0000000000010,rst:0000000000001,calc_shift:0000010000000,write_new:0001000000000,init_calc:0000100000000,comp_ext:0000001000000,iSTATE:1000000000000,init_comp:0000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[9] 
       (.C(i_clk_IBUF_BUFG),
        .CE(DATAPATH0_n_16),
        .D(DATAPATH0_n_19),
        .Q(o_we_OBUF),
        .R(i_rst_IBUF));
  BUFG i_clk_IBUF_BUFG_inst
       (.I(i_clk_IBUF),
        .O(i_clk_IBUF_BUFG));
  IBUF i_clk_IBUF_inst
       (.I(i_clk),
        .O(i_clk_IBUF));
  IBUF \i_data_IBUF[0]_inst 
       (.I(i_data[0]),
        .O(i_data_IBUF[0]));
  IBUF \i_data_IBUF[1]_inst 
       (.I(i_data[1]),
        .O(i_data_IBUF[1]));
  IBUF \i_data_IBUF[2]_inst 
       (.I(i_data[2]),
        .O(i_data_IBUF[2]));
  IBUF \i_data_IBUF[3]_inst 
       (.I(i_data[3]),
        .O(i_data_IBUF[3]));
  IBUF \i_data_IBUF[4]_inst 
       (.I(i_data[4]),
        .O(i_data_IBUF[4]));
  IBUF \i_data_IBUF[5]_inst 
       (.I(i_data[5]),
        .O(i_data_IBUF[5]));
  IBUF \i_data_IBUF[6]_inst 
       (.I(i_data[6]),
        .O(i_data_IBUF[6]));
  IBUF \i_data_IBUF[7]_inst 
       (.I(i_data[7]),
        .O(i_data_IBUF[7]));
  IBUF i_rst_IBUF_inst
       (.I(i_rst),
        .O(i_rst_IBUF));
  IBUF i_start_IBUF_inst
       (.I(i_start),
        .O(i_start_IBUF));
  OBUF \o_address_OBUF[0]_inst 
       (.I(o_address_OBUF[0]),
        .O(o_address[0]));
  OBUF \o_address_OBUF[10]_inst 
       (.I(o_address_OBUF[10]),
        .O(o_address[10]));
  OBUF \o_address_OBUF[11]_inst 
       (.I(o_address_OBUF[11]),
        .O(o_address[11]));
  OBUF \o_address_OBUF[12]_inst 
       (.I(o_address_OBUF[12]),
        .O(o_address[12]));
  OBUF \o_address_OBUF[13]_inst 
       (.I(o_address_OBUF[13]),
        .O(o_address[13]));
  OBUF \o_address_OBUF[14]_inst 
       (.I(o_address_OBUF[14]),
        .O(o_address[14]));
  OBUF \o_address_OBUF[15]_inst 
       (.I(o_address_OBUF[15]),
        .O(o_address[15]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \o_address_OBUF[15]_inst_i_2 
       (.I0(o_we_OBUF),
        .I1(max_value_load),
        .I2(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I3(\FSM_onehot_cur_state_reg_n_0_[10] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[8] ),
        .O(address_sel));
  OBUF \o_address_OBUF[1]_inst 
       (.I(o_address_OBUF[1]),
        .O(o_address[1]));
  OBUF \o_address_OBUF[2]_inst 
       (.I(o_address_OBUF[2]),
        .O(o_address[2]));
  OBUF \o_address_OBUF[3]_inst 
       (.I(o_address_OBUF[3]),
        .O(o_address[3]));
  OBUF \o_address_OBUF[4]_inst 
       (.I(o_address_OBUF[4]),
        .O(o_address[4]));
  OBUF \o_address_OBUF[5]_inst 
       (.I(o_address_OBUF[5]),
        .O(o_address[5]));
  OBUF \o_address_OBUF[6]_inst 
       (.I(o_address_OBUF[6]),
        .O(o_address[6]));
  OBUF \o_address_OBUF[7]_inst 
       (.I(o_address_OBUF[7]),
        .O(o_address[7]));
  OBUF \o_address_OBUF[8]_inst 
       (.I(o_address_OBUF[8]),
        .O(o_address[8]));
  OBUF \o_address_OBUF[9]_inst 
       (.I(o_address_OBUF[9]),
        .O(o_address[9]));
  OBUF \o_data_OBUF[0]_inst 
       (.I(o_data_OBUF[0]),
        .O(o_data[0]));
  OBUF \o_data_OBUF[1]_inst 
       (.I(o_data_OBUF[1]),
        .O(o_data[1]));
  OBUF \o_data_OBUF[2]_inst 
       (.I(o_data_OBUF[2]),
        .O(o_data[2]));
  OBUF \o_data_OBUF[3]_inst 
       (.I(o_data_OBUF[3]),
        .O(o_data[3]));
  OBUF \o_data_OBUF[4]_inst 
       (.I(o_data_OBUF[4]),
        .O(o_data[4]));
  OBUF \o_data_OBUF[5]_inst 
       (.I(o_data_OBUF[5]),
        .O(o_data[5]));
  OBUF \o_data_OBUF[6]_inst 
       (.I(o_data_OBUF[6]),
        .O(o_data[6]));
  OBUF \o_data_OBUF[7]_inst 
       (.I(o_data_OBUF[7]),
        .O(o_data[7]));
  OBUF o_done_OBUF_inst
       (.I(o_done_OBUF),
        .O(o_done));
  OBUF o_en_OBUF_inst
       (.I(o_en_OBUF),
        .O(o_en));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    o_en_OBUF_inst_i_1
       (.I0(\FSM_onehot_cur_state_reg_n_0_[10] ),
        .I1(o_we_OBUF),
        .I2(o_en_OBUF_inst_i_2_n_0),
        .I3(shift_mult_load),
        .I4(\FSM_onehot_cur_state_reg_n_0_[8] ),
        .I5(o_en_OBUF_inst_i_3_n_0),
        .O(o_en_OBUF));
  LUT4 #(
    .INIT(16'hFFFE)) 
    o_en_OBUF_inst_i_2
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(size_load),
        .I2(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .I3(n_col_load),
        .O(o_en_OBUF_inst_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hE)) 
    o_en_OBUF_inst_i_3
       (.I0(max_value_load),
        .I1(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .O(o_en_OBUF_inst_i_3_n_0));
  OBUF o_we_OBUF_inst
       (.I(o_we_OBUF),
        .O(o_we));
endmodule

module reg_16_bit
   (DI,
    Q,
    \data_reg[6]_0 ,
    \data_reg[10]_0 ,
    \data_reg[13]_0 ,
    S,
    \data_reg[6]_1 ,
    \data_reg[10]_1 ,
    \data_reg[14]_0 ,
    \data_reg[15]_0 ,
    i_data_10,
    data_reg,
    D,
    O,
    \data_reg[3]_0 ,
    \data_reg[0]_0 ,
    CLK);
  output [3:0]DI;
  output [14:0]Q;
  output [3:0]\data_reg[6]_0 ;
  output [3:0]\data_reg[10]_0 ;
  output [2:0]\data_reg[13]_0 ;
  output [3:0]S;
  output [3:0]\data_reg[6]_1 ;
  output [3:0]\data_reg[10]_1 ;
  output [3:0]\data_reg[14]_0 ;
  output [0:0]\data_reg[15]_0 ;
  input [15:0]i_data_10;
  input [0:0]data_reg;
  input [14:0]D;
  input [0:0]O;
  input [0:0]\data_reg[3]_0 ;
  input [1:0]\data_reg[0]_0 ;
  input CLK;

  wire CLK;
  wire [14:0]D;
  wire [3:0]DI;
  wire [0:0]O;
  wire [14:0]Q;
  wire [3:0]S;
  wire [15:15]data;
  wire [0:0]data_reg;
  wire [1:0]\data_reg[0]_0 ;
  wire [3:0]\data_reg[10]_0 ;
  wire [3:0]\data_reg[10]_1 ;
  wire [2:0]\data_reg[13]_0 ;
  wire [3:0]\data_reg[14]_0 ;
  wire [0:0]\data_reg[15]_0 ;
  wire [0:0]\data_reg[3]_0 ;
  wire [3:0]\data_reg[6]_0 ;
  wire [3:0]\data_reg[6]_1 ;
  wire [15:0]i_data_10;
  wire [3:3]size_prod;

  LUT2 #(
    .INIT(4'h6)) 
    \data[3]_i_1__2 
       (.I0(O),
        .I1(\data_reg[3]_0 ),
        .O(size_prod));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(CLK),
        .CE(\data_reg[0]_0 [1]),
        .CLR(\data_reg[0]_0 [0]),
        .D(D[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[10] 
       (.C(CLK),
        .CE(\data_reg[0]_0 [1]),
        .CLR(\data_reg[0]_0 [0]),
        .D(D[9]),
        .Q(Q[10]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[11] 
       (.C(CLK),
        .CE(\data_reg[0]_0 [1]),
        .CLR(\data_reg[0]_0 [0]),
        .D(D[10]),
        .Q(Q[11]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[12] 
       (.C(CLK),
        .CE(\data_reg[0]_0 [1]),
        .CLR(\data_reg[0]_0 [0]),
        .D(D[11]),
        .Q(Q[12]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[13] 
       (.C(CLK),
        .CE(\data_reg[0]_0 [1]),
        .CLR(\data_reg[0]_0 [0]),
        .D(D[12]),
        .Q(Q[13]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[14] 
       (.C(CLK),
        .CE(\data_reg[0]_0 [1]),
        .CLR(\data_reg[0]_0 [0]),
        .D(D[13]),
        .Q(Q[14]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[15] 
       (.C(CLK),
        .CE(\data_reg[0]_0 [1]),
        .CLR(\data_reg[0]_0 [0]),
        .D(D[14]),
        .Q(data));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(CLK),
        .CE(\data_reg[0]_0 [1]),
        .CLR(\data_reg[0]_0 [0]),
        .D(D[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(CLK),
        .CE(\data_reg[0]_0 [1]),
        .CLR(\data_reg[0]_0 [0]),
        .D(D[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(CLK),
        .CE(\data_reg[0]_0 [1]),
        .CLR(\data_reg[0]_0 [0]),
        .D(size_prod),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(CLK),
        .CE(\data_reg[0]_0 [1]),
        .CLR(\data_reg[0]_0 [0]),
        .D(D[3]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(CLK),
        .CE(\data_reg[0]_0 [1]),
        .CLR(\data_reg[0]_0 [0]),
        .D(D[4]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(CLK),
        .CE(\data_reg[0]_0 [1]),
        .CLR(\data_reg[0]_0 [0]),
        .D(D[5]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(CLK),
        .CE(\data_reg[0]_0 [1]),
        .CLR(\data_reg[0]_0 [0]),
        .D(D[6]),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[8] 
       (.C(CLK),
        .CE(\data_reg[0]_0 [1]),
        .CLR(\data_reg[0]_0 [0]),
        .D(D[7]),
        .Q(Q[8]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[9] 
       (.C(CLK),
        .CE(\data_reg[0]_0 [1]),
        .CLR(\data_reg[0]_0 [0]),
        .D(D[8]),
        .Q(Q[9]));
  LUT2 #(
    .INIT(4'h9)) 
    eqOp_carry__0_i_1
       (.I0(data),
        .I1(data_reg),
        .O(\data_reg[15]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp__0_carry__0_i_1
       (.I0(i_data_10[6]),
        .I1(Q[6]),
        .O(\data_reg[6]_0 [3]));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp__0_carry__0_i_2
       (.I0(i_data_10[5]),
        .I1(Q[5]),
        .O(\data_reg[6]_0 [2]));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp__0_carry__0_i_3
       (.I0(i_data_10[4]),
        .I1(Q[4]),
        .O(\data_reg[6]_0 [1]));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp__0_carry__0_i_4
       (.I0(i_data_10[3]),
        .I1(Q[3]),
        .O(\data_reg[6]_0 [0]));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp__0_carry__0_i_5
       (.I0(Q[6]),
        .I1(i_data_10[6]),
        .I2(Q[7]),
        .I3(i_data_10[7]),
        .O(\data_reg[6]_1 [3]));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp__0_carry__0_i_6
       (.I0(Q[5]),
        .I1(i_data_10[5]),
        .I2(Q[6]),
        .I3(i_data_10[6]),
        .O(\data_reg[6]_1 [2]));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp__0_carry__0_i_7
       (.I0(Q[4]),
        .I1(i_data_10[4]),
        .I2(Q[5]),
        .I3(i_data_10[5]),
        .O(\data_reg[6]_1 [1]));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp__0_carry__0_i_8
       (.I0(Q[3]),
        .I1(i_data_10[3]),
        .I2(Q[4]),
        .I3(i_data_10[4]),
        .O(\data_reg[6]_1 [0]));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp__0_carry__1_i_1
       (.I0(i_data_10[10]),
        .I1(Q[10]),
        .O(\data_reg[10]_0 [3]));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp__0_carry__1_i_2
       (.I0(i_data_10[9]),
        .I1(Q[9]),
        .O(\data_reg[10]_0 [2]));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp__0_carry__1_i_3
       (.I0(i_data_10[8]),
        .I1(Q[8]),
        .O(\data_reg[10]_0 [1]));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp__0_carry__1_i_4
       (.I0(i_data_10[7]),
        .I1(Q[7]),
        .O(\data_reg[10]_0 [0]));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp__0_carry__1_i_5
       (.I0(Q[10]),
        .I1(i_data_10[10]),
        .I2(Q[11]),
        .I3(i_data_10[11]),
        .O(\data_reg[10]_1 [3]));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp__0_carry__1_i_6
       (.I0(Q[9]),
        .I1(i_data_10[9]),
        .I2(Q[10]),
        .I3(i_data_10[10]),
        .O(\data_reg[10]_1 [2]));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp__0_carry__1_i_7
       (.I0(Q[8]),
        .I1(i_data_10[8]),
        .I2(Q[9]),
        .I3(i_data_10[9]),
        .O(\data_reg[10]_1 [1]));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp__0_carry__1_i_8
       (.I0(Q[7]),
        .I1(i_data_10[7]),
        .I2(Q[8]),
        .I3(i_data_10[8]),
        .O(\data_reg[10]_1 [0]));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp__0_carry__2_i_1
       (.I0(i_data_10[13]),
        .I1(Q[13]),
        .O(\data_reg[13]_0 [2]));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp__0_carry__2_i_2
       (.I0(i_data_10[12]),
        .I1(Q[12]),
        .O(\data_reg[13]_0 [1]));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp__0_carry__2_i_3
       (.I0(i_data_10[11]),
        .I1(Q[11]),
        .O(\data_reg[13]_0 [0]));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp__0_carry__2_i_4
       (.I0(Q[14]),
        .I1(i_data_10[14]),
        .I2(data),
        .I3(i_data_10[15]),
        .O(\data_reg[14]_0 [3]));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp__0_carry__2_i_5
       (.I0(Q[13]),
        .I1(i_data_10[13]),
        .I2(Q[14]),
        .I3(i_data_10[14]),
        .O(\data_reg[14]_0 [2]));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp__0_carry__2_i_6
       (.I0(Q[12]),
        .I1(i_data_10[12]),
        .I2(Q[13]),
        .I3(i_data_10[13]),
        .O(\data_reg[14]_0 [1]));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp__0_carry__2_i_7
       (.I0(Q[11]),
        .I1(i_data_10[11]),
        .I2(Q[12]),
        .I3(i_data_10[12]),
        .O(\data_reg[14]_0 [0]));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp__0_carry_i_1
       (.I0(i_data_10[2]),
        .I1(Q[2]),
        .O(DI[3]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp__0_carry_i_2
       (.I0(Q[2]),
        .I1(i_data_10[2]),
        .O(DI[2]));
  LUT2 #(
    .INIT(4'hE)) 
    minusOp__0_carry_i_3
       (.I0(i_data_10[0]),
        .I1(Q[0]),
        .O(DI[1]));
  LUT2 #(
    .INIT(4'h9)) 
    minusOp__0_carry_i_4
       (.I0(Q[0]),
        .I1(i_data_10[0]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h1EE1)) 
    minusOp__0_carry_i_5
       (.I0(Q[2]),
        .I1(i_data_10[2]),
        .I2(Q[3]),
        .I3(i_data_10[3]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h6999)) 
    minusOp__0_carry_i_6
       (.I0(Q[2]),
        .I1(i_data_10[2]),
        .I2(i_data_10[1]),
        .I3(Q[1]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'hE11E)) 
    minusOp__0_carry_i_7
       (.I0(Q[0]),
        .I1(i_data_10[0]),
        .I2(Q[1]),
        .I3(i_data_10[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    minusOp__0_carry_i_8
       (.I0(i_data_10[0]),
        .I1(Q[0]),
        .O(S[0]));
endmodule

module reg_8_bit
   (S,
    Q,
    \data_reg[3]_0 ,
    DI,
    \data_reg[7]_0 ,
    D,
    \data_reg[6]_0 ,
    \minusOp_inferred__0/i__carry__0 ,
    i_data_IBUF,
    CO,
    delta_value,
    \data_reg[2]_0 ,
    \data_reg[3]_1 ,
    \data_reg[0]_0 ,
    CLK);
  output [2:0]S;
  output [7:0]Q;
  output [3:0]\data_reg[3]_0 ;
  output [3:0]DI;
  output [3:0]\data_reg[7]_0 ;
  output [2:0]D;
  output \data_reg[6]_0 ;
  input [6:0]\minusOp_inferred__0/i__carry__0 ;
  input [7:0]i_data_IBUF;
  input [0:0]CO;
  input [5:0]delta_value;
  input \data_reg[2]_0 ;
  input \data_reg[3]_1 ;
  input [1:0]\data_reg[0]_0 ;
  input CLK;

  wire CLK;
  wire [0:0]CO;
  wire [2:0]D;
  wire [3:0]DI;
  wire [7:0]Q;
  wire [2:0]S;
  wire \data[2]_i_2_n_0 ;
  wire [1:0]\data_reg[0]_0 ;
  wire \data_reg[2]_0 ;
  wire [3:0]\data_reg[3]_0 ;
  wire \data_reg[3]_1 ;
  wire \data_reg[6]_0 ;
  wire [3:0]\data_reg[7]_0 ;
  wire [5:0]delta_value;
  wire [7:0]i_data_IBUF;
  wire [7:0]max_comp_out;
  wire [6:0]\minusOp_inferred__0/i__carry__0 ;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data[0]_i_1__1 
       (.I0(i_data_IBUF[0]),
        .I1(CO),
        .I2(Q[0]),
        .O(max_comp_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data[1]_i_1__0 
       (.I0(i_data_IBUF[1]),
        .I1(CO),
        .I2(Q[1]),
        .O(max_comp_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data[2]_i_1__0 
       (.I0(i_data_IBUF[2]),
        .I1(CO),
        .I2(Q[2]),
        .O(max_comp_out[2]));
  LUT6 #(
    .INIT(64'h4444444441444444)) 
    \data[2]_i_1__1 
       (.I0(delta_value[5]),
        .I1(delta_value[4]),
        .I2(\data[2]_i_2_n_0 ),
        .I3(delta_value[0]),
        .I4(delta_value[1]),
        .I5(\data_reg[2]_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \data[2]_i_2 
       (.I0(delta_value[3]),
        .I1(delta_value[2]),
        .O(\data[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data[3]_i_1__0 
       (.I0(i_data_IBUF[3]),
        .I1(CO),
        .I2(Q[3]),
        .O(max_comp_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h11000110)) 
    \data[3]_i_1__1 
       (.I0(delta_value[5]),
        .I1(delta_value[4]),
        .I2(delta_value[2]),
        .I3(delta_value[3]),
        .I4(\data_reg[3]_1 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data[4]_i_1__0 
       (.I0(i_data_IBUF[4]),
        .I1(CO),
        .I2(Q[4]),
        .O(max_comp_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000009)) 
    \data[4]_i_1__1 
       (.I0(delta_value[2]),
        .I1(\data_reg[3]_1 ),
        .I2(delta_value[3]),
        .I3(delta_value[4]),
        .I4(delta_value[5]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data[5]_i_1__0 
       (.I0(i_data_IBUF[5]),
        .I1(CO),
        .I2(Q[5]),
        .O(max_comp_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data[6]_i_1__0 
       (.I0(i_data_IBUF[6]),
        .I1(CO),
        .I2(Q[6]),
        .O(max_comp_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data[7]_i_1__0 
       (.I0(i_data_IBUF[7]),
        .I1(CO),
        .I2(Q[7]),
        .O(max_comp_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \data[8]_i_2 
       (.I0(delta_value[3]),
        .I1(delta_value[2]),
        .I2(delta_value[4]),
        .I3(delta_value[5]),
        .O(\data_reg[6]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(CLK),
        .CE(\data_reg[0]_0 [1]),
        .CLR(\data_reg[0]_0 [0]),
        .D(max_comp_out[0]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(CLK),
        .CE(\data_reg[0]_0 [1]),
        .CLR(\data_reg[0]_0 [0]),
        .D(max_comp_out[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(CLK),
        .CE(\data_reg[0]_0 [1]),
        .CLR(\data_reg[0]_0 [0]),
        .D(max_comp_out[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(CLK),
        .CE(\data_reg[0]_0 [1]),
        .CLR(\data_reg[0]_0 [0]),
        .D(max_comp_out[3]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(CLK),
        .CE(\data_reg[0]_0 [1]),
        .CLR(\data_reg[0]_0 [0]),
        .D(max_comp_out[4]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(CLK),
        .CE(\data_reg[0]_0 [1]),
        .CLR(\data_reg[0]_0 [0]),
        .D(max_comp_out[5]),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(CLK),
        .CE(\data_reg[0]_0 [1]),
        .CLR(\data_reg[0]_0 [0]),
        .D(max_comp_out[6]),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(CLK),
        .CE(\data_reg[0]_0 [1]),
        .CLR(\data_reg[0]_0 [0]),
        .D(max_comp_out[7]),
        .Q(Q[7]));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_1
       (.I0(i_data_IBUF[6]),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(i_data_IBUF[7]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_2
       (.I0(i_data_IBUF[4]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(i_data_IBUF[5]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_3
       (.I0(i_data_IBUF[2]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(i_data_IBUF[3]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    gtOp_carry_i_4
       (.I0(i_data_IBUF[0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(i_data_IBUF[1]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_5
       (.I0(i_data_IBUF[7]),
        .I1(Q[7]),
        .I2(Q[6]),
        .I3(i_data_IBUF[6]),
        .O(\data_reg[7]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_6
       (.I0(i_data_IBUF[5]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(i_data_IBUF[4]),
        .O(\data_reg[7]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_7
       (.I0(i_data_IBUF[3]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(i_data_IBUF[2]),
        .O(\data_reg[7]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    gtOp_carry_i_8
       (.I0(i_data_IBUF[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(i_data_IBUF[0]),
        .O(\data_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__0
       (.I0(Q[6]),
        .I1(\minusOp_inferred__0/i__carry__0 [6]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__0
       (.I0(Q[5]),
        .I1(\minusOp_inferred__0/i__carry__0 [5]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4__0
       (.I0(Q[4]),
        .I1(\minusOp_inferred__0/i__carry__0 [4]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__0
       (.I0(Q[3]),
        .I1(\minusOp_inferred__0/i__carry__0 [3]),
        .O(\data_reg[3]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__0
       (.I0(Q[2]),
        .I1(\minusOp_inferred__0/i__carry__0 [2]),
        .O(\data_reg[3]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__0
       (.I0(Q[1]),
        .I1(\minusOp_inferred__0/i__carry__0 [1]),
        .O(\data_reg[3]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4__0
       (.I0(Q[0]),
        .I1(\minusOp_inferred__0/i__carry__0 [0]),
        .O(\data_reg[3]_0 [0]));
endmodule

(* ORIG_REF_NAME = "reg_8_bit" *) 
module reg_8_bit_0
   (DI,
    \data_reg[3]_0 ,
    \data_reg[6]_0 ,
    \data_reg[7]_0 ,
    S,
    \data_reg[6]_1 ,
    \data_reg[7]_1 ,
    \data_reg[1]_0 ,
    \data_reg[3]_1 ,
    \data_reg[5]_0 ,
    \data_reg[7]_2 ,
    \data_reg[6]_2 ,
    \data_reg[6]_3 ,
    \data_reg[6]_4 ,
    \data_reg[6]_5 ,
    \data_reg[0]_0 ,
    \data_reg[4]_0 ,
    \data_reg[7]_3 ,
    i_data_IBUF,
    O,
    \data_reg[10] ,
    multOp__60_carry__0_i_5_0,
    multOp__60_carry__1_i_8_0,
    CO,
    \data_reg[14] ,
    \data_reg[14]_0 ,
    Q,
    CLK);
  output [2:0]DI;
  output [2:0]\data_reg[3]_0 ;
  output [3:0]\data_reg[6]_0 ;
  output [1:0]\data_reg[7]_0 ;
  output [3:0]S;
  output [3:0]\data_reg[6]_1 ;
  output [1:0]\data_reg[7]_1 ;
  output [3:0]\data_reg[1]_0 ;
  output [3:0]\data_reg[3]_1 ;
  output [3:0]\data_reg[5]_0 ;
  output [0:0]\data_reg[7]_2 ;
  output [3:0]\data_reg[6]_2 ;
  output [1:0]\data_reg[6]_3 ;
  output [3:0]\data_reg[6]_4 ;
  output [1:0]\data_reg[6]_5 ;
  output [0:0]\data_reg[0]_0 ;
  output [3:0]\data_reg[4]_0 ;
  output [3:0]\data_reg[7]_3 ;
  input [7:0]i_data_IBUF;
  input [0:0]O;
  input [1:0]\data_reg[10] ;
  input [1:0]multOp__60_carry__0_i_5_0;
  input [3:0]multOp__60_carry__1_i_8_0;
  input [0:0]CO;
  input [1:0]\data_reg[14] ;
  input [0:0]\data_reg[14]_0 ;
  input [1:0]Q;
  input CLK;

  wire [7:0]A;
  wire CLK;
  wire [0:0]CO;
  wire [2:0]DI;
  wire [0:0]O;
  wire [1:0]Q;
  wire [3:0]S;
  wire [0:0]\data_reg[0]_0 ;
  wire [1:0]\data_reg[10] ;
  wire [1:0]\data_reg[14] ;
  wire [0:0]\data_reg[14]_0 ;
  wire [3:0]\data_reg[1]_0 ;
  wire [2:0]\data_reg[3]_0 ;
  wire [3:0]\data_reg[3]_1 ;
  wire [3:0]\data_reg[4]_0 ;
  wire [3:0]\data_reg[5]_0 ;
  wire [3:0]\data_reg[6]_0 ;
  wire [3:0]\data_reg[6]_1 ;
  wire [3:0]\data_reg[6]_2 ;
  wire [1:0]\data_reg[6]_3 ;
  wire [3:0]\data_reg[6]_4 ;
  wire [1:0]\data_reg[6]_5 ;
  wire [1:0]\data_reg[7]_0 ;
  wire [1:0]\data_reg[7]_1 ;
  wire [0:0]\data_reg[7]_2 ;
  wire [3:0]\data_reg[7]_3 ;
  wire [7:0]i_data_IBUF;
  wire multOp__0_carry__0_i_10_n_0;
  wire multOp__0_carry__0_i_11_n_0;
  wire multOp__0_carry__0_i_12_n_0;
  wire multOp__0_carry__0_i_9_n_0;
  wire multOp__30_carry__0_i_10_n_0;
  wire multOp__30_carry__0_i_11_n_0;
  wire multOp__30_carry__0_i_12_n_0;
  wire multOp__30_carry__0_i_9_n_0;
  wire multOp__60_carry__0_i_10_n_0;
  wire multOp__60_carry__0_i_11_n_0;
  wire multOp__60_carry__0_i_12_n_0;
  wire multOp__60_carry__0_i_13_n_0;
  wire multOp__60_carry__0_i_14_n_0;
  wire multOp__60_carry__0_i_15_n_0;
  wire [1:0]multOp__60_carry__0_i_5_0;
  wire multOp__60_carry__0_i_9_n_0;
  wire multOp__60_carry__1_i_10_n_0;
  wire multOp__60_carry__1_i_11_n_0;
  wire multOp__60_carry__1_i_12_n_0;
  wire multOp__60_carry__1_i_13_n_0;
  wire multOp__60_carry__1_i_14_n_0;
  wire multOp__60_carry__1_i_15_n_0;
  wire multOp__60_carry__1_i_16_n_0;
  wire [3:0]multOp__60_carry__1_i_8_0;
  wire multOp__60_carry__1_i_9_n_0;

  FDCE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(Q[0]),
        .D(i_data_IBUF[0]),
        .Q(A[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(Q[0]),
        .D(i_data_IBUF[1]),
        .Q(A[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(Q[0]),
        .D(i_data_IBUF[2]),
        .Q(A[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(Q[0]),
        .D(i_data_IBUF[3]),
        .Q(A[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(Q[0]),
        .D(i_data_IBUF[4]),
        .Q(A[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(Q[0]),
        .D(i_data_IBUF[5]),
        .Q(A[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(Q[0]),
        .D(i_data_IBUF[6]),
        .Q(A[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(CLK),
        .CE(Q[1]),
        .CLR(Q[0]),
        .D(i_data_IBUF[7]),
        .Q(A[7]));
  LUT6 #(
    .INIT(64'hF880808088000000)) 
    multOp__0_carry__0_i_1
       (.I0(i_data_IBUF[0]),
        .I1(A[6]),
        .I2(A[5]),
        .I3(i_data_IBUF[2]),
        .I4(A[4]),
        .I5(i_data_IBUF[1]),
        .O(\data_reg[6]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_carry__0_i_10
       (.I0(i_data_IBUF[0]),
        .I1(A[6]),
        .O(multOp__0_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_carry__0_i_11
       (.I0(i_data_IBUF[0]),
        .I1(A[5]),
        .O(multOp__0_carry__0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_carry__0_i_12
       (.I0(A[3]),
        .I1(i_data_IBUF[1]),
        .O(multOp__0_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'hF880808088000000)) 
    multOp__0_carry__0_i_2
       (.I0(i_data_IBUF[0]),
        .I1(A[5]),
        .I2(A[4]),
        .I3(i_data_IBUF[2]),
        .I4(A[3]),
        .I5(i_data_IBUF[1]),
        .O(\data_reg[6]_0 [2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    multOp__0_carry__0_i_3
       (.I0(i_data_IBUF[1]),
        .I1(A[3]),
        .I2(A[2]),
        .I3(i_data_IBUF[2]),
        .I4(i_data_IBUF[0]),
        .I5(A[4]),
        .O(\data_reg[6]_0 [1]));
  LUT6 #(
    .INIT(64'hF880808088000000)) 
    multOp__0_carry__0_i_4
       (.I0(A[3]),
        .I1(i_data_IBUF[0]),
        .I2(A[2]),
        .I3(i_data_IBUF[2]),
        .I4(A[1]),
        .I5(i_data_IBUF[1]),
        .O(\data_reg[6]_0 [0]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    multOp__0_carry__0_i_5
       (.I0(\data_reg[6]_0 [3]),
        .I1(A[6]),
        .I2(i_data_IBUF[1]),
        .I3(A[5]),
        .I4(i_data_IBUF[2]),
        .I5(multOp__0_carry__0_i_9_n_0),
        .O(\data_reg[6]_2 [3]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    multOp__0_carry__0_i_6
       (.I0(\data_reg[6]_0 [2]),
        .I1(A[5]),
        .I2(i_data_IBUF[1]),
        .I3(A[4]),
        .I4(i_data_IBUF[2]),
        .I5(multOp__0_carry__0_i_10_n_0),
        .O(\data_reg[6]_2 [2]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    multOp__0_carry__0_i_7
       (.I0(\data_reg[6]_0 [1]),
        .I1(A[4]),
        .I2(i_data_IBUF[1]),
        .I3(A[3]),
        .I4(i_data_IBUF[2]),
        .I5(multOp__0_carry__0_i_11_n_0),
        .O(\data_reg[6]_2 [1]));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    multOp__0_carry__0_i_8
       (.I0(\data_reg[6]_0 [0]),
        .I1(i_data_IBUF[2]),
        .I2(A[2]),
        .I3(multOp__0_carry__0_i_12_n_0),
        .I4(i_data_IBUF[0]),
        .I5(A[4]),
        .O(\data_reg[6]_2 [0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_carry__0_i_9
       (.I0(i_data_IBUF[0]),
        .I1(A[7]),
        .O(multOp__0_carry__0_i_9_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_carry__1_i_1
       (.I0(A[7]),
        .I1(i_data_IBUF[2]),
        .O(\data_reg[7]_0 [1]));
  LUT6 #(
    .INIT(64'hF880808088000000)) 
    multOp__0_carry__1_i_2
       (.I0(i_data_IBUF[0]),
        .I1(A[7]),
        .I2(A[6]),
        .I3(i_data_IBUF[2]),
        .I4(A[5]),
        .I5(i_data_IBUF[1]),
        .O(\data_reg[7]_0 [0]));
  LUT4 #(
    .INIT(16'h7000)) 
    multOp__0_carry__1_i_3
       (.I0(A[6]),
        .I1(i_data_IBUF[1]),
        .I2(i_data_IBUF[2]),
        .I3(A[7]),
        .O(\data_reg[6]_3 [1]));
  LUT6 #(
    .INIT(64'hE57F70803000F000)) 
    multOp__0_carry__1_i_4
       (.I0(A[5]),
        .I1(i_data_IBUF[0]),
        .I2(A[7]),
        .I3(i_data_IBUF[1]),
        .I4(A[6]),
        .I5(i_data_IBUF[2]),
        .O(\data_reg[6]_3 [0]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    multOp__0_carry_i_1
       (.I0(A[3]),
        .I1(i_data_IBUF[0]),
        .I2(i_data_IBUF[2]),
        .I3(A[1]),
        .I4(i_data_IBUF[1]),
        .I5(A[2]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h7888)) 
    multOp__0_carry_i_2
       (.I0(i_data_IBUF[1]),
        .I1(A[1]),
        .I2(i_data_IBUF[2]),
        .I3(A[0]),
        .O(DI[1]));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_carry_i_3
       (.I0(A[0]),
        .I1(i_data_IBUF[1]),
        .O(DI[0]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    multOp__0_carry_i_4
       (.I0(DI[2]),
        .I1(A[1]),
        .I2(i_data_IBUF[2]),
        .I3(A[0]),
        .I4(i_data_IBUF[1]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    multOp__0_carry_i_5
       (.I0(A[0]),
        .I1(i_data_IBUF[2]),
        .I2(A[1]),
        .I3(i_data_IBUF[1]),
        .I4(A[2]),
        .I5(i_data_IBUF[0]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h7888)) 
    multOp__0_carry_i_6
       (.I0(A[1]),
        .I1(i_data_IBUF[0]),
        .I2(i_data_IBUF[1]),
        .I3(A[0]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_carry_i_7
       (.I0(i_data_IBUF[0]),
        .I1(A[0]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'hF880808088000000)) 
    multOp__30_carry__0_i_1
       (.I0(A[6]),
        .I1(i_data_IBUF[3]),
        .I2(A[5]),
        .I3(i_data_IBUF[5]),
        .I4(A[4]),
        .I5(i_data_IBUF[4]),
        .O(\data_reg[6]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    multOp__30_carry__0_i_10
       (.I0(A[6]),
        .I1(i_data_IBUF[3]),
        .O(multOp__30_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    multOp__30_carry__0_i_11
       (.I0(A[5]),
        .I1(i_data_IBUF[3]),
        .O(multOp__30_carry__0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    multOp__30_carry__0_i_12
       (.I0(A[3]),
        .I1(i_data_IBUF[4]),
        .O(multOp__30_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'hF880808088000000)) 
    multOp__30_carry__0_i_2
       (.I0(A[5]),
        .I1(i_data_IBUF[3]),
        .I2(A[4]),
        .I3(i_data_IBUF[5]),
        .I4(A[3]),
        .I5(i_data_IBUF[4]),
        .O(\data_reg[6]_1 [2]));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    multOp__30_carry__0_i_3
       (.I0(i_data_IBUF[4]),
        .I1(A[3]),
        .I2(A[2]),
        .I3(i_data_IBUF[5]),
        .I4(A[4]),
        .I5(i_data_IBUF[3]),
        .O(\data_reg[6]_1 [1]));
  LUT6 #(
    .INIT(64'hF880808088000000)) 
    multOp__30_carry__0_i_4
       (.I0(A[3]),
        .I1(i_data_IBUF[3]),
        .I2(A[2]),
        .I3(i_data_IBUF[5]),
        .I4(A[1]),
        .I5(i_data_IBUF[4]),
        .O(\data_reg[6]_1 [0]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    multOp__30_carry__0_i_5
       (.I0(\data_reg[6]_1 [3]),
        .I1(A[6]),
        .I2(i_data_IBUF[4]),
        .I3(A[5]),
        .I4(i_data_IBUF[5]),
        .I5(multOp__30_carry__0_i_9_n_0),
        .O(\data_reg[6]_4 [3]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    multOp__30_carry__0_i_6
       (.I0(\data_reg[6]_1 [2]),
        .I1(A[5]),
        .I2(i_data_IBUF[4]),
        .I3(A[4]),
        .I4(i_data_IBUF[5]),
        .I5(multOp__30_carry__0_i_10_n_0),
        .O(\data_reg[6]_4 [2]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    multOp__30_carry__0_i_7
       (.I0(\data_reg[6]_1 [1]),
        .I1(A[4]),
        .I2(i_data_IBUF[4]),
        .I3(A[3]),
        .I4(i_data_IBUF[5]),
        .I5(multOp__30_carry__0_i_11_n_0),
        .O(\data_reg[6]_4 [1]));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    multOp__30_carry__0_i_8
       (.I0(\data_reg[6]_1 [0]),
        .I1(i_data_IBUF[5]),
        .I2(A[2]),
        .I3(multOp__30_carry__0_i_12_n_0),
        .I4(A[4]),
        .I5(i_data_IBUF[3]),
        .O(\data_reg[6]_4 [0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    multOp__30_carry__0_i_9
       (.I0(A[7]),
        .I1(i_data_IBUF[3]),
        .O(multOp__30_carry__0_i_9_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__30_carry__1_i_1
       (.I0(A[7]),
        .I1(i_data_IBUF[5]),
        .O(\data_reg[7]_1 [1]));
  LUT6 #(
    .INIT(64'hF880808088000000)) 
    multOp__30_carry__1_i_2
       (.I0(A[7]),
        .I1(i_data_IBUF[3]),
        .I2(A[6]),
        .I3(i_data_IBUF[5]),
        .I4(A[5]),
        .I5(i_data_IBUF[4]),
        .O(\data_reg[7]_1 [0]));
  LUT4 #(
    .INIT(16'h7000)) 
    multOp__30_carry__1_i_3
       (.I0(A[6]),
        .I1(i_data_IBUF[4]),
        .I2(i_data_IBUF[5]),
        .I3(A[7]),
        .O(\data_reg[6]_5 [1]));
  LUT6 #(
    .INIT(64'hE57F70803000F000)) 
    multOp__30_carry__1_i_4
       (.I0(A[5]),
        .I1(i_data_IBUF[3]),
        .I2(A[7]),
        .I3(i_data_IBUF[4]),
        .I4(A[6]),
        .I5(i_data_IBUF[5]),
        .O(\data_reg[6]_5 [0]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    multOp__30_carry_i_1
       (.I0(i_data_IBUF[3]),
        .I1(A[3]),
        .I2(i_data_IBUF[5]),
        .I3(A[1]),
        .I4(i_data_IBUF[4]),
        .I5(A[2]),
        .O(\data_reg[3]_0 [2]));
  LUT4 #(
    .INIT(16'h7888)) 
    multOp__30_carry_i_2
       (.I0(i_data_IBUF[4]),
        .I1(A[1]),
        .I2(i_data_IBUF[5]),
        .I3(A[0]),
        .O(\data_reg[3]_0 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__30_carry_i_3
       (.I0(A[0]),
        .I1(i_data_IBUF[4]),
        .O(\data_reg[3]_0 [0]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    multOp__30_carry_i_4
       (.I0(\data_reg[3]_0 [2]),
        .I1(A[1]),
        .I2(i_data_IBUF[5]),
        .I3(A[0]),
        .I4(i_data_IBUF[4]),
        .O(\data_reg[1]_0 [3]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    multOp__30_carry_i_5
       (.I0(A[0]),
        .I1(i_data_IBUF[5]),
        .I2(A[1]),
        .I3(i_data_IBUF[4]),
        .I4(i_data_IBUF[3]),
        .I5(A[2]),
        .O(\data_reg[1]_0 [2]));
  LUT4 #(
    .INIT(16'h7888)) 
    multOp__30_carry_i_6
       (.I0(i_data_IBUF[3]),
        .I1(A[1]),
        .I2(i_data_IBUF[4]),
        .I3(A[0]),
        .O(\data_reg[1]_0 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__30_carry_i_7
       (.I0(A[0]),
        .I1(i_data_IBUF[3]),
        .O(\data_reg[1]_0 [0]));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h7111)) 
    multOp__60_carry__0_i_1
       (.I0(multOp__60_carry__0_i_9_n_0),
        .I1(multOp__60_carry__0_i_10_n_0),
        .I2(A[3]),
        .I3(i_data_IBUF[6]),
        .O(\data_reg[3]_1 [3]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    multOp__60_carry__0_i_10
       (.I0(i_data_IBUF[7]),
        .I1(A[2]),
        .I2(multOp__60_carry__0_i_5_0[1]),
        .I3(multOp__60_carry__1_i_8_0[2]),
        .O(multOp__60_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    multOp__60_carry__0_i_11
       (.I0(i_data_IBUF[7]),
        .I1(A[1]),
        .I2(multOp__60_carry__0_i_5_0[0]),
        .I3(multOp__60_carry__1_i_8_0[1]),
        .O(multOp__60_carry__0_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h077F)) 
    multOp__60_carry__0_i_12
       (.I0(A[2]),
        .I1(i_data_IBUF[7]),
        .I2(multOp__60_carry__1_i_8_0[2]),
        .I3(multOp__60_carry__0_i_5_0[1]),
        .O(multOp__60_carry__0_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    multOp__60_carry__0_i_13
       (.I0(i_data_IBUF[7]),
        .I1(A[3]),
        .I2(CO),
        .I3(multOp__60_carry__1_i_8_0[3]),
        .O(multOp__60_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'h7887877887788778)) 
    multOp__60_carry__0_i_14
       (.I0(i_data_IBUF[7]),
        .I1(A[1]),
        .I2(multOp__60_carry__0_i_5_0[0]),
        .I3(multOp__60_carry__1_i_8_0[1]),
        .I4(A[2]),
        .I5(i_data_IBUF[6]),
        .O(multOp__60_carry__0_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    multOp__60_carry__0_i_15
       (.I0(i_data_IBUF[6]),
        .I1(A[1]),
        .I2(O),
        .I3(\data_reg[10] [0]),
        .O(multOp__60_carry__0_i_15_n_0));
  LUT6 #(
    .INIT(64'hFF80000080000000)) 
    multOp__60_carry__0_i_2
       (.I0(A[1]),
        .I1(O),
        .I2(\data_reg[10] [0]),
        .I3(A[2]),
        .I4(i_data_IBUF[6]),
        .I5(multOp__60_carry__0_i_11_n_0),
        .O(\data_reg[3]_1 [2]));
  LUT6 #(
    .INIT(64'h80FF7FFF7F008000)) 
    multOp__60_carry__0_i_3
       (.I0(\data_reg[10] [0]),
        .I1(O),
        .I2(A[1]),
        .I3(i_data_IBUF[6]),
        .I4(A[2]),
        .I5(multOp__60_carry__0_i_11_n_0),
        .O(\data_reg[3]_1 [1]));
  LUT4 #(
    .INIT(16'h8778)) 
    multOp__60_carry__0_i_4
       (.I0(i_data_IBUF[7]),
        .I1(A[0]),
        .I2(\data_reg[10] [1]),
        .I3(multOp__60_carry__1_i_8_0[0]),
        .O(\data_reg[3]_1 [0]));
  LUT5 #(
    .INIT(32'h69969696)) 
    multOp__60_carry__0_i_5
       (.I0(\data_reg[3]_1 [3]),
        .I1(multOp__60_carry__0_i_12_n_0),
        .I2(multOp__60_carry__0_i_13_n_0),
        .I3(A[4]),
        .I4(i_data_IBUF[6]),
        .O(\data_reg[4]_0 [3]));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h69999666)) 
    multOp__60_carry__0_i_6
       (.I0(multOp__60_carry__0_i_9_n_0),
        .I1(multOp__60_carry__0_i_10_n_0),
        .I2(A[3]),
        .I3(i_data_IBUF[6]),
        .I4(\data_reg[3]_1 [2]),
        .O(\data_reg[4]_0 [2]));
  LUT6 #(
    .INIT(64'h9996966696669666)) 
    multOp__60_carry__0_i_7
       (.I0(multOp__60_carry__0_i_14_n_0),
        .I1(multOp__60_carry__0_i_15_n_0),
        .I2(multOp__60_carry__1_i_8_0[0]),
        .I3(\data_reg[10] [1]),
        .I4(i_data_IBUF[7]),
        .I5(A[0]),
        .O(\data_reg[4]_0 [1]));
  LUT5 #(
    .INIT(32'h956A6A6A)) 
    multOp__60_carry__0_i_8
       (.I0(\data_reg[3]_1 [0]),
        .I1(\data_reg[10] [0]),
        .I2(O),
        .I3(A[1]),
        .I4(i_data_IBUF[6]),
        .O(\data_reg[4]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h077F)) 
    multOp__60_carry__0_i_9
       (.I0(A[1]),
        .I1(i_data_IBUF[7]),
        .I2(multOp__60_carry__1_i_8_0[1]),
        .I3(multOp__60_carry__0_i_5_0[0]),
        .O(multOp__60_carry__0_i_9_n_0));
  LUT6 #(
    .INIT(64'h088F0F008F080F00)) 
    multOp__60_carry__1_i_1
       (.I0(\data_reg[14] [1]),
        .I1(A[5]),
        .I2(multOp__60_carry__1_i_9_n_0),
        .I3(\data_reg[14]_0 ),
        .I4(i_data_IBUF[7]),
        .I5(A[6]),
        .O(\data_reg[5]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h7)) 
    multOp__60_carry__1_i_10
       (.I0(A[6]),
        .I1(i_data_IBUF[6]),
        .O(multOp__60_carry__1_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h077F)) 
    multOp__60_carry__1_i_11
       (.I0(A[3]),
        .I1(i_data_IBUF[7]),
        .I2(multOp__60_carry__1_i_8_0[3]),
        .I3(CO),
        .O(multOp__60_carry__1_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    multOp__60_carry__1_i_12
       (.I0(\data_reg[14] [1]),
        .I1(i_data_IBUF[7]),
        .I2(A[5]),
        .O(multOp__60_carry__1_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h956A6A6A)) 
    multOp__60_carry__1_i_13
       (.I0(\data_reg[14]_0 ),
        .I1(i_data_IBUF[7]),
        .I2(A[6]),
        .I3(A[7]),
        .I4(i_data_IBUF[6]),
        .O(multOp__60_carry__1_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h956A6A6A)) 
    multOp__60_carry__1_i_14
       (.I0(\data_reg[14] [1]),
        .I1(i_data_IBUF[7]),
        .I2(A[5]),
        .I3(A[6]),
        .I4(i_data_IBUF[6]),
        .O(multOp__60_carry__1_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    multOp__60_carry__1_i_15
       (.I0(A[4]),
        .I1(i_data_IBUF[7]),
        .O(multOp__60_carry__1_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h6A959595)) 
    multOp__60_carry__1_i_16
       (.I0(\data_reg[14] [0]),
        .I1(i_data_IBUF[7]),
        .I2(A[4]),
        .I3(A[5]),
        .I4(i_data_IBUF[6]),
        .O(multOp__60_carry__1_i_16_n_0));
  LUT6 #(
    .INIT(64'h088F0F008F080F00)) 
    multOp__60_carry__1_i_2
       (.I0(\data_reg[14] [0]),
        .I1(A[4]),
        .I2(multOp__60_carry__1_i_10_n_0),
        .I3(\data_reg[14] [1]),
        .I4(i_data_IBUF[7]),
        .I5(A[5]),
        .O(\data_reg[5]_0 [2]));
  LUT6 #(
    .INIT(64'h40D5D5D5D5404040)) 
    multOp__60_carry__1_i_3
       (.I0(multOp__60_carry__1_i_11_n_0),
        .I1(i_data_IBUF[6]),
        .I2(A[5]),
        .I3(A[4]),
        .I4(i_data_IBUF[7]),
        .I5(\data_reg[14] [0]),
        .O(\data_reg[5]_0 [1]));
  LUT4 #(
    .INIT(16'h7111)) 
    multOp__60_carry__1_i_4
       (.I0(multOp__60_carry__0_i_12_n_0),
        .I1(multOp__60_carry__0_i_13_n_0),
        .I2(A[4]),
        .I3(i_data_IBUF[6]),
        .O(\data_reg[5]_0 [0]));
  LUT6 #(
    .INIT(64'h8FEC1C801CEC7080)) 
    multOp__60_carry__1_i_5
       (.I0(i_data_IBUF[6]),
        .I1(multOp__60_carry__1_i_12_n_0),
        .I2(A[7]),
        .I3(i_data_IBUF[7]),
        .I4(\data_reg[14]_0 ),
        .I5(A[6]),
        .O(\data_reg[7]_3 [3]));
  LUT5 #(
    .INIT(32'h96666666)) 
    multOp__60_carry__1_i_6
       (.I0(\data_reg[5]_0 [2]),
        .I1(multOp__60_carry__1_i_13_n_0),
        .I2(\data_reg[14] [1]),
        .I3(i_data_IBUF[7]),
        .I4(A[5]),
        .O(\data_reg[7]_3 [2]));
  LUT6 #(
    .INIT(64'h08F7708F708FF708)) 
    multOp__60_carry__1_i_7
       (.I0(A[5]),
        .I1(i_data_IBUF[6]),
        .I2(multOp__60_carry__1_i_11_n_0),
        .I3(multOp__60_carry__1_i_14_n_0),
        .I4(\data_reg[14] [0]),
        .I5(multOp__60_carry__1_i_15_n_0),
        .O(\data_reg[7]_3 [1]));
  LUT6 #(
    .INIT(64'h088FF770F770088F)) 
    multOp__60_carry__1_i_8
       (.I0(i_data_IBUF[6]),
        .I1(A[4]),
        .I2(multOp__60_carry__0_i_13_n_0),
        .I3(multOp__60_carry__0_i_12_n_0),
        .I4(multOp__60_carry__1_i_11_n_0),
        .I5(multOp__60_carry__1_i_16_n_0),
        .O(\data_reg[7]_3 [0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h7)) 
    multOp__60_carry__1_i_9
       (.I0(A[7]),
        .I1(i_data_IBUF[6]),
        .O(multOp__60_carry__1_i_9_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    multOp__60_carry__2_i_1
       (.I0(A[7]),
        .I1(A[6]),
        .I2(i_data_IBUF[7]),
        .I3(\data_reg[14]_0 ),
        .O(\data_reg[7]_2 ));
  LUT4 #(
    .INIT(16'h9666)) 
    multOp__60_carry_i_2
       (.I0(O),
        .I1(\data_reg[10] [0]),
        .I2(i_data_IBUF[6]),
        .I3(A[0]),
        .O(\data_reg[0]_0 ));
endmodule

module reg_8_bit_h
   (S,
    \data_reg[7]_0 ,
    \data_reg[6]_0 ,
    \data_reg[3]_0 ,
    DI,
    \data_reg[7]_1 ,
    Q,
    i_data_IBUF,
    CO,
    \data_reg[0]_0 ,
    CLK);
  output [0:0]S;
  output [3:0]\data_reg[7]_0 ;
  output [6:0]\data_reg[6]_0 ;
  output [3:0]\data_reg[3]_0 ;
  output [3:0]DI;
  output [3:0]\data_reg[7]_1 ;
  input [0:0]Q;
  input [7:0]i_data_IBUF;
  input [0:0]CO;
  input [1:0]\data_reg[0]_0 ;
  input CLK;

  wire CLK;
  wire [0:0]CO;
  wire [3:0]DI;
  wire [0:0]Q;
  wire [0:0]S;
  wire [1:0]\data_reg[0]_0 ;
  wire [3:0]\data_reg[3]_0 ;
  wire [6:0]\data_reg[6]_0 ;
  wire [3:0]\data_reg[7]_0 ;
  wire [3:0]\data_reg[7]_1 ;
  wire \data_reg_n_0_[7] ;
  wire [7:0]i_data_IBUF;
  wire [7:0]min_comp_out;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data[0]_i_1__0 
       (.I0(i_data_IBUF[0]),
        .I1(CO),
        .I2(\data_reg[6]_0 [0]),
        .O(min_comp_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data[1]_i_1 
       (.I0(i_data_IBUF[1]),
        .I1(CO),
        .I2(\data_reg[6]_0 [1]),
        .O(min_comp_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data[2]_i_1 
       (.I0(i_data_IBUF[2]),
        .I1(CO),
        .I2(\data_reg[6]_0 [2]),
        .O(min_comp_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data[3]_i_1 
       (.I0(i_data_IBUF[3]),
        .I1(CO),
        .I2(\data_reg[6]_0 [3]),
        .O(min_comp_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data[4]_i_1 
       (.I0(i_data_IBUF[4]),
        .I1(CO),
        .I2(\data_reg[6]_0 [4]),
        .O(min_comp_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data[5]_i_1 
       (.I0(i_data_IBUF[5]),
        .I1(CO),
        .I2(\data_reg[6]_0 [5]),
        .O(min_comp_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data[6]_i_1 
       (.I0(i_data_IBUF[6]),
        .I1(CO),
        .I2(\data_reg[6]_0 [6]),
        .O(min_comp_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data[7]_i_1 
       (.I0(i_data_IBUF[7]),
        .I1(CO),
        .I2(\data_reg_n_0_[7] ),
        .O(min_comp_out[7]));
  FDPE #(
    .INIT(1'b1)) 
    \data_reg[0] 
       (.C(CLK),
        .CE(\data_reg[0]_0 [1]),
        .D(min_comp_out[0]),
        .PRE(\data_reg[0]_0 [0]),
        .Q(\data_reg[6]_0 [0]));
  FDPE #(
    .INIT(1'b1)) 
    \data_reg[1] 
       (.C(CLK),
        .CE(\data_reg[0]_0 [1]),
        .D(min_comp_out[1]),
        .PRE(\data_reg[0]_0 [0]),
        .Q(\data_reg[6]_0 [1]));
  FDPE #(
    .INIT(1'b1)) 
    \data_reg[2] 
       (.C(CLK),
        .CE(\data_reg[0]_0 [1]),
        .D(min_comp_out[2]),
        .PRE(\data_reg[0]_0 [0]),
        .Q(\data_reg[6]_0 [2]));
  FDPE #(
    .INIT(1'b1)) 
    \data_reg[3] 
       (.C(CLK),
        .CE(\data_reg[0]_0 [1]),
        .D(min_comp_out[3]),
        .PRE(\data_reg[0]_0 [0]),
        .Q(\data_reg[6]_0 [3]));
  FDPE #(
    .INIT(1'b1)) 
    \data_reg[4] 
       (.C(CLK),
        .CE(\data_reg[0]_0 [1]),
        .D(min_comp_out[4]),
        .PRE(\data_reg[0]_0 [0]),
        .Q(\data_reg[6]_0 [4]));
  FDPE #(
    .INIT(1'b1)) 
    \data_reg[5] 
       (.C(CLK),
        .CE(\data_reg[0]_0 [1]),
        .D(min_comp_out[5]),
        .PRE(\data_reg[0]_0 [0]),
        .Q(\data_reg[6]_0 [5]));
  FDPE #(
    .INIT(1'b1)) 
    \data_reg[6] 
       (.C(CLK),
        .CE(\data_reg[0]_0 [1]),
        .D(min_comp_out[6]),
        .PRE(\data_reg[0]_0 [0]),
        .Q(\data_reg[6]_0 [6]));
  FDPE #(
    .INIT(1'b1)) 
    \data_reg[7] 
       (.C(CLK),
        .CE(\data_reg[0]_0 [1]),
        .D(min_comp_out[7]),
        .PRE(\data_reg[0]_0 [0]),
        .Q(\data_reg_n_0_[7] ));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1
       (.I0(\data_reg_n_0_[7] ),
        .I1(i_data_IBUF[7]),
        .O(\data_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__0
       (.I0(\data_reg_n_0_[7] ),
        .I1(Q),
        .O(S));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2
       (.I0(i_data_IBUF[6]),
        .I1(\data_reg[6]_0 [6]),
        .O(\data_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3
       (.I0(i_data_IBUF[5]),
        .I1(\data_reg[6]_0 [5]),
        .O(\data_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4
       (.I0(i_data_IBUF[4]),
        .I1(\data_reg[6]_0 [4]),
        .O(\data_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1
       (.I0(i_data_IBUF[3]),
        .I1(\data_reg[6]_0 [3]),
        .O(\data_reg[3]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2
       (.I0(i_data_IBUF[2]),
        .I1(\data_reg[6]_0 [2]),
        .O(\data_reg[3]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3
       (.I0(i_data_IBUF[1]),
        .I1(\data_reg[6]_0 [1]),
        .O(\data_reg[3]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4
       (.I0(i_data_IBUF[0]),
        .I1(\data_reg[6]_0 [0]),
        .O(\data_reg[3]_0 [0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltOp_carry_i_1
       (.I0(\data_reg[6]_0 [6]),
        .I1(i_data_IBUF[6]),
        .I2(i_data_IBUF[7]),
        .I3(\data_reg_n_0_[7] ),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltOp_carry_i_2
       (.I0(\data_reg[6]_0 [4]),
        .I1(i_data_IBUF[4]),
        .I2(i_data_IBUF[5]),
        .I3(\data_reg[6]_0 [5]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltOp_carry_i_3
       (.I0(\data_reg[6]_0 [2]),
        .I1(i_data_IBUF[2]),
        .I2(i_data_IBUF[3]),
        .I3(\data_reg[6]_0 [3]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    ltOp_carry_i_4
       (.I0(\data_reg[6]_0 [0]),
        .I1(i_data_IBUF[0]),
        .I2(i_data_IBUF[1]),
        .I3(\data_reg[6]_0 [1]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_5
       (.I0(i_data_IBUF[7]),
        .I1(\data_reg_n_0_[7] ),
        .I2(\data_reg[6]_0 [6]),
        .I3(i_data_IBUF[6]),
        .O(\data_reg[7]_1 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_6
       (.I0(\data_reg[6]_0 [5]),
        .I1(i_data_IBUF[5]),
        .I2(\data_reg[6]_0 [4]),
        .I3(i_data_IBUF[4]),
        .O(\data_reg[7]_1 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_7
       (.I0(\data_reg[6]_0 [3]),
        .I1(i_data_IBUF[3]),
        .I2(\data_reg[6]_0 [2]),
        .I3(i_data_IBUF[2]),
        .O(\data_reg[7]_1 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    ltOp_carry_i_8
       (.I0(\data_reg[6]_0 [1]),
        .I1(i_data_IBUF[1]),
        .I2(\data_reg[6]_0 [0]),
        .I3(i_data_IBUF[0]),
        .O(\data_reg[7]_1 [0]));
endmodule

module reg_9_bit
   (DI,
    Q,
    \data_reg[8]_0 ,
    \data_reg[3]_0 ,
    \data_reg[6]_0 ,
    \data_reg[8]_1 ,
    \data_reg[5]_0 ,
    S,
    \data_reg[0]_0 ,
    \data_reg[6]_1 ,
    \data_reg[4]_0 ,
    \data_reg[6]_2 ,
    \data_reg[8]_2 ,
    \data_reg[3]_1 ,
    \data_reg[3]_2 ,
    \data_reg[1]_0 ,
    \data_reg[2]_0 ,
    \data_reg[7]_0 ,
    \data_reg[6]_3 ,
    \data_reg[7]_1 ,
    \data_reg[7]_2 ,
    B,
    \multOp_inferred__0/i___66_carry__1 ,
    CO,
    O,
    i___66_carry__2_i_1_0,
    delta_value,
    \data_reg[5]_1 ,
    \multOp_inferred__0/i___66_carry__1_0 ,
    \multOp_inferred__0/i___66_carry__1_1 ,
    \multOp_inferred__0/i___66_carry__1_2 ,
    \multOp_inferred__0/i___66_carry__2 ,
    \data_reg[0]_1 ,
    CLK,
    D);
  output [0:0]DI;
  output [8:0]Q;
  output [0:0]\data_reg[8]_0 ;
  output [1:0]\data_reg[3]_0 ;
  output [2:0]\data_reg[6]_0 ;
  output [2:0]\data_reg[8]_1 ;
  output \data_reg[5]_0 ;
  output [1:0]S;
  output [0:0]\data_reg[0]_0 ;
  output [1:0]\data_reg[6]_1 ;
  output \data_reg[4]_0 ;
  output [0:0]\data_reg[6]_2 ;
  output [1:0]\data_reg[8]_2 ;
  output \data_reg[3]_1 ;
  output \data_reg[3]_2 ;
  output [2:0]\data_reg[1]_0 ;
  output [0:0]\data_reg[2]_0 ;
  output [1:0]\data_reg[7]_0 ;
  output [2:0]\data_reg[6]_3 ;
  output [2:0]\data_reg[7]_1 ;
  output [2:0]\data_reg[7]_2 ;
  input [7:0]B;
  input \multOp_inferred__0/i___66_carry__1 ;
  input [0:0]CO;
  input [2:0]O;
  input [0:0]i___66_carry__2_i_1_0;
  input [7:0]delta_value;
  input \data_reg[5]_1 ;
  input \multOp_inferred__0/i___66_carry__1_0 ;
  input \multOp_inferred__0/i___66_carry__1_1 ;
  input \multOp_inferred__0/i___66_carry__1_2 ;
  input \multOp_inferred__0/i___66_carry__2 ;
  input [1:0]\data_reg[0]_1 ;
  input CLK;
  input [2:0]D;

  wire [7:0]B;
  wire CLK;
  wire [0:0]CO;
  wire [2:0]D;
  wire [0:0]DI;
  wire [2:0]O;
  wire [8:0]Q;
  wire [1:0]S;
  wire \data[0]_i_1__2_n_0 ;
  wire \data[1]_i_1__1_n_0 ;
  wire \data[1]_i_2_n_0 ;
  wire \data[5]_i_1__1_n_0 ;
  wire \data[6]_i_1__1_n_0 ;
  wire \data[7]_i_1__1_n_0 ;
  wire [0:0]\data_reg[0]_0 ;
  wire [1:0]\data_reg[0]_1 ;
  wire [2:0]\data_reg[1]_0 ;
  wire [0:0]\data_reg[2]_0 ;
  wire [1:0]\data_reg[3]_0 ;
  wire \data_reg[3]_1 ;
  wire \data_reg[3]_2 ;
  wire \data_reg[4]_0 ;
  wire \data_reg[5]_0 ;
  wire \data_reg[5]_1 ;
  wire [2:0]\data_reg[6]_0 ;
  wire [1:0]\data_reg[6]_1 ;
  wire [0:0]\data_reg[6]_2 ;
  wire [2:0]\data_reg[6]_3 ;
  wire [1:0]\data_reg[7]_0 ;
  wire [2:0]\data_reg[7]_1 ;
  wire [2:0]\data_reg[7]_2 ;
  wire [0:0]\data_reg[8]_0 ;
  wire [2:0]\data_reg[8]_1 ;
  wire [1:0]\data_reg[8]_2 ;
  wire [7:0]delta_value;
  wire i___0_carry__0_i_12_n_0;
  wire i___33_carry__0_i_10_n_0;
  wire i___33_carry__0_i_12_n_0;
  wire i___33_carry__0_i_9_n_0;
  wire i___33_carry__1_i_7_n_0;
  wire i___66_carry__1_i_10_n_0;
  wire i___66_carry__1_i_12_n_0;
  wire i___66_carry__1_i_14_n_0;
  wire i___66_carry__1_i_15_n_0;
  wire i___66_carry__1_i_16_n_0;
  wire [0:0]i___66_carry__2_i_1_0;
  wire i___66_carry__2_i_4_n_0;
  wire \multOp_inferred__0/i___66_carry__1 ;
  wire \multOp_inferred__0/i___66_carry__1_0 ;
  wire \multOp_inferred__0/i___66_carry__1_1 ;
  wire \multOp_inferred__0/i___66_carry__1_2 ;
  wire \multOp_inferred__0/i___66_carry__2 ;
  wire [7:7]sel0;

  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \data[0]_i_1__2 
       (.I0(delta_value[7]),
        .I1(delta_value[0]),
        .I2(delta_value[6]),
        .I3(delta_value[1]),
        .I4(\data[1]_i_2_n_0 ),
        .O(\data[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hFF7F0080)) 
    \data[1]_i_1__1 
       (.I0(delta_value[0]),
        .I1(delta_value[6]),
        .I2(delta_value[1]),
        .I3(\data[1]_i_2_n_0 ),
        .I4(delta_value[7]),
        .O(\data[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \data[1]_i_2 
       (.I0(delta_value[2]),
        .I1(delta_value[3]),
        .I2(delta_value[4]),
        .I3(delta_value[5]),
        .O(\data[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \data[2]_i_3 
       (.I0(delta_value[3]),
        .I1(delta_value[2]),
        .O(\data_reg[3]_2 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \data[4]_i_2 
       (.I0(delta_value[2]),
        .I1(delta_value[3]),
        .I2(delta_value[1]),
        .I3(delta_value[0]),
        .O(\data_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h6CCC0000)) 
    \data[5]_i_1__1 
       (.I0(delta_value[2]),
        .I1(delta_value[3]),
        .I2(delta_value[1]),
        .I3(delta_value[0]),
        .I4(\data_reg[5]_1 ),
        .O(\data[5]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h02080808)) 
    \data[6]_i_1__1 
       (.I0(\data_reg[5]_1 ),
        .I1(delta_value[2]),
        .I2(delta_value[3]),
        .I3(delta_value[1]),
        .I4(delta_value[0]),
        .O(\data[6]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00020200)) 
    \data[7]_i_1__1 
       (.I0(\data_reg[5]_1 ),
        .I1(delta_value[2]),
        .I2(delta_value[3]),
        .I3(delta_value[1]),
        .I4(delta_value[0]),
        .O(\data[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \data[8]_i_1 
       (.I0(delta_value[3]),
        .I1(delta_value[2]),
        .I2(delta_value[0]),
        .I3(delta_value[1]),
        .I4(\data_reg[5]_1 ),
        .O(sel0));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[0] 
       (.C(CLK),
        .CE(\data_reg[0]_1 [1]),
        .CLR(\data_reg[0]_1 [0]),
        .D(\data[0]_i_1__2_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[1] 
       (.C(CLK),
        .CE(\data_reg[0]_1 [1]),
        .CLR(\data_reg[0]_1 [0]),
        .D(\data[1]_i_1__1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[2] 
       (.C(CLK),
        .CE(\data_reg[0]_1 [1]),
        .CLR(\data_reg[0]_1 [0]),
        .D(D[0]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[3] 
       (.C(CLK),
        .CE(\data_reg[0]_1 [1]),
        .CLR(\data_reg[0]_1 [0]),
        .D(D[1]),
        .Q(Q[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[4] 
       (.C(CLK),
        .CE(\data_reg[0]_1 [1]),
        .CLR(\data_reg[0]_1 [0]),
        .D(D[2]),
        .Q(Q[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[5] 
       (.C(CLK),
        .CE(\data_reg[0]_1 [1]),
        .CLR(\data_reg[0]_1 [0]),
        .D(\data[5]_i_1__1_n_0 ),
        .Q(Q[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[6] 
       (.C(CLK),
        .CE(\data_reg[0]_1 [1]),
        .CLR(\data_reg[0]_1 [0]),
        .D(\data[6]_i_1__1_n_0 ),
        .Q(Q[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[7] 
       (.C(CLK),
        .CE(\data_reg[0]_1 [1]),
        .CLR(\data_reg[0]_1 [0]),
        .D(\data[7]_i_1__1_n_0 ),
        .Q(Q[7]));
  FDCE #(
    .INIT(1'b0)) 
    \data_reg[8] 
       (.C(CLK),
        .CE(\data_reg[0]_1 [1]),
        .CLR(\data_reg[0]_1 [0]),
        .D(sel0),
        .Q(Q[8]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    i___0_carry__0_i_12
       (.I0(Q[3]),
        .I1(B[1]),
        .O(i___0_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'hF880808088000000)) 
    i___0_carry__0_i_4
       (.I0(Q[3]),
        .I1(B[0]),
        .I2(Q[2]),
        .I3(B[2]),
        .I4(Q[1]),
        .I5(B[1]),
        .O(DI));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    i___0_carry__0_i_8
       (.I0(DI),
        .I1(B[2]),
        .I2(Q[2]),
        .I3(i___0_carry__0_i_12_n_0),
        .I4(B[0]),
        .I5(Q[4]),
        .O(\data_reg[2]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    i___0_carry__1_i_1
       (.I0(Q[8]),
        .I1(B[2]),
        .O(\data_reg[8]_0 ));
  LUT4 #(
    .INIT(16'h7000)) 
    i___0_carry__1_i_4
       (.I0(Q[7]),
        .I1(B[1]),
        .I2(B[2]),
        .I3(Q[8]),
        .O(\data_reg[7]_0 [1]));
  LUT6 #(
    .INIT(64'hE57F70803000F000)) 
    i___0_carry__1_i_5
       (.I0(Q[6]),
        .I1(B[0]),
        .I2(Q[8]),
        .I3(B[1]),
        .I4(Q[7]),
        .I5(B[2]),
        .O(\data_reg[7]_0 [0]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    i___0_carry_i_1
       (.I0(Q[3]),
        .I1(B[0]),
        .I2(B[2]),
        .I3(Q[1]),
        .I4(B[1]),
        .I5(Q[2]),
        .O(\data_reg[3]_0 [1]));
  LUT2 #(
    .INIT(4'h8)) 
    i___0_carry_i_3
       (.I0(Q[0]),
        .I1(B[1]),
        .O(\data_reg[3]_0 [0]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    i___0_carry_i_4
       (.I0(\data_reg[3]_0 [1]),
        .I1(Q[1]),
        .I2(B[2]),
        .I3(Q[0]),
        .I4(B[1]),
        .O(\data_reg[1]_0 [2]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    i___0_carry_i_5
       (.I0(Q[0]),
        .I1(B[2]),
        .I2(Q[1]),
        .I3(B[1]),
        .I4(Q[2]),
        .I5(B[0]),
        .O(\data_reg[1]_0 [1]));
  LUT4 #(
    .INIT(16'h7888)) 
    i___0_carry_i_6
       (.I0(Q[1]),
        .I1(B[0]),
        .I2(B[1]),
        .I3(Q[0]),
        .O(\data_reg[1]_0 [0]));
  LUT6 #(
    .INIT(64'hF880808088000000)) 
    i___33_carry__0_i_1
       (.I0(Q[6]),
        .I1(B[3]),
        .I2(Q[5]),
        .I3(B[5]),
        .I4(Q[4]),
        .I5(B[4]),
        .O(\data_reg[6]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    i___33_carry__0_i_10
       (.I0(Q[6]),
        .I1(B[3]),
        .O(i___33_carry__0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    i___33_carry__0_i_11
       (.I0(Q[5]),
        .I1(B[3]),
        .O(\data_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    i___33_carry__0_i_12
       (.I0(Q[3]),
        .I1(B[4]),
        .O(i___33_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'hF880808088000000)) 
    i___33_carry__0_i_2
       (.I0(Q[5]),
        .I1(B[3]),
        .I2(Q[4]),
        .I3(B[5]),
        .I4(Q[3]),
        .I5(B[4]),
        .O(\data_reg[6]_0 [1]));
  LUT6 #(
    .INIT(64'hF880808088000000)) 
    i___33_carry__0_i_4
       (.I0(Q[3]),
        .I1(B[3]),
        .I2(Q[2]),
        .I3(B[5]),
        .I4(Q[1]),
        .I5(B[4]),
        .O(\data_reg[6]_0 [0]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    i___33_carry__0_i_5
       (.I0(\data_reg[6]_0 [2]),
        .I1(Q[6]),
        .I2(B[4]),
        .I3(Q[5]),
        .I4(B[5]),
        .I5(i___33_carry__0_i_9_n_0),
        .O(\data_reg[6]_3 [2]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    i___33_carry__0_i_6
       (.I0(\data_reg[6]_0 [1]),
        .I1(Q[5]),
        .I2(B[4]),
        .I3(Q[4]),
        .I4(B[5]),
        .I5(i___33_carry__0_i_10_n_0),
        .O(\data_reg[6]_3 [1]));
  LUT6 #(
    .INIT(64'h6A95956A956A956A)) 
    i___33_carry__0_i_8
       (.I0(\data_reg[6]_0 [0]),
        .I1(B[5]),
        .I2(Q[2]),
        .I3(i___33_carry__0_i_12_n_0),
        .I4(Q[4]),
        .I5(B[3]),
        .O(\data_reg[6]_3 [0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    i___33_carry__0_i_9
       (.I0(Q[7]),
        .I1(B[3]),
        .O(i___33_carry__0_i_9_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i___33_carry__1_i_1
       (.I0(Q[8]),
        .I1(B[5]),
        .O(\data_reg[8]_1 [2]));
  LUT6 #(
    .INIT(64'hF880808088000000)) 
    i___33_carry__1_i_2
       (.I0(Q[8]),
        .I1(B[3]),
        .I2(Q[7]),
        .I3(B[5]),
        .I4(Q[6]),
        .I5(B[4]),
        .O(\data_reg[8]_1 [1]));
  LUT6 #(
    .INIT(64'hF880808088000000)) 
    i___33_carry__1_i_3
       (.I0(Q[7]),
        .I1(B[3]),
        .I2(Q[6]),
        .I3(B[5]),
        .I4(Q[5]),
        .I5(B[4]),
        .O(\data_reg[8]_1 [0]));
  LUT4 #(
    .INIT(16'h7000)) 
    i___33_carry__1_i_4
       (.I0(Q[7]),
        .I1(B[4]),
        .I2(B[5]),
        .I3(Q[8]),
        .O(\data_reg[7]_1 [2]));
  LUT6 #(
    .INIT(64'hE57F70803000F000)) 
    i___33_carry__1_i_5
       (.I0(Q[6]),
        .I1(B[3]),
        .I2(Q[8]),
        .I3(B[4]),
        .I4(Q[7]),
        .I5(B[5]),
        .O(\data_reg[7]_1 [1]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    i___33_carry__1_i_6
       (.I0(\data_reg[8]_1 [0]),
        .I1(Q[7]),
        .I2(B[4]),
        .I3(Q[6]),
        .I4(B[5]),
        .I5(i___33_carry__1_i_7_n_0),
        .O(\data_reg[7]_1 [0]));
  LUT2 #(
    .INIT(4'h8)) 
    i___33_carry__1_i_7
       (.I0(Q[8]),
        .I1(B[3]),
        .O(i___33_carry__1_i_7_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    i___33_carry_i_3
       (.I0(Q[0]),
        .I1(B[4]),
        .O(\data_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    i___33_carry_i_5
       (.I0(Q[0]),
        .I1(B[5]),
        .I2(Q[1]),
        .I3(B[4]),
        .I4(B[3]),
        .I5(Q[2]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h8)) 
    i___33_carry_i_7
       (.I0(Q[0]),
        .I1(B[3]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hEA80)) 
    i___66_carry__1_i_10
       (.I0(CO),
        .I1(Q[4]),
        .I2(B[7]),
        .I3(O[0]),
        .O(i___66_carry__1_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h7)) 
    i___66_carry__1_i_12
       (.I0(Q[4]),
        .I1(B[7]),
        .O(i___66_carry__1_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h6A959595)) 
    i___66_carry__1_i_14
       (.I0(i___66_carry__2_i_1_0),
        .I1(B[7]),
        .I2(Q[7]),
        .I3(Q[8]),
        .I4(B[6]),
        .O(i___66_carry__1_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    i___66_carry__1_i_15
       (.I0(Q[6]),
        .I1(B[7]),
        .O(i___66_carry__1_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h7)) 
    i___66_carry__1_i_16
       (.I0(Q[6]),
        .I1(B[6]),
        .O(i___66_carry__1_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    i___66_carry__1_i_19
       (.I0(B[7]),
        .I1(Q[4]),
        .I2(CO),
        .I3(O[0]),
        .O(\data_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h80EAEAEAEA808080)) 
    i___66_carry__1_i_2
       (.I0(i___66_carry__1_i_10_n_0),
        .I1(B[6]),
        .I2(Q[6]),
        .I3(Q[5]),
        .I4(B[7]),
        .I5(O[1]),
        .O(\data_reg[6]_1 [1]));
  LUT6 #(
    .INIT(64'h7DD7144114411441)) 
    i___66_carry__1_i_3
       (.I0(\multOp_inferred__0/i___66_carry__1 ),
        .I1(i___66_carry__1_i_12_n_0),
        .I2(CO),
        .I3(O[0]),
        .I4(Q[5]),
        .I5(B[6]),
        .O(\data_reg[6]_1 [0]));
  LUT6 #(
    .INIT(64'hF7088F708F7008F7)) 
    i___66_carry__1_i_5
       (.I0(Q[7]),
        .I1(B[6]),
        .I2(\multOp_inferred__0/i___66_carry__1_2 ),
        .I3(i___66_carry__1_i_14_n_0),
        .I4(O[2]),
        .I5(i___66_carry__1_i_15_n_0),
        .O(\data_reg[7]_2 [2]));
  LUT6 #(
    .INIT(64'hB4D2D2D2D24B4B4B)) 
    i___66_carry__1_i_6
       (.I0(i___66_carry__1_i_16_n_0),
        .I1(i___66_carry__1_i_10_n_0),
        .I2(\multOp_inferred__0/i___66_carry__1_1 ),
        .I3(B[7]),
        .I4(Q[5]),
        .I5(O[1]),
        .O(\data_reg[7]_2 [1]));
  LUT5 #(
    .INIT(32'h96666999)) 
    i___66_carry__1_i_7
       (.I0(\data_reg[6]_1 [0]),
        .I1(i___66_carry__1_i_10_n_0),
        .I2(B[6]),
        .I3(Q[6]),
        .I4(\multOp_inferred__0/i___66_carry__1_0 ),
        .O(\data_reg[7]_2 [0]));
  LUT6 #(
    .INIT(64'hFF80808080000000)) 
    i___66_carry__2_i_1
       (.I0(O[2]),
        .I1(B[7]),
        .I2(Q[6]),
        .I3(B[6]),
        .I4(Q[8]),
        .I5(i___66_carry__2_i_4_n_0),
        .O(\data_reg[6]_2 ));
  LUT4 #(
    .INIT(16'h8000)) 
    i___66_carry__2_i_2
       (.I0(Q[8]),
        .I1(Q[7]),
        .I2(B[7]),
        .I3(i___66_carry__2_i_1_0),
        .O(\data_reg[8]_2 [1]));
  LUT6 #(
    .INIT(64'h2FB3432043B3D020)) 
    i___66_carry__2_i_3
       (.I0(B[6]),
        .I1(\multOp_inferred__0/i___66_carry__2 ),
        .I2(Q[8]),
        .I3(B[7]),
        .I4(i___66_carry__2_i_1_0),
        .I5(Q[7]),
        .O(\data_reg[8]_2 [0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    i___66_carry__2_i_4
       (.I0(i___66_carry__2_i_1_0),
        .I1(B[7]),
        .I2(Q[7]),
        .O(i___66_carry__2_i_4_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
