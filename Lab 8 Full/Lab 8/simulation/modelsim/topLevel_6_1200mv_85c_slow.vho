-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "12/03/2014 19:37:46"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	topLevel IS
    PORT (
	CLK : IN std_logic;
	RESETn : IN std_logic;
	IN1_INPUT : IN std_logic_vector(7 DOWNTO 0);
	IN0_INPUT : IN std_logic_vector(7 DOWNTO 0);
	led_hi3 : OUT std_logic_vector(6 DOWNTO 0);
	led_lo2 : OUT std_logic_vector(6 DOWNTO 0);
	led_hi1 : OUT std_logic_vector(6 DOWNTO 0);
	led_lo0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END topLevel;

-- Design Ports Information
-- led_hi3[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi3[1]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi3[2]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi3[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi3[4]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi3[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi3[6]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo2[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo2[1]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo2[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo2[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo2[5]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo2[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi1[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi1[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi1[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi1[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi1[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_hi1[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo0[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo0[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo0[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo0[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo0[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_lo0[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN0_INPUT[4]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN1_INPUT[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESETn	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN0_INPUT[5]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN1_INPUT[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN0_INPUT[6]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN1_INPUT[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN0_INPUT[7]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN1_INPUT[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN0_INPUT[0]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN1_INPUT[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN0_INPUT[1]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN1_INPUT[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN0_INPUT[2]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN1_INPUT[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN0_INPUT[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN1_INPUT[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF topLevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESETn : std_logic;
SIGNAL ww_IN1_INPUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_IN0_INPUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_led_hi3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led_lo2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led_hi1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led_lo0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \RAM|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \RAM|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ALU|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ALU|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ALU|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALU|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALU|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Controller|Selector49~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \slowCLK|onoff~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Controller|Mux4~11clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALU|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \led_hi3[0]~output_o\ : std_logic;
SIGNAL \led_hi3[1]~output_o\ : std_logic;
SIGNAL \led_hi3[2]~output_o\ : std_logic;
SIGNAL \led_hi3[3]~output_o\ : std_logic;
SIGNAL \led_hi3[4]~output_o\ : std_logic;
SIGNAL \led_hi3[5]~output_o\ : std_logic;
SIGNAL \led_hi3[6]~output_o\ : std_logic;
SIGNAL \led_lo2[0]~output_o\ : std_logic;
SIGNAL \led_lo2[1]~output_o\ : std_logic;
SIGNAL \led_lo2[2]~output_o\ : std_logic;
SIGNAL \led_lo2[3]~output_o\ : std_logic;
SIGNAL \led_lo2[4]~output_o\ : std_logic;
SIGNAL \led_lo2[5]~output_o\ : std_logic;
SIGNAL \led_lo2[6]~output_o\ : std_logic;
SIGNAL \led_hi1[0]~output_o\ : std_logic;
SIGNAL \led_hi1[1]~output_o\ : std_logic;
SIGNAL \led_hi1[2]~output_o\ : std_logic;
SIGNAL \led_hi1[3]~output_o\ : std_logic;
SIGNAL \led_hi1[4]~output_o\ : std_logic;
SIGNAL \led_hi1[5]~output_o\ : std_logic;
SIGNAL \led_hi1[6]~output_o\ : std_logic;
SIGNAL \led_lo0[0]~output_o\ : std_logic;
SIGNAL \led_lo0[1]~output_o\ : std_logic;
SIGNAL \led_lo0[2]~output_o\ : std_logic;
SIGNAL \led_lo0[3]~output_o\ : std_logic;
SIGNAL \led_lo0[4]~output_o\ : std_logic;
SIGNAL \led_lo0[5]~output_o\ : std_logic;
SIGNAL \led_lo0[6]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \slowCLK|count[0]~0_combout\ : std_logic;
SIGNAL \RESETn~input_o\ : std_logic;
SIGNAL \slowCLK|onoff~0_combout\ : std_logic;
SIGNAL \slowCLK|onoff~feeder_combout\ : std_logic;
SIGNAL \slowCLK|onoff~q\ : std_logic;
SIGNAL \slowCLK|onoff~clkctrl_outclk\ : std_logic;
SIGNAL \IN1_INPUT[5]~input_o\ : std_logic;
SIGNAL \IN0_INPUT[5]~input_o\ : std_logic;
SIGNAL \IN0_INPUT[1]~input_o\ : std_logic;
SIGNAL \ProgramCounter|Add0~1\ : std_logic;
SIGNAL \ProgramCounter|Add0~2_combout\ : std_logic;
SIGNAL \ProgramCounter|tempCount~0_combout\ : std_logic;
SIGNAL \IN1_INPUT[3]~input_o\ : std_logic;
SIGNAL \IN0_INPUT[3]~input_o\ : std_logic;
SIGNAL \EnableDecoder|IN1_EN~0_combout\ : std_logic;
SIGNAL \IN1_INPUT[0]~input_o\ : std_logic;
SIGNAL \IN0_INPUT[6]~input_o\ : std_logic;
SIGNAL \dataBus[6]~18_combout\ : std_logic;
SIGNAL \IN1_INPUT[6]~input_o\ : std_logic;
SIGNAL \IN0_INPUT[2]~input_o\ : std_logic;
SIGNAL \dataBus[2]~54_combout\ : std_logic;
SIGNAL \IN1_INPUT[2]~input_o\ : std_logic;
SIGNAL \EnableDecoder|LessThan0~5_combout\ : std_logic;
SIGNAL \IN1_INPUT[4]~input_o\ : std_logic;
SIGNAL \IR|Data[5]~feeder_combout\ : std_logic;
SIGNAL \Controller|Mux17~1_combout\ : std_logic;
SIGNAL \Controller|nextState.ANDR_D0_966~combout\ : std_logic;
SIGNAL \Controller|state.ANDR_D0~q\ : std_logic;
SIGNAL \Controller|nextState.ANDR_D1_959~combout\ : std_logic;
SIGNAL \Controller|state.ANDR_D1~q\ : std_logic;
SIGNAL \Controller|Mux13~0_combout\ : std_logic;
SIGNAL \Controller|Mux13~1_combout\ : std_logic;
SIGNAL \Controller|nextState.RORC0_861~combout\ : std_logic;
SIGNAL \Controller|state.RORC0~q\ : std_logic;
SIGNAL \Controller|nextState.RORC1_854~combout\ : std_logic;
SIGNAL \Controller|state.RORC1~q\ : std_logic;
SIGNAL \IN1_INPUT[7]~input_o\ : std_logic;
SIGNAL \IN0_INPUT[7]~input_o\ : std_logic;
SIGNAL \dataBus[7]~27_combout\ : std_logic;
SIGNAL \A|Data[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \Controller|Mux12~0_combout\ : std_logic;
SIGNAL \Controller|nextState.DECA0_843~combout\ : std_logic;
SIGNAL \Controller|state.DECA0~q\ : std_logic;
SIGNAL \Controller|WideOr34~0_combout\ : std_logic;
SIGNAL \tempALUreg|Data[3]~2_combout\ : std_logic;
SIGNAL \tempALUreg|Data[3]~0_combout\ : std_logic;
SIGNAL \Controller|WideOr35~1_combout\ : std_logic;
SIGNAL \Controller|WideOr35~0_combout\ : std_logic;
SIGNAL \ALU|Mux5~3_combout\ : std_logic;
SIGNAL \Controller|X_INC~0_combout\ : std_logic;
SIGNAL \Controller|X_INC~1_combout\ : std_logic;
SIGNAL \Flags|C~5_combout\ : std_logic;
SIGNAL \A|Data[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \Controller|nextState.MULT2_775~combout\ : std_logic;
SIGNAL \Controller|state.MULT2~q\ : std_logic;
SIGNAL \Controller|Selector18~0_combout\ : std_logic;
SIGNAL \A|Data[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \A|Data[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \D|Data[5]~feeder_combout\ : std_logic;
SIGNAL \D|Data[4]~feeder_combout\ : std_logic;
SIGNAL \D|Data[3]~feeder_combout\ : std_logic;
SIGNAL \A|Data[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \A|Data[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \D|Data[1]~feeder_combout\ : std_logic;
SIGNAL \A|Data[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \ALU|Add0~1_cout\ : std_logic;
SIGNAL \ALU|Add0~3\ : std_logic;
SIGNAL \ALU|Add0~5\ : std_logic;
SIGNAL \ALU|Add0~7\ : std_logic;
SIGNAL \ALU|Add0~9\ : std_logic;
SIGNAL \ALU|Add0~11\ : std_logic;
SIGNAL \ALU|Add0~13\ : std_logic;
SIGNAL \ALU|Add0~15\ : std_logic;
SIGNAL \ALU|Add0~17\ : std_logic;
SIGNAL \ALU|Add0~18_combout\ : std_logic;
SIGNAL \Flags|C~2_combout\ : std_logic;
SIGNAL \Flags|C~3_combout\ : std_logic;
SIGNAL \Flags|C~4_combout\ : std_logic;
SIGNAL \Flags|C~q\ : std_logic;
SIGNAL \tempALUreg|Data[3]~1_combout\ : std_logic;
SIGNAL \ALU|Add0~16_combout\ : std_logic;
SIGNAL \ALU|Add2~1\ : std_logic;
SIGNAL \ALU|Add2~3\ : std_logic;
SIGNAL \ALU|Add2~5\ : std_logic;
SIGNAL \ALU|Add2~7\ : std_logic;
SIGNAL \ALU|Add2~9\ : std_logic;
SIGNAL \ALU|Add2~11\ : std_logic;
SIGNAL \ALU|Add2~13\ : std_logic;
SIGNAL \ALU|Add2~14_combout\ : std_logic;
SIGNAL \ALU|Mux2~1_combout\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \ALU|Mux2~2_combout\ : std_logic;
SIGNAL \ALU|Mux2~0_combout\ : std_logic;
SIGNAL \ALU|Mux2~3_combout\ : std_logic;
SIGNAL \Controller|WideOr37~combout\ : std_logic;
SIGNAL \Controller|Mux7~0_combout\ : std_logic;
SIGNAL \Controller|nextState.LDAD_800~combout\ : std_logic;
SIGNAL \Controller|state.LDAD~q\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \dataBus[7]~28_combout\ : std_logic;
SIGNAL \dataBus[7]~29_combout\ : std_logic;
SIGNAL \Controller|Selector17~0_combout\ : std_logic;
SIGNAL \Controller|Selector17~1_combout\ : std_logic;
SIGNAL \Controller|Mux9~0_combout\ : std_logic;
SIGNAL \Controller|Mux9~1_combout\ : std_logic;
SIGNAL \Controller|nextState.CALL0_764~combout\ : std_logic;
SIGNAL \Controller|state.CALL0~q\ : std_logic;
SIGNAL \Controller|nextState.CALL1_757~combout\ : std_logic;
SIGNAL \Controller|state.CALL1~q\ : std_logic;
SIGNAL \Controller|nextState.CALL2_746~combout\ : std_logic;
SIGNAL \Controller|state.CALL2~q\ : std_logic;
SIGNAL \Controller|nextState.CALL3_735~combout\ : std_logic;
SIGNAL \Controller|state.CALL3~q\ : std_logic;
SIGNAL \Controller|nextState.CALL4_724~combout\ : std_logic;
SIGNAL \Controller|state.CALL4~q\ : std_logic;
SIGNAL \Controller|nextState.CALL5_713~combout\ : std_logic;
SIGNAL \Controller|state.CALL5~q\ : std_logic;
SIGNAL \Controller|nextState.BRANCH3_919~combout\ : std_logic;
SIGNAL \Controller|state.BRANCH3~q\ : std_logic;
SIGNAL \Controller|Mux10~0_combout\ : std_logic;
SIGNAL \Controller|nextState.RET0_702~combout\ : std_logic;
SIGNAL \Controller|state.RET0~q\ : std_logic;
SIGNAL \Controller|nextState.RET1_695~combout\ : std_logic;
SIGNAL \Controller|state.RET1~q\ : std_logic;
SIGNAL \ProgramCounter|Add0~13\ : std_logic;
SIGNAL \ProgramCounter|Add0~14_combout\ : std_logic;
SIGNAL \ProgramCounter|tempCount~7_combout\ : std_logic;
SIGNAL \StackPointerL|tempAddress[7]~feeder_combout\ : std_logic;
SIGNAL \Controller|WideOr40~combout\ : std_logic;
SIGNAL \ProgramCounter|Add0~15\ : std_logic;
SIGNAL \ProgramCounter|Add0~16_combout\ : std_logic;
SIGNAL \ProgramCounter|tempCount~8_combout\ : std_logic;
SIGNAL \ProgramCounter|tempCount[8]~9_combout\ : std_logic;
SIGNAL \ProgramCounter|Add0~17\ : std_logic;
SIGNAL \ProgramCounter|Add0~18_combout\ : std_logic;
SIGNAL \ProgramCounter|tempCount~10_combout\ : std_logic;
SIGNAL \ProgramCounter|Add0~19\ : std_logic;
SIGNAL \ProgramCounter|Add0~20_combout\ : std_logic;
SIGNAL \ProgramCounter|tempCount~11_combout\ : std_logic;
SIGNAL \ProgramCounter|Add0~21\ : std_logic;
SIGNAL \ProgramCounter|Add0~22_combout\ : std_logic;
SIGNAL \ProgramCounter|tempCount~12_combout\ : std_logic;
SIGNAL \ProgramCounter|Add0~23\ : std_logic;
SIGNAL \ProgramCounter|Add0~24_combout\ : std_logic;
SIGNAL \ProgramCounter|tempCount~13_combout\ : std_logic;
SIGNAL \ProgramCounter|Add0~25\ : std_logic;
SIGNAL \ProgramCounter|Add0~26_combout\ : std_logic;
SIGNAL \ProgramCounter|tempCount~14_combout\ : std_logic;
SIGNAL \ProgramCounter|Add0~27\ : std_logic;
SIGNAL \ProgramCounter|Add0~28_combout\ : std_logic;
SIGNAL \ProgramCounter|tempCount~15_combout\ : std_logic;
SIGNAL \ProgramCounter|Add0~29\ : std_logic;
SIGNAL \ProgramCounter|Add0~30_combout\ : std_logic;
SIGNAL \ProgramCounter|tempCount~16_combout\ : std_logic;
SIGNAL \dataBus[7]~30_combout\ : std_logic;
SIGNAL \Controller|Mux4~12_combout\ : std_logic;
SIGNAL \Controller|nextState.LOADFLAGS_SZ_659~combout\ : std_logic;
SIGNAL \Controller|state.LOADFLAGS_SZ~q\ : std_logic;
SIGNAL \Flags|S~q\ : std_logic;
SIGNAL \A|Equal0~0_combout\ : std_logic;
SIGNAL \A|Equal0~1_combout\ : std_logic;
SIGNAL \A|Equal0~2_combout\ : std_logic;
SIGNAL \Flags|Z~q\ : std_logic;
SIGNAL \Controller|Mux16~0_combout\ : std_logic;
SIGNAL \Controller|Mux16~1_combout\ : std_logic;
SIGNAL \Controller|Mux16~2_combout\ : std_logic;
SIGNAL \Controller|nextState.BRANCH0_948~combout\ : std_logic;
SIGNAL \Controller|state.BRANCH0~q\ : std_logic;
SIGNAL \Controller|WideOr30~0_combout\ : std_logic;
SIGNAL \dataBus[7]~31_combout\ : std_logic;
SIGNAL \dataBus[7]~32_combout\ : std_logic;
SIGNAL \dataBus[7]~33_combout\ : std_logic;
SIGNAL \RAM|RAM|altsyncram_component|auto_generated|wren_a_store~q\ : std_logic;
SIGNAL \RAM|RAM|altsyncram_component|auto_generated|rden_a_store~q\ : std_logic;
SIGNAL \RAM|RAM|altsyncram_component|auto_generated|_~0_combout\ : std_logic;
SIGNAL \Controller|nextState.LDAA2_977~combout\ : std_logic;
SIGNAL \Controller|state.LDAA2~q\ : std_logic;
SIGNAL \Controller|Mux6~0_combout\ : std_logic;
SIGNAL \Controller|nextState.LDAA_X_807~combout\ : std_logic;
SIGNAL \Controller|state.LDAA_X~q\ : std_logic;
SIGNAL \SelectAddress|ADDR[1]~19_combout\ : std_logic;
SIGNAL \indexRegister|Add0~0_combout\ : std_logic;
SIGNAL \indexRegister|tempCount~17_combout\ : std_logic;
SIGNAL \indexRegister|tempCount[5]~1_combout\ : std_logic;
SIGNAL \indexRegister|Add0~1\ : std_logic;
SIGNAL \indexRegister|Add0~2_combout\ : std_logic;
SIGNAL \indexRegister|tempCount~0_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[1]~18_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[1]~17_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[1]~20_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[2]~21_combout\ : std_logic;
SIGNAL \indexRegister|Add0~3\ : std_logic;
SIGNAL \indexRegister|Add0~4_combout\ : std_logic;
SIGNAL \indexRegister|tempCount~2_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[2]~22_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[2]~23_combout\ : std_logic;
SIGNAL \indexRegister|Add0~5\ : std_logic;
SIGNAL \indexRegister|Add0~6_combout\ : std_logic;
SIGNAL \indexRegister|tempCount~3_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[3]~24_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[3]~25_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[4]~26_combout\ : std_logic;
SIGNAL \indexRegister|Add0~7\ : std_logic;
SIGNAL \indexRegister|Add0~8_combout\ : std_logic;
SIGNAL \indexRegister|tempCount~4_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[4]~27_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[4]~28_combout\ : std_logic;
SIGNAL \indexRegister|Add0~9\ : std_logic;
SIGNAL \indexRegister|Add0~10_combout\ : std_logic;
SIGNAL \indexRegister|tempCount~5_combout\ : std_logic;
SIGNAL \AddressRegisterLow|tempAddress[5]~feeder_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[5]~29_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[5]~30_combout\ : std_logic;
SIGNAL \indexRegister|Add0~11\ : std_logic;
SIGNAL \indexRegister|Add0~12_combout\ : std_logic;
SIGNAL \indexRegister|tempCount~6_combout\ : std_logic;
SIGNAL \indexRegister|Add0~13\ : std_logic;
SIGNAL \indexRegister|Add0~14_combout\ : std_logic;
SIGNAL \indexRegister|tempCount~7_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[7]~35_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[7]~34_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[7]~36_combout\ : std_logic;
SIGNAL \RAM|RAM|altsyncram_component|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \dataBus[7]~34_combout\ : std_logic;
SIGNAL \dataBus[7]~35_combout\ : std_logic;
SIGNAL \IR|Data[7]~feeder_combout\ : std_logic;
SIGNAL \Controller|Mux15~0_combout\ : std_logic;
SIGNAL \Controller|nextState.ADCRD0_908~combout\ : std_logic;
SIGNAL \Controller|state.ADCRD0~q\ : std_logic;
SIGNAL \Controller|nextState.ADCRD1_901~combout\ : std_logic;
SIGNAL \Controller|state.ADCRD1~q\ : std_logic;
SIGNAL \Controller|nextState.DECA1_836~combout\ : std_logic;
SIGNAL \Controller|state.DECA1~q\ : std_logic;
SIGNAL \Controller|WideOr32~0_combout\ : std_logic;
SIGNAL \Controller|Mux19~0_combout\ : std_logic;
SIGNAL \Controller|Mux19~1_combout\ : std_logic;
SIGNAL \Controller|nextState.LDAI_1002~combout\ : std_logic;
SIGNAL \Controller|state.LDAI~q\ : std_logic;
SIGNAL \Controller|WideOr32~1_combout\ : std_logic;
SIGNAL \Controller|WideOr32~combout\ : std_logic;
SIGNAL \A|Data[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \StackPointerH|tempAddress[4]~feeder_combout\ : std_logic;
SIGNAL \dataBus[4]~3_combout\ : std_logic;
SIGNAL \dataBus[4]~4_combout\ : std_logic;
SIGNAL \dataBus[4]~5_combout\ : std_logic;
SIGNAL \ALU|Mux5~2_combout\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \ALU|Add2~8_combout\ : std_logic;
SIGNAL \ALU|Add0~10_combout\ : std_logic;
SIGNAL \ALU|Mux5~0_combout\ : std_logic;
SIGNAL \ALU|Mux5~1_combout\ : std_logic;
SIGNAL \ALU|Mux5~4_combout\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \dataBus[4]~1_combout\ : std_logic;
SIGNAL \dataBus[4]~2_combout\ : std_logic;
SIGNAL \dataBus[4]~6_combout\ : std_logic;
SIGNAL \RAM|RAM|altsyncram_component|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \dataBus[4]~7_combout\ : std_logic;
SIGNAL \IN0_INPUT[4]~input_o\ : std_logic;
SIGNAL \dataBus[4]~0_combout\ : std_logic;
SIGNAL \dataBus[4]~8_combout\ : std_logic;
SIGNAL \EnableDecoder|LessThan0~6_combout\ : std_logic;
SIGNAL \EnableDecoder|LessThan0~7_combout\ : std_logic;
SIGNAL \EnableDecoder|LessThan0~8_combout\ : std_logic;
SIGNAL \MEM_WREN~combout\ : std_logic;
SIGNAL \RAM|RAM|altsyncram_component|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \ALU|Mux7~2_combout\ : std_logic;
SIGNAL \ALU|Add0~6_combout\ : std_logic;
SIGNAL \ALU|Add2~4_combout\ : std_logic;
SIGNAL \ALU|Mux7~0_combout\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \ALU|Mux7~1_combout\ : std_logic;
SIGNAL \ALU|Mux7~3_combout\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \dataBus[2]~55_combout\ : std_logic;
SIGNAL \dataBus[2]~56_combout\ : std_logic;
SIGNAL \StackPointerH|tempAddress[2]~feeder_combout\ : std_logic;
SIGNAL \dataBus[2]~57_combout\ : std_logic;
SIGNAL \dataBus[2]~58_combout\ : std_logic;
SIGNAL \dataBus[2]~59_combout\ : std_logic;
SIGNAL \dataBus[2]~60_combout\ : std_logic;
SIGNAL \dataBus[2]~61_combout\ : std_logic;
SIGNAL \dataBus[2]~62_combout\ : std_logic;
SIGNAL \Controller|Mux17~0_combout\ : std_logic;
SIGNAL \Controller|Mux8~0_combout\ : std_logic;
SIGNAL \Controller|nextState.MULT0_793~combout\ : std_logic;
SIGNAL \Controller|state.MULT0~q\ : std_logic;
SIGNAL \Controller|nextState.MULT1_786~combout\ : std_logic;
SIGNAL \Controller|state.MULT1~q\ : std_logic;
SIGNAL \ALU|Mux3~2_combout\ : std_logic;
SIGNAL \ALU|Add2~12_combout\ : std_logic;
SIGNAL \ALU|Add0~14_combout\ : std_logic;
SIGNAL \ALU|Mux3~0_combout\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \ALU|Mux3~1_combout\ : std_logic;
SIGNAL \ALU|Mux3~3_combout\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \dataBus[6]~19_combout\ : std_logic;
SIGNAL \dataBus[6]~20_combout\ : std_logic;
SIGNAL \dataBus[6]~21_combout\ : std_logic;
SIGNAL \dataBus[6]~22_combout\ : std_logic;
SIGNAL \dataBus[6]~23_combout\ : std_logic;
SIGNAL \dataBus[6]~24_combout\ : std_logic;
SIGNAL \RAM|RAM|altsyncram_component|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \dataBus[6]~25_combout\ : std_logic;
SIGNAL \dataBus[6]~26_combout\ : std_logic;
SIGNAL \IR|Data[6]~feeder_combout\ : std_logic;
SIGNAL \Controller|Mux18~0_combout\ : std_logic;
SIGNAL \Controller|nextState.LDAA0_995~combout\ : std_logic;
SIGNAL \Controller|state.LDAA0~q\ : std_logic;
SIGNAL \Controller|nextState.LDAA1_988~combout\ : std_logic;
SIGNAL \Controller|state.LDAA1~q\ : std_logic;
SIGNAL \Controller|WideOr31~combout\ : std_logic;
SIGNAL \dataBus[0]~39_combout\ : std_logic;
SIGNAL \dataBus[0]~40_combout\ : std_logic;
SIGNAL \dataBus[0]~41_combout\ : std_logic;
SIGNAL \ALU|Mux9~2_combout\ : std_logic;
SIGNAL \ALU|Add2~0_combout\ : std_logic;
SIGNAL \ALU|Add0~2_combout\ : std_logic;
SIGNAL \ALU|Mux9~0_combout\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \ALU|Mux9~1_combout\ : std_logic;
SIGNAL \ALU|Mux9~3_combout\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \dataBus[0]~37_combout\ : std_logic;
SIGNAL \dataBus[0]~38_combout\ : std_logic;
SIGNAL \dataBus[0]~42_combout\ : std_logic;
SIGNAL \RAM|RAM|altsyncram_component|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \dataBus[0]~43_combout\ : std_logic;
SIGNAL \IN0_INPUT[0]~input_o\ : std_logic;
SIGNAL \dataBus[0]~36_combout\ : std_logic;
SIGNAL \dataBus[0]~44_combout\ : std_logic;
SIGNAL \Controller|Mux3~0_combout\ : std_logic;
SIGNAL \Controller|Mux3~1_combout\ : std_logic;
SIGNAL \Controller|nextState.LDXI0_825~combout\ : std_logic;
SIGNAL \Controller|state.LDXI0~q\ : std_logic;
SIGNAL \Controller|nextState.LDXI1_818~combout\ : std_logic;
SIGNAL \Controller|state.LDXI1~q\ : std_logic;
SIGNAL \Controller|WideOr27~0_combout\ : std_logic;
SIGNAL \Controller|WideOr27~1_combout\ : std_logic;
SIGNAL \Controller|WideOr26~0_combout\ : std_logic;
SIGNAL \Controller|WideOr26~1_combout\ : std_logic;
SIGNAL \dataBus[3]~63_combout\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \dataBus[3]~64_combout\ : std_logic;
SIGNAL \ALU|Mux6~2_combout\ : std_logic;
SIGNAL \ALU|Add0~8_combout\ : std_logic;
SIGNAL \ALU|Add2~6_combout\ : std_logic;
SIGNAL \ALU|Mux6~0_combout\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \ALU|Mux6~1_combout\ : std_logic;
SIGNAL \ALU|Mux6~3_combout\ : std_logic;
SIGNAL \dataBus[3]~65_combout\ : std_logic;
SIGNAL \StackPointerH|tempAddress[3]~feeder_combout\ : std_logic;
SIGNAL \dataBus[3]~66_combout\ : std_logic;
SIGNAL \dataBus[3]~67_combout\ : std_logic;
SIGNAL \dataBus[3]~68_combout\ : std_logic;
SIGNAL \dataBus[3]~69_combout\ : std_logic;
SIGNAL \RAM|RAM|altsyncram_component|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \dataBus[3]~70_combout\ : std_logic;
SIGNAL \dataBus[3]~71_combout\ : std_logic;
SIGNAL \Controller|Mux4~6_combout\ : std_logic;
SIGNAL \Controller|Mux4~5_combout\ : std_logic;
SIGNAL \Controller|Mux4~7_combout\ : std_logic;
SIGNAL \Controller|Mux4~1_combout\ : std_logic;
SIGNAL \Controller|Mux4~2_combout\ : std_logic;
SIGNAL \Controller|Mux4~0_combout\ : std_logic;
SIGNAL \Controller|Mux4~3_combout\ : std_logic;
SIGNAL \Controller|Mux4~4_combout\ : std_logic;
SIGNAL \Controller|Mux4~8_combout\ : std_logic;
SIGNAL \Controller|Mux4~9_combout\ : std_logic;
SIGNAL \Controller|Mux4~10_combout\ : std_logic;
SIGNAL \Controller|Mux4~11_combout\ : std_logic;
SIGNAL \Controller|Mux4~11clkctrl_outclk\ : std_logic;
SIGNAL \Controller|Mux16~3_combout\ : std_logic;
SIGNAL \Controller|Mux16~4_combout\ : std_logic;
SIGNAL \Controller|Mux11~0_combout\ : std_logic;
SIGNAL \Controller|nextState.PCINC0_677~combout\ : std_logic;
SIGNAL \Controller|state.PCINC0~q\ : std_logic;
SIGNAL \Controller|nextState.PCINC1_670~combout\ : std_logic;
SIGNAL \Controller|state.PCINC1~q\ : std_logic;
SIGNAL \Controller|WideOr27~2_combout\ : std_logic;
SIGNAL \Controller|WideOr27~3_combout\ : std_logic;
SIGNAL \ProgramCounter|tempCount[7]~1_combout\ : std_logic;
SIGNAL \ProgramCounter|Add0~3\ : std_logic;
SIGNAL \ProgramCounter|Add0~4_combout\ : std_logic;
SIGNAL \ProgramCounter|tempCount~2_combout\ : std_logic;
SIGNAL \ProgramCounter|Add0~5\ : std_logic;
SIGNAL \ProgramCounter|Add0~6_combout\ : std_logic;
SIGNAL \ProgramCounter|tempCount~3_combout\ : std_logic;
SIGNAL \ProgramCounter|Add0~7\ : std_logic;
SIGNAL \ProgramCounter|Add0~8_combout\ : std_logic;
SIGNAL \ProgramCounter|tempCount~4_combout\ : std_logic;
SIGNAL \ProgramCounter|Add0~9\ : std_logic;
SIGNAL \ProgramCounter|Add0~10_combout\ : std_logic;
SIGNAL \ProgramCounter|tempCount~5_combout\ : std_logic;
SIGNAL \ProgramCounter|Add0~11\ : std_logic;
SIGNAL \ProgramCounter|Add0~12_combout\ : std_logic;
SIGNAL \ProgramCounter|tempCount~6_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[6]~32_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[6]~31_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[6]~33_combout\ : std_logic;
SIGNAL \indexRegister|Add0~15\ : std_logic;
SIGNAL \indexRegister|Add0~16_combout\ : std_logic;
SIGNAL \indexRegister|tempCount~8_combout\ : std_logic;
SIGNAL \Controller|X_INC~2_combout\ : std_logic;
SIGNAL \indexRegister|tempCount[8]~9_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[8]~38_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[8]~37_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[8]~39_combout\ : std_logic;
SIGNAL \EnableDecoder|LessThan0~1_combout\ : std_logic;
SIGNAL \indexRegister|Add0~17\ : std_logic;
SIGNAL \indexRegister|Add0~18_combout\ : std_logic;
SIGNAL \indexRegister|tempCount~10_combout\ : std_logic;
SIGNAL \indexRegister|Add0~19\ : std_logic;
SIGNAL \indexRegister|Add0~20_combout\ : std_logic;
SIGNAL \indexRegister|tempCount~11_combout\ : std_logic;
SIGNAL \indexRegister|Add0~21\ : std_logic;
SIGNAL \indexRegister|Add0~22_combout\ : std_logic;
SIGNAL \indexRegister|tempCount~12_combout\ : std_logic;
SIGNAL \indexRegister|Add0~23\ : std_logic;
SIGNAL \indexRegister|Add0~24_combout\ : std_logic;
SIGNAL \indexRegister|tempCount~13_combout\ : std_logic;
SIGNAL \indexRegister|Add0~25\ : std_logic;
SIGNAL \indexRegister|Add0~26_combout\ : std_logic;
SIGNAL \indexRegister|tempCount~14_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[13]~53_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[13]~52_combout\ : std_logic;
SIGNAL \indexRegister|Add0~27\ : std_logic;
SIGNAL \indexRegister|Add0~28_combout\ : std_logic;
SIGNAL \indexRegister|tempCount~15_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[14]~55_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[14]~54_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[14]~56_combout\ : std_logic;
SIGNAL \indexRegister|Add0~29\ : std_logic;
SIGNAL \indexRegister|Add0~30_combout\ : std_logic;
SIGNAL \indexRegister|tempCount~16_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[15]~58_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[15]~57_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[15]~59_combout\ : std_logic;
SIGNAL \EnableDecoder|LessThan0~3_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[9]~40_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[9]~41_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[9]~42_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[10]~44_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[10]~43_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[10]~45_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[12]~49_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[12]~50_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[12]~51_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[11]~47_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[11]~46_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[11]~48_combout\ : std_logic;
SIGNAL \EnableDecoder|LessThan0~2_combout\ : std_logic;
SIGNAL \EnableDecoder|LessThan0~0_combout\ : std_logic;
SIGNAL \EnableDecoder|LessThan0~4_combout\ : std_logic;
SIGNAL \dataBus[1]~45_combout\ : std_logic;
SIGNAL \IN1_INPUT[1]~input_o\ : std_logic;
SIGNAL \dataBus[1]~48_combout\ : std_logic;
SIGNAL \dataBus[1]~49_combout\ : std_logic;
SIGNAL \dataBus[1]~50_combout\ : std_logic;
SIGNAL \ALU|Mux8~2_combout\ : std_logic;
SIGNAL \ALU|Add2~2_combout\ : std_logic;
SIGNAL \ALU|Mux8~0_combout\ : std_logic;
SIGNAL \ALU|Add0~4_combout\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \ALU|Mux8~1_combout\ : std_logic;
SIGNAL \ALU|Mux8~3_combout\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \dataBus[1]~46_combout\ : std_logic;
SIGNAL \dataBus[1]~47_combout\ : std_logic;
SIGNAL \dataBus[1]~51_combout\ : std_logic;
SIGNAL \RAM|RAM|altsyncram_component|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \dataBus[1]~52_combout\ : std_logic;
SIGNAL \dataBus[1]~53_combout\ : std_logic;
SIGNAL \IR|Data[1]~feeder_combout\ : std_logic;
SIGNAL \Controller|Mux14~0_combout\ : std_logic;
SIGNAL \Controller|nextState.STAA0_890~combout\ : std_logic;
SIGNAL \Controller|state.STAA0~q\ : std_logic;
SIGNAL \Controller|nextState.STAA1_883~combout\ : std_logic;
SIGNAL \Controller|state.STAA1~q\ : std_logic;
SIGNAL \Controller|nextState.STAA2_872~combout\ : std_logic;
SIGNAL \Controller|state.STAA2~q\ : std_logic;
SIGNAL \Controller|Selector48~0_combout\ : std_logic;
SIGNAL \Controller|Selector48~2_combout\ : std_logic;
SIGNAL \Controller|state.INITIALIZE~feeder_combout\ : std_logic;
SIGNAL \Controller|state.INITIALIZE~q\ : std_logic;
SIGNAL \Controller|Mux20~0_combout\ : std_logic;
SIGNAL \Controller|Selector48~1_combout\ : std_logic;
SIGNAL \Controller|Selector48~3_combout\ : std_logic;
SIGNAL \Controller|nextState.FETCH_1024~combout\ : std_logic;
SIGNAL \Controller|state.FETCH~q\ : std_logic;
SIGNAL \Controller|nextState.DECODE_1013~combout\ : std_logic;
SIGNAL \Controller|state.DECODE~q\ : std_logic;
SIGNAL \Controller|Selector49~0_combout\ : std_logic;
SIGNAL \Controller|Selector49~0clkctrl_outclk\ : std_logic;
SIGNAL \Controller|nextState.BRANCH1_941~combout\ : std_logic;
SIGNAL \Controller|state.BRANCH1~q\ : std_logic;
SIGNAL \Controller|nextState.BRANCH2_930~combout\ : std_logic;
SIGNAL \Controller|state.BRANCH2~q\ : std_logic;
SIGNAL \Controller|WideOr39~combout\ : std_logic;
SIGNAL \ProgramCounter|Add0~0_combout\ : std_logic;
SIGNAL \ProgramCounter|tempCount~17_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[0]~60_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[0]~61_combout\ : std_logic;
SIGNAL \SelectAddress|ADDR[0]~62_combout\ : std_logic;
SIGNAL \dataBus[5]~9_combout\ : std_logic;
SIGNAL \RAM|RAM|altsyncram_component|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \StackPointerH|tempAddress[5]~feeder_combout\ : std_logic;
SIGNAL \dataBus[5]~12_combout\ : std_logic;
SIGNAL \dataBus[5]~13_combout\ : std_logic;
SIGNAL \dataBus[5]~14_combout\ : std_logic;
SIGNAL \ALU|Mux4~2_combout\ : std_logic;
SIGNAL \ALU|Add0~12_combout\ : std_logic;
SIGNAL \ALU|Add2~10_combout\ : std_logic;
SIGNAL \ALU|Mux4~0_combout\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \ALU|Mux4~1_combout\ : std_logic;
SIGNAL \ALU|Mux4~3_combout\ : std_logic;
SIGNAL \ALU|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \dataBus[5]~10_combout\ : std_logic;
SIGNAL \dataBus[5]~11_combout\ : std_logic;
SIGNAL \dataBus[5]~15_combout\ : std_logic;
SIGNAL \dataBus[5]~16_combout\ : std_logic;
SIGNAL \dataBus[5]~17_combout\ : std_logic;
SIGNAL \OUT1|Data[5]~feeder_combout\ : std_logic;
SIGNAL \EnableDecoder|OUT1_EN~0_combout\ : std_logic;
SIGNAL \DecoderHigh3|y[6]~0_combout\ : std_logic;
SIGNAL \DecoderHigh3|y[5]~1_combout\ : std_logic;
SIGNAL \DecoderHigh3|y[4]~2_combout\ : std_logic;
SIGNAL \DecoderHigh3|y[3]~3_combout\ : std_logic;
SIGNAL \DecoderHigh3|y[2]~4_combout\ : std_logic;
SIGNAL \DecoderHigh3|y[1]~5_combout\ : std_logic;
SIGNAL \DecoderHigh3|y[0]~6_combout\ : std_logic;
SIGNAL \DecoderLow2|y[6]~0_combout\ : std_logic;
SIGNAL \DecoderLow2|y[5]~1_combout\ : std_logic;
SIGNAL \DecoderLow2|y[4]~2_combout\ : std_logic;
SIGNAL \DecoderLow2|y[3]~3_combout\ : std_logic;
SIGNAL \DecoderLow2|y[2]~4_combout\ : std_logic;
SIGNAL \DecoderLow2|y[1]~5_combout\ : std_logic;
SIGNAL \DecoderLow2|y[0]~6_combout\ : std_logic;
SIGNAL \EnableDecoder|OUT0_EN~0_combout\ : std_logic;
SIGNAL \DecoderHigh1|y[6]~0_combout\ : std_logic;
SIGNAL \DecoderHigh1|y[5]~1_combout\ : std_logic;
SIGNAL \DecoderHigh1|y[4]~2_combout\ : std_logic;
SIGNAL \DecoderHigh1|y[3]~3_combout\ : std_logic;
SIGNAL \DecoderHigh1|y[2]~4_combout\ : std_logic;
SIGNAL \DecoderHigh1|y[1]~5_combout\ : std_logic;
SIGNAL \DecoderHigh1|y[0]~6_combout\ : std_logic;
SIGNAL \DecoderLow0|y[6]~0_combout\ : std_logic;
SIGNAL \DecoderLow0|y[5]~1_combout\ : std_logic;
SIGNAL \DecoderLow0|y[4]~2_combout\ : std_logic;
SIGNAL \DecoderLow0|y[3]~3_combout\ : std_logic;
SIGNAL \DecoderLow0|y[2]~4_combout\ : std_logic;
SIGNAL \DecoderLow0|y[1]~5_combout\ : std_logic;
SIGNAL \DecoderLow0|y[0]~6_combout\ : std_logic;
SIGNAL \OUT0|Data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \tempALUreg2|Data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \OUT1|Data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \IR|Data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \D|Data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \tempALUreg|Data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \AddressRegisterHigh|tempAddress\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \AddressRegisterLow|tempAddress\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \StackPointerH|tempAddress\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \indexRegister|tempCount\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \StackPointerL|tempAddress\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \slowCLK|count\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ProgramCounter|tempCount\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Controller|ALT_INV_WideOr30~0_combout\ : std_logic;
SIGNAL \DecoderLow0|ALT_INV_y[0]~6_combout\ : std_logic;
SIGNAL \DecoderLow0|ALT_INV_y[1]~5_combout\ : std_logic;
SIGNAL \DecoderLow0|ALT_INV_y[2]~4_combout\ : std_logic;
SIGNAL \DecoderLow0|ALT_INV_y[3]~3_combout\ : std_logic;
SIGNAL \DecoderLow0|ALT_INV_y[4]~2_combout\ : std_logic;
SIGNAL \DecoderLow0|ALT_INV_y[5]~1_combout\ : std_logic;
SIGNAL \DecoderLow0|ALT_INV_y[6]~0_combout\ : std_logic;
SIGNAL \DecoderHigh1|ALT_INV_y[0]~6_combout\ : std_logic;
SIGNAL \DecoderHigh1|ALT_INV_y[1]~5_combout\ : std_logic;
SIGNAL \DecoderHigh1|ALT_INV_y[2]~4_combout\ : std_logic;
SIGNAL \DecoderHigh1|ALT_INV_y[3]~3_combout\ : std_logic;
SIGNAL \DecoderHigh1|ALT_INV_y[4]~2_combout\ : std_logic;
SIGNAL \DecoderHigh1|ALT_INV_y[5]~1_combout\ : std_logic;
SIGNAL \DecoderHigh1|ALT_INV_y[6]~0_combout\ : std_logic;
SIGNAL \DecoderLow2|ALT_INV_y[0]~6_combout\ : std_logic;
SIGNAL \DecoderLow2|ALT_INV_y[1]~5_combout\ : std_logic;
SIGNAL \DecoderLow2|ALT_INV_y[2]~4_combout\ : std_logic;
SIGNAL \DecoderLow2|ALT_INV_y[3]~3_combout\ : std_logic;
SIGNAL \DecoderLow2|ALT_INV_y[4]~2_combout\ : std_logic;
SIGNAL \DecoderLow2|ALT_INV_y[5]~1_combout\ : std_logic;
SIGNAL \DecoderLow2|ALT_INV_y[6]~0_combout\ : std_logic;
SIGNAL \DecoderHigh3|ALT_INV_y[0]~6_combout\ : std_logic;
SIGNAL \DecoderHigh3|ALT_INV_y[1]~5_combout\ : std_logic;
SIGNAL \DecoderHigh3|ALT_INV_y[2]~4_combout\ : std_logic;
SIGNAL \DecoderHigh3|ALT_INV_y[3]~3_combout\ : std_logic;
SIGNAL \DecoderHigh3|ALT_INV_y[4]~2_combout\ : std_logic;
SIGNAL \DecoderHigh3|ALT_INV_y[5]~1_combout\ : std_logic;
SIGNAL \DecoderHigh3|ALT_INV_y[6]~0_combout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_RESETn <= RESETn;
ww_IN1_INPUT <= IN1_INPUT;
ww_IN0_INPUT <= IN0_INPUT;
led_hi3 <= ww_led_hi3;
led_lo2 <= ww_led_lo2;
led_hi1 <= ww_led_hi1;
led_lo0 <= ww_led_lo0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RAM|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \dataBus[7]~35_combout\ & \dataBus[6]~26_combout\ & \dataBus[5]~17_combout\ & \dataBus[4]~8_combout\ & 
\dataBus[3]~71_combout\ & \dataBus[2]~62_combout\ & \dataBus[1]~53_combout\ & \dataBus[0]~44_combout\);

\RAM|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\SelectAddress|ADDR[7]~36_combout\ & \SelectAddress|ADDR[6]~33_combout\ & \SelectAddress|ADDR[5]~30_combout\ & \SelectAddress|ADDR[4]~28_combout\ & 
\SelectAddress|ADDR[3]~25_combout\ & \SelectAddress|ADDR[2]~23_combout\ & \SelectAddress|ADDR[1]~20_combout\ & \SelectAddress|ADDR[0]~62_combout\);

\RAM|RAM|altsyncram_component|auto_generated|ram_block1a0~portadataout\ <= \RAM|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\RAM|RAM|altsyncram_component|auto_generated|ram_block1a1\ <= \RAM|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\RAM|RAM|altsyncram_component|auto_generated|ram_block1a2\ <= \RAM|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\RAM|RAM|altsyncram_component|auto_generated|ram_block1a3\ <= \RAM|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\RAM|RAM|altsyncram_component|auto_generated|ram_block1a4\ <= \RAM|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\RAM|RAM|altsyncram_component|auto_generated|ram_block1a5\ <= \RAM|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\RAM|RAM|altsyncram_component|auto_generated|ram_block1a6\ <= \RAM|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\RAM|RAM|altsyncram_component|auto_generated|ram_block1a7\ <= \RAM|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\ALU|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\ALU|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \ALU|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \ALU|Mult0|auto_generated|mac_mult1~DATAOUT13\ & \ALU|Mult0|auto_generated|mac_mult1~DATAOUT12\ & 
\ALU|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \ALU|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \ALU|Mult0|auto_generated|mac_mult1~DATAOUT9\ & \ALU|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \ALU|Mult0|auto_generated|mac_mult1~DATAOUT7\ & 
\ALU|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \ALU|Mult0|auto_generated|mac_mult1~DATAOUT5\ & \ALU|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \ALU|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \ALU|Mult0|auto_generated|mac_mult1~DATAOUT2\ & 
\ALU|Mult0|auto_generated|mac_mult1~DATAOUT1\ & \ALU|Mult0|auto_generated|mac_mult1~dataout\ & \ALU|Mult0|auto_generated|mac_mult1~1\ & \ALU|Mult0|auto_generated|mac_mult1~0\);

\ALU|Mult0|auto_generated|mac_out2~0\ <= \ALU|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\ALU|Mult0|auto_generated|mac_out2~1\ <= \ALU|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\ALU|Mult0|auto_generated|mac_out2~dataout\ <= \ALU|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\ALU|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \ALU|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\ALU|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \ALU|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\ALU|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \ALU|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\ALU|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \ALU|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\ALU|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \ALU|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\ALU|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \ALU|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\ALU|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \ALU|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\ALU|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \ALU|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\ALU|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \ALU|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\ALU|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \ALU|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\ALU|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \ALU|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\ALU|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \ALU|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\ALU|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \ALU|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\ALU|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \ALU|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\ALU|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \ALU|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\ALU|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\dataBus[7]~35_combout\ & \dataBus[6]~26_combout\ & \dataBus[5]~17_combout\ & \dataBus[4]~8_combout\ & \dataBus[3]~71_combout\ & \dataBus[2]~62_combout\ & \dataBus[1]~53_combout\ & \dataBus[0]~44_combout\
& gnd);

\ALU|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\D|Data\(7) & \D|Data\(6) & \D|Data\(5) & \D|Data\(4) & \D|Data\(3) & \D|Data\(2) & \D|Data\(1) & \D|Data\(0) & gnd);

\ALU|Mult0|auto_generated|mac_mult1~0\ <= \ALU|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\ALU|Mult0|auto_generated|mac_mult1~1\ <= \ALU|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\ALU|Mult0|auto_generated|mac_mult1~dataout\ <= \ALU|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\ALU|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \ALU|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\ALU|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \ALU|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\ALU|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \ALU|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\ALU|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \ALU|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\ALU|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \ALU|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\ALU|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \ALU|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\ALU|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \ALU|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\ALU|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \ALU|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\ALU|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \ALU|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\ALU|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \ALU|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\ALU|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \ALU|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\ALU|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \ALU|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\ALU|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \ALU|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\ALU|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \ALU|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\ALU|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \ALU|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\Controller|Selector49~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Controller|Selector49~0_combout\);

\slowCLK|onoff~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \slowCLK|onoff~q\);

\Controller|Mux4~11clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Controller|Mux4~11_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\Controller|ALT_INV_WideOr30~0_combout\ <= NOT \Controller|WideOr30~0_combout\;
\DecoderLow0|ALT_INV_y[0]~6_combout\ <= NOT \DecoderLow0|y[0]~6_combout\;
\DecoderLow0|ALT_INV_y[1]~5_combout\ <= NOT \DecoderLow0|y[1]~5_combout\;
\DecoderLow0|ALT_INV_y[2]~4_combout\ <= NOT \DecoderLow0|y[2]~4_combout\;
\DecoderLow0|ALT_INV_y[3]~3_combout\ <= NOT \DecoderLow0|y[3]~3_combout\;
\DecoderLow0|ALT_INV_y[4]~2_combout\ <= NOT \DecoderLow0|y[4]~2_combout\;
\DecoderLow0|ALT_INV_y[5]~1_combout\ <= NOT \DecoderLow0|y[5]~1_combout\;
\DecoderLow0|ALT_INV_y[6]~0_combout\ <= NOT \DecoderLow0|y[6]~0_combout\;
\DecoderHigh1|ALT_INV_y[0]~6_combout\ <= NOT \DecoderHigh1|y[0]~6_combout\;
\DecoderHigh1|ALT_INV_y[1]~5_combout\ <= NOT \DecoderHigh1|y[1]~5_combout\;
\DecoderHigh1|ALT_INV_y[2]~4_combout\ <= NOT \DecoderHigh1|y[2]~4_combout\;
\DecoderHigh1|ALT_INV_y[3]~3_combout\ <= NOT \DecoderHigh1|y[3]~3_combout\;
\DecoderHigh1|ALT_INV_y[4]~2_combout\ <= NOT \DecoderHigh1|y[4]~2_combout\;
\DecoderHigh1|ALT_INV_y[5]~1_combout\ <= NOT \DecoderHigh1|y[5]~1_combout\;
\DecoderHigh1|ALT_INV_y[6]~0_combout\ <= NOT \DecoderHigh1|y[6]~0_combout\;
\DecoderLow2|ALT_INV_y[0]~6_combout\ <= NOT \DecoderLow2|y[0]~6_combout\;
\DecoderLow2|ALT_INV_y[1]~5_combout\ <= NOT \DecoderLow2|y[1]~5_combout\;
\DecoderLow2|ALT_INV_y[2]~4_combout\ <= NOT \DecoderLow2|y[2]~4_combout\;
\DecoderLow2|ALT_INV_y[3]~3_combout\ <= NOT \DecoderLow2|y[3]~3_combout\;
\DecoderLow2|ALT_INV_y[4]~2_combout\ <= NOT \DecoderLow2|y[4]~2_combout\;
\DecoderLow2|ALT_INV_y[5]~1_combout\ <= NOT \DecoderLow2|y[5]~1_combout\;
\DecoderLow2|ALT_INV_y[6]~0_combout\ <= NOT \DecoderLow2|y[6]~0_combout\;
\DecoderHigh3|ALT_INV_y[0]~6_combout\ <= NOT \DecoderHigh3|y[0]~6_combout\;
\DecoderHigh3|ALT_INV_y[1]~5_combout\ <= NOT \DecoderHigh3|y[1]~5_combout\;
\DecoderHigh3|ALT_INV_y[2]~4_combout\ <= NOT \DecoderHigh3|y[2]~4_combout\;
\DecoderHigh3|ALT_INV_y[3]~3_combout\ <= NOT \DecoderHigh3|y[3]~3_combout\;
\DecoderHigh3|ALT_INV_y[4]~2_combout\ <= NOT \DecoderHigh3|y[4]~2_combout\;
\DecoderHigh3|ALT_INV_y[5]~1_combout\ <= NOT \DecoderHigh3|y[5]~1_combout\;
\DecoderHigh3|ALT_INV_y[6]~0_combout\ <= NOT \DecoderHigh3|y[6]~0_combout\;

-- Location: IOOBUF_X39_Y29_N30
\led_hi3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHigh3|ALT_INV_y[6]~0_combout\,
	devoe => ww_devoe,
	o => \led_hi3[0]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\led_hi3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHigh3|ALT_INV_y[5]~1_combout\,
	devoe => ww_devoe,
	o => \led_hi3[1]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\led_hi3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHigh3|ALT_INV_y[4]~2_combout\,
	devoe => ww_devoe,
	o => \led_hi3[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\led_hi3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHigh3|ALT_INV_y[3]~3_combout\,
	devoe => ww_devoe,
	o => \led_hi3[3]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\led_hi3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHigh3|ALT_INV_y[2]~4_combout\,
	devoe => ww_devoe,
	o => \led_hi3[4]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\led_hi3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHigh3|ALT_INV_y[1]~5_combout\,
	devoe => ww_devoe,
	o => \led_hi3[5]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\led_hi3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHigh3|ALT_INV_y[0]~6_combout\,
	devoe => ww_devoe,
	o => \led_hi3[6]~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\led_lo2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderLow2|ALT_INV_y[6]~0_combout\,
	devoe => ww_devoe,
	o => \led_lo2[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\led_lo2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderLow2|ALT_INV_y[5]~1_combout\,
	devoe => ww_devoe,
	o => \led_lo2[1]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\led_lo2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderLow2|ALT_INV_y[4]~2_combout\,
	devoe => ww_devoe,
	o => \led_lo2[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\led_lo2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderLow2|ALT_INV_y[3]~3_combout\,
	devoe => ww_devoe,
	o => \led_lo2[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\led_lo2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderLow2|ALT_INV_y[2]~4_combout\,
	devoe => ww_devoe,
	o => \led_lo2[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\led_lo2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderLow2|ALT_INV_y[1]~5_combout\,
	devoe => ww_devoe,
	o => \led_lo2[5]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\led_lo2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderLow2|ALT_INV_y[0]~6_combout\,
	devoe => ww_devoe,
	o => \led_lo2[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\led_hi1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHigh1|ALT_INV_y[6]~0_combout\,
	devoe => ww_devoe,
	o => \led_hi1[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\led_hi1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHigh1|ALT_INV_y[5]~1_combout\,
	devoe => ww_devoe,
	o => \led_hi1[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\led_hi1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHigh1|ALT_INV_y[4]~2_combout\,
	devoe => ww_devoe,
	o => \led_hi1[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\led_hi1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHigh1|ALT_INV_y[3]~3_combout\,
	devoe => ww_devoe,
	o => \led_hi1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\led_hi1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHigh1|ALT_INV_y[2]~4_combout\,
	devoe => ww_devoe,
	o => \led_hi1[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\led_hi1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHigh1|ALT_INV_y[1]~5_combout\,
	devoe => ww_devoe,
	o => \led_hi1[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\led_hi1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderHigh1|ALT_INV_y[0]~6_combout\,
	devoe => ww_devoe,
	o => \led_hi1[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\led_lo0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderLow0|ALT_INV_y[6]~0_combout\,
	devoe => ww_devoe,
	o => \led_lo0[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\led_lo0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderLow0|ALT_INV_y[5]~1_combout\,
	devoe => ww_devoe,
	o => \led_lo0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\led_lo0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderLow0|ALT_INV_y[4]~2_combout\,
	devoe => ww_devoe,
	o => \led_lo0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\led_lo0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderLow0|ALT_INV_y[3]~3_combout\,
	devoe => ww_devoe,
	o => \led_lo0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\led_lo0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderLow0|ALT_INV_y[2]~4_combout\,
	devoe => ww_devoe,
	o => \led_lo0[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\led_lo0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderLow0|ALT_INV_y[1]~5_combout\,
	devoe => ww_devoe,
	o => \led_lo0[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\led_lo0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderLow0|ALT_INV_y[0]~6_combout\,
	devoe => ww_devoe,
	o => \led_lo0[6]~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G9
\CLK~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X29_Y23_N28
\slowCLK|count[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slowCLK|count[0]~0_combout\ = !\slowCLK|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \slowCLK|count\(0),
	combout => \slowCLK|count[0]~0_combout\);

-- Location: IOIBUF_X0_Y23_N15
\RESETn~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESETn,
	o => \RESETn~input_o\);

-- Location: FF_X29_Y23_N29
\slowCLK|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \slowCLK|count[0]~0_combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slowCLK|count\(0));

-- Location: LCCOMB_X29_Y23_N0
\slowCLK|onoff~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slowCLK|onoff~0_combout\ = (!\slowCLK|onoff~q\ & \slowCLK|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \slowCLK|onoff~q\,
	datad => \slowCLK|count\(0),
	combout => \slowCLK|onoff~0_combout\);

-- Location: LCCOMB_X29_Y23_N14
\slowCLK|onoff~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \slowCLK|onoff~feeder_combout\ = \slowCLK|onoff~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \slowCLK|onoff~0_combout\,
	combout => \slowCLK|onoff~feeder_combout\);

-- Location: FF_X29_Y23_N15
\slowCLK|onoff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \slowCLK|onoff~feeder_combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \slowCLK|onoff~q\);

-- Location: CLKCTRL_G12
\slowCLK|onoff~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \slowCLK|onoff~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \slowCLK|onoff~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y22_N15
\IN1_INPUT[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN1_INPUT(5),
	o => \IN1_INPUT[5]~input_o\);

-- Location: IOIBUF_X35_Y0_N15
\IN0_INPUT[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN0_INPUT(5),
	o => \IN0_INPUT[5]~input_o\);

-- Location: IOIBUF_X32_Y0_N8
\IN0_INPUT[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN0_INPUT(1),
	o => \IN0_INPUT[1]~input_o\);

-- Location: LCCOMB_X26_Y22_N0
\ProgramCounter|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ProgramCounter|Add0~0_combout\ = \ProgramCounter|tempCount\(0) $ (VCC)
-- \ProgramCounter|Add0~1\ = CARRY(\ProgramCounter|tempCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|tempCount\(0),
	datad => VCC,
	combout => \ProgramCounter|Add0~0_combout\,
	cout => \ProgramCounter|Add0~1\);

-- Location: LCCOMB_X26_Y22_N2
\ProgramCounter|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ProgramCounter|Add0~2_combout\ = (\ProgramCounter|tempCount\(1) & (!\ProgramCounter|Add0~1\)) # (!\ProgramCounter|tempCount\(1) & ((\ProgramCounter|Add0~1\) # (GND)))
-- \ProgramCounter|Add0~3\ = CARRY((!\ProgramCounter|Add0~1\) # (!\ProgramCounter|tempCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ProgramCounter|tempCount\(1),
	datad => VCC,
	cin => \ProgramCounter|Add0~1\,
	combout => \ProgramCounter|Add0~2_combout\,
	cout => \ProgramCounter|Add0~3\);

-- Location: LCCOMB_X27_Y25_N26
\ProgramCounter|tempCount~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ProgramCounter|tempCount~0_combout\ = (\Controller|WideOr39~combout\ & (\dataBus[1]~53_combout\)) # (!\Controller|WideOr39~combout\ & ((\ProgramCounter|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dataBus[1]~53_combout\,
	datac => \ProgramCounter|Add0~2_combout\,
	datad => \Controller|WideOr39~combout\,
	combout => \ProgramCounter|tempCount~0_combout\);

-- Location: IOIBUF_X0_Y23_N8
\IN1_INPUT[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN1_INPUT(3),
	o => \IN1_INPUT[3]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\IN0_INPUT[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN0_INPUT(3),
	o => \IN0_INPUT[3]~input_o\);

-- Location: LCCOMB_X28_Y23_N30
\EnableDecoder|IN1_EN~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \EnableDecoder|IN1_EN~0_combout\ = (\Controller|WideOr26~1_combout\ & (\SelectAddress|ADDR[0]~62_combout\ & !\EnableDecoder|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|WideOr26~1_combout\,
	datab => \SelectAddress|ADDR[0]~62_combout\,
	datad => \EnableDecoder|LessThan0~4_combout\,
	combout => \EnableDecoder|IN1_EN~0_combout\);

-- Location: IOIBUF_X0_Y24_N1
\IN1_INPUT[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN1_INPUT(0),
	o => \IN1_INPUT[0]~input_o\);

-- Location: IOIBUF_X37_Y0_N15
\IN0_INPUT[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN0_INPUT(6),
	o => \IN0_INPUT[6]~input_o\);

-- Location: LCCOMB_X26_Y23_N30
\dataBus[6]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[6]~18_combout\ = (\IN0_INPUT[6]~input_o\ & (!\SelectAddress|ADDR[0]~62_combout\ & (\Controller|WideOr26~1_combout\ & !\EnableDecoder|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN0_INPUT[6]~input_o\,
	datab => \SelectAddress|ADDR[0]~62_combout\,
	datac => \Controller|WideOr26~1_combout\,
	datad => \EnableDecoder|LessThan0~4_combout\,
	combout => \dataBus[6]~18_combout\);

-- Location: IOIBUF_X0_Y25_N15
\IN1_INPUT[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN1_INPUT(6),
	o => \IN1_INPUT[6]~input_o\);

-- Location: IOIBUF_X35_Y0_N8
\IN0_INPUT[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN0_INPUT(2),
	o => \IN0_INPUT[2]~input_o\);

-- Location: LCCOMB_X26_Y23_N22
\dataBus[2]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[2]~54_combout\ = (\IN0_INPUT[2]~input_o\ & (!\SelectAddress|ADDR[0]~62_combout\ & (\Controller|WideOr26~1_combout\ & !\EnableDecoder|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN0_INPUT[2]~input_o\,
	datab => \SelectAddress|ADDR[0]~62_combout\,
	datac => \Controller|WideOr26~1_combout\,
	datad => \EnableDecoder|LessThan0~4_combout\,
	combout => \dataBus[2]~54_combout\);

-- Location: IOIBUF_X0_Y25_N22
\IN1_INPUT[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN1_INPUT(2),
	o => \IN1_INPUT[2]~input_o\);

-- Location: FF_X26_Y26_N19
\AddressRegisterHigh|tempAddress[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[2]~62_combout\,
	sload => VCC,
	ena => \Controller|WideOr31~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressRegisterHigh|tempAddress\(2));

-- Location: FF_X27_Y26_N7
\AddressRegisterHigh|tempAddress[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[3]~71_combout\,
	sload => VCC,
	ena => \Controller|WideOr31~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressRegisterHigh|tempAddress\(3));

-- Location: FF_X26_Y26_N27
\AddressRegisterHigh|tempAddress[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[1]~53_combout\,
	sload => VCC,
	ena => \Controller|WideOr31~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressRegisterHigh|tempAddress\(1));

-- Location: LCCOMB_X26_Y26_N14
\EnableDecoder|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \EnableDecoder|LessThan0~5_combout\ = (((!\AddressRegisterHigh|tempAddress\(1)) # (!\AddressRegisterHigh|tempAddress\(0))) # (!\AddressRegisterHigh|tempAddress\(3))) # (!\AddressRegisterHigh|tempAddress\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressRegisterHigh|tempAddress\(2),
	datab => \AddressRegisterHigh|tempAddress\(3),
	datac => \AddressRegisterHigh|tempAddress\(0),
	datad => \AddressRegisterHigh|tempAddress\(1),
	combout => \EnableDecoder|LessThan0~5_combout\);

-- Location: FF_X27_Y26_N13
\AddressRegisterHigh|tempAddress[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[5]~17_combout\,
	sload => VCC,
	ena => \Controller|WideOr31~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressRegisterHigh|tempAddress\(5));

-- Location: FF_X27_Y26_N19
\AddressRegisterHigh|tempAddress[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[6]~26_combout\,
	sload => VCC,
	ena => \Controller|WideOr31~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressRegisterHigh|tempAddress\(6));

-- Location: IOIBUF_X0_Y27_N22
\IN1_INPUT[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN1_INPUT(4),
	o => \IN1_INPUT[4]~input_o\);

-- Location: LCCOMB_X26_Y23_N12
\IR|Data[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \IR|Data[5]~feeder_combout\ = \dataBus[5]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataBus[5]~17_combout\,
	combout => \IR|Data[5]~feeder_combout\);

-- Location: FF_X26_Y23_N13
\IR|Data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~q\,
	d => \IR|Data[5]~feeder_combout\,
	clrn => \RESETn~input_o\,
	ena => \Controller|state.FETCH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Data\(5));

-- Location: FF_X24_Y23_N29
\IR|Data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~q\,
	d => \dataBus[4]~8_combout\,
	clrn => \RESETn~input_o\,
	ena => \Controller|state.FETCH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Data\(4));

-- Location: LCCOMB_X27_Y25_N20
\Controller|Mux17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux17~1_combout\ = (\IR|Data\(5) & (!\IR|Data\(1) & (\Controller|Mux17~0_combout\ & !\IR|Data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Data\(5),
	datab => \IR|Data\(1),
	datac => \Controller|Mux17~0_combout\,
	datad => \IR|Data\(4),
	combout => \Controller|Mux17~1_combout\);

-- Location: LCCOMB_X28_Y25_N18
\Controller|nextState.ANDR_D0_966\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.ANDR_D0_966~combout\ = (\Controller|state.DECODE~q\ & ((GLOBAL(\Controller|Mux4~11clkctrl_outclk\) & ((\Controller|Mux17~1_combout\))) # (!GLOBAL(\Controller|Mux4~11clkctrl_outclk\) & (\Controller|nextState.ANDR_D0_966~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.DECODE~q\,
	datab => \Controller|nextState.ANDR_D0_966~combout\,
	datac => \Controller|Mux17~1_combout\,
	datad => \Controller|Mux4~11clkctrl_outclk\,
	combout => \Controller|nextState.ANDR_D0_966~combout\);

-- Location: FF_X28_Y25_N19
\Controller|state.ANDR_D0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.ANDR_D0_966~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.ANDR_D0~q\);

-- Location: LCCOMB_X28_Y25_N2
\Controller|nextState.ANDR_D1_959\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.ANDR_D1_959~combout\ = (GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & ((\Controller|state.ANDR_D0~q\))) # (!GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & (\Controller|nextState.ANDR_D1_959~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controller|nextState.ANDR_D1_959~combout\,
	datac => \Controller|state.ANDR_D0~q\,
	datad => \Controller|Selector49~0clkctrl_outclk\,
	combout => \Controller|nextState.ANDR_D1_959~combout\);

-- Location: FF_X28_Y25_N3
\Controller|state.ANDR_D1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.ANDR_D1_959~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.ANDR_D1~q\);

-- Location: LCCOMB_X27_Y25_N4
\Controller|Mux13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux13~0_combout\ = (!\IR|Data\(0) & (!\IR|Data\(4) & (!\IR|Data\(2) & !\IR|Data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Data\(0),
	datab => \IR|Data\(4),
	datac => \IR|Data\(2),
	datad => \IR|Data\(3),
	combout => \Controller|Mux13~0_combout\);

-- Location: LCCOMB_X27_Y25_N12
\Controller|Mux13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux13~1_combout\ = (\Controller|Mux13~0_combout\ & \IR|Data\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|Mux13~0_combout\,
	datac => \IR|Data\(1),
	combout => \Controller|Mux13~1_combout\);

-- Location: LCCOMB_X28_Y25_N22
\Controller|nextState.RORC0_861\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.RORC0_861~combout\ = (\Controller|state.DECODE~q\ & ((GLOBAL(\Controller|Mux4~11clkctrl_outclk\) & (\Controller|Mux13~1_combout\)) # (!GLOBAL(\Controller|Mux4~11clkctrl_outclk\) & ((\Controller|nextState.RORC0_861~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|Mux13~1_combout\,
	datab => \Controller|state.DECODE~q\,
	datac => \Controller|nextState.RORC0_861~combout\,
	datad => \Controller|Mux4~11clkctrl_outclk\,
	combout => \Controller|nextState.RORC0_861~combout\);

-- Location: FF_X28_Y25_N23
\Controller|state.RORC0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.RORC0_861~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.RORC0~q\);

-- Location: LCCOMB_X28_Y25_N4
\Controller|nextState.RORC1_854\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.RORC1_854~combout\ = (GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & (\Controller|state.RORC0~q\)) # (!GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & ((\Controller|nextState.RORC1_854~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.RORC0~q\,
	datab => \Controller|nextState.RORC1_854~combout\,
	datad => \Controller|Selector49~0clkctrl_outclk\,
	combout => \Controller|nextState.RORC1_854~combout\);

-- Location: FF_X28_Y25_N5
\Controller|state.RORC1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.RORC1_854~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.RORC1~q\);

-- Location: IOIBUF_X0_Y26_N8
\IN1_INPUT[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN1_INPUT(7),
	o => \IN1_INPUT[7]~input_o\);

-- Location: IOIBUF_X37_Y0_N22
\IN0_INPUT[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN0_INPUT(7),
	o => \IN0_INPUT[7]~input_o\);

-- Location: LCCOMB_X29_Y23_N8
\dataBus[7]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[7]~27_combout\ = (\IN0_INPUT[7]~input_o\ & (\Controller|WideOr26~1_combout\ & (!\SelectAddress|ADDR[0]~62_combout\ & !\EnableDecoder|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN0_INPUT[7]~input_o\,
	datab => \Controller|WideOr26~1_combout\,
	datac => \SelectAddress|ADDR[0]~62_combout\,
	datad => \EnableDecoder|LessThan0~4_combout\,
	combout => \dataBus[7]~27_combout\);

-- Location: FF_X28_Y23_N17
\A|Data[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[7]~35_combout\,
	sload => VCC,
	ena => \Controller|WideOr32~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|Data[7]~_Duplicate_1_q\);

-- Location: LCCOMB_X27_Y25_N28
\Controller|Mux12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux12~0_combout\ = (\IR|Data\(4) & (\IR|Data\(1) & (\IR|Data\(3) & \Controller|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Data\(4),
	datab => \IR|Data\(1),
	datac => \IR|Data\(3),
	datad => \Controller|Mux17~0_combout\,
	combout => \Controller|Mux12~0_combout\);

-- Location: LCCOMB_X28_Y25_N16
\Controller|nextState.DECA0_843\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.DECA0_843~combout\ = (\Controller|state.DECODE~q\ & ((GLOBAL(\Controller|Mux4~11clkctrl_outclk\) & ((\Controller|Mux12~0_combout\))) # (!GLOBAL(\Controller|Mux4~11clkctrl_outclk\) & (\Controller|nextState.DECA0_843~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.DECODE~q\,
	datab => \Controller|nextState.DECA0_843~combout\,
	datac => \Controller|Mux12~0_combout\,
	datad => \Controller|Mux4~11clkctrl_outclk\,
	combout => \Controller|nextState.DECA0_843~combout\);

-- Location: FF_X28_Y25_N17
\Controller|state.DECA0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.DECA0_843~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.DECA0~q\);

-- Location: LCCOMB_X33_Y23_N2
\Controller|WideOr34~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|WideOr34~0_combout\ = (!\Controller|state.RORC0~q\ & (!\Controller|state.RORC1~q\ & !\Controller|state.MULT0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controller|state.RORC0~q\,
	datac => \Controller|state.RORC1~q\,
	datad => \Controller|state.MULT0~q\,
	combout => \Controller|WideOr34~0_combout\);

-- Location: LCCOMB_X33_Y23_N10
\tempALUreg|Data[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tempALUreg|Data[3]~2_combout\ = (\Controller|state.ANDR_D0~q\ & (!\Controller|state.DECA0~q\ & \Controller|WideOr34~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controller|state.ANDR_D0~q\,
	datac => \Controller|state.DECA0~q\,
	datad => \Controller|WideOr34~0_combout\,
	combout => \tempALUreg|Data[3]~2_combout\);

-- Location: LCCOMB_X33_Y23_N16
\tempALUreg|Data[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tempALUreg|Data[3]~0_combout\ = ((\Controller|state.ANDR_D0~q\ & \Controller|state.DECA0~q\)) # (!\Controller|WideOr34~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controller|state.ANDR_D0~q\,
	datac => \Controller|state.DECA0~q\,
	datad => \Controller|WideOr34~0_combout\,
	combout => \tempALUreg|Data[3]~0_combout\);

-- Location: LCCOMB_X33_Y23_N22
\Controller|WideOr35~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|WideOr35~1_combout\ = (!\Controller|state.DECA0~q\ & (!\Controller|state.RORC0~q\ & (!\Controller|state.ADCRD0~q\ & !\Controller|state.ANDR_D0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.DECA0~q\,
	datab => \Controller|state.RORC0~q\,
	datac => \Controller|state.ADCRD0~q\,
	datad => \Controller|state.ANDR_D0~q\,
	combout => \Controller|WideOr35~1_combout\);

-- Location: LCCOMB_X28_Y25_N20
\Controller|WideOr35~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|WideOr35~0_combout\ = (!\Controller|state.RORC1~q\ & !\Controller|state.ADCRD1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controller|state.RORC1~q\,
	datac => \Controller|state.ADCRD1~q\,
	combout => \Controller|WideOr35~0_combout\);

-- Location: LCCOMB_X33_Y23_N28
\ALU|Mux5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Mux5~3_combout\ = (!\tempALUreg|Data[3]~2_combout\ & ((\tempALUreg|Data[3]~0_combout\) # ((!\Controller|WideOr35~0_combout\) # (!\Controller|WideOr35~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempALUreg|Data[3]~2_combout\,
	datab => \tempALUreg|Data[3]~0_combout\,
	datac => \Controller|WideOr35~1_combout\,
	datad => \Controller|WideOr35~0_combout\,
	combout => \ALU|Mux5~3_combout\);

-- Location: LCCOMB_X26_Y23_N26
\Controller|X_INC~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|X_INC~0_combout\ = (\IR|Data\(5) & (\IR|Data\(6) & (!\IR|Data\(1) & \IR|Data\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Data\(5),
	datab => \IR|Data\(6),
	datac => \IR|Data\(1),
	datad => \IR|Data\(7),
	combout => \Controller|X_INC~0_combout\);

-- Location: LCCOMB_X27_Y24_N8
\Controller|X_INC~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|X_INC~1_combout\ = (\Controller|state.DECODE~q\ & (\IR|Data\(4) & \Controller|X_INC~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.DECODE~q\,
	datab => \IR|Data\(4),
	datac => \Controller|X_INC~0_combout\,
	combout => \Controller|X_INC~1_combout\);

-- Location: LCCOMB_X24_Y24_N0
\Flags|C~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Flags|C~5_combout\ = (!\IR|Data\(2) & (\IR|Data\(3) & (\IR|Data\(0) & \Controller|X_INC~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Data\(2),
	datab => \IR|Data\(3),
	datac => \IR|Data\(0),
	datad => \Controller|X_INC~1_combout\,
	combout => \Flags|C~5_combout\);

-- Location: FF_X28_Y23_N25
\A|Data[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[0]~44_combout\,
	sload => VCC,
	ena => \Controller|WideOr32~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|Data[0]~_Duplicate_1_q\);

-- Location: LCCOMB_X29_Y26_N16
\Controller|nextState.MULT2_775\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.MULT2_775~combout\ = (GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & ((\Controller|state.MULT1~q\))) # (!GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & (\Controller|nextState.MULT2_775~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controller|nextState.MULT2_775~combout\,
	datac => \Controller|state.MULT1~q\,
	datad => \Controller|Selector49~0clkctrl_outclk\,
	combout => \Controller|nextState.MULT2_775~combout\);

-- Location: FF_X29_Y26_N17
\Controller|state.MULT2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.MULT2_775~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.MULT2~q\);

-- Location: LCCOMB_X28_Y24_N4
\Controller|Selector18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Selector18~0_combout\ = (\Controller|state.MULT2~q\) # ((!\IR|Data\(3) & (\Controller|X_INC~1_combout\ & \Controller|Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.MULT2~q\,
	datab => \IR|Data\(3),
	datac => \Controller|X_INC~1_combout\,
	datad => \Controller|Mux17~0_combout\,
	combout => \Controller|Selector18~0_combout\);

-- Location: FF_X28_Y23_N1
\D|Data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[7]~35_combout\,
	sload => VCC,
	ena => \Controller|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Data\(7));

-- Location: FF_X28_Y23_N31
\D|Data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[6]~26_combout\,
	sload => VCC,
	ena => \Controller|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Data\(6));

-- Location: FF_X28_Y23_N15
\A|Data[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[6]~26_combout\,
	sload => VCC,
	ena => \Controller|WideOr32~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|Data[6]~_Duplicate_1_q\);

-- Location: FF_X28_Y23_N13
\A|Data[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[5]~17_combout\,
	sload => VCC,
	ena => \Controller|WideOr32~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|Data[5]~_Duplicate_1_q\);

-- Location: LCCOMB_X30_Y23_N28
\D|Data[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D|Data[5]~feeder_combout\ = \dataBus[5]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataBus[5]~17_combout\,
	combout => \D|Data[5]~feeder_combout\);

-- Location: FF_X30_Y23_N29
\D|Data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \D|Data[5]~feeder_combout\,
	ena => \Controller|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Data\(5));

-- Location: LCCOMB_X28_Y23_N20
\D|Data[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D|Data[4]~feeder_combout\ = \dataBus[4]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataBus[4]~8_combout\,
	combout => \D|Data[4]~feeder_combout\);

-- Location: FF_X28_Y23_N21
\D|Data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \D|Data[4]~feeder_combout\,
	ena => \Controller|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Data\(4));

-- Location: LCCOMB_X30_Y23_N24
\D|Data[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D|Data[3]~feeder_combout\ = \dataBus[3]~71_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataBus[3]~71_combout\,
	combout => \D|Data[3]~feeder_combout\);

-- Location: FF_X30_Y23_N25
\D|Data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \D|Data[3]~feeder_combout\,
	ena => \Controller|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Data\(3));

-- Location: FF_X28_Y23_N9
\A|Data[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[3]~71_combout\,
	sload => VCC,
	ena => \Controller|WideOr32~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|Data[3]~_Duplicate_1_q\);

-- Location: FF_X28_Y23_N7
\A|Data[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[2]~62_combout\,
	sload => VCC,
	ena => \Controller|WideOr32~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|Data[2]~_Duplicate_1_q\);

-- Location: FF_X30_Y23_N5
\D|Data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[2]~62_combout\,
	sload => VCC,
	ena => \Controller|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Data\(2));

-- Location: LCCOMB_X30_Y23_N14
\D|Data[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \D|Data[1]~feeder_combout\ = \dataBus[1]~53_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataBus[1]~53_combout\,
	combout => \D|Data[1]~feeder_combout\);

-- Location: FF_X30_Y23_N15
\D|Data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \D|Data[1]~feeder_combout\,
	ena => \Controller|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Data\(1));

-- Location: FF_X28_Y23_N5
\A|Data[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[1]~53_combout\,
	sload => VCC,
	ena => \Controller|WideOr32~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|Data[1]~_Duplicate_1_q\);

-- Location: FF_X28_Y23_N23
\D|Data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \dataBus[0]~44_combout\,
	ena => \Controller|Selector18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \D|Data\(0));

-- Location: LCCOMB_X28_Y23_N0
\ALU|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add0~1_cout\ = CARRY(\Flags|C~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Flags|C~q\,
	datad => VCC,
	cout => \ALU|Add0~1_cout\);

-- Location: LCCOMB_X28_Y23_N2
\ALU|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add0~2_combout\ = (\A|Data[0]~_Duplicate_1_q\ & ((\D|Data\(0) & (\ALU|Add0~1_cout\ & VCC)) # (!\D|Data\(0) & (!\ALU|Add0~1_cout\)))) # (!\A|Data[0]~_Duplicate_1_q\ & ((\D|Data\(0) & (!\ALU|Add0~1_cout\)) # (!\D|Data\(0) & ((\ALU|Add0~1_cout\) # 
-- (GND)))))
-- \ALU|Add0~3\ = CARRY((\A|Data[0]~_Duplicate_1_q\ & (!\D|Data\(0) & !\ALU|Add0~1_cout\)) # (!\A|Data[0]~_Duplicate_1_q\ & ((!\ALU|Add0~1_cout\) # (!\D|Data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|Data[0]~_Duplicate_1_q\,
	datab => \D|Data\(0),
	datad => VCC,
	cin => \ALU|Add0~1_cout\,
	combout => \ALU|Add0~2_combout\,
	cout => \ALU|Add0~3\);

-- Location: LCCOMB_X28_Y23_N4
\ALU|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add0~4_combout\ = ((\D|Data\(1) $ (\A|Data[1]~_Duplicate_1_q\ $ (!\ALU|Add0~3\)))) # (GND)
-- \ALU|Add0~5\ = CARRY((\D|Data\(1) & ((\A|Data[1]~_Duplicate_1_q\) # (!\ALU|Add0~3\))) # (!\D|Data\(1) & (\A|Data[1]~_Duplicate_1_q\ & !\ALU|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D|Data\(1),
	datab => \A|Data[1]~_Duplicate_1_q\,
	datad => VCC,
	cin => \ALU|Add0~3\,
	combout => \ALU|Add0~4_combout\,
	cout => \ALU|Add0~5\);

-- Location: LCCOMB_X28_Y23_N6
\ALU|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add0~6_combout\ = (\A|Data[2]~_Duplicate_1_q\ & ((\D|Data\(2) & (\ALU|Add0~5\ & VCC)) # (!\D|Data\(2) & (!\ALU|Add0~5\)))) # (!\A|Data[2]~_Duplicate_1_q\ & ((\D|Data\(2) & (!\ALU|Add0~5\)) # (!\D|Data\(2) & ((\ALU|Add0~5\) # (GND)))))
-- \ALU|Add0~7\ = CARRY((\A|Data[2]~_Duplicate_1_q\ & (!\D|Data\(2) & !\ALU|Add0~5\)) # (!\A|Data[2]~_Duplicate_1_q\ & ((!\ALU|Add0~5\) # (!\D|Data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|Data[2]~_Duplicate_1_q\,
	datab => \D|Data\(2),
	datad => VCC,
	cin => \ALU|Add0~5\,
	combout => \ALU|Add0~6_combout\,
	cout => \ALU|Add0~7\);

-- Location: LCCOMB_X28_Y23_N8
\ALU|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add0~8_combout\ = ((\D|Data\(3) $ (\A|Data[3]~_Duplicate_1_q\ $ (!\ALU|Add0~7\)))) # (GND)
-- \ALU|Add0~9\ = CARRY((\D|Data\(3) & ((\A|Data[3]~_Duplicate_1_q\) # (!\ALU|Add0~7\))) # (!\D|Data\(3) & (\A|Data[3]~_Duplicate_1_q\ & !\ALU|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D|Data\(3),
	datab => \A|Data[3]~_Duplicate_1_q\,
	datad => VCC,
	cin => \ALU|Add0~7\,
	combout => \ALU|Add0~8_combout\,
	cout => \ALU|Add0~9\);

-- Location: LCCOMB_X28_Y23_N10
\ALU|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add0~10_combout\ = (\A|Data[4]~_Duplicate_1_q\ & ((\D|Data\(4) & (\ALU|Add0~9\ & VCC)) # (!\D|Data\(4) & (!\ALU|Add0~9\)))) # (!\A|Data[4]~_Duplicate_1_q\ & ((\D|Data\(4) & (!\ALU|Add0~9\)) # (!\D|Data\(4) & ((\ALU|Add0~9\) # (GND)))))
-- \ALU|Add0~11\ = CARRY((\A|Data[4]~_Duplicate_1_q\ & (!\D|Data\(4) & !\ALU|Add0~9\)) # (!\A|Data[4]~_Duplicate_1_q\ & ((!\ALU|Add0~9\) # (!\D|Data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|Data[4]~_Duplicate_1_q\,
	datab => \D|Data\(4),
	datad => VCC,
	cin => \ALU|Add0~9\,
	combout => \ALU|Add0~10_combout\,
	cout => \ALU|Add0~11\);

-- Location: LCCOMB_X28_Y23_N12
\ALU|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add0~12_combout\ = ((\A|Data[5]~_Duplicate_1_q\ $ (\D|Data\(5) $ (!\ALU|Add0~11\)))) # (GND)
-- \ALU|Add0~13\ = CARRY((\A|Data[5]~_Duplicate_1_q\ & ((\D|Data\(5)) # (!\ALU|Add0~11\))) # (!\A|Data[5]~_Duplicate_1_q\ & (\D|Data\(5) & !\ALU|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|Data[5]~_Duplicate_1_q\,
	datab => \D|Data\(5),
	datad => VCC,
	cin => \ALU|Add0~11\,
	combout => \ALU|Add0~12_combout\,
	cout => \ALU|Add0~13\);

-- Location: LCCOMB_X28_Y23_N14
\ALU|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add0~14_combout\ = (\D|Data\(6) & ((\A|Data[6]~_Duplicate_1_q\ & (\ALU|Add0~13\ & VCC)) # (!\A|Data[6]~_Duplicate_1_q\ & (!\ALU|Add0~13\)))) # (!\D|Data\(6) & ((\A|Data[6]~_Duplicate_1_q\ & (!\ALU|Add0~13\)) # (!\A|Data[6]~_Duplicate_1_q\ & 
-- ((\ALU|Add0~13\) # (GND)))))
-- \ALU|Add0~15\ = CARRY((\D|Data\(6) & (!\A|Data[6]~_Duplicate_1_q\ & !\ALU|Add0~13\)) # (!\D|Data\(6) & ((!\ALU|Add0~13\) # (!\A|Data[6]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D|Data\(6),
	datab => \A|Data[6]~_Duplicate_1_q\,
	datad => VCC,
	cin => \ALU|Add0~13\,
	combout => \ALU|Add0~14_combout\,
	cout => \ALU|Add0~15\);

-- Location: LCCOMB_X28_Y23_N16
\ALU|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add0~16_combout\ = ((\D|Data\(7) $ (\A|Data[7]~_Duplicate_1_q\ $ (!\ALU|Add0~15\)))) # (GND)
-- \ALU|Add0~17\ = CARRY((\D|Data\(7) & ((\A|Data[7]~_Duplicate_1_q\) # (!\ALU|Add0~15\))) # (!\D|Data\(7) & (\A|Data[7]~_Duplicate_1_q\ & !\ALU|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \D|Data\(7),
	datab => \A|Data[7]~_Duplicate_1_q\,
	datad => VCC,
	cin => \ALU|Add0~15\,
	combout => \ALU|Add0~16_combout\,
	cout => \ALU|Add0~17\);

-- Location: LCCOMB_X28_Y23_N18
\ALU|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add0~18_combout\ = \ALU|Add0~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \ALU|Add0~17\,
	combout => \ALU|Add0~18_combout\);

-- Location: LCCOMB_X33_Y23_N18
\Flags|C~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Flags|C~2_combout\ = (\Controller|state.ANDR_D0~q\ & (\Controller|state.DECA0~q\)) # (!\Controller|state.ANDR_D0~q\ & (!\Controller|state.DECA0~q\ & \ALU|Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controller|state.ANDR_D0~q\,
	datac => \Controller|state.DECA0~q\,
	datad => \ALU|Add0~18_combout\,
	combout => \Flags|C~2_combout\);

-- Location: LCCOMB_X33_Y23_N0
\Flags|C~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Flags|C~3_combout\ = (\Controller|WideOr34~0_combout\ & (\Flags|C~2_combout\ & ((\A|Data[0]~_Duplicate_1_q\) # (!\Controller|state.ANDR_D0~q\)))) # (!\Controller|WideOr34~0_combout\ & (((\A|Data[0]~_Duplicate_1_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|WideOr34~0_combout\,
	datab => \Controller|state.ANDR_D0~q\,
	datac => \A|Data[0]~_Duplicate_1_q\,
	datad => \Flags|C~2_combout\,
	combout => \Flags|C~3_combout\);

-- Location: LCCOMB_X29_Y24_N24
\Flags|C~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Flags|C~4_combout\ = (\Controller|WideOr35~0_combout\ & (!\Flags|C~5_combout\ & (\Flags|C~q\))) # (!\Controller|WideOr35~0_combout\ & (((\Flags|C~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|WideOr35~0_combout\,
	datab => \Flags|C~5_combout\,
	datac => \Flags|C~q\,
	datad => \Flags|C~3_combout\,
	combout => \Flags|C~4_combout\);

-- Location: FF_X29_Y24_N25
\Flags|C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Flags|C~4_combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Flags|C~q\);

-- Location: LCCOMB_X33_Y23_N4
\tempALUreg|Data[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tempALUreg|Data[3]~1_combout\ = (\Controller|state.DECA0~q\ & (\Controller|WideOr35~0_combout\ & (\Controller|WideOr35~1_combout\))) # (!\Controller|state.DECA0~q\ & ((\Controller|WideOr34~0_combout\) # ((\Controller|WideOr35~0_combout\ & 
-- \Controller|WideOr35~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.DECA0~q\,
	datab => \Controller|WideOr35~0_combout\,
	datac => \Controller|WideOr35~1_combout\,
	datad => \Controller|WideOr34~0_combout\,
	combout => \tempALUreg|Data[3]~1_combout\);

-- Location: LCCOMB_X32_Y23_N4
\ALU|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add2~0_combout\ = \A|Data[0]~_Duplicate_1_q\ $ (VCC)
-- \ALU|Add2~1\ = CARRY(\A|Data[0]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|Data[0]~_Duplicate_1_q\,
	datad => VCC,
	combout => \ALU|Add2~0_combout\,
	cout => \ALU|Add2~1\);

-- Location: LCCOMB_X32_Y23_N6
\ALU|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add2~2_combout\ = (\A|Data[1]~_Duplicate_1_q\ & (\ALU|Add2~1\ & VCC)) # (!\A|Data[1]~_Duplicate_1_q\ & (!\ALU|Add2~1\))
-- \ALU|Add2~3\ = CARRY((!\A|Data[1]~_Duplicate_1_q\ & !\ALU|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|Data[1]~_Duplicate_1_q\,
	datad => VCC,
	cin => \ALU|Add2~1\,
	combout => \ALU|Add2~2_combout\,
	cout => \ALU|Add2~3\);

-- Location: LCCOMB_X32_Y23_N8
\ALU|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add2~4_combout\ = (\A|Data[2]~_Duplicate_1_q\ & ((GND) # (!\ALU|Add2~3\))) # (!\A|Data[2]~_Duplicate_1_q\ & (\ALU|Add2~3\ $ (GND)))
-- \ALU|Add2~5\ = CARRY((\A|Data[2]~_Duplicate_1_q\) # (!\ALU|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|Data[2]~_Duplicate_1_q\,
	datad => VCC,
	cin => \ALU|Add2~3\,
	combout => \ALU|Add2~4_combout\,
	cout => \ALU|Add2~5\);

-- Location: LCCOMB_X32_Y23_N10
\ALU|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add2~6_combout\ = (\A|Data[3]~_Duplicate_1_q\ & (\ALU|Add2~5\ & VCC)) # (!\A|Data[3]~_Duplicate_1_q\ & (!\ALU|Add2~5\))
-- \ALU|Add2~7\ = CARRY((!\A|Data[3]~_Duplicate_1_q\ & !\ALU|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|Data[3]~_Duplicate_1_q\,
	datad => VCC,
	cin => \ALU|Add2~5\,
	combout => \ALU|Add2~6_combout\,
	cout => \ALU|Add2~7\);

-- Location: LCCOMB_X32_Y23_N12
\ALU|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add2~8_combout\ = (\A|Data[4]~_Duplicate_1_q\ & ((GND) # (!\ALU|Add2~7\))) # (!\A|Data[4]~_Duplicate_1_q\ & (\ALU|Add2~7\ $ (GND)))
-- \ALU|Add2~9\ = CARRY((\A|Data[4]~_Duplicate_1_q\) # (!\ALU|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A|Data[4]~_Duplicate_1_q\,
	datad => VCC,
	cin => \ALU|Add2~7\,
	combout => \ALU|Add2~8_combout\,
	cout => \ALU|Add2~9\);

-- Location: LCCOMB_X32_Y23_N14
\ALU|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add2~10_combout\ = (\A|Data[5]~_Duplicate_1_q\ & (\ALU|Add2~9\ & VCC)) # (!\A|Data[5]~_Duplicate_1_q\ & (!\ALU|Add2~9\))
-- \ALU|Add2~11\ = CARRY((!\A|Data[5]~_Duplicate_1_q\ & !\ALU|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|Data[5]~_Duplicate_1_q\,
	datad => VCC,
	cin => \ALU|Add2~9\,
	combout => \ALU|Add2~10_combout\,
	cout => \ALU|Add2~11\);

-- Location: LCCOMB_X32_Y23_N16
\ALU|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add2~12_combout\ = (\A|Data[6]~_Duplicate_1_q\ & ((GND) # (!\ALU|Add2~11\))) # (!\A|Data[6]~_Duplicate_1_q\ & (\ALU|Add2~11\ $ (GND)))
-- \ALU|Add2~13\ = CARRY((\A|Data[6]~_Duplicate_1_q\) # (!\ALU|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A|Data[6]~_Duplicate_1_q\,
	datad => VCC,
	cin => \ALU|Add2~11\,
	combout => \ALU|Add2~12_combout\,
	cout => \ALU|Add2~13\);

-- Location: LCCOMB_X32_Y23_N18
\ALU|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Add2~14_combout\ = \ALU|Add2~13\ $ (!\A|Data[7]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \A|Data[7]~_Duplicate_1_q\,
	cin => \ALU|Add2~13\,
	combout => \ALU|Add2~14_combout\);

-- Location: LCCOMB_X32_Y23_N26
\ALU|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Mux2~1_combout\ = (\tempALUreg|Data[3]~1_combout\ & ((\tempALUreg|Data[3]~0_combout\) # ((\ALU|Add0~16_combout\)))) # (!\tempALUreg|Data[3]~1_combout\ & (!\tempALUreg|Data[3]~0_combout\ & ((\ALU|Add2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempALUreg|Data[3]~1_combout\,
	datab => \tempALUreg|Data[3]~0_combout\,
	datac => \ALU|Add0~16_combout\,
	datad => \ALU|Add2~14_combout\,
	combout => \ALU|Mux2~1_combout\);

-- Location: DSPMULT_X34_Y23_N0
\ALU|Mult0|auto_generated|mac_mult1\ : cycloneiii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "none",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => GND,
	signb => GND,
	clk => \slowCLK|onoff~clkctrl_outclk\,
	aclr => GND,
	ena => \Controller|WideOr32~combout\,
	dataa => \ALU|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \ALU|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \ALU|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: DSPOUT_X34_Y23_N2
\ALU|Mult0|auto_generated|mac_out2\ : cycloneiii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \ALU|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X32_Y23_N24
\ALU|Mux2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Mux2~2_combout\ = (\tempALUreg|Data[3]~0_combout\ & ((\ALU|Mux2~1_combout\ & ((\ALU|Mult0|auto_generated|mac_out2~DATAOUT15\))) # (!\ALU|Mux2~1_combout\ & (\Flags|C~q\)))) # (!\tempALUreg|Data[3]~0_combout\ & (((\ALU|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Flags|C~q\,
	datab => \tempALUreg|Data[3]~0_combout\,
	datac => \ALU|Mux2~1_combout\,
	datad => \ALU|Mult0|auto_generated|mac_out2~DATAOUT15\,
	combout => \ALU|Mux2~2_combout\);

-- Location: LCCOMB_X32_Y23_N0
\ALU|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Mux2~0_combout\ = (\D|Data\(7) & (\tempALUreg|Data[3]~2_combout\ & \A|Data[7]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D|Data\(7),
	datac => \tempALUreg|Data[3]~2_combout\,
	datad => \A|Data[7]~_Duplicate_1_q\,
	combout => \ALU|Mux2~0_combout\);

-- Location: LCCOMB_X32_Y23_N28
\ALU|Mux2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Mux2~3_combout\ = (\ALU|Mux2~0_combout\) # ((\ALU|Mux5~3_combout\ & \ALU|Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALU|Mux5~3_combout\,
	datac => \ALU|Mux2~2_combout\,
	datad => \ALU|Mux2~0_combout\,
	combout => \ALU|Mux2~3_combout\);

-- Location: LCCOMB_X33_Y23_N26
\Controller|WideOr37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|WideOr37~combout\ = (\Controller|state.MULT0~q\) # (!\Controller|WideOr35~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Controller|WideOr35~1_combout\,
	datad => \Controller|state.MULT0~q\,
	combout => \Controller|WideOr37~combout\);

-- Location: FF_X32_Y23_N29
\tempALUreg|Data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \ALU|Mux2~3_combout\,
	ena => \Controller|WideOr37~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tempALUreg|Data\(7));

-- Location: LCCOMB_X26_Y24_N18
\Controller|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux7~0_combout\ = (!\IR|Data\(1) & (!\IR|Data\(4) & (\Controller|Mux17~0_combout\ & \IR|Data\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Data\(1),
	datab => \IR|Data\(4),
	datac => \Controller|Mux17~0_combout\,
	datad => \IR|Data\(7),
	combout => \Controller|Mux7~0_combout\);

-- Location: LCCOMB_X29_Y26_N14
\Controller|nextState.LDAD_800\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.LDAD_800~combout\ = (\Controller|state.DECODE~q\ & ((GLOBAL(\Controller|Mux4~11clkctrl_outclk\) & ((\Controller|Mux7~0_combout\))) # (!GLOBAL(\Controller|Mux4~11clkctrl_outclk\) & (\Controller|nextState.LDAD_800~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.DECODE~q\,
	datab => \Controller|nextState.LDAD_800~combout\,
	datac => \Controller|Mux7~0_combout\,
	datad => \Controller|Mux4~11clkctrl_outclk\,
	combout => \Controller|nextState.LDAD_800~combout\);

-- Location: FF_X29_Y26_N15
\Controller|state.LDAD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.LDAD_800~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.LDAD~q\);

-- Location: FF_X30_Y23_N3
\tempALUreg2|Data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \ALU|Mult0|auto_generated|mac_out2~DATAOUT7\,
	sload => VCC,
	ena => \Controller|state.MULT0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tempALUreg2|Data\(7));

-- Location: LCCOMB_X30_Y23_N2
\dataBus[7]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[7]~28_combout\ = (\Controller|state.LDAD~q\ & ((\D|Data\(7)) # ((\Controller|state.MULT2~q\ & \tempALUreg2|Data\(7))))) # (!\Controller|state.LDAD~q\ & (\Controller|state.MULT2~q\ & (\tempALUreg2|Data\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.LDAD~q\,
	datab => \Controller|state.MULT2~q\,
	datac => \tempALUreg2|Data\(7),
	datad => \D|Data\(7),
	combout => \dataBus[7]~28_combout\);

-- Location: LCCOMB_X29_Y23_N16
\dataBus[7]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[7]~29_combout\ = (\dataBus[7]~28_combout\) # ((\tempALUreg|Data\(7) & ((\Controller|state.MULT1~q\) # (!\Controller|WideOr32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.MULT1~q\,
	datab => \Controller|WideOr32~0_combout\,
	datac => \tempALUreg|Data\(7),
	datad => \dataBus[7]~28_combout\,
	combout => \dataBus[7]~29_combout\);

-- Location: LCCOMB_X26_Y23_N0
\Controller|Selector17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Selector17~0_combout\ = (!\IR|Data\(3) & (\IR|Data\(4) & (!\IR|Data\(2) & \Controller|X_INC~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Data\(3),
	datab => \IR|Data\(4),
	datac => \IR|Data\(2),
	datad => \Controller|X_INC~0_combout\,
	combout => \Controller|Selector17~0_combout\);

-- Location: LCCOMB_X29_Y26_N28
\Controller|Selector17~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Selector17~1_combout\ = (\Controller|state.STAA2~q\) # ((\Controller|Selector17~0_combout\ & (\Controller|state.DECODE~q\ & \IR|Data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.STAA2~q\,
	datab => \Controller|Selector17~0_combout\,
	datac => \Controller|state.DECODE~q\,
	datad => \IR|Data\(0),
	combout => \Controller|Selector17~1_combout\);

-- Location: FF_X27_Y26_N25
\AddressRegisterHigh|tempAddress[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[7]~35_combout\,
	sload => VCC,
	ena => \Controller|WideOr31~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressRegisterHigh|tempAddress\(7));

-- Location: LCCOMB_X26_Y24_N12
\Controller|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux9~0_combout\ = (\IR|Data\(3) & !\IR|Data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Data\(3),
	datad => \IR|Data\(0),
	combout => \Controller|Mux9~0_combout\);

-- Location: LCCOMB_X26_Y24_N10
\Controller|Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux9~1_combout\ = (!\IR|Data\(1) & (\IR|Data\(6) & (!\IR|Data\(2) & \Controller|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Data\(1),
	datab => \IR|Data\(6),
	datac => \IR|Data\(2),
	datad => \Controller|Mux9~0_combout\,
	combout => \Controller|Mux9~1_combout\);

-- Location: LCCOMB_X28_Y26_N12
\Controller|nextState.CALL0_764\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.CALL0_764~combout\ = (\Controller|state.DECODE~q\ & ((GLOBAL(\Controller|Mux4~11clkctrl_outclk\) & (\Controller|Mux9~1_combout\)) # (!GLOBAL(\Controller|Mux4~11clkctrl_outclk\) & ((\Controller|nextState.CALL0_764~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|Mux9~1_combout\,
	datab => \Controller|state.DECODE~q\,
	datac => \Controller|nextState.CALL0_764~combout\,
	datad => \Controller|Mux4~11clkctrl_outclk\,
	combout => \Controller|nextState.CALL0_764~combout\);

-- Location: FF_X28_Y26_N13
\Controller|state.CALL0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.CALL0_764~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.CALL0~q\);

-- Location: LCCOMB_X28_Y26_N20
\Controller|nextState.CALL1_757\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.CALL1_757~combout\ = (GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & ((\Controller|state.CALL0~q\))) # (!GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & (\Controller|nextState.CALL1_757~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controller|nextState.CALL1_757~combout\,
	datac => \Controller|state.CALL0~q\,
	datad => \Controller|Selector49~0clkctrl_outclk\,
	combout => \Controller|nextState.CALL1_757~combout\);

-- Location: FF_X28_Y26_N21
\Controller|state.CALL1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.CALL1_757~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.CALL1~q\);

-- Location: LCCOMB_X28_Y26_N24
\Controller|nextState.CALL2_746\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.CALL2_746~combout\ = (GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & ((\Controller|state.CALL1~q\))) # (!GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & (\Controller|nextState.CALL2_746~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controller|nextState.CALL2_746~combout\,
	datac => \Controller|state.CALL1~q\,
	datad => \Controller|Selector49~0clkctrl_outclk\,
	combout => \Controller|nextState.CALL2_746~combout\);

-- Location: FF_X28_Y26_N25
\Controller|state.CALL2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.CALL2_746~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.CALL2~q\);

-- Location: LCCOMB_X28_Y26_N18
\Controller|nextState.CALL3_735\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.CALL3_735~combout\ = (GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & ((\Controller|state.CALL2~q\))) # (!GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & (\Controller|nextState.CALL3_735~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controller|nextState.CALL3_735~combout\,
	datac => \Controller|state.CALL2~q\,
	datad => \Controller|Selector49~0clkctrl_outclk\,
	combout => \Controller|nextState.CALL3_735~combout\);

-- Location: FF_X28_Y26_N19
\Controller|state.CALL3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.CALL3_735~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.CALL3~q\);

-- Location: LCCOMB_X28_Y26_N14
\Controller|nextState.CALL4_724\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.CALL4_724~combout\ = (GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & (\Controller|state.CALL3~q\)) # (!GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & ((\Controller|nextState.CALL4_724~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controller|state.CALL3~q\,
	datac => \Controller|nextState.CALL4_724~combout\,
	datad => \Controller|Selector49~0clkctrl_outclk\,
	combout => \Controller|nextState.CALL4_724~combout\);

-- Location: FF_X28_Y26_N15
\Controller|state.CALL4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.CALL4_724~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.CALL4~q\);

-- Location: LCCOMB_X28_Y26_N4
\Controller|nextState.CALL5_713\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.CALL5_713~combout\ = (GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & ((\Controller|state.CALL4~q\))) # (!GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & (\Controller|nextState.CALL5_713~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controller|nextState.CALL5_713~combout\,
	datac => \Controller|state.CALL4~q\,
	datad => \Controller|Selector49~0clkctrl_outclk\,
	combout => \Controller|nextState.CALL5_713~combout\);

-- Location: FF_X28_Y26_N5
\Controller|state.CALL5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.CALL5_713~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.CALL5~q\);

-- Location: LCCOMB_X29_Y26_N6
\Controller|nextState.BRANCH3_919\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.BRANCH3_919~combout\ = (GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & ((\Controller|state.BRANCH2~q\))) # (!GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & (\Controller|nextState.BRANCH3_919~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|nextState.BRANCH3_919~combout\,
	datac => \Controller|state.BRANCH2~q\,
	datad => \Controller|Selector49~0clkctrl_outclk\,
	combout => \Controller|nextState.BRANCH3_919~combout\);

-- Location: FF_X29_Y26_N7
\Controller|state.BRANCH3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.BRANCH3_919~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.BRANCH3~q\);

-- Location: LCCOMB_X27_Y25_N18
\Controller|Mux10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux10~0_combout\ = (\Controller|Mux13~0_combout\ & !\IR|Data\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|Mux13~0_combout\,
	datac => \IR|Data\(1),
	combout => \Controller|Mux10~0_combout\);

-- Location: LCCOMB_X28_Y25_N14
\Controller|nextState.RET0_702\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.RET0_702~combout\ = (\Controller|state.DECODE~q\ & ((GLOBAL(\Controller|Mux4~11clkctrl_outclk\) & (\Controller|Mux10~0_combout\)) # (!GLOBAL(\Controller|Mux4~11clkctrl_outclk\) & ((\Controller|nextState.RET0_702~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.DECODE~q\,
	datab => \Controller|Mux10~0_combout\,
	datac => \Controller|nextState.RET0_702~combout\,
	datad => \Controller|Mux4~11clkctrl_outclk\,
	combout => \Controller|nextState.RET0_702~combout\);

-- Location: FF_X28_Y25_N15
\Controller|state.RET0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.RET0_702~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.RET0~q\);

-- Location: LCCOMB_X28_Y25_N0
\Controller|nextState.RET1_695\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.RET1_695~combout\ = (GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & ((\Controller|state.RET0~q\))) # (!GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & (\Controller|nextState.RET1_695~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controller|nextState.RET1_695~combout\,
	datac => \Controller|Selector49~0clkctrl_outclk\,
	datad => \Controller|state.RET0~q\,
	combout => \Controller|nextState.RET1_695~combout\);

-- Location: FF_X28_Y25_N1
\Controller|state.RET1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.RET1_695~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.RET1~q\);

-- Location: LCCOMB_X26_Y22_N12
\ProgramCounter|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ProgramCounter|Add0~12_combout\ = (\ProgramCounter|tempCount\(6) & (\ProgramCounter|Add0~11\ $ (GND))) # (!\ProgramCounter|tempCount\(6) & (!\ProgramCounter|Add0~11\ & VCC))
-- \ProgramCounter|Add0~13\ = CARRY((\ProgramCounter|tempCount\(6) & !\ProgramCounter|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ProgramCounter|tempCount\(6),
	datad => VCC,
	cin => \ProgramCounter|Add0~11\,
	combout => \ProgramCounter|Add0~12_combout\,
	cout => \ProgramCounter|Add0~13\);

-- Location: LCCOMB_X26_Y22_N14
\ProgramCounter|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ProgramCounter|Add0~14_combout\ = (\ProgramCounter|tempCount\(7) & (!\ProgramCounter|Add0~13\)) # (!\ProgramCounter|tempCount\(7) & ((\ProgramCounter|Add0~13\) # (GND)))
-- \ProgramCounter|Add0~15\ = CARRY((!\ProgramCounter|Add0~13\) # (!\ProgramCounter|tempCount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|tempCount\(7),
	datad => VCC,
	cin => \ProgramCounter|Add0~13\,
	combout => \ProgramCounter|Add0~14_combout\,
	cout => \ProgramCounter|Add0~15\);

-- Location: LCCOMB_X28_Y22_N8
\ProgramCounter|tempCount~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ProgramCounter|tempCount~7_combout\ = (\Controller|WideOr39~combout\ & (\dataBus[7]~35_combout\)) # (!\Controller|WideOr39~combout\ & ((\ProgramCounter|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|WideOr39~combout\,
	datac => \dataBus[7]~35_combout\,
	datad => \ProgramCounter|Add0~14_combout\,
	combout => \ProgramCounter|tempCount~7_combout\);

-- Location: FF_X28_Y22_N9
\ProgramCounter|tempCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \ProgramCounter|tempCount~7_combout\,
	clrn => \RESETn~input_o\,
	ena => \ProgramCounter|tempCount[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|tempCount\(7));

-- Location: LCCOMB_X29_Y25_N28
\StackPointerL|tempAddress[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \StackPointerL|tempAddress[7]~feeder_combout\ = \ProgramCounter|tempCount\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|tempCount\(7),
	combout => \StackPointerL|tempAddress[7]~feeder_combout\);

-- Location: FF_X29_Y25_N29
\StackPointerL|tempAddress[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \StackPointerL|tempAddress[7]~feeder_combout\,
	ena => \Controller|state.CALL2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackPointerL|tempAddress\(7));

-- Location: LCCOMB_X27_Y24_N10
\Controller|WideOr40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|WideOr40~combout\ = (\Controller|state.CALL5~q\) # ((\Controller|state.RET0~q\) # (\Controller|state.BRANCH3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.CALL5~q\,
	datab => \Controller|state.RET0~q\,
	datad => \Controller|state.BRANCH3~q\,
	combout => \Controller|WideOr40~combout\);

-- Location: LCCOMB_X26_Y22_N16
\ProgramCounter|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ProgramCounter|Add0~16_combout\ = (\ProgramCounter|tempCount\(8) & (\ProgramCounter|Add0~15\ $ (GND))) # (!\ProgramCounter|tempCount\(8) & (!\ProgramCounter|Add0~15\ & VCC))
-- \ProgramCounter|Add0~17\ = CARRY((\ProgramCounter|tempCount\(8) & !\ProgramCounter|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|tempCount\(8),
	datad => VCC,
	cin => \ProgramCounter|Add0~15\,
	combout => \ProgramCounter|Add0~16_combout\,
	cout => \ProgramCounter|Add0~17\);

-- Location: LCCOMB_X27_Y22_N18
\ProgramCounter|tempCount~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ProgramCounter|tempCount~8_combout\ = (\Controller|WideOr40~combout\ & ((\dataBus[0]~44_combout\))) # (!\Controller|WideOr40~combout\ & (\ProgramCounter|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|WideOr40~combout\,
	datab => \ProgramCounter|Add0~16_combout\,
	datad => \dataBus[0]~44_combout\,
	combout => \ProgramCounter|tempCount~8_combout\);

-- Location: LCCOMB_X27_Y22_N6
\ProgramCounter|tempCount[8]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ProgramCounter|tempCount[8]~9_combout\ = (!\Controller|WideOr39~combout\ & ((\Controller|WideOr40~combout\) # (!\Controller|WideOr27~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|WideOr27~3_combout\,
	datac => \Controller|WideOr40~combout\,
	datad => \Controller|WideOr39~combout\,
	combout => \ProgramCounter|tempCount[8]~9_combout\);

-- Location: FF_X27_Y22_N19
\ProgramCounter|tempCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \ProgramCounter|tempCount~8_combout\,
	clrn => \RESETn~input_o\,
	ena => \ProgramCounter|tempCount[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|tempCount\(8));

-- Location: LCCOMB_X26_Y22_N18
\ProgramCounter|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ProgramCounter|Add0~18_combout\ = (\ProgramCounter|tempCount\(9) & (!\ProgramCounter|Add0~17\)) # (!\ProgramCounter|tempCount\(9) & ((\ProgramCounter|Add0~17\) # (GND)))
-- \ProgramCounter|Add0~19\ = CARRY((!\ProgramCounter|Add0~17\) # (!\ProgramCounter|tempCount\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ProgramCounter|tempCount\(9),
	datad => VCC,
	cin => \ProgramCounter|Add0~17\,
	combout => \ProgramCounter|Add0~18_combout\,
	cout => \ProgramCounter|Add0~19\);

-- Location: LCCOMB_X27_Y22_N16
\ProgramCounter|tempCount~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ProgramCounter|tempCount~10_combout\ = (\Controller|WideOr40~combout\ & (\dataBus[1]~53_combout\)) # (!\Controller|WideOr40~combout\ & ((\ProgramCounter|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|WideOr40~combout\,
	datac => \dataBus[1]~53_combout\,
	datad => \ProgramCounter|Add0~18_combout\,
	combout => \ProgramCounter|tempCount~10_combout\);

-- Location: FF_X27_Y22_N17
\ProgramCounter|tempCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \ProgramCounter|tempCount~10_combout\,
	clrn => \RESETn~input_o\,
	ena => \ProgramCounter|tempCount[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|tempCount\(9));

-- Location: LCCOMB_X26_Y22_N20
\ProgramCounter|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ProgramCounter|Add0~20_combout\ = (\ProgramCounter|tempCount\(10) & (\ProgramCounter|Add0~19\ $ (GND))) # (!\ProgramCounter|tempCount\(10) & (!\ProgramCounter|Add0~19\ & VCC))
-- \ProgramCounter|Add0~21\ = CARRY((\ProgramCounter|tempCount\(10) & !\ProgramCounter|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|tempCount\(10),
	datad => VCC,
	cin => \ProgramCounter|Add0~19\,
	combout => \ProgramCounter|Add0~20_combout\,
	cout => \ProgramCounter|Add0~21\);

-- Location: LCCOMB_X27_Y22_N30
\ProgramCounter|tempCount~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ProgramCounter|tempCount~11_combout\ = (\Controller|WideOr40~combout\ & ((\dataBus[2]~62_combout\))) # (!\Controller|WideOr40~combout\ & (\ProgramCounter|Add0~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ProgramCounter|Add0~20_combout\,
	datac => \Controller|WideOr40~combout\,
	datad => \dataBus[2]~62_combout\,
	combout => \ProgramCounter|tempCount~11_combout\);

-- Location: FF_X27_Y22_N31
\ProgramCounter|tempCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \ProgramCounter|tempCount~11_combout\,
	clrn => \RESETn~input_o\,
	ena => \ProgramCounter|tempCount[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|tempCount\(10));

-- Location: LCCOMB_X26_Y22_N22
\ProgramCounter|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ProgramCounter|Add0~22_combout\ = (\ProgramCounter|tempCount\(11) & (!\ProgramCounter|Add0~21\)) # (!\ProgramCounter|tempCount\(11) & ((\ProgramCounter|Add0~21\) # (GND)))
-- \ProgramCounter|Add0~23\ = CARRY((!\ProgramCounter|Add0~21\) # (!\ProgramCounter|tempCount\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|tempCount\(11),
	datad => VCC,
	cin => \ProgramCounter|Add0~21\,
	combout => \ProgramCounter|Add0~22_combout\,
	cout => \ProgramCounter|Add0~23\);

-- Location: LCCOMB_X27_Y22_N4
\ProgramCounter|tempCount~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ProgramCounter|tempCount~12_combout\ = (\Controller|WideOr40~combout\ & ((\dataBus[3]~71_combout\))) # (!\Controller|WideOr40~combout\ & (\ProgramCounter|Add0~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ProgramCounter|Add0~22_combout\,
	datac => \Controller|WideOr40~combout\,
	datad => \dataBus[3]~71_combout\,
	combout => \ProgramCounter|tempCount~12_combout\);

-- Location: FF_X27_Y22_N5
\ProgramCounter|tempCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \ProgramCounter|tempCount~12_combout\,
	clrn => \RESETn~input_o\,
	ena => \ProgramCounter|tempCount[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|tempCount\(11));

-- Location: LCCOMB_X26_Y22_N24
\ProgramCounter|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ProgramCounter|Add0~24_combout\ = (\ProgramCounter|tempCount\(12) & (\ProgramCounter|Add0~23\ $ (GND))) # (!\ProgramCounter|tempCount\(12) & (!\ProgramCounter|Add0~23\ & VCC))
-- \ProgramCounter|Add0~25\ = CARRY((\ProgramCounter|tempCount\(12) & !\ProgramCounter|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ProgramCounter|tempCount\(12),
	datad => VCC,
	cin => \ProgramCounter|Add0~23\,
	combout => \ProgramCounter|Add0~24_combout\,
	cout => \ProgramCounter|Add0~25\);

-- Location: LCCOMB_X27_Y22_N14
\ProgramCounter|tempCount~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ProgramCounter|tempCount~13_combout\ = (\Controller|WideOr40~combout\ & (\dataBus[4]~8_combout\)) # (!\Controller|WideOr40~combout\ & ((\ProgramCounter|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataBus[4]~8_combout\,
	datab => \ProgramCounter|Add0~24_combout\,
	datac => \Controller|WideOr40~combout\,
	combout => \ProgramCounter|tempCount~13_combout\);

-- Location: FF_X27_Y22_N15
\ProgramCounter|tempCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \ProgramCounter|tempCount~13_combout\,
	clrn => \RESETn~input_o\,
	ena => \ProgramCounter|tempCount[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|tempCount\(12));

-- Location: LCCOMB_X26_Y22_N26
\ProgramCounter|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ProgramCounter|Add0~26_combout\ = (\ProgramCounter|tempCount\(13) & (!\ProgramCounter|Add0~25\)) # (!\ProgramCounter|tempCount\(13) & ((\ProgramCounter|Add0~25\) # (GND)))
-- \ProgramCounter|Add0~27\ = CARRY((!\ProgramCounter|Add0~25\) # (!\ProgramCounter|tempCount\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ProgramCounter|tempCount\(13),
	datad => VCC,
	cin => \ProgramCounter|Add0~25\,
	combout => \ProgramCounter|Add0~26_combout\,
	cout => \ProgramCounter|Add0~27\);

-- Location: LCCOMB_X27_Y22_N28
\ProgramCounter|tempCount~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ProgramCounter|tempCount~14_combout\ = (\Controller|WideOr40~combout\ & ((\dataBus[5]~17_combout\))) # (!\Controller|WideOr40~combout\ & (\ProgramCounter|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|WideOr40~combout\,
	datab => \ProgramCounter|Add0~26_combout\,
	datad => \dataBus[5]~17_combout\,
	combout => \ProgramCounter|tempCount~14_combout\);

-- Location: FF_X27_Y22_N29
\ProgramCounter|tempCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \ProgramCounter|tempCount~14_combout\,
	clrn => \RESETn~input_o\,
	ena => \ProgramCounter|tempCount[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|tempCount\(13));

-- Location: LCCOMB_X26_Y22_N28
\ProgramCounter|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ProgramCounter|Add0~28_combout\ = (\ProgramCounter|tempCount\(14) & (\ProgramCounter|Add0~27\ $ (GND))) # (!\ProgramCounter|tempCount\(14) & (!\ProgramCounter|Add0~27\ & VCC))
-- \ProgramCounter|Add0~29\ = CARRY((\ProgramCounter|tempCount\(14) & !\ProgramCounter|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|tempCount\(14),
	datad => VCC,
	cin => \ProgramCounter|Add0~27\,
	combout => \ProgramCounter|Add0~28_combout\,
	cout => \ProgramCounter|Add0~29\);

-- Location: LCCOMB_X27_Y22_N22
\ProgramCounter|tempCount~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ProgramCounter|tempCount~15_combout\ = (\Controller|WideOr40~combout\ & ((\dataBus[6]~26_combout\))) # (!\Controller|WideOr40~combout\ & (\ProgramCounter|Add0~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ProgramCounter|Add0~28_combout\,
	datac => \Controller|WideOr40~combout\,
	datad => \dataBus[6]~26_combout\,
	combout => \ProgramCounter|tempCount~15_combout\);

-- Location: FF_X27_Y22_N23
\ProgramCounter|tempCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \ProgramCounter|tempCount~15_combout\,
	clrn => \RESETn~input_o\,
	ena => \ProgramCounter|tempCount[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|tempCount\(14));

-- Location: LCCOMB_X26_Y22_N30
\ProgramCounter|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ProgramCounter|Add0~30_combout\ = \ProgramCounter|Add0~29\ $ (\ProgramCounter|tempCount\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|tempCount\(15),
	cin => \ProgramCounter|Add0~29\,
	combout => \ProgramCounter|Add0~30_combout\);

-- Location: LCCOMB_X27_Y22_N12
\ProgramCounter|tempCount~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ProgramCounter|tempCount~16_combout\ = (\Controller|WideOr40~combout\ & (\dataBus[7]~35_combout\)) # (!\Controller|WideOr40~combout\ & ((\ProgramCounter|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|WideOr40~combout\,
	datac => \dataBus[7]~35_combout\,
	datad => \ProgramCounter|Add0~30_combout\,
	combout => \ProgramCounter|tempCount~16_combout\);

-- Location: FF_X27_Y22_N13
\ProgramCounter|tempCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \ProgramCounter|tempCount~16_combout\,
	clrn => \RESETn~input_o\,
	ena => \ProgramCounter|tempCount[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|tempCount\(15));

-- Location: FF_X29_Y25_N3
\StackPointerH|tempAddress[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \ProgramCounter|tempCount\(15),
	sload => VCC,
	ena => \Controller|state.CALL3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackPointerH|tempAddress\(7));

-- Location: LCCOMB_X29_Y25_N2
\dataBus[7]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[7]~30_combout\ = (\Controller|state.RET1~q\ & ((\StackPointerL|tempAddress\(7)) # ((\StackPointerH|tempAddress\(7) & \Controller|state.RET0~q\)))) # (!\Controller|state.RET1~q\ & (((\StackPointerH|tempAddress\(7) & \Controller|state.RET0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.RET1~q\,
	datab => \StackPointerL|tempAddress\(7),
	datac => \StackPointerH|tempAddress\(7),
	datad => \Controller|state.RET0~q\,
	combout => \dataBus[7]~30_combout\);

-- Location: LCCOMB_X28_Y24_N20
\Controller|Mux4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux4~12_combout\ = (!\IR|Data\(3) & !\IR|Data\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IR|Data\(3),
	datad => \IR|Data\(6),
	combout => \Controller|Mux4~12_combout\);

-- Location: LCCOMB_X28_Y25_N8
\Controller|nextState.LOADFLAGS_SZ_659\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.LOADFLAGS_SZ_659~combout\ = (GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & (!\Controller|WideOr32~0_combout\)) # (!GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & ((\Controller|nextState.LOADFLAGS_SZ_659~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controller|WideOr32~0_combout\,
	datac => \Controller|nextState.LOADFLAGS_SZ_659~combout\,
	datad => \Controller|Selector49~0clkctrl_outclk\,
	combout => \Controller|nextState.LOADFLAGS_SZ_659~combout\);

-- Location: FF_X28_Y25_N9
\Controller|state.LOADFLAGS_SZ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.LOADFLAGS_SZ_659~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.LOADFLAGS_SZ~q\);

-- Location: FF_X29_Y24_N9
\Flags|S\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \A|Data[7]~_Duplicate_1_q\,
	clrn => \RESETn~input_o\,
	sload => VCC,
	ena => \Controller|state.LOADFLAGS_SZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Flags|S~q\);

-- Location: LCCOMB_X30_Y24_N12
\A|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A|Equal0~0_combout\ = (!\A|Data[0]~_Duplicate_1_q\ & (!\A|Data[1]~_Duplicate_1_q\ & (!\A|Data[2]~_Duplicate_1_q\ & !\A|Data[3]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|Data[0]~_Duplicate_1_q\,
	datab => \A|Data[1]~_Duplicate_1_q\,
	datac => \A|Data[2]~_Duplicate_1_q\,
	datad => \A|Data[3]~_Duplicate_1_q\,
	combout => \A|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y24_N18
\A|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A|Equal0~1_combout\ = (!\A|Data[4]~_Duplicate_1_q\ & (!\A|Data[5]~_Duplicate_1_q\ & (!\A|Data[7]~_Duplicate_1_q\ & !\A|Data[6]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|Data[4]~_Duplicate_1_q\,
	datab => \A|Data[5]~_Duplicate_1_q\,
	datac => \A|Data[7]~_Duplicate_1_q\,
	datad => \A|Data[6]~_Duplicate_1_q\,
	combout => \A|Equal0~1_combout\);

-- Location: LCCOMB_X29_Y24_N6
\A|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \A|Equal0~2_combout\ = (\A|Equal0~0_combout\ & \A|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|Equal0~0_combout\,
	datad => \A|Equal0~1_combout\,
	combout => \A|Equal0~2_combout\);

-- Location: FF_X29_Y24_N7
\Flags|Z\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \A|Equal0~2_combout\,
	clrn => \RESETn~input_o\,
	ena => \Controller|state.LOADFLAGS_SZ~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Flags|Z~q\);

-- Location: LCCOMB_X29_Y24_N8
\Controller|Mux16~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux16~0_combout\ = (\IR|Data\(2) & ((\IR|Data\(0) & (\Flags|S~q\)) # (!\IR|Data\(0) & ((\Flags|Z~q\))))) # (!\IR|Data\(2) & (((\Flags|Z~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Data\(2),
	datab => \IR|Data\(0),
	datac => \Flags|S~q\,
	datad => \Flags|Z~q\,
	combout => \Controller|Mux16~0_combout\);

-- Location: LCCOMB_X29_Y24_N2
\Controller|Mux16~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux16~1_combout\ = (\IR|Data\(2) & (((\Controller|Mux16~0_combout\)))) # (!\IR|Data\(2) & ((\IR|Data\(1) & ((!\Controller|Mux16~0_combout\))) # (!\IR|Data\(1) & (\Flags|C~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Data\(2),
	datab => \Flags|C~q\,
	datac => \IR|Data\(1),
	datad => \Controller|Mux16~0_combout\,
	combout => \Controller|Mux16~1_combout\);

-- Location: LCCOMB_X29_Y24_N16
\Controller|Mux16~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux16~2_combout\ = (((\Controller|Mux16~1_combout\) # (!\IR|Data\(5))) # (!\Controller|Mux4~12_combout\)) # (!\IR|Data\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Data\(7),
	datab => \Controller|Mux4~12_combout\,
	datac => \IR|Data\(5),
	datad => \Controller|Mux16~1_combout\,
	combout => \Controller|Mux16~2_combout\);

-- Location: LCCOMB_X29_Y24_N12
\Controller|nextState.BRANCH0_948\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.BRANCH0_948~combout\ = (\Controller|state.DECODE~q\ & ((GLOBAL(\Controller|Mux4~11clkctrl_outclk\) & ((!\Controller|Mux16~2_combout\))) # (!GLOBAL(\Controller|Mux4~11clkctrl_outclk\) & (\Controller|nextState.BRANCH0_948~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|nextState.BRANCH0_948~combout\,
	datab => \Controller|state.DECODE~q\,
	datac => \Controller|Mux4~11clkctrl_outclk\,
	datad => \Controller|Mux16~2_combout\,
	combout => \Controller|nextState.BRANCH0_948~combout\);

-- Location: FF_X29_Y24_N13
\Controller|state.BRANCH0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.BRANCH0_948~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.BRANCH0~q\);

-- Location: LCCOMB_X28_Y26_N10
\Controller|WideOr30~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|WideOr30~0_combout\ = (!\Controller|state.CALL0~q\ & (!\Controller|state.STAA0~q\ & (!\Controller|state.LDAA0~q\ & !\Controller|state.BRANCH0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.CALL0~q\,
	datab => \Controller|state.STAA0~q\,
	datac => \Controller|state.LDAA0~q\,
	datad => \Controller|state.BRANCH0~q\,
	combout => \Controller|WideOr30~0_combout\);

-- Location: FF_X27_Y26_N15
\AddressRegisterLow|tempAddress[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[7]~35_combout\,
	sload => VCC,
	ena => \Controller|ALT_INV_WideOr30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressRegisterLow|tempAddress\(7));

-- Location: LCCOMB_X29_Y23_N6
\dataBus[7]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[7]~31_combout\ = (\dataBus[7]~30_combout\) # ((\AddressRegisterLow|tempAddress\(7) & ((\Controller|state.CALL4~q\) # (\Controller|state.BRANCH2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.CALL4~q\,
	datab => \Controller|state.BRANCH2~q\,
	datac => \dataBus[7]~30_combout\,
	datad => \AddressRegisterLow|tempAddress\(7),
	combout => \dataBus[7]~31_combout\);

-- Location: LCCOMB_X29_Y23_N18
\dataBus[7]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[7]~32_combout\ = (\dataBus[7]~31_combout\) # ((\AddressRegisterHigh|tempAddress\(7) & ((\Controller|state.CALL5~q\) # (\Controller|state.BRANCH3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressRegisterHigh|tempAddress\(7),
	datab => \Controller|state.CALL5~q\,
	datac => \Controller|state.BRANCH3~q\,
	datad => \dataBus[7]~31_combout\,
	combout => \dataBus[7]~32_combout\);

-- Location: LCCOMB_X29_Y23_N30
\dataBus[7]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[7]~33_combout\ = (\dataBus[7]~29_combout\) # ((\dataBus[7]~32_combout\) # ((\A|Data[7]~_Duplicate_1_q\ & \Controller|Selector17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|Data[7]~_Duplicate_1_q\,
	datab => \dataBus[7]~29_combout\,
	datac => \Controller|Selector17~1_combout\,
	datad => \dataBus[7]~32_combout\,
	combout => \dataBus[7]~33_combout\);

-- Location: FF_X29_Y23_N11
\RAM|RAM|altsyncram_component|auto_generated|wren_a_store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MEM_WREN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM|altsyncram_component|auto_generated|wren_a_store~q\);

-- Location: FF_X29_Y23_N21
\RAM|RAM|altsyncram_component|auto_generated|rden_a_store\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Controller|WideOr26~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|RAM|altsyncram_component|auto_generated|rden_a_store~q\);

-- Location: LCCOMB_X29_Y23_N22
\RAM|RAM|altsyncram_component|auto_generated|_~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \RAM|RAM|altsyncram_component|auto_generated|_~0_combout\ = (\RAM|RAM|altsyncram_component|auto_generated|wren_a_store~q\) # ((\Controller|WideOr26~1_combout\) # ((\RAM|RAM|altsyncram_component|auto_generated|rden_a_store~q\) # (\MEM_WREN~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|RAM|altsyncram_component|auto_generated|wren_a_store~q\,
	datab => \Controller|WideOr26~1_combout\,
	datac => \RAM|RAM|altsyncram_component|auto_generated|rden_a_store~q\,
	datad => \MEM_WREN~combout\,
	combout => \RAM|RAM|altsyncram_component|auto_generated|_~0_combout\);

-- Location: LCCOMB_X28_Y26_N16
\Controller|nextState.LDAA2_977\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.LDAA2_977~combout\ = (GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & (\Controller|state.LDAA1~q\)) # (!GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & ((\Controller|nextState.LDAA2_977~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controller|state.LDAA1~q\,
	datac => \Controller|nextState.LDAA2_977~combout\,
	datad => \Controller|Selector49~0clkctrl_outclk\,
	combout => \Controller|nextState.LDAA2_977~combout\);

-- Location: FF_X28_Y26_N17
\Controller|state.LDAA2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.LDAA2_977~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.LDAA2~q\);

-- Location: LCCOMB_X26_Y24_N8
\Controller|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux6~0_combout\ = (\IR|Data\(2) & (!\IR|Data\(1) & (\Controller|Mux9~0_combout\ & !\IR|Data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Data\(2),
	datab => \IR|Data\(1),
	datac => \Controller|Mux9~0_combout\,
	datad => \IR|Data\(6),
	combout => \Controller|Mux6~0_combout\);

-- Location: LCCOMB_X26_Y24_N24
\Controller|nextState.LDAA_X_807\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.LDAA_X_807~combout\ = (\Controller|state.DECODE~q\ & ((GLOBAL(\Controller|Mux4~11clkctrl_outclk\) & ((\Controller|Mux6~0_combout\))) # (!GLOBAL(\Controller|Mux4~11clkctrl_outclk\) & (\Controller|nextState.LDAA_X_807~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|nextState.LDAA_X_807~combout\,
	datab => \Controller|state.DECODE~q\,
	datac => \Controller|Mux6~0_combout\,
	datad => \Controller|Mux4~11clkctrl_outclk\,
	combout => \Controller|nextState.LDAA_X_807~combout\);

-- Location: FF_X26_Y24_N25
\Controller|state.LDAA_X\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.LDAA_X_807~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.LDAA_X~q\);

-- Location: LCCOMB_X26_Y26_N16
\SelectAddress|ADDR[1]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[1]~19_combout\ = (!\Controller|state.STAA2~q\ & (!\Controller|state.LDAA2~q\ & !\Controller|state.LDAA_X~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controller|state.STAA2~q\,
	datac => \Controller|state.LDAA2~q\,
	datad => \Controller|state.LDAA_X~q\,
	combout => \SelectAddress|ADDR[1]~19_combout\);

-- Location: LCCOMB_X26_Y27_N0
\indexRegister|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indexRegister|Add0~0_combout\ = \indexRegister|tempCount\(0) $ (VCC)
-- \indexRegister|Add0~1\ = CARRY(\indexRegister|tempCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \indexRegister|tempCount\(0),
	datad => VCC,
	combout => \indexRegister|Add0~0_combout\,
	cout => \indexRegister|Add0~1\);

-- Location: LCCOMB_X27_Y24_N26
\indexRegister|tempCount~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indexRegister|tempCount~17_combout\ = (\Controller|state.LDXI0~q\ & (\dataBus[0]~44_combout\)) # (!\Controller|state.LDXI0~q\ & ((\indexRegister|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dataBus[0]~44_combout\,
	datac => \indexRegister|Add0~0_combout\,
	datad => \Controller|state.LDXI0~q\,
	combout => \indexRegister|tempCount~17_combout\);

-- Location: LCCOMB_X24_Y24_N20
\indexRegister|tempCount[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indexRegister|tempCount[5]~1_combout\ = (\Controller|state.LDXI0~q\) # ((\IR|Data\(2) & (\Controller|Mux9~0_combout\ & \Controller|X_INC~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Data\(2),
	datab => \Controller|state.LDXI0~q\,
	datac => \Controller|Mux9~0_combout\,
	datad => \Controller|X_INC~1_combout\,
	combout => \indexRegister|tempCount[5]~1_combout\);

-- Location: FF_X27_Y24_N27
\indexRegister|tempCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \indexRegister|tempCount~17_combout\,
	clrn => \RESETn~input_o\,
	ena => \indexRegister|tempCount[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \indexRegister|tempCount\(0));

-- Location: LCCOMB_X26_Y27_N2
\indexRegister|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indexRegister|Add0~2_combout\ = (\indexRegister|tempCount\(1) & (!\indexRegister|Add0~1\)) # (!\indexRegister|tempCount\(1) & ((\indexRegister|Add0~1\) # (GND)))
-- \indexRegister|Add0~3\ = CARRY((!\indexRegister|Add0~1\) # (!\indexRegister|tempCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \indexRegister|tempCount\(1),
	datad => VCC,
	cin => \indexRegister|Add0~1\,
	combout => \indexRegister|Add0~2_combout\,
	cout => \indexRegister|Add0~3\);

-- Location: LCCOMB_X28_Y25_N12
\indexRegister|tempCount~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indexRegister|tempCount~0_combout\ = (\Controller|state.LDXI0~q\ & (\dataBus[1]~53_combout\)) # (!\Controller|state.LDXI0~q\ & ((\indexRegister|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataBus[1]~53_combout\,
	datac => \indexRegister|Add0~2_combout\,
	datad => \Controller|state.LDXI0~q\,
	combout => \indexRegister|tempCount~0_combout\);

-- Location: FF_X28_Y25_N13
\indexRegister|tempCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \indexRegister|tempCount~0_combout\,
	clrn => \RESETn~input_o\,
	ena => \indexRegister|tempCount[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \indexRegister|tempCount\(1));

-- Location: LCCOMB_X27_Y25_N14
\SelectAddress|ADDR[1]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[1]~18_combout\ = (\indexRegister|tempCount\(1) & \Controller|state.LDAA_X~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \indexRegister|tempCount\(1),
	datad => \Controller|state.LDAA_X~q\,
	combout => \SelectAddress|ADDR[1]~18_combout\);

-- Location: FF_X27_Y25_N1
\AddressRegisterLow|tempAddress[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[1]~53_combout\,
	sload => VCC,
	ena => \Controller|ALT_INV_WideOr30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressRegisterLow|tempAddress\(1));

-- Location: LCCOMB_X27_Y25_N22
\SelectAddress|ADDR[1]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[1]~17_combout\ = (\AddressRegisterLow|tempAddress\(1) & (!\Controller|state.LDAA_X~q\ & ((\Controller|state.LDAA2~q\) # (\Controller|state.STAA2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.LDAA2~q\,
	datab => \AddressRegisterLow|tempAddress\(1),
	datac => \Controller|state.STAA2~q\,
	datad => \Controller|state.LDAA_X~q\,
	combout => \SelectAddress|ADDR[1]~17_combout\);

-- Location: LCCOMB_X27_Y23_N4
\SelectAddress|ADDR[1]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[1]~20_combout\ = (\SelectAddress|ADDR[1]~18_combout\) # ((\SelectAddress|ADDR[1]~17_combout\) # ((\SelectAddress|ADDR[1]~19_combout\ & \ProgramCounter|tempCount\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectAddress|ADDR[1]~19_combout\,
	datab => \ProgramCounter|tempCount\(1),
	datac => \SelectAddress|ADDR[1]~18_combout\,
	datad => \SelectAddress|ADDR[1]~17_combout\,
	combout => \SelectAddress|ADDR[1]~20_combout\);

-- Location: FF_X27_Y26_N5
\AddressRegisterLow|tempAddress[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[2]~62_combout\,
	sload => VCC,
	ena => \Controller|ALT_INV_WideOr30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressRegisterLow|tempAddress\(2));

-- Location: LCCOMB_X27_Y26_N4
\SelectAddress|ADDR[2]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[2]~21_combout\ = (\AddressRegisterLow|tempAddress\(2) & (!\Controller|state.LDAA_X~q\ & ((\Controller|state.STAA2~q\) # (\Controller|state.LDAA2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.STAA2~q\,
	datab => \Controller|state.LDAA2~q\,
	datac => \AddressRegisterLow|tempAddress\(2),
	datad => \Controller|state.LDAA_X~q\,
	combout => \SelectAddress|ADDR[2]~21_combout\);

-- Location: LCCOMB_X26_Y27_N4
\indexRegister|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indexRegister|Add0~4_combout\ = (\indexRegister|tempCount\(2) & (\indexRegister|Add0~3\ $ (GND))) # (!\indexRegister|tempCount\(2) & (!\indexRegister|Add0~3\ & VCC))
-- \indexRegister|Add0~5\ = CARRY((\indexRegister|tempCount\(2) & !\indexRegister|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \indexRegister|tempCount\(2),
	datad => VCC,
	cin => \indexRegister|Add0~3\,
	combout => \indexRegister|Add0~4_combout\,
	cout => \indexRegister|Add0~5\);

-- Location: LCCOMB_X27_Y24_N28
\indexRegister|tempCount~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indexRegister|tempCount~2_combout\ = (\Controller|state.LDXI0~q\ & ((\dataBus[2]~62_combout\))) # (!\Controller|state.LDXI0~q\ & (\indexRegister|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.LDXI0~q\,
	datab => \indexRegister|Add0~4_combout\,
	datad => \dataBus[2]~62_combout\,
	combout => \indexRegister|tempCount~2_combout\);

-- Location: FF_X27_Y24_N29
\indexRegister|tempCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \indexRegister|tempCount~2_combout\,
	clrn => \RESETn~input_o\,
	ena => \indexRegister|tempCount[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \indexRegister|tempCount\(2));

-- Location: LCCOMB_X26_Y24_N4
\SelectAddress|ADDR[2]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[2]~22_combout\ = (\Controller|state.LDAA_X~q\ & \indexRegister|tempCount\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controller|state.LDAA_X~q\,
	datad => \indexRegister|tempCount\(2),
	combout => \SelectAddress|ADDR[2]~22_combout\);

-- Location: LCCOMB_X27_Y26_N30
\SelectAddress|ADDR[2]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[2]~23_combout\ = (\SelectAddress|ADDR[2]~21_combout\) # ((\SelectAddress|ADDR[2]~22_combout\) # ((\ProgramCounter|tempCount\(2) & \SelectAddress|ADDR[1]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|tempCount\(2),
	datab => \SelectAddress|ADDR[2]~21_combout\,
	datac => \SelectAddress|ADDR[2]~22_combout\,
	datad => \SelectAddress|ADDR[1]~19_combout\,
	combout => \SelectAddress|ADDR[2]~23_combout\);

-- Location: LCCOMB_X26_Y27_N6
\indexRegister|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indexRegister|Add0~6_combout\ = (\indexRegister|tempCount\(3) & (!\indexRegister|Add0~5\)) # (!\indexRegister|tempCount\(3) & ((\indexRegister|Add0~5\) # (GND)))
-- \indexRegister|Add0~7\ = CARRY((!\indexRegister|Add0~5\) # (!\indexRegister|tempCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \indexRegister|tempCount\(3),
	datad => VCC,
	cin => \indexRegister|Add0~5\,
	combout => \indexRegister|Add0~6_combout\,
	cout => \indexRegister|Add0~7\);

-- Location: LCCOMB_X24_Y23_N10
\indexRegister|tempCount~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indexRegister|tempCount~3_combout\ = (\Controller|state.LDXI0~q\ & ((\dataBus[3]~71_combout\))) # (!\Controller|state.LDXI0~q\ & (\indexRegister|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \indexRegister|Add0~6_combout\,
	datac => \Controller|state.LDXI0~q\,
	datad => \dataBus[3]~71_combout\,
	combout => \indexRegister|tempCount~3_combout\);

-- Location: FF_X24_Y23_N11
\indexRegister|tempCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \indexRegister|tempCount~3_combout\,
	clrn => \RESETn~input_o\,
	ena => \indexRegister|tempCount[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \indexRegister|tempCount\(3));

-- Location: FF_X27_Y26_N21
\AddressRegisterLow|tempAddress[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[3]~71_combout\,
	sload => VCC,
	ena => \Controller|ALT_INV_WideOr30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressRegisterLow|tempAddress\(3));

-- Location: LCCOMB_X27_Y26_N20
\SelectAddress|ADDR[3]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[3]~24_combout\ = (\Controller|state.STAA2~q\ & (((\AddressRegisterLow|tempAddress\(3))))) # (!\Controller|state.STAA2~q\ & ((\Controller|state.LDAA2~q\ & (\AddressRegisterLow|tempAddress\(3))) # (!\Controller|state.LDAA2~q\ & 
-- ((\ProgramCounter|tempCount\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.STAA2~q\,
	datab => \Controller|state.LDAA2~q\,
	datac => \AddressRegisterLow|tempAddress\(3),
	datad => \ProgramCounter|tempCount\(3),
	combout => \SelectAddress|ADDR[3]~24_combout\);

-- Location: LCCOMB_X26_Y25_N20
\SelectAddress|ADDR[3]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[3]~25_combout\ = (\Controller|state.LDAA_X~q\ & (\indexRegister|tempCount\(3))) # (!\Controller|state.LDAA_X~q\ & ((\SelectAddress|ADDR[3]~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controller|state.LDAA_X~q\,
	datac => \indexRegister|tempCount\(3),
	datad => \SelectAddress|ADDR[3]~24_combout\,
	combout => \SelectAddress|ADDR[3]~25_combout\);

-- Location: FF_X27_Y26_N3
\AddressRegisterLow|tempAddress[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[4]~8_combout\,
	sload => VCC,
	ena => \Controller|ALT_INV_WideOr30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressRegisterLow|tempAddress\(4));

-- Location: LCCOMB_X27_Y26_N2
\SelectAddress|ADDR[4]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[4]~26_combout\ = (\AddressRegisterLow|tempAddress\(4) & (!\Controller|state.LDAA_X~q\ & ((\Controller|state.STAA2~q\) # (\Controller|state.LDAA2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.STAA2~q\,
	datab => \Controller|state.LDAA2~q\,
	datac => \AddressRegisterLow|tempAddress\(4),
	datad => \Controller|state.LDAA_X~q\,
	combout => \SelectAddress|ADDR[4]~26_combout\);

-- Location: LCCOMB_X26_Y27_N8
\indexRegister|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indexRegister|Add0~8_combout\ = (\indexRegister|tempCount\(4) & (\indexRegister|Add0~7\ $ (GND))) # (!\indexRegister|tempCount\(4) & (!\indexRegister|Add0~7\ & VCC))
-- \indexRegister|Add0~9\ = CARRY((\indexRegister|tempCount\(4) & !\indexRegister|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \indexRegister|tempCount\(4),
	datad => VCC,
	cin => \indexRegister|Add0~7\,
	combout => \indexRegister|Add0~8_combout\,
	cout => \indexRegister|Add0~9\);

-- Location: LCCOMB_X24_Y23_N4
\indexRegister|tempCount~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indexRegister|tempCount~4_combout\ = (\Controller|state.LDXI0~q\ & ((\dataBus[4]~8_combout\))) # (!\Controller|state.LDXI0~q\ & (\indexRegister|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \indexRegister|Add0~8_combout\,
	datac => \Controller|state.LDXI0~q\,
	datad => \dataBus[4]~8_combout\,
	combout => \indexRegister|tempCount~4_combout\);

-- Location: FF_X24_Y23_N5
\indexRegister|tempCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \indexRegister|tempCount~4_combout\,
	clrn => \RESETn~input_o\,
	ena => \indexRegister|tempCount[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \indexRegister|tempCount\(4));

-- Location: LCCOMB_X24_Y23_N12
\SelectAddress|ADDR[4]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[4]~27_combout\ = (\indexRegister|tempCount\(4) & \Controller|state.LDAA_X~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \indexRegister|tempCount\(4),
	datad => \Controller|state.LDAA_X~q\,
	combout => \SelectAddress|ADDR[4]~27_combout\);

-- Location: LCCOMB_X27_Y23_N14
\SelectAddress|ADDR[4]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[4]~28_combout\ = (\SelectAddress|ADDR[4]~26_combout\) # ((\SelectAddress|ADDR[4]~27_combout\) # ((\SelectAddress|ADDR[1]~19_combout\ & \ProgramCounter|tempCount\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectAddress|ADDR[1]~19_combout\,
	datab => \ProgramCounter|tempCount\(4),
	datac => \SelectAddress|ADDR[4]~26_combout\,
	datad => \SelectAddress|ADDR[4]~27_combout\,
	combout => \SelectAddress|ADDR[4]~28_combout\);

-- Location: LCCOMB_X26_Y27_N10
\indexRegister|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indexRegister|Add0~10_combout\ = (\indexRegister|tempCount\(5) & (!\indexRegister|Add0~9\)) # (!\indexRegister|tempCount\(5) & ((\indexRegister|Add0~9\) # (GND)))
-- \indexRegister|Add0~11\ = CARRY((!\indexRegister|Add0~9\) # (!\indexRegister|tempCount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \indexRegister|tempCount\(5),
	datad => VCC,
	cin => \indexRegister|Add0~9\,
	combout => \indexRegister|Add0~10_combout\,
	cout => \indexRegister|Add0~11\);

-- Location: LCCOMB_X28_Y24_N22
\indexRegister|tempCount~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indexRegister|tempCount~5_combout\ = (\Controller|state.LDXI0~q\ & (\dataBus[5]~17_combout\)) # (!\Controller|state.LDXI0~q\ & ((\indexRegister|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.LDXI0~q\,
	datac => \dataBus[5]~17_combout\,
	datad => \indexRegister|Add0~10_combout\,
	combout => \indexRegister|tempCount~5_combout\);

-- Location: FF_X28_Y24_N23
\indexRegister|tempCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \indexRegister|tempCount~5_combout\,
	clrn => \RESETn~input_o\,
	ena => \indexRegister|tempCount[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \indexRegister|tempCount\(5));

-- Location: LCCOMB_X27_Y24_N6
\AddressRegisterLow|tempAddress[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \AddressRegisterLow|tempAddress[5]~feeder_combout\ = \dataBus[5]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataBus[5]~17_combout\,
	combout => \AddressRegisterLow|tempAddress[5]~feeder_combout\);

-- Location: FF_X27_Y24_N7
\AddressRegisterLow|tempAddress[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \AddressRegisterLow|tempAddress[5]~feeder_combout\,
	ena => \Controller|ALT_INV_WideOr30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressRegisterLow|tempAddress\(5));

-- Location: LCCOMB_X27_Y24_N24
\SelectAddress|ADDR[5]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[5]~29_combout\ = (\Controller|state.STAA2~q\ & (\AddressRegisterLow|tempAddress\(5))) # (!\Controller|state.STAA2~q\ & ((\Controller|state.LDAA2~q\ & (\AddressRegisterLow|tempAddress\(5))) # (!\Controller|state.LDAA2~q\ & 
-- ((\ProgramCounter|tempCount\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressRegisterLow|tempAddress\(5),
	datab => \ProgramCounter|tempCount\(5),
	datac => \Controller|state.STAA2~q\,
	datad => \Controller|state.LDAA2~q\,
	combout => \SelectAddress|ADDR[5]~29_combout\);

-- Location: LCCOMB_X28_Y24_N8
\SelectAddress|ADDR[5]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[5]~30_combout\ = (\Controller|state.LDAA_X~q\ & (\indexRegister|tempCount\(5))) # (!\Controller|state.LDAA_X~q\ & ((\SelectAddress|ADDR[5]~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controller|state.LDAA_X~q\,
	datac => \indexRegister|tempCount\(5),
	datad => \SelectAddress|ADDR[5]~29_combout\,
	combout => \SelectAddress|ADDR[5]~30_combout\);

-- Location: LCCOMB_X26_Y27_N12
\indexRegister|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indexRegister|Add0~12_combout\ = (\indexRegister|tempCount\(6) & (\indexRegister|Add0~11\ $ (GND))) # (!\indexRegister|tempCount\(6) & (!\indexRegister|Add0~11\ & VCC))
-- \indexRegister|Add0~13\ = CARRY((\indexRegister|tempCount\(6) & !\indexRegister|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \indexRegister|tempCount\(6),
	datad => VCC,
	cin => \indexRegister|Add0~11\,
	combout => \indexRegister|Add0~12_combout\,
	cout => \indexRegister|Add0~13\);

-- Location: LCCOMB_X27_Y24_N22
\indexRegister|tempCount~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indexRegister|tempCount~6_combout\ = (\Controller|state.LDXI0~q\ & (\dataBus[6]~26_combout\)) # (!\Controller|state.LDXI0~q\ & ((\indexRegister|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataBus[6]~26_combout\,
	datab => \indexRegister|Add0~12_combout\,
	datad => \Controller|state.LDXI0~q\,
	combout => \indexRegister|tempCount~6_combout\);

-- Location: FF_X27_Y24_N23
\indexRegister|tempCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \indexRegister|tempCount~6_combout\,
	clrn => \RESETn~input_o\,
	ena => \indexRegister|tempCount[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \indexRegister|tempCount\(6));

-- Location: LCCOMB_X26_Y27_N14
\indexRegister|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indexRegister|Add0~14_combout\ = (\indexRegister|tempCount\(7) & (!\indexRegister|Add0~13\)) # (!\indexRegister|tempCount\(7) & ((\indexRegister|Add0~13\) # (GND)))
-- \indexRegister|Add0~15\ = CARRY((!\indexRegister|Add0~13\) # (!\indexRegister|tempCount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \indexRegister|tempCount\(7),
	datad => VCC,
	cin => \indexRegister|Add0~13\,
	combout => \indexRegister|Add0~14_combout\,
	cout => \indexRegister|Add0~15\);

-- Location: LCCOMB_X28_Y24_N30
\indexRegister|tempCount~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indexRegister|tempCount~7_combout\ = (\Controller|state.LDXI0~q\ & ((\dataBus[7]~35_combout\))) # (!\Controller|state.LDXI0~q\ & (\indexRegister|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.LDXI0~q\,
	datab => \indexRegister|Add0~14_combout\,
	datad => \dataBus[7]~35_combout\,
	combout => \indexRegister|tempCount~7_combout\);

-- Location: FF_X28_Y24_N31
\indexRegister|tempCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \indexRegister|tempCount~7_combout\,
	clrn => \RESETn~input_o\,
	ena => \indexRegister|tempCount[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \indexRegister|tempCount\(7));

-- Location: LCCOMB_X27_Y23_N28
\SelectAddress|ADDR[7]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[7]~35_combout\ = (\Controller|state.LDAA_X~q\ & \indexRegister|tempCount\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Controller|state.LDAA_X~q\,
	datad => \indexRegister|tempCount\(7),
	combout => \SelectAddress|ADDR[7]~35_combout\);

-- Location: LCCOMB_X27_Y26_N14
\SelectAddress|ADDR[7]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[7]~34_combout\ = (\AddressRegisterLow|tempAddress\(7) & (!\Controller|state.LDAA_X~q\ & ((\Controller|state.STAA2~q\) # (\Controller|state.LDAA2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.STAA2~q\,
	datab => \Controller|state.LDAA2~q\,
	datac => \AddressRegisterLow|tempAddress\(7),
	datad => \Controller|state.LDAA_X~q\,
	combout => \SelectAddress|ADDR[7]~34_combout\);

-- Location: LCCOMB_X27_Y23_N18
\SelectAddress|ADDR[7]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[7]~36_combout\ = (\SelectAddress|ADDR[7]~35_combout\) # ((\SelectAddress|ADDR[7]~34_combout\) # ((\ProgramCounter|tempCount\(7) & \SelectAddress|ADDR[1]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|tempCount\(7),
	datab => \SelectAddress|ADDR[7]~35_combout\,
	datac => \SelectAddress|ADDR[1]~19_combout\,
	datad => \SelectAddress|ADDR[7]~34_combout\,
	combout => \SelectAddress|ADDR[7]~36_combout\);

-- Location: M9K_X25_Y23_N0
\RAM|RAM|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000003C00B0003E400FF003F800F60020400FF003FC00F60026400FF003F80088003C400FF003FC0088",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../Small8Tests/MULTinstructiontest.mif",
	init_file_layout => "port_a",
	logical_ram_name => "topRAM:RAM|RAM:RAM|altsyncram:altsyncram_component|altsyncram_6lv3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \MEM_WREN~combout\,
	portare => \Controller|WideOr26~1_combout\,
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \RAM|RAM|altsyncram_component|auto_generated|_~0_combout\,
	portadatain => \RAM|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \RAM|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X29_Y23_N4
\dataBus[7]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[7]~34_combout\ = (\dataBus[7]~33_combout\) # ((\Controller|WideOr26~1_combout\ & (\RAM|RAM|altsyncram_component|auto_generated|ram_block1a7\ & \EnableDecoder|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataBus[7]~33_combout\,
	datab => \Controller|WideOr26~1_combout\,
	datac => \RAM|RAM|altsyncram_component|auto_generated|ram_block1a7\,
	datad => \EnableDecoder|LessThan0~4_combout\,
	combout => \dataBus[7]~34_combout\);

-- Location: LCCOMB_X29_Y23_N24
\dataBus[7]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[7]~35_combout\ = (\dataBus[7]~27_combout\) # ((\dataBus[7]~34_combout\) # ((\IN1_INPUT[7]~input_o\ & \EnableDecoder|IN1_EN~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN1_INPUT[7]~input_o\,
	datab => \dataBus[7]~27_combout\,
	datac => \dataBus[7]~34_combout\,
	datad => \EnableDecoder|IN1_EN~0_combout\,
	combout => \dataBus[7]~35_combout\);

-- Location: LCCOMB_X29_Y23_N12
\IR|Data[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \IR|Data[7]~feeder_combout\ = \dataBus[7]~35_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataBus[7]~35_combout\,
	combout => \IR|Data[7]~feeder_combout\);

-- Location: FF_X29_Y23_N13
\IR|Data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~q\,
	d => \IR|Data[7]~feeder_combout\,
	clrn => \RESETn~input_o\,
	ena => \Controller|state.FETCH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Data\(7));

-- Location: LCCOMB_X27_Y25_N16
\Controller|Mux15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux15~0_combout\ = (!\IR|Data\(5) & (!\IR|Data\(7) & (\Controller|Mux17~0_combout\ & !\IR|Data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Data\(5),
	datab => \IR|Data\(7),
	datac => \Controller|Mux17~0_combout\,
	datad => \IR|Data\(1),
	combout => \Controller|Mux15~0_combout\);

-- Location: LCCOMB_X28_Y25_N26
\Controller|nextState.ADCRD0_908\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.ADCRD0_908~combout\ = (\Controller|state.DECODE~q\ & ((GLOBAL(\Controller|Mux4~11clkctrl_outclk\) & (\Controller|Mux15~0_combout\)) # (!GLOBAL(\Controller|Mux4~11clkctrl_outclk\) & ((\Controller|nextState.ADCRD0_908~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|Mux15~0_combout\,
	datab => \Controller|state.DECODE~q\,
	datac => \Controller|nextState.ADCRD0_908~combout\,
	datad => \Controller|Mux4~11clkctrl_outclk\,
	combout => \Controller|nextState.ADCRD0_908~combout\);

-- Location: FF_X28_Y25_N27
\Controller|state.ADCRD0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.ADCRD0_908~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.ADCRD0~q\);

-- Location: LCCOMB_X28_Y25_N10
\Controller|nextState.ADCRD1_901\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.ADCRD1_901~combout\ = (GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & ((\Controller|state.ADCRD0~q\))) # (!GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & (\Controller|nextState.ADCRD1_901~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|nextState.ADCRD1_901~combout\,
	datac => \Controller|Selector49~0clkctrl_outclk\,
	datad => \Controller|state.ADCRD0~q\,
	combout => \Controller|nextState.ADCRD1_901~combout\);

-- Location: FF_X28_Y25_N11
\Controller|state.ADCRD1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.ADCRD1_901~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.ADCRD1~q\);

-- Location: LCCOMB_X28_Y25_N24
\Controller|nextState.DECA1_836\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.DECA1_836~combout\ = (GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & ((\Controller|state.DECA0~q\))) # (!GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & (\Controller|nextState.DECA1_836~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controller|nextState.DECA1_836~combout\,
	datac => \Controller|state.DECA0~q\,
	datad => \Controller|Selector49~0clkctrl_outclk\,
	combout => \Controller|nextState.DECA1_836~combout\);

-- Location: FF_X28_Y25_N25
\Controller|state.DECA1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.DECA1_836~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.DECA1~q\);

-- Location: LCCOMB_X28_Y25_N6
\Controller|WideOr32~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|WideOr32~0_combout\ = (!\Controller|state.ANDR_D1~q\ & (!\Controller|state.RORC1~q\ & (!\Controller|state.ADCRD1~q\ & !\Controller|state.DECA1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.ANDR_D1~q\,
	datab => \Controller|state.RORC1~q\,
	datac => \Controller|state.ADCRD1~q\,
	datad => \Controller|state.DECA1~q\,
	combout => \Controller|WideOr32~0_combout\);

-- Location: LCCOMB_X26_Y24_N22
\Controller|Mux19~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux19~0_combout\ = (!\IR|Data\(3) & (!\IR|Data\(0) & \IR|Data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Data\(3),
	datab => \IR|Data\(0),
	datad => \IR|Data\(2),
	combout => \Controller|Mux19~0_combout\);

-- Location: LCCOMB_X26_Y24_N30
\Controller|Mux19~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux19~1_combout\ = (!\IR|Data\(1) & (!\IR|Data\(4) & \Controller|Mux19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Data\(1),
	datab => \IR|Data\(4),
	datad => \Controller|Mux19~0_combout\,
	combout => \Controller|Mux19~1_combout\);

-- Location: LCCOMB_X26_Y24_N0
\Controller|nextState.LDAI_1002\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.LDAI_1002~combout\ = (\Controller|state.DECODE~q\ & ((GLOBAL(\Controller|Mux4~11clkctrl_outclk\) & ((\Controller|Mux19~1_combout\))) # (!GLOBAL(\Controller|Mux4~11clkctrl_outclk\) & (\Controller|nextState.LDAI_1002~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.DECODE~q\,
	datab => \Controller|nextState.LDAI_1002~combout\,
	datac => \Controller|Mux19~1_combout\,
	datad => \Controller|Mux4~11clkctrl_outclk\,
	combout => \Controller|nextState.LDAI_1002~combout\);

-- Location: FF_X26_Y24_N1
\Controller|state.LDAI\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.LDAI_1002~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.LDAI~q\);

-- Location: LCCOMB_X26_Y24_N28
\Controller|WideOr32~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|WideOr32~1_combout\ = (\Controller|state.LDAA2~q\) # ((\Controller|state.LDAA_X~q\) # ((\Controller|state.LDAD~q\) # (\Controller|state.LDAI~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.LDAA2~q\,
	datab => \Controller|state.LDAA_X~q\,
	datac => \Controller|state.LDAD~q\,
	datad => \Controller|state.LDAI~q\,
	combout => \Controller|WideOr32~1_combout\);

-- Location: LCCOMB_X30_Y23_N30
\Controller|WideOr32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|WideOr32~combout\ = ((\Controller|state.MULT1~q\) # (\Controller|WideOr32~1_combout\)) # (!\Controller|WideOr32~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controller|WideOr32~0_combout\,
	datac => \Controller|state.MULT1~q\,
	datad => \Controller|WideOr32~1_combout\,
	combout => \Controller|WideOr32~combout\);

-- Location: FF_X28_Y23_N11
\A|Data[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[4]~8_combout\,
	sload => VCC,
	ena => \Controller|WideOr32~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A|Data[4]~_Duplicate_1_q\);

-- Location: LCCOMB_X24_Y26_N8
\StackPointerH|tempAddress[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \StackPointerH|tempAddress[4]~feeder_combout\ = \ProgramCounter|tempCount\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|tempCount\(12),
	combout => \StackPointerH|tempAddress[4]~feeder_combout\);

-- Location: FF_X24_Y26_N9
\StackPointerH|tempAddress[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \StackPointerH|tempAddress[4]~feeder_combout\,
	ena => \Controller|state.CALL3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackPointerH|tempAddress\(4));

-- Location: FF_X24_Y26_N27
\StackPointerL|tempAddress[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \ProgramCounter|tempCount\(4),
	sload => VCC,
	ena => \Controller|state.CALL2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackPointerL|tempAddress\(4));

-- Location: LCCOMB_X24_Y26_N26
\dataBus[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[4]~3_combout\ = (\Controller|state.RET1~q\ & ((\StackPointerL|tempAddress\(4)) # ((\StackPointerH|tempAddress\(4) & \Controller|state.RET0~q\)))) # (!\Controller|state.RET1~q\ & (\StackPointerH|tempAddress\(4) & ((\Controller|state.RET0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.RET1~q\,
	datab => \StackPointerH|tempAddress\(4),
	datac => \StackPointerL|tempAddress\(4),
	datad => \Controller|state.RET0~q\,
	combout => \dataBus[4]~3_combout\);

-- Location: LCCOMB_X24_Y26_N16
\dataBus[4]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[4]~4_combout\ = (\dataBus[4]~3_combout\) # ((\AddressRegisterLow|tempAddress\(4) & ((\Controller|state.CALL4~q\) # (\Controller|state.BRANCH2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.CALL4~q\,
	datab => \Controller|state.BRANCH2~q\,
	datac => \AddressRegisterLow|tempAddress\(4),
	datad => \dataBus[4]~3_combout\,
	combout => \dataBus[4]~4_combout\);

-- Location: LCCOMB_X24_Y26_N10
\dataBus[4]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[4]~5_combout\ = (\dataBus[4]~4_combout\) # ((\AddressRegisterHigh|tempAddress\(4) & ((\Controller|state.CALL5~q\) # (\Controller|state.BRANCH3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressRegisterHigh|tempAddress\(4),
	datab => \Controller|state.CALL5~q\,
	datac => \Controller|state.BRANCH3~q\,
	datad => \dataBus[4]~4_combout\,
	combout => \dataBus[4]~5_combout\);

-- Location: LCCOMB_X30_Y23_N8
\ALU|Mux5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Mux5~2_combout\ = (\A|Data[4]~_Duplicate_1_q\ & \D|Data\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|Data[4]~_Duplicate_1_q\,
	datad => \D|Data\(4),
	combout => \ALU|Mux5~2_combout\);

-- Location: LCCOMB_X31_Y23_N28
\ALU|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Mux5~0_combout\ = (\tempALUreg|Data[3]~1_combout\ & (((\ALU|Add0~10_combout\) # (\tempALUreg|Data[3]~0_combout\)))) # (!\tempALUreg|Data[3]~1_combout\ & (\ALU|Add2~8_combout\ & ((!\tempALUreg|Data[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add2~8_combout\,
	datab => \tempALUreg|Data[3]~1_combout\,
	datac => \ALU|Add0~10_combout\,
	datad => \tempALUreg|Data[3]~0_combout\,
	combout => \ALU|Mux5~0_combout\);

-- Location: LCCOMB_X31_Y23_N18
\ALU|Mux5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Mux5~1_combout\ = (\tempALUreg|Data[3]~0_combout\ & ((\ALU|Mux5~0_combout\ & ((\ALU|Mult0|auto_generated|mac_out2~DATAOUT12\))) # (!\ALU|Mux5~0_combout\ & (\A|Data[5]~_Duplicate_1_q\)))) # (!\tempALUreg|Data[3]~0_combout\ & 
-- (((\ALU|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempALUreg|Data[3]~0_combout\,
	datab => \A|Data[5]~_Duplicate_1_q\,
	datac => \ALU|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datad => \ALU|Mux5~0_combout\,
	combout => \ALU|Mux5~1_combout\);

-- Location: LCCOMB_X31_Y23_N0
\ALU|Mux5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Mux5~4_combout\ = (\tempALUreg|Data[3]~2_combout\ & ((\ALU|Mux5~2_combout\) # ((\ALU|Mux5~3_combout\ & \ALU|Mux5~1_combout\)))) # (!\tempALUreg|Data[3]~2_combout\ & (((\ALU|Mux5~3_combout\ & \ALU|Mux5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempALUreg|Data[3]~2_combout\,
	datab => \ALU|Mux5~2_combout\,
	datac => \ALU|Mux5~3_combout\,
	datad => \ALU|Mux5~1_combout\,
	combout => \ALU|Mux5~4_combout\);

-- Location: FF_X31_Y23_N1
\tempALUreg|Data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \ALU|Mux5~4_combout\,
	ena => \Controller|WideOr37~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tempALUreg|Data\(4));

-- Location: FF_X29_Y26_N27
\tempALUreg2|Data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \ALU|Mult0|auto_generated|mac_out2~DATAOUT4\,
	sload => VCC,
	ena => \Controller|state.MULT0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tempALUreg2|Data\(4));

-- Location: LCCOMB_X29_Y26_N26
\dataBus[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[4]~1_combout\ = (\Controller|state.LDAD~q\ & ((\D|Data\(4)) # ((\Controller|state.MULT2~q\ & \tempALUreg2|Data\(4))))) # (!\Controller|state.LDAD~q\ & (\Controller|state.MULT2~q\ & (\tempALUreg2|Data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.LDAD~q\,
	datab => \Controller|state.MULT2~q\,
	datac => \tempALUreg2|Data\(4),
	datad => \D|Data\(4),
	combout => \dataBus[4]~1_combout\);

-- Location: LCCOMB_X29_Y26_N0
\dataBus[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[4]~2_combout\ = (\dataBus[4]~1_combout\) # ((\tempALUreg|Data\(4) & ((\Controller|state.MULT1~q\) # (!\Controller|WideOr32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.MULT1~q\,
	datab => \tempALUreg|Data\(4),
	datac => \dataBus[4]~1_combout\,
	datad => \Controller|WideOr32~0_combout\,
	combout => \dataBus[4]~2_combout\);

-- Location: LCCOMB_X24_Y23_N14
\dataBus[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[4]~6_combout\ = (\dataBus[4]~5_combout\) # ((\dataBus[4]~2_combout\) # ((\A|Data[4]~_Duplicate_1_q\ & \Controller|Selector17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|Data[4]~_Duplicate_1_q\,
	datab => \dataBus[4]~5_combout\,
	datac => \dataBus[4]~2_combout\,
	datad => \Controller|Selector17~1_combout\,
	combout => \dataBus[4]~6_combout\);

-- Location: LCCOMB_X24_Y23_N26
\dataBus[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[4]~7_combout\ = (\dataBus[4]~6_combout\) # ((\EnableDecoder|LessThan0~4_combout\ & (\Controller|WideOr26~1_combout\ & \RAM|RAM|altsyncram_component|auto_generated|ram_block1a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EnableDecoder|LessThan0~4_combout\,
	datab => \Controller|WideOr26~1_combout\,
	datac => \dataBus[4]~6_combout\,
	datad => \RAM|RAM|altsyncram_component|auto_generated|ram_block1a4\,
	combout => \dataBus[4]~7_combout\);

-- Location: IOIBUF_X35_Y0_N29
\IN0_INPUT[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN0_INPUT(4),
	o => \IN0_INPUT[4]~input_o\);

-- Location: LCCOMB_X24_Y23_N2
\dataBus[4]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[4]~0_combout\ = (\IN0_INPUT[4]~input_o\ & (!\SelectAddress|ADDR[0]~62_combout\ & (!\EnableDecoder|LessThan0~4_combout\ & \Controller|WideOr26~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN0_INPUT[4]~input_o\,
	datab => \SelectAddress|ADDR[0]~62_combout\,
	datac => \EnableDecoder|LessThan0~4_combout\,
	datad => \Controller|WideOr26~1_combout\,
	combout => \dataBus[4]~0_combout\);

-- Location: LCCOMB_X24_Y23_N28
\dataBus[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[4]~8_combout\ = (\dataBus[4]~7_combout\) # ((\dataBus[4]~0_combout\) # ((\EnableDecoder|IN1_EN~0_combout\ & \IN1_INPUT[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EnableDecoder|IN1_EN~0_combout\,
	datab => \IN1_INPUT[4]~input_o\,
	datac => \dataBus[4]~7_combout\,
	datad => \dataBus[4]~0_combout\,
	combout => \dataBus[4]~8_combout\);

-- Location: FF_X26_Y26_N11
\AddressRegisterHigh|tempAddress[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[4]~8_combout\,
	sload => VCC,
	ena => \Controller|WideOr31~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressRegisterHigh|tempAddress\(4));

-- Location: LCCOMB_X27_Y26_N26
\EnableDecoder|LessThan0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \EnableDecoder|LessThan0~6_combout\ = (((!\AddressRegisterHigh|tempAddress\(7)) # (!\AddressRegisterHigh|tempAddress\(4))) # (!\AddressRegisterHigh|tempAddress\(6))) # (!\AddressRegisterHigh|tempAddress\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressRegisterHigh|tempAddress\(5),
	datab => \AddressRegisterHigh|tempAddress\(6),
	datac => \AddressRegisterHigh|tempAddress\(4),
	datad => \AddressRegisterHigh|tempAddress\(7),
	combout => \EnableDecoder|LessThan0~6_combout\);

-- Location: FF_X27_Y26_N1
\AddressRegisterLow|tempAddress[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[6]~26_combout\,
	sload => VCC,
	ena => \Controller|ALT_INV_WideOr30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressRegisterLow|tempAddress\(6));

-- Location: LCCOMB_X27_Y26_N16
\EnableDecoder|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \EnableDecoder|LessThan0~7_combout\ = (((!\AddressRegisterLow|tempAddress\(1)) # (!\AddressRegisterLow|tempAddress\(2))) # (!\AddressRegisterLow|tempAddress\(3))) # (!\AddressRegisterLow|tempAddress\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressRegisterLow|tempAddress\(4),
	datab => \AddressRegisterLow|tempAddress\(3),
	datac => \AddressRegisterLow|tempAddress\(2),
	datad => \AddressRegisterLow|tempAddress\(1),
	combout => \EnableDecoder|LessThan0~7_combout\);

-- Location: LCCOMB_X27_Y26_N22
\EnableDecoder|LessThan0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \EnableDecoder|LessThan0~8_combout\ = (((\EnableDecoder|LessThan0~7_combout\) # (!\AddressRegisterLow|tempAddress\(7))) # (!\AddressRegisterLow|tempAddress\(6))) # (!\AddressRegisterLow|tempAddress\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressRegisterLow|tempAddress\(5),
	datab => \AddressRegisterLow|tempAddress\(6),
	datac => \AddressRegisterLow|tempAddress\(7),
	datad => \EnableDecoder|LessThan0~7_combout\,
	combout => \EnableDecoder|LessThan0~8_combout\);

-- Location: LCCOMB_X29_Y23_N10
MEM_WREN : cycloneiii_lcell_comb
-- Equation(s):
-- \MEM_WREN~combout\ = (\Controller|state.STAA2~q\ & ((\EnableDecoder|LessThan0~5_combout\) # ((\EnableDecoder|LessThan0~6_combout\) # (\EnableDecoder|LessThan0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.STAA2~q\,
	datab => \EnableDecoder|LessThan0~5_combout\,
	datac => \EnableDecoder|LessThan0~6_combout\,
	datad => \EnableDecoder|LessThan0~8_combout\,
	combout => \MEM_WREN~combout\);

-- Location: LCCOMB_X30_Y23_N4
\ALU|Mux7~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Mux7~2_combout\ = (\A|Data[2]~_Duplicate_1_q\ & \D|Data\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|Data[2]~_Duplicate_1_q\,
	datac => \D|Data\(2),
	combout => \ALU|Mux7~2_combout\);

-- Location: LCCOMB_X32_Y23_N20
\ALU|Mux7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Mux7~0_combout\ = (\tempALUreg|Data[3]~0_combout\ & (((\tempALUreg|Data[3]~1_combout\)))) # (!\tempALUreg|Data[3]~0_combout\ & ((\tempALUreg|Data[3]~1_combout\ & (\ALU|Add0~6_combout\)) # (!\tempALUreg|Data[3]~1_combout\ & ((\ALU|Add2~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~6_combout\,
	datab => \tempALUreg|Data[3]~0_combout\,
	datac => \ALU|Add2~4_combout\,
	datad => \tempALUreg|Data[3]~1_combout\,
	combout => \ALU|Mux7~0_combout\);

-- Location: LCCOMB_X31_Y23_N14
\ALU|Mux7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Mux7~1_combout\ = (\tempALUreg|Data[3]~0_combout\ & ((\ALU|Mux7~0_combout\ & ((\ALU|Mult0|auto_generated|mac_out2~DATAOUT10\))) # (!\ALU|Mux7~0_combout\ & (\A|Data[3]~_Duplicate_1_q\)))) # (!\tempALUreg|Data[3]~0_combout\ & 
-- (((\ALU|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempALUreg|Data[3]~0_combout\,
	datab => \A|Data[3]~_Duplicate_1_q\,
	datac => \ALU|Mux7~0_combout\,
	datad => \ALU|Mult0|auto_generated|mac_out2~DATAOUT10\,
	combout => \ALU|Mux7~1_combout\);

-- Location: LCCOMB_X31_Y23_N16
\ALU|Mux7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Mux7~3_combout\ = (\ALU|Mux5~3_combout\ & ((\ALU|Mux7~1_combout\) # ((\ALU|Mux7~2_combout\ & \tempALUreg|Data[3]~2_combout\)))) # (!\ALU|Mux5~3_combout\ & (\ALU|Mux7~2_combout\ & ((\tempALUreg|Data[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux5~3_combout\,
	datab => \ALU|Mux7~2_combout\,
	datac => \ALU|Mux7~1_combout\,
	datad => \tempALUreg|Data[3]~2_combout\,
	combout => \ALU|Mux7~3_combout\);

-- Location: FF_X31_Y23_N17
\tempALUreg|Data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \ALU|Mux7~3_combout\,
	ena => \Controller|WideOr37~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tempALUreg|Data\(2));

-- Location: FF_X30_Y23_N7
\tempALUreg2|Data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \ALU|Mult0|auto_generated|mac_out2~DATAOUT2\,
	sload => VCC,
	ena => \Controller|state.MULT0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tempALUreg2|Data\(2));

-- Location: LCCOMB_X30_Y23_N6
\dataBus[2]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[2]~55_combout\ = (\Controller|state.LDAD~q\ & ((\D|Data\(2)) # ((\tempALUreg2|Data\(2) & \Controller|state.MULT2~q\)))) # (!\Controller|state.LDAD~q\ & (((\tempALUreg2|Data\(2) & \Controller|state.MULT2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.LDAD~q\,
	datab => \D|Data\(2),
	datac => \tempALUreg2|Data\(2),
	datad => \Controller|state.MULT2~q\,
	combout => \dataBus[2]~55_combout\);

-- Location: LCCOMB_X26_Y23_N4
\dataBus[2]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[2]~56_combout\ = (\dataBus[2]~55_combout\) # ((\tempALUreg|Data\(2) & ((\Controller|state.MULT1~q\) # (!\Controller|WideOr32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempALUreg|Data\(2),
	datab => \Controller|WideOr32~0_combout\,
	datac => \Controller|state.MULT1~q\,
	datad => \dataBus[2]~55_combout\,
	combout => \dataBus[2]~56_combout\);

-- Location: LCCOMB_X24_Y26_N6
\StackPointerH|tempAddress[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \StackPointerH|tempAddress[2]~feeder_combout\ = \ProgramCounter|tempCount\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|tempCount\(10),
	combout => \StackPointerH|tempAddress[2]~feeder_combout\);

-- Location: FF_X24_Y26_N7
\StackPointerH|tempAddress[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \StackPointerH|tempAddress[2]~feeder_combout\,
	ena => \Controller|state.CALL3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackPointerH|tempAddress\(2));

-- Location: FF_X24_Y26_N29
\StackPointerL|tempAddress[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \ProgramCounter|tempCount\(2),
	sload => VCC,
	ena => \Controller|state.CALL2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackPointerL|tempAddress\(2));

-- Location: LCCOMB_X24_Y26_N28
\dataBus[2]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[2]~57_combout\ = (\StackPointerH|tempAddress\(2) & ((\Controller|state.RET0~q\) # ((\Controller|state.RET1~q\ & \StackPointerL|tempAddress\(2))))) # (!\StackPointerH|tempAddress\(2) & (\Controller|state.RET1~q\ & 
-- (\StackPointerL|tempAddress\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StackPointerH|tempAddress\(2),
	datab => \Controller|state.RET1~q\,
	datac => \StackPointerL|tempAddress\(2),
	datad => \Controller|state.RET0~q\,
	combout => \dataBus[2]~57_combout\);

-- Location: LCCOMB_X24_Y26_N12
\dataBus[2]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[2]~58_combout\ = (\dataBus[2]~57_combout\) # ((\AddressRegisterLow|tempAddress\(2) & ((\Controller|state.CALL4~q\) # (\Controller|state.BRANCH2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.CALL4~q\,
	datab => \Controller|state.BRANCH2~q\,
	datac => \AddressRegisterLow|tempAddress\(2),
	datad => \dataBus[2]~57_combout\,
	combout => \dataBus[2]~58_combout\);

-- Location: LCCOMB_X24_Y26_N30
\dataBus[2]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[2]~59_combout\ = (\dataBus[2]~58_combout\) # ((\AddressRegisterHigh|tempAddress\(2) & ((\Controller|state.CALL5~q\) # (\Controller|state.BRANCH3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.CALL5~q\,
	datab => \AddressRegisterHigh|tempAddress\(2),
	datac => \Controller|state.BRANCH3~q\,
	datad => \dataBus[2]~58_combout\,
	combout => \dataBus[2]~59_combout\);

-- Location: LCCOMB_X26_Y23_N28
\dataBus[2]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[2]~60_combout\ = (\dataBus[2]~56_combout\) # ((\dataBus[2]~59_combout\) # ((\A|Data[2]~_Duplicate_1_q\ & \Controller|Selector17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|Data[2]~_Duplicate_1_q\,
	datab => \dataBus[2]~56_combout\,
	datac => \dataBus[2]~59_combout\,
	datad => \Controller|Selector17~1_combout\,
	combout => \dataBus[2]~60_combout\);

-- Location: LCCOMB_X26_Y23_N2
\dataBus[2]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[2]~61_combout\ = (\dataBus[2]~60_combout\) # ((\Controller|WideOr26~1_combout\ & (\EnableDecoder|LessThan0~4_combout\ & \RAM|RAM|altsyncram_component|auto_generated|ram_block1a2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|WideOr26~1_combout\,
	datab => \EnableDecoder|LessThan0~4_combout\,
	datac => \RAM|RAM|altsyncram_component|auto_generated|ram_block1a2\,
	datad => \dataBus[2]~60_combout\,
	combout => \dataBus[2]~61_combout\);

-- Location: LCCOMB_X26_Y23_N8
\dataBus[2]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[2]~62_combout\ = (\dataBus[2]~54_combout\) # ((\dataBus[2]~61_combout\) # ((\IN1_INPUT[2]~input_o\ & \EnableDecoder|IN1_EN~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataBus[2]~54_combout\,
	datab => \IN1_INPUT[2]~input_o\,
	datac => \EnableDecoder|IN1_EN~0_combout\,
	datad => \dataBus[2]~61_combout\,
	combout => \dataBus[2]~62_combout\);

-- Location: FF_X26_Y23_N1
\IR|Data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~q\,
	asdata => \dataBus[2]~62_combout\,
	clrn => \RESETn~input_o\,
	sload => VCC,
	ena => \Controller|state.FETCH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Data\(2));

-- Location: LCCOMB_X26_Y24_N2
\Controller|Mux17~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux17~0_combout\ = (\IR|Data\(0) & !\IR|Data\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IR|Data\(0),
	datad => \IR|Data\(2),
	combout => \Controller|Mux17~0_combout\);

-- Location: LCCOMB_X26_Y24_N16
\Controller|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux8~0_combout\ = (\IR|Data\(3) & (!\IR|Data\(1) & (\Controller|Mux17~0_combout\ & !\IR|Data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Data\(3),
	datab => \IR|Data\(1),
	datac => \Controller|Mux17~0_combout\,
	datad => \IR|Data\(5),
	combout => \Controller|Mux8~0_combout\);

-- Location: LCCOMB_X29_Y26_N8
\Controller|nextState.MULT0_793\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.MULT0_793~combout\ = (\Controller|state.DECODE~q\ & ((GLOBAL(\Controller|Mux4~11clkctrl_outclk\) & ((\Controller|Mux8~0_combout\))) # (!GLOBAL(\Controller|Mux4~11clkctrl_outclk\) & (\Controller|nextState.MULT0_793~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.DECODE~q\,
	datab => \Controller|nextState.MULT0_793~combout\,
	datac => \Controller|Mux8~0_combout\,
	datad => \Controller|Mux4~11clkctrl_outclk\,
	combout => \Controller|nextState.MULT0_793~combout\);

-- Location: FF_X29_Y26_N9
\Controller|state.MULT0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.MULT0_793~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.MULT0~q\);

-- Location: LCCOMB_X29_Y26_N4
\Controller|nextState.MULT1_786\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.MULT1_786~combout\ = (GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & ((\Controller|state.MULT0~q\))) # (!GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & (\Controller|nextState.MULT1_786~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controller|nextState.MULT1_786~combout\,
	datac => \Controller|Selector49~0clkctrl_outclk\,
	datad => \Controller|state.MULT0~q\,
	combout => \Controller|nextState.MULT1_786~combout\);

-- Location: FF_X29_Y26_N5
\Controller|state.MULT1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.MULT1_786~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.MULT1~q\);

-- Location: LCCOMB_X30_Y23_N12
\ALU|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Mux3~2_combout\ = (\A|Data[6]~_Duplicate_1_q\ & \D|Data\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|Data[6]~_Duplicate_1_q\,
	datad => \D|Data\(6),
	combout => \ALU|Mux3~2_combout\);

-- Location: LCCOMB_X31_Y23_N4
\ALU|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Mux3~0_combout\ = (\tempALUreg|Data[3]~0_combout\ & (((\tempALUreg|Data[3]~1_combout\)))) # (!\tempALUreg|Data[3]~0_combout\ & ((\tempALUreg|Data[3]~1_combout\ & ((\ALU|Add0~14_combout\))) # (!\tempALUreg|Data[3]~1_combout\ & 
-- (\ALU|Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempALUreg|Data[3]~0_combout\,
	datab => \ALU|Add2~12_combout\,
	datac => \tempALUreg|Data[3]~1_combout\,
	datad => \ALU|Add0~14_combout\,
	combout => \ALU|Mux3~0_combout\);

-- Location: LCCOMB_X31_Y23_N6
\ALU|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Mux3~1_combout\ = (\tempALUreg|Data[3]~0_combout\ & ((\ALU|Mux3~0_combout\ & ((\ALU|Mult0|auto_generated|mac_out2~DATAOUT14\))) # (!\ALU|Mux3~0_combout\ & (\A|Data[7]~_Duplicate_1_q\)))) # (!\tempALUreg|Data[3]~0_combout\ & (\ALU|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempALUreg|Data[3]~0_combout\,
	datab => \ALU|Mux3~0_combout\,
	datac => \A|Data[7]~_Duplicate_1_q\,
	datad => \ALU|Mult0|auto_generated|mac_out2~DATAOUT14\,
	combout => \ALU|Mux3~1_combout\);

-- Location: LCCOMB_X31_Y23_N8
\ALU|Mux3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Mux3~3_combout\ = (\tempALUreg|Data[3]~2_combout\ & ((\ALU|Mux3~2_combout\) # ((\ALU|Mux5~3_combout\ & \ALU|Mux3~1_combout\)))) # (!\tempALUreg|Data[3]~2_combout\ & (((\ALU|Mux5~3_combout\ & \ALU|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempALUreg|Data[3]~2_combout\,
	datab => \ALU|Mux3~2_combout\,
	datac => \ALU|Mux5~3_combout\,
	datad => \ALU|Mux3~1_combout\,
	combout => \ALU|Mux3~3_combout\);

-- Location: FF_X31_Y23_N9
\tempALUreg|Data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \ALU|Mux3~3_combout\,
	ena => \Controller|WideOr37~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tempALUreg|Data\(6));

-- Location: FF_X29_Y26_N21
\tempALUreg2|Data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \ALU|Mult0|auto_generated|mac_out2~DATAOUT6\,
	sload => VCC,
	ena => \Controller|state.MULT0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tempALUreg2|Data\(6));

-- Location: LCCOMB_X29_Y26_N20
\dataBus[6]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[6]~19_combout\ = (\Controller|state.LDAD~q\ & ((\D|Data\(6)) # ((\Controller|state.MULT2~q\ & \tempALUreg2|Data\(6))))) # (!\Controller|state.LDAD~q\ & (\Controller|state.MULT2~q\ & (\tempALUreg2|Data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.LDAD~q\,
	datab => \Controller|state.MULT2~q\,
	datac => \tempALUreg2|Data\(6),
	datad => \D|Data\(6),
	combout => \dataBus[6]~19_combout\);

-- Location: LCCOMB_X29_Y26_N10
\dataBus[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[6]~20_combout\ = (\dataBus[6]~19_combout\) # ((\tempALUreg|Data\(6) & ((\Controller|state.MULT1~q\) # (!\Controller|WideOr32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.MULT1~q\,
	datab => \Controller|WideOr32~0_combout\,
	datac => \tempALUreg|Data\(6),
	datad => \dataBus[6]~19_combout\,
	combout => \dataBus[6]~20_combout\);

-- Location: FF_X26_Y25_N3
\StackPointerH|tempAddress[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \ProgramCounter|tempCount\(14),
	sload => VCC,
	ena => \Controller|state.CALL3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackPointerH|tempAddress\(6));

-- Location: FF_X26_Y25_N1
\StackPointerL|tempAddress[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \ProgramCounter|tempCount\(6),
	sload => VCC,
	ena => \Controller|state.CALL2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackPointerL|tempAddress\(6));

-- Location: LCCOMB_X26_Y25_N0
\dataBus[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[6]~21_combout\ = (\Controller|state.RET1~q\ & ((\StackPointerL|tempAddress\(6)) # ((\StackPointerH|tempAddress\(6) & \Controller|state.RET0~q\)))) # (!\Controller|state.RET1~q\ & (\StackPointerH|tempAddress\(6) & ((\Controller|state.RET0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.RET1~q\,
	datab => \StackPointerH|tempAddress\(6),
	datac => \StackPointerL|tempAddress\(6),
	datad => \Controller|state.RET0~q\,
	combout => \dataBus[6]~21_combout\);

-- Location: LCCOMB_X29_Y26_N12
\dataBus[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[6]~22_combout\ = (\dataBus[6]~21_combout\) # ((\AddressRegisterLow|tempAddress\(6) & ((\Controller|state.BRANCH2~q\) # (\Controller|state.CALL4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.BRANCH2~q\,
	datab => \AddressRegisterLow|tempAddress\(6),
	datac => \dataBus[6]~21_combout\,
	datad => \Controller|state.CALL4~q\,
	combout => \dataBus[6]~22_combout\);

-- Location: LCCOMB_X29_Y26_N22
\dataBus[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[6]~23_combout\ = (\dataBus[6]~22_combout\) # ((\AddressRegisterHigh|tempAddress\(6) & ((\Controller|state.BRANCH3~q\) # (\Controller|state.CALL5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressRegisterHigh|tempAddress\(6),
	datab => \Controller|state.BRANCH3~q\,
	datac => \Controller|state.CALL5~q\,
	datad => \dataBus[6]~22_combout\,
	combout => \dataBus[6]~23_combout\);

-- Location: LCCOMB_X29_Y26_N24
\dataBus[6]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[6]~24_combout\ = (\dataBus[6]~20_combout\) # ((\dataBus[6]~23_combout\) # ((\A|Data[6]~_Duplicate_1_q\ & \Controller|Selector17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataBus[6]~20_combout\,
	datab => \A|Data[6]~_Duplicate_1_q\,
	datac => \dataBus[6]~23_combout\,
	datad => \Controller|Selector17~1_combout\,
	combout => \dataBus[6]~24_combout\);

-- Location: LCCOMB_X26_Y23_N24
\dataBus[6]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[6]~25_combout\ = (\dataBus[6]~24_combout\) # ((\Controller|WideOr26~1_combout\ & (\EnableDecoder|LessThan0~4_combout\ & \RAM|RAM|altsyncram_component|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|WideOr26~1_combout\,
	datab => \EnableDecoder|LessThan0~4_combout\,
	datac => \dataBus[6]~24_combout\,
	datad => \RAM|RAM|altsyncram_component|auto_generated|ram_block1a6\,
	combout => \dataBus[6]~25_combout\);

-- Location: LCCOMB_X26_Y23_N6
\dataBus[6]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[6]~26_combout\ = (\dataBus[6]~18_combout\) # ((\dataBus[6]~25_combout\) # ((\IN1_INPUT[6]~input_o\ & \EnableDecoder|IN1_EN~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataBus[6]~18_combout\,
	datab => \IN1_INPUT[6]~input_o\,
	datac => \EnableDecoder|IN1_EN~0_combout\,
	datad => \dataBus[6]~25_combout\,
	combout => \dataBus[6]~26_combout\);

-- Location: LCCOMB_X26_Y23_N18
\IR|Data[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \IR|Data[6]~feeder_combout\ = \dataBus[6]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataBus[6]~26_combout\,
	combout => \IR|Data[6]~feeder_combout\);

-- Location: FF_X26_Y23_N19
\IR|Data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~q\,
	d => \IR|Data[6]~feeder_combout\,
	clrn => \RESETn~input_o\,
	ena => \Controller|state.FETCH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Data\(6));

-- Location: LCCOMB_X26_Y24_N6
\Controller|Mux18~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux18~0_combout\ = (!\IR|Data\(1) & (!\IR|Data\(6) & (!\IR|Data\(2) & \Controller|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Data\(1),
	datab => \IR|Data\(6),
	datac => \IR|Data\(2),
	datad => \Controller|Mux9~0_combout\,
	combout => \Controller|Mux18~0_combout\);

-- Location: LCCOMB_X28_Y26_N8
\Controller|nextState.LDAA0_995\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.LDAA0_995~combout\ = (\Controller|state.DECODE~q\ & ((GLOBAL(\Controller|Mux4~11clkctrl_outclk\) & ((\Controller|Mux18~0_combout\))) # (!GLOBAL(\Controller|Mux4~11clkctrl_outclk\) & (\Controller|nextState.LDAA0_995~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.DECODE~q\,
	datab => \Controller|nextState.LDAA0_995~combout\,
	datac => \Controller|Mux18~0_combout\,
	datad => \Controller|Mux4~11clkctrl_outclk\,
	combout => \Controller|nextState.LDAA0_995~combout\);

-- Location: FF_X28_Y26_N9
\Controller|state.LDAA0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.LDAA0_995~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.LDAA0~q\);

-- Location: LCCOMB_X28_Y26_N28
\Controller|nextState.LDAA1_988\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.LDAA1_988~combout\ = (GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & (\Controller|state.LDAA0~q\)) # (!GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & ((\Controller|nextState.LDAA1_988~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.LDAA0~q\,
	datab => \Controller|nextState.LDAA1_988~combout\,
	datad => \Controller|Selector49~0clkctrl_outclk\,
	combout => \Controller|nextState.LDAA1_988~combout\);

-- Location: FF_X28_Y26_N29
\Controller|state.LDAA1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.LDAA1_988~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.LDAA1~q\);

-- Location: LCCOMB_X28_Y24_N0
\Controller|WideOr31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|WideOr31~combout\ = (\Controller|state.LDAA1~q\) # ((\Controller|state.CALL1~q\) # ((\Controller|state.BRANCH1~q\) # (\Controller|state.STAA1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.LDAA1~q\,
	datab => \Controller|state.CALL1~q\,
	datac => \Controller|state.BRANCH1~q\,
	datad => \Controller|state.STAA1~q\,
	combout => \Controller|WideOr31~combout\);

-- Location: FF_X27_Y26_N9
\AddressRegisterHigh|tempAddress[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[0]~44_combout\,
	sload => VCC,
	ena => \Controller|WideOr31~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressRegisterHigh|tempAddress\(0));

-- Location: FF_X27_Y24_N11
\AddressRegisterLow|tempAddress[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[0]~44_combout\,
	sload => VCC,
	ena => \Controller|ALT_INV_WideOr30~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AddressRegisterLow|tempAddress\(0));

-- Location: FF_X26_Y27_N13
\StackPointerH|tempAddress[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \ProgramCounter|tempCount\(8),
	sload => VCC,
	ena => \Controller|state.CALL3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackPointerH|tempAddress\(0));

-- Location: FF_X27_Y27_N15
\StackPointerL|tempAddress[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \ProgramCounter|tempCount\(0),
	sload => VCC,
	ena => \Controller|state.CALL2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackPointerL|tempAddress\(0));

-- Location: LCCOMB_X27_Y27_N14
\dataBus[0]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[0]~39_combout\ = (\StackPointerH|tempAddress\(0) & ((\Controller|state.RET0~q\) # ((\StackPointerL|tempAddress\(0) & \Controller|state.RET1~q\)))) # (!\StackPointerH|tempAddress\(0) & (((\StackPointerL|tempAddress\(0) & 
-- \Controller|state.RET1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StackPointerH|tempAddress\(0),
	datab => \Controller|state.RET0~q\,
	datac => \StackPointerL|tempAddress\(0),
	datad => \Controller|state.RET1~q\,
	combout => \dataBus[0]~39_combout\);

-- Location: LCCOMB_X27_Y24_N0
\dataBus[0]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[0]~40_combout\ = (\dataBus[0]~39_combout\) # ((\AddressRegisterLow|tempAddress\(0) & ((\Controller|state.CALL4~q\) # (\Controller|state.BRANCH2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressRegisterLow|tempAddress\(0),
	datab => \Controller|state.CALL4~q\,
	datac => \Controller|state.BRANCH2~q\,
	datad => \dataBus[0]~39_combout\,
	combout => \dataBus[0]~40_combout\);

-- Location: LCCOMB_X27_Y24_N14
\dataBus[0]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[0]~41_combout\ = (\dataBus[0]~40_combout\) # ((\AddressRegisterHigh|tempAddress\(0) & ((\Controller|state.BRANCH3~q\) # (\Controller|state.CALL5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressRegisterHigh|tempAddress\(0),
	datab => \Controller|state.BRANCH3~q\,
	datac => \Controller|state.CALL5~q\,
	datad => \dataBus[0]~40_combout\,
	combout => \dataBus[0]~41_combout\);

-- Location: LCCOMB_X33_Y23_N12
\ALU|Mux9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Mux9~2_combout\ = (\A|Data[0]~_Duplicate_1_q\ & \D|Data\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|Data[0]~_Duplicate_1_q\,
	datad => \D|Data\(0),
	combout => \ALU|Mux9~2_combout\);

-- Location: LCCOMB_X33_Y23_N8
\ALU|Mux9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Mux9~0_combout\ = (\tempALUreg|Data[3]~1_combout\ & (((\ALU|Add0~2_combout\) # (\tempALUreg|Data[3]~0_combout\)))) # (!\tempALUreg|Data[3]~1_combout\ & (\ALU|Add2~0_combout\ & ((!\tempALUreg|Data[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempALUreg|Data[3]~1_combout\,
	datab => \ALU|Add2~0_combout\,
	datac => \ALU|Add0~2_combout\,
	datad => \tempALUreg|Data[3]~0_combout\,
	combout => \ALU|Mux9~0_combout\);

-- Location: LCCOMB_X33_Y23_N30
\ALU|Mux9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Mux9~1_combout\ = (\ALU|Mux9~0_combout\ & (((\ALU|Mult0|auto_generated|mac_out2~DATAOUT8\)) # (!\tempALUreg|Data[3]~0_combout\))) # (!\ALU|Mux9~0_combout\ & (\tempALUreg|Data[3]~0_combout\ & (\A|Data[1]~_Duplicate_1_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux9~0_combout\,
	datab => \tempALUreg|Data[3]~0_combout\,
	datac => \A|Data[1]~_Duplicate_1_q\,
	datad => \ALU|Mult0|auto_generated|mac_out2~DATAOUT8\,
	combout => \ALU|Mux9~1_combout\);

-- Location: LCCOMB_X33_Y23_N20
\ALU|Mux9~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Mux9~3_combout\ = (\ALU|Mux9~2_combout\ & ((\tempALUreg|Data[3]~2_combout\) # ((\ALU|Mux5~3_combout\ & \ALU|Mux9~1_combout\)))) # (!\ALU|Mux9~2_combout\ & (\ALU|Mux5~3_combout\ & (\ALU|Mux9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux9~2_combout\,
	datab => \ALU|Mux5~3_combout\,
	datac => \ALU|Mux9~1_combout\,
	datad => \tempALUreg|Data[3]~2_combout\,
	combout => \ALU|Mux9~3_combout\);

-- Location: FF_X33_Y23_N21
\tempALUreg|Data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \ALU|Mux9~3_combout\,
	ena => \Controller|WideOr37~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tempALUreg|Data\(0));

-- Location: FF_X30_Y23_N17
\tempALUreg2|Data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \ALU|Mult0|auto_generated|mac_out2~dataout\,
	sload => VCC,
	ena => \Controller|state.MULT0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tempALUreg2|Data\(0));

-- Location: LCCOMB_X30_Y23_N16
\dataBus[0]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[0]~37_combout\ = (\Controller|state.LDAD~q\ & ((\D|Data\(0)) # ((\tempALUreg2|Data\(0) & \Controller|state.MULT2~q\)))) # (!\Controller|state.LDAD~q\ & (((\tempALUreg2|Data\(0) & \Controller|state.MULT2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.LDAD~q\,
	datab => \D|Data\(0),
	datac => \tempALUreg2|Data\(0),
	datad => \Controller|state.MULT2~q\,
	combout => \dataBus[0]~37_combout\);

-- Location: LCCOMB_X30_Y23_N26
\dataBus[0]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[0]~38_combout\ = (\dataBus[0]~37_combout\) # ((\tempALUreg|Data\(0) & ((\Controller|state.MULT1~q\) # (!\Controller|WideOr32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempALUreg|Data\(0),
	datab => \Controller|WideOr32~0_combout\,
	datac => \Controller|state.MULT1~q\,
	datad => \dataBus[0]~37_combout\,
	combout => \dataBus[0]~38_combout\);

-- Location: LCCOMB_X28_Y23_N24
\dataBus[0]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[0]~42_combout\ = (\dataBus[0]~41_combout\) # ((\dataBus[0]~38_combout\) # ((\A|Data[0]~_Duplicate_1_q\ & \Controller|Selector17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataBus[0]~41_combout\,
	datab => \dataBus[0]~38_combout\,
	datac => \A|Data[0]~_Duplicate_1_q\,
	datad => \Controller|Selector17~1_combout\,
	combout => \dataBus[0]~42_combout\);

-- Location: LCCOMB_X28_Y23_N26
\dataBus[0]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[0]~43_combout\ = (\dataBus[0]~42_combout\) # ((\Controller|WideOr26~1_combout\ & (\EnableDecoder|LessThan0~4_combout\ & \RAM|RAM|altsyncram_component|auto_generated|ram_block1a0~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|WideOr26~1_combout\,
	datab => \dataBus[0]~42_combout\,
	datac => \EnableDecoder|LessThan0~4_combout\,
	datad => \RAM|RAM|altsyncram_component|auto_generated|ram_block1a0~portadataout\,
	combout => \dataBus[0]~43_combout\);

-- Location: IOIBUF_X32_Y0_N29
\IN0_INPUT[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN0_INPUT(0),
	o => \IN0_INPUT[0]~input_o\);

-- Location: LCCOMB_X28_Y23_N28
\dataBus[0]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[0]~36_combout\ = (!\SelectAddress|ADDR[0]~62_combout\ & (\IN0_INPUT[0]~input_o\ & (\Controller|WideOr26~1_combout\ & !\EnableDecoder|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectAddress|ADDR[0]~62_combout\,
	datab => \IN0_INPUT[0]~input_o\,
	datac => \Controller|WideOr26~1_combout\,
	datad => \EnableDecoder|LessThan0~4_combout\,
	combout => \dataBus[0]~36_combout\);

-- Location: LCCOMB_X28_Y23_N22
\dataBus[0]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[0]~44_combout\ = (\dataBus[0]~43_combout\) # ((\dataBus[0]~36_combout\) # ((\EnableDecoder|IN1_EN~0_combout\ & \IN1_INPUT[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EnableDecoder|IN1_EN~0_combout\,
	datab => \IN1_INPUT[0]~input_o\,
	datac => \dataBus[0]~43_combout\,
	datad => \dataBus[0]~36_combout\,
	combout => \dataBus[0]~44_combout\);

-- Location: FF_X26_Y24_N31
\IR|Data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[0]~44_combout\,
	clrn => \RESETn~input_o\,
	sload => VCC,
	ena => \Controller|state.FETCH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Data\(0));

-- Location: LCCOMB_X27_Y25_N8
\Controller|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux3~0_combout\ = (!\IR|Data\(0) & (!\IR|Data\(4) & (!\IR|Data\(2) & \IR|Data\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Data\(0),
	datab => \IR|Data\(4),
	datac => \IR|Data\(2),
	datad => \IR|Data\(3),
	combout => \Controller|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y24_N2
\Controller|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux3~1_combout\ = (\IR|Data\(1) & \Controller|Mux3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IR|Data\(1),
	datad => \Controller|Mux3~0_combout\,
	combout => \Controller|Mux3~1_combout\);

-- Location: LCCOMB_X28_Y24_N10
\Controller|nextState.LDXI0_825\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.LDXI0_825~combout\ = (\Controller|state.DECODE~q\ & ((GLOBAL(\Controller|Mux4~11clkctrl_outclk\) & ((\Controller|Mux3~1_combout\))) # (!GLOBAL(\Controller|Mux4~11clkctrl_outclk\) & (\Controller|nextState.LDXI0_825~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|nextState.LDXI0_825~combout\,
	datab => \Controller|state.DECODE~q\,
	datac => \Controller|Mux3~1_combout\,
	datad => \Controller|Mux4~11clkctrl_outclk\,
	combout => \Controller|nextState.LDXI0_825~combout\);

-- Location: FF_X28_Y24_N11
\Controller|state.LDXI0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.LDXI0_825~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.LDXI0~q\);

-- Location: LCCOMB_X28_Y24_N16
\Controller|nextState.LDXI1_818\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.LDXI1_818~combout\ = (GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & ((\Controller|state.LDXI0~q\))) # (!GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & (\Controller|nextState.LDXI1_818~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controller|nextState.LDXI1_818~combout\,
	datac => \Controller|state.LDXI0~q\,
	datad => \Controller|Selector49~0clkctrl_outclk\,
	combout => \Controller|nextState.LDXI1_818~combout\);

-- Location: FF_X28_Y24_N17
\Controller|state.LDXI1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.LDXI1_818~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.LDXI1~q\);

-- Location: LCCOMB_X28_Y24_N28
\Controller|WideOr27~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|WideOr27~0_combout\ = (!\Controller|state.LDXI0~q\ & (!\Controller|state.CALL1~q\ & (!\Controller|state.LDAA1~q\ & !\Controller|state.STAA1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.LDXI0~q\,
	datab => \Controller|state.CALL1~q\,
	datac => \Controller|state.LDAA1~q\,
	datad => \Controller|state.STAA1~q\,
	combout => \Controller|WideOr27~0_combout\);

-- Location: LCCOMB_X29_Y23_N26
\Controller|WideOr27~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|WideOr27~1_combout\ = (\Controller|WideOr27~0_combout\ & \Controller|WideOr30~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Controller|WideOr27~0_combout\,
	datad => \Controller|WideOr30~0_combout\,
	combout => \Controller|WideOr27~1_combout\);

-- Location: LCCOMB_X28_Y26_N22
\Controller|WideOr26~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|WideOr26~0_combout\ = (\Controller|state.FETCH~q\) # ((\Controller|state.LDAA2~q\) # ((\Controller|state.LDAA_X~q\) # (\Controller|state.LDAI~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.FETCH~q\,
	datab => \Controller|state.LDAA2~q\,
	datac => \Controller|state.LDAA_X~q\,
	datad => \Controller|state.LDAI~q\,
	combout => \Controller|WideOr26~0_combout\);

-- Location: LCCOMB_X29_Y23_N20
\Controller|WideOr26~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|WideOr26~1_combout\ = (\Controller|state.BRANCH1~q\) # ((\Controller|state.LDXI1~q\) # ((\Controller|WideOr26~0_combout\) # (!\Controller|WideOr27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.BRANCH1~q\,
	datab => \Controller|state.LDXI1~q\,
	datac => \Controller|WideOr27~1_combout\,
	datad => \Controller|WideOr26~0_combout\,
	combout => \Controller|WideOr26~1_combout\);

-- Location: LCCOMB_X24_Y23_N18
\dataBus[3]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[3]~63_combout\ = (!\SelectAddress|ADDR[0]~62_combout\ & (\IN0_INPUT[3]~input_o\ & (!\EnableDecoder|LessThan0~4_combout\ & \Controller|WideOr26~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectAddress|ADDR[0]~62_combout\,
	datab => \IN0_INPUT[3]~input_o\,
	datac => \EnableDecoder|LessThan0~4_combout\,
	datad => \Controller|WideOr26~1_combout\,
	combout => \dataBus[3]~63_combout\);

-- Location: FF_X30_Y23_N23
\tempALUreg2|Data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \ALU|Mult0|auto_generated|mac_out2~DATAOUT3\,
	sload => VCC,
	ena => \Controller|state.MULT0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tempALUreg2|Data\(3));

-- Location: LCCOMB_X30_Y23_N22
\dataBus[3]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[3]~64_combout\ = (\Controller|state.LDAD~q\ & ((\D|Data\(3)) # ((\tempALUreg2|Data\(3) & \Controller|state.MULT2~q\)))) # (!\Controller|state.LDAD~q\ & (((\tempALUreg2|Data\(3) & \Controller|state.MULT2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.LDAD~q\,
	datab => \D|Data\(3),
	datac => \tempALUreg2|Data\(3),
	datad => \Controller|state.MULT2~q\,
	combout => \dataBus[3]~64_combout\);

-- Location: LCCOMB_X31_Y23_N10
\ALU|Mux6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Mux6~2_combout\ = (\A|Data[3]~_Duplicate_1_q\ & \D|Data\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A|Data[3]~_Duplicate_1_q\,
	datad => \D|Data\(3),
	combout => \ALU|Mux6~2_combout\);

-- Location: LCCOMB_X32_Y23_N30
\ALU|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Mux6~0_combout\ = (\tempALUreg|Data[3]~1_combout\ & (\tempALUreg|Data[3]~0_combout\)) # (!\tempALUreg|Data[3]~1_combout\ & ((\tempALUreg|Data[3]~0_combout\ & (\A|Data[4]~_Duplicate_1_q\)) # (!\tempALUreg|Data[3]~0_combout\ & 
-- ((\ALU|Add2~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempALUreg|Data[3]~1_combout\,
	datab => \tempALUreg|Data[3]~0_combout\,
	datac => \A|Data[4]~_Duplicate_1_q\,
	datad => \ALU|Add2~6_combout\,
	combout => \ALU|Mux6~0_combout\);

-- Location: LCCOMB_X31_Y23_N20
\ALU|Mux6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Mux6~1_combout\ = (\tempALUreg|Data[3]~1_combout\ & ((\ALU|Mux6~0_combout\ & ((\ALU|Mult0|auto_generated|mac_out2~DATAOUT11\))) # (!\ALU|Mux6~0_combout\ & (\ALU|Add0~8_combout\)))) # (!\tempALUreg|Data[3]~1_combout\ & (((\ALU|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~8_combout\,
	datab => \tempALUreg|Data[3]~1_combout\,
	datac => \ALU|Mux6~0_combout\,
	datad => \ALU|Mult0|auto_generated|mac_out2~DATAOUT11\,
	combout => \ALU|Mux6~1_combout\);

-- Location: LCCOMB_X31_Y23_N22
\ALU|Mux6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Mux6~3_combout\ = (\ALU|Mux6~2_combout\ & ((\tempALUreg|Data[3]~2_combout\) # ((\ALU|Mux6~1_combout\ & \ALU|Mux5~3_combout\)))) # (!\ALU|Mux6~2_combout\ & (\ALU|Mux6~1_combout\ & (\ALU|Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux6~2_combout\,
	datab => \ALU|Mux6~1_combout\,
	datac => \ALU|Mux5~3_combout\,
	datad => \tempALUreg|Data[3]~2_combout\,
	combout => \ALU|Mux6~3_combout\);

-- Location: FF_X31_Y23_N23
\tempALUreg|Data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \ALU|Mux6~3_combout\,
	ena => \Controller|WideOr37~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tempALUreg|Data\(3));

-- Location: LCCOMB_X30_Y23_N10
\dataBus[3]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[3]~65_combout\ = (\dataBus[3]~64_combout\) # ((\tempALUreg|Data\(3) & ((\Controller|state.MULT1~q\) # (!\Controller|WideOr32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataBus[3]~64_combout\,
	datab => \tempALUreg|Data\(3),
	datac => \Controller|state.MULT1~q\,
	datad => \Controller|WideOr32~0_combout\,
	combout => \dataBus[3]~65_combout\);

-- Location: LCCOMB_X24_Y26_N2
\StackPointerH|tempAddress[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \StackPointerH|tempAddress[3]~feeder_combout\ = \ProgramCounter|tempCount\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|tempCount\(11),
	combout => \StackPointerH|tempAddress[3]~feeder_combout\);

-- Location: FF_X24_Y26_N3
\StackPointerH|tempAddress[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \StackPointerH|tempAddress[3]~feeder_combout\,
	ena => \Controller|state.CALL3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackPointerH|tempAddress\(3));

-- Location: FF_X24_Y26_N5
\StackPointerL|tempAddress[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \ProgramCounter|tempCount\(3),
	sload => VCC,
	ena => \Controller|state.CALL2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackPointerL|tempAddress\(3));

-- Location: LCCOMB_X24_Y26_N4
\dataBus[3]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[3]~66_combout\ = (\Controller|state.RET1~q\ & ((\StackPointerL|tempAddress\(3)) # ((\StackPointerH|tempAddress\(3) & \Controller|state.RET0~q\)))) # (!\Controller|state.RET1~q\ & (\StackPointerH|tempAddress\(3) & ((\Controller|state.RET0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.RET1~q\,
	datab => \StackPointerH|tempAddress\(3),
	datac => \StackPointerL|tempAddress\(3),
	datad => \Controller|state.RET0~q\,
	combout => \dataBus[3]~66_combout\);

-- Location: LCCOMB_X24_Y26_N0
\dataBus[3]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[3]~67_combout\ = (\dataBus[3]~66_combout\) # ((\AddressRegisterLow|tempAddress\(3) & ((\Controller|state.BRANCH2~q\) # (\Controller|state.CALL4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressRegisterLow|tempAddress\(3),
	datab => \Controller|state.BRANCH2~q\,
	datac => \dataBus[3]~66_combout\,
	datad => \Controller|state.CALL4~q\,
	combout => \dataBus[3]~67_combout\);

-- Location: LCCOMB_X24_Y26_N14
\dataBus[3]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[3]~68_combout\ = (\dataBus[3]~67_combout\) # ((\AddressRegisterHigh|tempAddress\(3) & ((\Controller|state.CALL5~q\) # (\Controller|state.BRANCH3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressRegisterHigh|tempAddress\(3),
	datab => \Controller|state.CALL5~q\,
	datac => \Controller|state.BRANCH3~q\,
	datad => \dataBus[3]~67_combout\,
	combout => \dataBus[3]~68_combout\);

-- Location: LCCOMB_X24_Y23_N30
\dataBus[3]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[3]~69_combout\ = (\dataBus[3]~65_combout\) # ((\dataBus[3]~68_combout\) # ((\A|Data[3]~_Duplicate_1_q\ & \Controller|Selector17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataBus[3]~65_combout\,
	datab => \A|Data[3]~_Duplicate_1_q\,
	datac => \dataBus[3]~68_combout\,
	datad => \Controller|Selector17~1_combout\,
	combout => \dataBus[3]~69_combout\);

-- Location: LCCOMB_X24_Y23_N20
\dataBus[3]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[3]~70_combout\ = (\dataBus[3]~69_combout\) # ((\EnableDecoder|LessThan0~4_combout\ & (\Controller|WideOr26~1_combout\ & \RAM|RAM|altsyncram_component|auto_generated|ram_block1a3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EnableDecoder|LessThan0~4_combout\,
	datab => \Controller|WideOr26~1_combout\,
	datac => \dataBus[3]~69_combout\,
	datad => \RAM|RAM|altsyncram_component|auto_generated|ram_block1a3\,
	combout => \dataBus[3]~70_combout\);

-- Location: LCCOMB_X24_Y23_N0
\dataBus[3]~71\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[3]~71_combout\ = (\dataBus[3]~63_combout\) # ((\dataBus[3]~70_combout\) # ((\IN1_INPUT[3]~input_o\ & \EnableDecoder|IN1_EN~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN1_INPUT[3]~input_o\,
	datab => \dataBus[3]~63_combout\,
	datac => \EnableDecoder|IN1_EN~0_combout\,
	datad => \dataBus[3]~70_combout\,
	combout => \dataBus[3]~71_combout\);

-- Location: FF_X24_Y23_N1
\IR|Data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~q\,
	d => \dataBus[3]~71_combout\,
	clrn => \RESETn~input_o\,
	ena => \Controller|state.FETCH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Data\(3));

-- Location: LCCOMB_X26_Y24_N14
\Controller|Mux4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux4~6_combout\ = (!\IR|Data\(3) & (\Controller|Mux17~0_combout\ & (!\IR|Data\(4) & !\IR|Data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Data\(3),
	datab => \Controller|Mux17~0_combout\,
	datac => \IR|Data\(4),
	datad => \IR|Data\(6),
	combout => \Controller|Mux4~6_combout\);

-- Location: LCCOMB_X27_Y25_N2
\Controller|Mux4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux4~5_combout\ = (\IR|Data\(5) & (\Controller|Mux13~0_combout\ & \IR|Data\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|Data\(5),
	datac => \Controller|Mux13~0_combout\,
	datad => \IR|Data\(6),
	combout => \Controller|Mux4~5_combout\);

-- Location: LCCOMB_X27_Y25_N10
\Controller|Mux4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux4~7_combout\ = (\IR|Data\(1) & (((\IR|Data\(7)) # (\Controller|Mux4~5_combout\)))) # (!\IR|Data\(1) & (\Controller|Mux4~6_combout\ & (!\IR|Data\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|Mux4~6_combout\,
	datab => \IR|Data\(1),
	datac => \IR|Data\(7),
	datad => \Controller|Mux4~5_combout\,
	combout => \Controller|Mux4~7_combout\);

-- Location: LCCOMB_X23_Y23_N12
\Controller|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux4~1_combout\ = (\IR|Data\(0) & ((\IR|Data\(2)) # ((!\IR|Data\(6) & !\IR|Data\(3))))) # (!\IR|Data\(0) & ((\IR|Data\(6)) # ((\IR|Data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Data\(6),
	datab => \IR|Data\(3),
	datac => \IR|Data\(2),
	datad => \IR|Data\(0),
	combout => \Controller|Mux4~1_combout\);

-- Location: LCCOMB_X23_Y23_N10
\Controller|Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux4~2_combout\ = (\IR|Data\(4) & (((\IR|Data\(2))))) # (!\IR|Data\(4) & (!\IR|Data\(5) & (\Controller|Mux4~1_combout\ $ (\IR|Data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|Mux4~1_combout\,
	datab => \IR|Data\(2),
	datac => \IR|Data\(5),
	datad => \IR|Data\(4),
	combout => \Controller|Mux4~2_combout\);

-- Location: LCCOMB_X23_Y23_N14
\Controller|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux4~0_combout\ = (\IR|Data\(3) & (\IR|Data\(0) & (\IR|Data\(5) $ (!\IR|Data\(6))))) # (!\IR|Data\(3) & (\IR|Data\(5) & (\IR|Data\(6) $ (!\IR|Data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Data\(5),
	datab => \IR|Data\(3),
	datac => \IR|Data\(6),
	datad => \IR|Data\(0),
	combout => \Controller|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y23_N4
\Controller|Mux4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux4~3_combout\ = (\IR|Data\(5) & ((\IR|Data\(3) & ((!\IR|Data\(0)))) # (!\IR|Data\(3) & (!\IR|Data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Data\(5),
	datab => \IR|Data\(3),
	datac => \IR|Data\(6),
	datad => \IR|Data\(0),
	combout => \Controller|Mux4~3_combout\);

-- Location: LCCOMB_X23_Y23_N22
\Controller|Mux4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux4~4_combout\ = (\Controller|Mux4~2_combout\ & (((\Controller|Mux4~3_combout\) # (!\IR|Data\(4))))) # (!\Controller|Mux4~2_combout\ & (\Controller|Mux4~0_combout\ & ((\IR|Data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|Mux4~2_combout\,
	datab => \Controller|Mux4~0_combout\,
	datac => \Controller|Mux4~3_combout\,
	datad => \IR|Data\(4),
	combout => \Controller|Mux4~4_combout\);

-- Location: LCCOMB_X24_Y25_N18
\Controller|Mux4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux4~8_combout\ = (\IR|Data\(3) & (((\IR|Data\(2)) # (!\IR|Data\(0))) # (!\IR|Data\(6)))) # (!\IR|Data\(3) & ((\IR|Data\(0)) # (\IR|Data\(6) $ (\IR|Data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Data\(3),
	datab => \IR|Data\(6),
	datac => \IR|Data\(2),
	datad => \IR|Data\(0),
	combout => \Controller|Mux4~8_combout\);

-- Location: LCCOMB_X24_Y25_N20
\Controller|Mux4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux4~9_combout\ = (\IR|Data\(4) & (\IR|Data\(5) & !\Controller|Mux4~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IR|Data\(4),
	datac => \IR|Data\(5),
	datad => \Controller|Mux4~8_combout\,
	combout => \Controller|Mux4~9_combout\);

-- Location: LCCOMB_X27_Y25_N30
\Controller|Mux4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux4~10_combout\ = (\Controller|Mux4~9_combout\) # ((!\IR|Data\(5) & (\Controller|Mux3~0_combout\ & !\IR|Data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|Mux4~9_combout\,
	datab => \IR|Data\(5),
	datac => \Controller|Mux3~0_combout\,
	datad => \IR|Data\(6),
	combout => \Controller|Mux4~10_combout\);

-- Location: LCCOMB_X27_Y25_N24
\Controller|Mux4~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux4~11_combout\ = (\Controller|Mux4~7_combout\ & (((\Controller|Mux4~10_combout\) # (!\IR|Data\(7))))) # (!\Controller|Mux4~7_combout\ & (\Controller|Mux4~4_combout\ & ((\IR|Data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|Mux4~7_combout\,
	datab => \Controller|Mux4~4_combout\,
	datac => \Controller|Mux4~10_combout\,
	datad => \IR|Data\(7),
	combout => \Controller|Mux4~11_combout\);

-- Location: CLKCTRL_G11
\Controller|Mux4~11clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Controller|Mux4~11clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Controller|Mux4~11clkctrl_outclk\);

-- Location: LCCOMB_X29_Y24_N18
\Controller|Mux16~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux16~3_combout\ = (\IR|Data\(2) & ((\IR|Data\(0) & (\Flags|S~q\)) # (!\IR|Data\(0) & ((\Flags|Z~q\))))) # (!\IR|Data\(2) & (((!\Flags|Z~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Data\(2),
	datab => \IR|Data\(0),
	datac => \Flags|S~q\,
	datad => \Flags|Z~q\,
	combout => \Controller|Mux16~3_combout\);

-- Location: LCCOMB_X29_Y24_N20
\Controller|Mux16~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux16~4_combout\ = (\IR|Data\(2) & (((\Controller|Mux16~3_combout\)))) # (!\IR|Data\(2) & ((\IR|Data\(1) & ((\Controller|Mux16~3_combout\))) # (!\IR|Data\(1) & (\Flags|C~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Data\(2),
	datab => \Flags|C~q\,
	datac => \IR|Data\(1),
	datad => \Controller|Mux16~3_combout\,
	combout => \Controller|Mux16~4_combout\);

-- Location: LCCOMB_X29_Y24_N10
\Controller|Mux11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux11~0_combout\ = (\IR|Data\(7) & (\Controller|Mux4~12_combout\ & (\IR|Data\(5) & \Controller|Mux16~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Data\(7),
	datab => \Controller|Mux4~12_combout\,
	datac => \IR|Data\(5),
	datad => \Controller|Mux16~4_combout\,
	combout => \Controller|Mux11~0_combout\);

-- Location: LCCOMB_X29_Y24_N22
\Controller|nextState.PCINC0_677\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.PCINC0_677~combout\ = (\Controller|state.DECODE~q\ & ((GLOBAL(\Controller|Mux4~11clkctrl_outclk\) & ((\Controller|Mux11~0_combout\))) # (!GLOBAL(\Controller|Mux4~11clkctrl_outclk\) & (\Controller|nextState.PCINC0_677~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|nextState.PCINC0_677~combout\,
	datab => \Controller|state.DECODE~q\,
	datac => \Controller|Mux4~11clkctrl_outclk\,
	datad => \Controller|Mux11~0_combout\,
	combout => \Controller|nextState.PCINC0_677~combout\);

-- Location: FF_X29_Y24_N23
\Controller|state.PCINC0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.PCINC0_677~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.PCINC0~q\);

-- Location: LCCOMB_X29_Y24_N26
\Controller|nextState.PCINC1_670\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.PCINC1_670~combout\ = (GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & ((\Controller|state.PCINC0~q\))) # (!GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & (\Controller|nextState.PCINC1_670~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|nextState.PCINC1_670~combout\,
	datac => \Controller|Selector49~0clkctrl_outclk\,
	datad => \Controller|state.PCINC0~q\,
	combout => \Controller|nextState.PCINC1_670~combout\);

-- Location: FF_X29_Y24_N27
\Controller|state.PCINC1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.PCINC1_670~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.PCINC1~q\);

-- Location: LCCOMB_X29_Y24_N4
\Controller|WideOr27~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|WideOr27~2_combout\ = (!\Controller|state.LDAI~q\ & (!\Controller|state.LDAA_X~q\ & (!\Controller|state.PCINC1~q\ & !\Controller|state.LDXI1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.LDAI~q\,
	datab => \Controller|state.LDAA_X~q\,
	datac => \Controller|state.PCINC1~q\,
	datad => \Controller|state.LDXI1~q\,
	combout => \Controller|WideOr27~2_combout\);

-- Location: LCCOMB_X28_Y22_N22
\Controller|WideOr27~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|WideOr27~3_combout\ = (!\Controller|state.DECODE~q\ & (!\Controller|state.PCINC0~q\ & (\Controller|WideOr27~2_combout\ & \Controller|WideOr27~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.DECODE~q\,
	datab => \Controller|state.PCINC0~q\,
	datac => \Controller|WideOr27~2_combout\,
	datad => \Controller|WideOr27~1_combout\,
	combout => \Controller|WideOr27~3_combout\);

-- Location: LCCOMB_X27_Y22_N0
\ProgramCounter|tempCount[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ProgramCounter|tempCount[7]~1_combout\ = (\Controller|WideOr39~combout\) # ((!\Controller|WideOr27~3_combout\ & !\Controller|WideOr40~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|WideOr27~3_combout\,
	datac => \Controller|WideOr40~combout\,
	datad => \Controller|WideOr39~combout\,
	combout => \ProgramCounter|tempCount[7]~1_combout\);

-- Location: FF_X27_Y25_N27
\ProgramCounter|tempCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \ProgramCounter|tempCount~0_combout\,
	clrn => \RESETn~input_o\,
	ena => \ProgramCounter|tempCount[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|tempCount\(1));

-- Location: LCCOMB_X26_Y22_N4
\ProgramCounter|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ProgramCounter|Add0~4_combout\ = (\ProgramCounter|tempCount\(2) & (\ProgramCounter|Add0~3\ $ (GND))) # (!\ProgramCounter|tempCount\(2) & (!\ProgramCounter|Add0~3\ & VCC))
-- \ProgramCounter|Add0~5\ = CARRY((\ProgramCounter|tempCount\(2) & !\ProgramCounter|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ProgramCounter|tempCount\(2),
	datad => VCC,
	cin => \ProgramCounter|Add0~3\,
	combout => \ProgramCounter|Add0~4_combout\,
	cout => \ProgramCounter|Add0~5\);

-- Location: LCCOMB_X27_Y22_N10
\ProgramCounter|tempCount~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ProgramCounter|tempCount~2_combout\ = (\Controller|WideOr39~combout\ & ((\dataBus[2]~62_combout\))) # (!\Controller|WideOr39~combout\ & (\ProgramCounter|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controller|WideOr39~combout\,
	datac => \ProgramCounter|Add0~4_combout\,
	datad => \dataBus[2]~62_combout\,
	combout => \ProgramCounter|tempCount~2_combout\);

-- Location: FF_X27_Y22_N11
\ProgramCounter|tempCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \ProgramCounter|tempCount~2_combout\,
	clrn => \RESETn~input_o\,
	ena => \ProgramCounter|tempCount[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|tempCount\(2));

-- Location: LCCOMB_X26_Y22_N6
\ProgramCounter|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ProgramCounter|Add0~6_combout\ = (\ProgramCounter|tempCount\(3) & (!\ProgramCounter|Add0~5\)) # (!\ProgramCounter|tempCount\(3) & ((\ProgramCounter|Add0~5\) # (GND)))
-- \ProgramCounter|Add0~7\ = CARRY((!\ProgramCounter|Add0~5\) # (!\ProgramCounter|tempCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|tempCount\(3),
	datad => VCC,
	cin => \ProgramCounter|Add0~5\,
	combout => \ProgramCounter|Add0~6_combout\,
	cout => \ProgramCounter|Add0~7\);

-- Location: LCCOMB_X27_Y22_N20
\ProgramCounter|tempCount~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ProgramCounter|tempCount~3_combout\ = (\Controller|WideOr39~combout\ & ((\dataBus[3]~71_combout\))) # (!\Controller|WideOr39~combout\ & (\ProgramCounter|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controller|WideOr39~combout\,
	datac => \ProgramCounter|Add0~6_combout\,
	datad => \dataBus[3]~71_combout\,
	combout => \ProgramCounter|tempCount~3_combout\);

-- Location: FF_X27_Y22_N21
\ProgramCounter|tempCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \ProgramCounter|tempCount~3_combout\,
	clrn => \RESETn~input_o\,
	ena => \ProgramCounter|tempCount[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|tempCount\(3));

-- Location: LCCOMB_X26_Y22_N8
\ProgramCounter|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ProgramCounter|Add0~8_combout\ = (\ProgramCounter|tempCount\(4) & (\ProgramCounter|Add0~7\ $ (GND))) # (!\ProgramCounter|tempCount\(4) & (!\ProgramCounter|Add0~7\ & VCC))
-- \ProgramCounter|Add0~9\ = CARRY((\ProgramCounter|tempCount\(4) & !\ProgramCounter|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ProgramCounter|tempCount\(4),
	datad => VCC,
	cin => \ProgramCounter|Add0~7\,
	combout => \ProgramCounter|Add0~8_combout\,
	cout => \ProgramCounter|Add0~9\);

-- Location: LCCOMB_X27_Y22_N26
\ProgramCounter|tempCount~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ProgramCounter|tempCount~4_combout\ = (\Controller|WideOr39~combout\ & ((\dataBus[4]~8_combout\))) # (!\Controller|WideOr39~combout\ & (\ProgramCounter|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|Add0~8_combout\,
	datac => \dataBus[4]~8_combout\,
	datad => \Controller|WideOr39~combout\,
	combout => \ProgramCounter|tempCount~4_combout\);

-- Location: FF_X27_Y22_N27
\ProgramCounter|tempCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \ProgramCounter|tempCount~4_combout\,
	clrn => \RESETn~input_o\,
	ena => \ProgramCounter|tempCount[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|tempCount\(4));

-- Location: LCCOMB_X26_Y22_N10
\ProgramCounter|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ProgramCounter|Add0~10_combout\ = (\ProgramCounter|tempCount\(5) & (!\ProgramCounter|Add0~9\)) # (!\ProgramCounter|tempCount\(5) & ((\ProgramCounter|Add0~9\) # (GND)))
-- \ProgramCounter|Add0~11\ = CARRY((!\ProgramCounter|Add0~9\) # (!\ProgramCounter|tempCount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|tempCount\(5),
	datad => VCC,
	cin => \ProgramCounter|Add0~9\,
	combout => \ProgramCounter|Add0~10_combout\,
	cout => \ProgramCounter|Add0~11\);

-- Location: LCCOMB_X27_Y22_N8
\ProgramCounter|tempCount~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ProgramCounter|tempCount~5_combout\ = (\Controller|WideOr39~combout\ & ((\dataBus[5]~17_combout\))) # (!\Controller|WideOr39~combout\ & (\ProgramCounter|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controller|WideOr39~combout\,
	datac => \ProgramCounter|Add0~10_combout\,
	datad => \dataBus[5]~17_combout\,
	combout => \ProgramCounter|tempCount~5_combout\);

-- Location: FF_X27_Y22_N9
\ProgramCounter|tempCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \ProgramCounter|tempCount~5_combout\,
	clrn => \RESETn~input_o\,
	ena => \ProgramCounter|tempCount[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|tempCount\(5));

-- Location: LCCOMB_X27_Y25_N6
\ProgramCounter|tempCount~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ProgramCounter|tempCount~6_combout\ = (\Controller|WideOr39~combout\ & ((\dataBus[6]~26_combout\))) # (!\Controller|WideOr39~combout\ & (\ProgramCounter|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controller|WideOr39~combout\,
	datac => \ProgramCounter|Add0~12_combout\,
	datad => \dataBus[6]~26_combout\,
	combout => \ProgramCounter|tempCount~6_combout\);

-- Location: FF_X27_Y25_N7
\ProgramCounter|tempCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \ProgramCounter|tempCount~6_combout\,
	clrn => \RESETn~input_o\,
	ena => \ProgramCounter|tempCount[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|tempCount\(6));

-- Location: LCCOMB_X27_Y24_N16
\SelectAddress|ADDR[6]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[6]~32_combout\ = (\indexRegister|tempCount\(6) & \Controller|state.LDAA_X~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \indexRegister|tempCount\(6),
	datad => \Controller|state.LDAA_X~q\,
	combout => \SelectAddress|ADDR[6]~32_combout\);

-- Location: LCCOMB_X27_Y26_N0
\SelectAddress|ADDR[6]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[6]~31_combout\ = (\AddressRegisterLow|tempAddress\(6) & (!\Controller|state.LDAA_X~q\ & ((\Controller|state.STAA2~q\) # (\Controller|state.LDAA2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.STAA2~q\,
	datab => \Controller|state.LDAA2~q\,
	datac => \AddressRegisterLow|tempAddress\(6),
	datad => \Controller|state.LDAA_X~q\,
	combout => \SelectAddress|ADDR[6]~31_combout\);

-- Location: LCCOMB_X27_Y23_N10
\SelectAddress|ADDR[6]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[6]~33_combout\ = (\SelectAddress|ADDR[6]~32_combout\) # ((\SelectAddress|ADDR[6]~31_combout\) # ((\ProgramCounter|tempCount\(6) & \SelectAddress|ADDR[1]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|tempCount\(6),
	datab => \SelectAddress|ADDR[6]~32_combout\,
	datac => \SelectAddress|ADDR[1]~19_combout\,
	datad => \SelectAddress|ADDR[6]~31_combout\,
	combout => \SelectAddress|ADDR[6]~33_combout\);

-- Location: LCCOMB_X26_Y27_N16
\indexRegister|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indexRegister|Add0~16_combout\ = (\indexRegister|tempCount\(8) & (\indexRegister|Add0~15\ $ (GND))) # (!\indexRegister|tempCount\(8) & (!\indexRegister|Add0~15\ & VCC))
-- \indexRegister|Add0~17\ = CARRY((\indexRegister|tempCount\(8) & !\indexRegister|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \indexRegister|tempCount\(8),
	datad => VCC,
	cin => \indexRegister|Add0~15\,
	combout => \indexRegister|Add0~16_combout\,
	cout => \indexRegister|Add0~17\);

-- Location: LCCOMB_X28_Y26_N0
\indexRegister|tempCount~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indexRegister|tempCount~8_combout\ = (\Controller|state.LDXI1~q\ & ((\dataBus[0]~44_combout\))) # (!\Controller|state.LDXI1~q\ & (\indexRegister|Add0~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \indexRegister|Add0~16_combout\,
	datac => \dataBus[0]~44_combout\,
	datad => \Controller|state.LDXI1~q\,
	combout => \indexRegister|tempCount~8_combout\);

-- Location: LCCOMB_X24_Y24_N10
\Controller|X_INC~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|X_INC~2_combout\ = (\IR|Data\(2) & (!\IR|Data\(0) & \IR|Data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Data\(2),
	datab => \IR|Data\(0),
	datad => \IR|Data\(3),
	combout => \Controller|X_INC~2_combout\);

-- Location: LCCOMB_X28_Y24_N18
\indexRegister|tempCount[8]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indexRegister|tempCount[8]~9_combout\ = (!\Controller|state.LDXI0~q\ & ((\Controller|state.LDXI1~q\) # ((\Controller|X_INC~2_combout\ & \Controller|X_INC~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.LDXI0~q\,
	datab => \Controller|X_INC~2_combout\,
	datac => \Controller|X_INC~1_combout\,
	datad => \Controller|state.LDXI1~q\,
	combout => \indexRegister|tempCount[8]~9_combout\);

-- Location: FF_X28_Y26_N1
\indexRegister|tempCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \indexRegister|tempCount~8_combout\,
	clrn => \RESETn~input_o\,
	ena => \indexRegister|tempCount[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \indexRegister|tempCount\(8));

-- Location: LCCOMB_X27_Y26_N10
\SelectAddress|ADDR[8]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[8]~38_combout\ = (\indexRegister|tempCount\(8) & \Controller|state.LDAA_X~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \indexRegister|tempCount\(8),
	datad => \Controller|state.LDAA_X~q\,
	combout => \SelectAddress|ADDR[8]~38_combout\);

-- Location: LCCOMB_X27_Y26_N8
\SelectAddress|ADDR[8]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[8]~37_combout\ = (\AddressRegisterHigh|tempAddress\(0) & (!\Controller|state.LDAA_X~q\ & ((\Controller|state.STAA2~q\) # (\Controller|state.LDAA2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.STAA2~q\,
	datab => \Controller|state.LDAA2~q\,
	datac => \AddressRegisterHigh|tempAddress\(0),
	datad => \Controller|state.LDAA_X~q\,
	combout => \SelectAddress|ADDR[8]~37_combout\);

-- Location: LCCOMB_X27_Y26_N28
\SelectAddress|ADDR[8]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[8]~39_combout\ = (\SelectAddress|ADDR[8]~38_combout\) # ((\SelectAddress|ADDR[8]~37_combout\) # ((\ProgramCounter|tempCount\(8) & \SelectAddress|ADDR[1]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectAddress|ADDR[8]~38_combout\,
	datab => \ProgramCounter|tempCount\(8),
	datac => \SelectAddress|ADDR[8]~37_combout\,
	datad => \SelectAddress|ADDR[1]~19_combout\,
	combout => \SelectAddress|ADDR[8]~39_combout\);

-- Location: LCCOMB_X27_Y23_N12
\EnableDecoder|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \EnableDecoder|LessThan0~1_combout\ = (((!\SelectAddress|ADDR[8]~39_combout\) # (!\SelectAddress|ADDR[5]~30_combout\)) # (!\SelectAddress|ADDR[7]~36_combout\)) # (!\SelectAddress|ADDR[6]~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectAddress|ADDR[6]~33_combout\,
	datab => \SelectAddress|ADDR[7]~36_combout\,
	datac => \SelectAddress|ADDR[5]~30_combout\,
	datad => \SelectAddress|ADDR[8]~39_combout\,
	combout => \EnableDecoder|LessThan0~1_combout\);

-- Location: LCCOMB_X26_Y27_N18
\indexRegister|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indexRegister|Add0~18_combout\ = (\indexRegister|tempCount\(9) & (!\indexRegister|Add0~17\)) # (!\indexRegister|tempCount\(9) & ((\indexRegister|Add0~17\) # (GND)))
-- \indexRegister|Add0~19\ = CARRY((!\indexRegister|Add0~17\) # (!\indexRegister|tempCount\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \indexRegister|tempCount\(9),
	datad => VCC,
	cin => \indexRegister|Add0~17\,
	combout => \indexRegister|Add0~18_combout\,
	cout => \indexRegister|Add0~19\);

-- Location: LCCOMB_X26_Y26_N0
\indexRegister|tempCount~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indexRegister|tempCount~10_combout\ = (\Controller|state.LDXI1~q\ & (\dataBus[1]~53_combout\)) # (!\Controller|state.LDXI1~q\ & ((\indexRegister|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.LDXI1~q\,
	datab => \dataBus[1]~53_combout\,
	datad => \indexRegister|Add0~18_combout\,
	combout => \indexRegister|tempCount~10_combout\);

-- Location: FF_X26_Y26_N1
\indexRegister|tempCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \indexRegister|tempCount~10_combout\,
	clrn => \RESETn~input_o\,
	ena => \indexRegister|tempCount[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \indexRegister|tempCount\(9));

-- Location: LCCOMB_X26_Y27_N20
\indexRegister|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indexRegister|Add0~20_combout\ = (\indexRegister|tempCount\(10) & (\indexRegister|Add0~19\ $ (GND))) # (!\indexRegister|tempCount\(10) & (!\indexRegister|Add0~19\ & VCC))
-- \indexRegister|Add0~21\ = CARRY((\indexRegister|tempCount\(10) & !\indexRegister|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \indexRegister|tempCount\(10),
	datad => VCC,
	cin => \indexRegister|Add0~19\,
	combout => \indexRegister|Add0~20_combout\,
	cout => \indexRegister|Add0~21\);

-- Location: LCCOMB_X26_Y26_N24
\indexRegister|tempCount~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indexRegister|tempCount~11_combout\ = (\Controller|state.LDXI1~q\ & (\dataBus[2]~62_combout\)) # (!\Controller|state.LDXI1~q\ & ((\indexRegister|Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.LDXI1~q\,
	datac => \dataBus[2]~62_combout\,
	datad => \indexRegister|Add0~20_combout\,
	combout => \indexRegister|tempCount~11_combout\);

-- Location: FF_X26_Y26_N25
\indexRegister|tempCount[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \indexRegister|tempCount~11_combout\,
	clrn => \RESETn~input_o\,
	ena => \indexRegister|tempCount[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \indexRegister|tempCount\(10));

-- Location: LCCOMB_X26_Y27_N22
\indexRegister|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indexRegister|Add0~22_combout\ = (\indexRegister|tempCount\(11) & (!\indexRegister|Add0~21\)) # (!\indexRegister|tempCount\(11) & ((\indexRegister|Add0~21\) # (GND)))
-- \indexRegister|Add0~23\ = CARRY((!\indexRegister|Add0~21\) # (!\indexRegister|tempCount\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \indexRegister|tempCount\(11),
	datad => VCC,
	cin => \indexRegister|Add0~21\,
	combout => \indexRegister|Add0~22_combout\,
	cout => \indexRegister|Add0~23\);

-- Location: LCCOMB_X27_Y27_N8
\indexRegister|tempCount~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indexRegister|tempCount~12_combout\ = (\Controller|state.LDXI1~q\ & (\dataBus[3]~71_combout\)) # (!\Controller|state.LDXI1~q\ & ((\indexRegister|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dataBus[3]~71_combout\,
	datac => \Controller|state.LDXI1~q\,
	datad => \indexRegister|Add0~22_combout\,
	combout => \indexRegister|tempCount~12_combout\);

-- Location: FF_X27_Y27_N9
\indexRegister|tempCount[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \indexRegister|tempCount~12_combout\,
	clrn => \RESETn~input_o\,
	ena => \indexRegister|tempCount[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \indexRegister|tempCount\(11));

-- Location: LCCOMB_X26_Y27_N24
\indexRegister|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indexRegister|Add0~24_combout\ = (\indexRegister|tempCount\(12) & (\indexRegister|Add0~23\ $ (GND))) # (!\indexRegister|tempCount\(12) & (!\indexRegister|Add0~23\ & VCC))
-- \indexRegister|Add0~25\ = CARRY((\indexRegister|tempCount\(12) & !\indexRegister|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \indexRegister|tempCount\(12),
	datad => VCC,
	cin => \indexRegister|Add0~23\,
	combout => \indexRegister|Add0~24_combout\,
	cout => \indexRegister|Add0~25\);

-- Location: LCCOMB_X26_Y26_N12
\indexRegister|tempCount~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indexRegister|tempCount~13_combout\ = (\Controller|state.LDXI1~q\ & ((\dataBus[4]~8_combout\))) # (!\Controller|state.LDXI1~q\ & (\indexRegister|Add0~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.LDXI1~q\,
	datac => \indexRegister|Add0~24_combout\,
	datad => \dataBus[4]~8_combout\,
	combout => \indexRegister|tempCount~13_combout\);

-- Location: FF_X26_Y26_N13
\indexRegister|tempCount[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \indexRegister|tempCount~13_combout\,
	clrn => \RESETn~input_o\,
	ena => \indexRegister|tempCount[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \indexRegister|tempCount\(12));

-- Location: LCCOMB_X26_Y27_N26
\indexRegister|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indexRegister|Add0~26_combout\ = (\indexRegister|tempCount\(13) & (!\indexRegister|Add0~25\)) # (!\indexRegister|tempCount\(13) & ((\indexRegister|Add0~25\) # (GND)))
-- \indexRegister|Add0~27\ = CARRY((!\indexRegister|Add0~25\) # (!\indexRegister|tempCount\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \indexRegister|tempCount\(13),
	datad => VCC,
	cin => \indexRegister|Add0~25\,
	combout => \indexRegister|Add0~26_combout\,
	cout => \indexRegister|Add0~27\);

-- Location: LCCOMB_X26_Y26_N6
\indexRegister|tempCount~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indexRegister|tempCount~14_combout\ = (\Controller|state.LDXI1~q\ & ((\dataBus[5]~17_combout\))) # (!\Controller|state.LDXI1~q\ & (\indexRegister|Add0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.LDXI1~q\,
	datac => \indexRegister|Add0~26_combout\,
	datad => \dataBus[5]~17_combout\,
	combout => \indexRegister|tempCount~14_combout\);

-- Location: FF_X26_Y26_N7
\indexRegister|tempCount[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \indexRegister|tempCount~14_combout\,
	clrn => \RESETn~input_o\,
	ena => \indexRegister|tempCount[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \indexRegister|tempCount\(13));

-- Location: LCCOMB_X26_Y26_N20
\SelectAddress|ADDR[13]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[13]~53_combout\ = (\indexRegister|tempCount\(13) & ((\Controller|state.LDAA_X~q\) # ((\ProgramCounter|tempCount\(13) & \SelectAddress|ADDR[1]~19_combout\)))) # (!\indexRegister|tempCount\(13) & (((\ProgramCounter|tempCount\(13) & 
-- \SelectAddress|ADDR[1]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \indexRegister|tempCount\(13),
	datab => \Controller|state.LDAA_X~q\,
	datac => \ProgramCounter|tempCount\(13),
	datad => \SelectAddress|ADDR[1]~19_combout\,
	combout => \SelectAddress|ADDR[13]~53_combout\);

-- Location: LCCOMB_X27_Y26_N12
\SelectAddress|ADDR[13]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[13]~52_combout\ = (\AddressRegisterHigh|tempAddress\(5) & (!\Controller|state.LDAA_X~q\ & ((\Controller|state.STAA2~q\) # (\Controller|state.LDAA2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.STAA2~q\,
	datab => \Controller|state.LDAA2~q\,
	datac => \AddressRegisterHigh|tempAddress\(5),
	datad => \Controller|state.LDAA_X~q\,
	combout => \SelectAddress|ADDR[13]~52_combout\);

-- Location: LCCOMB_X26_Y27_N28
\indexRegister|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indexRegister|Add0~28_combout\ = (\indexRegister|tempCount\(14) & (\indexRegister|Add0~27\ $ (GND))) # (!\indexRegister|tempCount\(14) & (!\indexRegister|Add0~27\ & VCC))
-- \indexRegister|Add0~29\ = CARRY((\indexRegister|tempCount\(14) & !\indexRegister|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \indexRegister|tempCount\(14),
	datad => VCC,
	cin => \indexRegister|Add0~27\,
	combout => \indexRegister|Add0~28_combout\,
	cout => \indexRegister|Add0~29\);

-- Location: LCCOMB_X27_Y27_N22
\indexRegister|tempCount~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indexRegister|tempCount~15_combout\ = (\Controller|state.LDXI1~q\ & (\dataBus[6]~26_combout\)) # (!\Controller|state.LDXI1~q\ & ((\indexRegister|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.LDXI1~q\,
	datac => \dataBus[6]~26_combout\,
	datad => \indexRegister|Add0~28_combout\,
	combout => \indexRegister|tempCount~15_combout\);

-- Location: FF_X27_Y27_N23
\indexRegister|tempCount[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \indexRegister|tempCount~15_combout\,
	clrn => \RESETn~input_o\,
	ena => \indexRegister|tempCount[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \indexRegister|tempCount\(14));

-- Location: LCCOMB_X27_Y23_N20
\SelectAddress|ADDR[14]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[14]~55_combout\ = (\Controller|state.LDAA_X~q\ & \indexRegister|tempCount\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Controller|state.LDAA_X~q\,
	datad => \indexRegister|tempCount\(14),
	combout => \SelectAddress|ADDR[14]~55_combout\);

-- Location: LCCOMB_X27_Y26_N18
\SelectAddress|ADDR[14]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[14]~54_combout\ = (\AddressRegisterHigh|tempAddress\(6) & (!\Controller|state.LDAA_X~q\ & ((\Controller|state.STAA2~q\) # (\Controller|state.LDAA2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.STAA2~q\,
	datab => \Controller|state.LDAA2~q\,
	datac => \AddressRegisterHigh|tempAddress\(6),
	datad => \Controller|state.LDAA_X~q\,
	combout => \SelectAddress|ADDR[14]~54_combout\);

-- Location: LCCOMB_X27_Y23_N26
\SelectAddress|ADDR[14]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[14]~56_combout\ = (\SelectAddress|ADDR[14]~55_combout\) # ((\SelectAddress|ADDR[14]~54_combout\) # ((\ProgramCounter|tempCount\(14) & \SelectAddress|ADDR[1]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|tempCount\(14),
	datab => \SelectAddress|ADDR[14]~55_combout\,
	datac => \SelectAddress|ADDR[1]~19_combout\,
	datad => \SelectAddress|ADDR[14]~54_combout\,
	combout => \SelectAddress|ADDR[14]~56_combout\);

-- Location: LCCOMB_X26_Y27_N30
\indexRegister|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indexRegister|Add0~30_combout\ = \indexRegister|Add0~29\ $ (\indexRegister|tempCount\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \indexRegister|tempCount\(15),
	cin => \indexRegister|Add0~29\,
	combout => \indexRegister|Add0~30_combout\);

-- Location: LCCOMB_X27_Y27_N20
\indexRegister|tempCount~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \indexRegister|tempCount~16_combout\ = (\Controller|state.LDXI1~q\ & (\dataBus[7]~35_combout\)) # (!\Controller|state.LDXI1~q\ & ((\indexRegister|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataBus[7]~35_combout\,
	datac => \Controller|state.LDXI1~q\,
	datad => \indexRegister|Add0~30_combout\,
	combout => \indexRegister|tempCount~16_combout\);

-- Location: FF_X27_Y27_N21
\indexRegister|tempCount[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \indexRegister|tempCount~16_combout\,
	clrn => \RESETn~input_o\,
	ena => \indexRegister|tempCount[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \indexRegister|tempCount\(15));

-- Location: LCCOMB_X27_Y23_N0
\SelectAddress|ADDR[15]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[15]~58_combout\ = (\Controller|state.LDAA_X~q\ & \indexRegister|tempCount\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Controller|state.LDAA_X~q\,
	datad => \indexRegister|tempCount\(15),
	combout => \SelectAddress|ADDR[15]~58_combout\);

-- Location: LCCOMB_X27_Y26_N24
\SelectAddress|ADDR[15]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[15]~57_combout\ = (\AddressRegisterHigh|tempAddress\(7) & (!\Controller|state.LDAA_X~q\ & ((\Controller|state.STAA2~q\) # (\Controller|state.LDAA2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.STAA2~q\,
	datab => \Controller|state.LDAA2~q\,
	datac => \AddressRegisterHigh|tempAddress\(7),
	datad => \Controller|state.LDAA_X~q\,
	combout => \SelectAddress|ADDR[15]~57_combout\);

-- Location: LCCOMB_X27_Y23_N6
\SelectAddress|ADDR[15]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[15]~59_combout\ = (\SelectAddress|ADDR[15]~58_combout\) # ((\SelectAddress|ADDR[15]~57_combout\) # ((\ProgramCounter|tempCount\(15) & \SelectAddress|ADDR[1]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|tempCount\(15),
	datab => \SelectAddress|ADDR[15]~58_combout\,
	datac => \SelectAddress|ADDR[1]~19_combout\,
	datad => \SelectAddress|ADDR[15]~57_combout\,
	combout => \SelectAddress|ADDR[15]~59_combout\);

-- Location: LCCOMB_X27_Y23_N8
\EnableDecoder|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \EnableDecoder|LessThan0~3_combout\ = (((!\SelectAddress|ADDR[13]~53_combout\ & !\SelectAddress|ADDR[13]~52_combout\)) # (!\SelectAddress|ADDR[15]~59_combout\)) # (!\SelectAddress|ADDR[14]~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectAddress|ADDR[13]~53_combout\,
	datab => \SelectAddress|ADDR[13]~52_combout\,
	datac => \SelectAddress|ADDR[14]~56_combout\,
	datad => \SelectAddress|ADDR[15]~59_combout\,
	combout => \EnableDecoder|LessThan0~3_combout\);

-- Location: LCCOMB_X26_Y26_N26
\SelectAddress|ADDR[9]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[9]~40_combout\ = (\AddressRegisterHigh|tempAddress\(1) & (!\Controller|state.LDAA_X~q\ & ((\Controller|state.LDAA2~q\) # (\Controller|state.STAA2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.LDAA2~q\,
	datab => \Controller|state.STAA2~q\,
	datac => \AddressRegisterHigh|tempAddress\(1),
	datad => \Controller|state.LDAA_X~q\,
	combout => \SelectAddress|ADDR[9]~40_combout\);

-- Location: LCCOMB_X26_Y26_N2
\SelectAddress|ADDR[9]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[9]~41_combout\ = (\indexRegister|tempCount\(9) & \Controller|state.LDAA_X~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \indexRegister|tempCount\(9),
	datad => \Controller|state.LDAA_X~q\,
	combout => \SelectAddress|ADDR[9]~41_combout\);

-- Location: LCCOMB_X26_Y26_N8
\SelectAddress|ADDR[9]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[9]~42_combout\ = (\SelectAddress|ADDR[9]~40_combout\) # ((\SelectAddress|ADDR[9]~41_combout\) # ((\ProgramCounter|tempCount\(9) & \SelectAddress|ADDR[1]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|tempCount\(9),
	datab => \SelectAddress|ADDR[1]~19_combout\,
	datac => \SelectAddress|ADDR[9]~40_combout\,
	datad => \SelectAddress|ADDR[9]~41_combout\,
	combout => \SelectAddress|ADDR[9]~42_combout\);

-- Location: LCCOMB_X26_Y26_N22
\SelectAddress|ADDR[10]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[10]~44_combout\ = (\indexRegister|tempCount\(10) & \Controller|state.LDAA_X~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \indexRegister|tempCount\(10),
	datad => \Controller|state.LDAA_X~q\,
	combout => \SelectAddress|ADDR[10]~44_combout\);

-- Location: LCCOMB_X26_Y26_N18
\SelectAddress|ADDR[10]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[10]~43_combout\ = (\AddressRegisterHigh|tempAddress\(2) & (!\Controller|state.LDAA_X~q\ & ((\Controller|state.LDAA2~q\) # (\Controller|state.STAA2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.LDAA2~q\,
	datab => \Controller|state.STAA2~q\,
	datac => \AddressRegisterHigh|tempAddress\(2),
	datad => \Controller|state.LDAA_X~q\,
	combout => \SelectAddress|ADDR[10]~43_combout\);

-- Location: LCCOMB_X26_Y26_N28
\SelectAddress|ADDR[10]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[10]~45_combout\ = (\SelectAddress|ADDR[10]~44_combout\) # ((\SelectAddress|ADDR[10]~43_combout\) # ((\ProgramCounter|tempCount\(10) & \SelectAddress|ADDR[1]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|tempCount\(10),
	datab => \SelectAddress|ADDR[1]~19_combout\,
	datac => \SelectAddress|ADDR[10]~44_combout\,
	datad => \SelectAddress|ADDR[10]~43_combout\,
	combout => \SelectAddress|ADDR[10]~45_combout\);

-- Location: LCCOMB_X26_Y26_N10
\SelectAddress|ADDR[12]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[12]~49_combout\ = (!\Controller|state.LDAA_X~q\ & (\AddressRegisterHigh|tempAddress\(4) & ((\Controller|state.STAA2~q\) # (\Controller|state.LDAA2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.LDAA_X~q\,
	datab => \Controller|state.STAA2~q\,
	datac => \AddressRegisterHigh|tempAddress\(4),
	datad => \Controller|state.LDAA2~q\,
	combout => \SelectAddress|ADDR[12]~49_combout\);

-- Location: LCCOMB_X26_Y26_N30
\SelectAddress|ADDR[12]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[12]~50_combout\ = (\indexRegister|tempCount\(12) & \Controller|state.LDAA_X~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \indexRegister|tempCount\(12),
	datad => \Controller|state.LDAA_X~q\,
	combout => \SelectAddress|ADDR[12]~50_combout\);

-- Location: LCCOMB_X26_Y26_N4
\SelectAddress|ADDR[12]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[12]~51_combout\ = (\SelectAddress|ADDR[12]~49_combout\) # ((\SelectAddress|ADDR[12]~50_combout\) # ((\ProgramCounter|tempCount\(12) & \SelectAddress|ADDR[1]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectAddress|ADDR[12]~49_combout\,
	datab => \ProgramCounter|tempCount\(12),
	datac => \SelectAddress|ADDR[12]~50_combout\,
	datad => \SelectAddress|ADDR[1]~19_combout\,
	combout => \SelectAddress|ADDR[12]~51_combout\);

-- Location: LCCOMB_X27_Y23_N2
\SelectAddress|ADDR[11]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[11]~47_combout\ = (\Controller|state.LDAA_X~q\ & \indexRegister|tempCount\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Controller|state.LDAA_X~q\,
	datad => \indexRegister|tempCount\(11),
	combout => \SelectAddress|ADDR[11]~47_combout\);

-- Location: LCCOMB_X27_Y26_N6
\SelectAddress|ADDR[11]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[11]~46_combout\ = (\AddressRegisterHigh|tempAddress\(3) & (!\Controller|state.LDAA_X~q\ & ((\Controller|state.STAA2~q\) # (\Controller|state.LDAA2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.STAA2~q\,
	datab => \Controller|state.LDAA2~q\,
	datac => \AddressRegisterHigh|tempAddress\(3),
	datad => \Controller|state.LDAA_X~q\,
	combout => \SelectAddress|ADDR[11]~46_combout\);

-- Location: LCCOMB_X27_Y23_N24
\SelectAddress|ADDR[11]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[11]~48_combout\ = (\SelectAddress|ADDR[11]~47_combout\) # ((\SelectAddress|ADDR[11]~46_combout\) # ((\ProgramCounter|tempCount\(11) & \SelectAddress|ADDR[1]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|tempCount\(11),
	datab => \SelectAddress|ADDR[11]~47_combout\,
	datac => \SelectAddress|ADDR[1]~19_combout\,
	datad => \SelectAddress|ADDR[11]~46_combout\,
	combout => \SelectAddress|ADDR[11]~48_combout\);

-- Location: LCCOMB_X27_Y23_N30
\EnableDecoder|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \EnableDecoder|LessThan0~2_combout\ = (((!\SelectAddress|ADDR[11]~48_combout\) # (!\SelectAddress|ADDR[12]~51_combout\)) # (!\SelectAddress|ADDR[10]~45_combout\)) # (!\SelectAddress|ADDR[9]~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectAddress|ADDR[9]~42_combout\,
	datab => \SelectAddress|ADDR[10]~45_combout\,
	datac => \SelectAddress|ADDR[12]~51_combout\,
	datad => \SelectAddress|ADDR[11]~48_combout\,
	combout => \EnableDecoder|LessThan0~2_combout\);

-- Location: LCCOMB_X27_Y23_N16
\EnableDecoder|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \EnableDecoder|LessThan0~0_combout\ = (((!\SelectAddress|ADDR[3]~25_combout\) # (!\SelectAddress|ADDR[4]~28_combout\)) # (!\SelectAddress|ADDR[2]~23_combout\)) # (!\SelectAddress|ADDR[1]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectAddress|ADDR[1]~20_combout\,
	datab => \SelectAddress|ADDR[2]~23_combout\,
	datac => \SelectAddress|ADDR[4]~28_combout\,
	datad => \SelectAddress|ADDR[3]~25_combout\,
	combout => \EnableDecoder|LessThan0~0_combout\);

-- Location: LCCOMB_X27_Y23_N22
\EnableDecoder|LessThan0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \EnableDecoder|LessThan0~4_combout\ = (\EnableDecoder|LessThan0~1_combout\) # ((\EnableDecoder|LessThan0~3_combout\) # ((\EnableDecoder|LessThan0~2_combout\) # (\EnableDecoder|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EnableDecoder|LessThan0~1_combout\,
	datab => \EnableDecoder|LessThan0~3_combout\,
	datac => \EnableDecoder|LessThan0~2_combout\,
	datad => \EnableDecoder|LessThan0~0_combout\,
	combout => \EnableDecoder|LessThan0~4_combout\);

-- Location: LCCOMB_X24_Y23_N22
\dataBus[1]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[1]~45_combout\ = (!\SelectAddress|ADDR[0]~62_combout\ & (\IN0_INPUT[1]~input_o\ & (!\EnableDecoder|LessThan0~4_combout\ & \Controller|WideOr26~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelectAddress|ADDR[0]~62_combout\,
	datab => \IN0_INPUT[1]~input_o\,
	datac => \EnableDecoder|LessThan0~4_combout\,
	datad => \Controller|WideOr26~1_combout\,
	combout => \dataBus[1]~45_combout\);

-- Location: IOIBUF_X0_Y27_N1
\IN1_INPUT[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN1_INPUT(1),
	o => \IN1_INPUT[1]~input_o\);

-- Location: FF_X24_Y26_N23
\StackPointerH|tempAddress[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \ProgramCounter|tempCount\(9),
	sload => VCC,
	ena => \Controller|state.CALL3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackPointerH|tempAddress\(1));

-- Location: FF_X24_Y26_N25
\StackPointerL|tempAddress[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \ProgramCounter|tempCount\(1),
	sload => VCC,
	ena => \Controller|state.CALL2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackPointerL|tempAddress\(1));

-- Location: LCCOMB_X24_Y26_N24
\dataBus[1]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[1]~48_combout\ = (\StackPointerH|tempAddress\(1) & ((\Controller|state.RET0~q\) # ((\Controller|state.RET1~q\ & \StackPointerL|tempAddress\(1))))) # (!\StackPointerH|tempAddress\(1) & (\Controller|state.RET1~q\ & 
-- (\StackPointerL|tempAddress\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \StackPointerH|tempAddress\(1),
	datab => \Controller|state.RET1~q\,
	datac => \StackPointerL|tempAddress\(1),
	datad => \Controller|state.RET0~q\,
	combout => \dataBus[1]~48_combout\);

-- Location: LCCOMB_X24_Y26_N20
\dataBus[1]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[1]~49_combout\ = (\dataBus[1]~48_combout\) # ((\AddressRegisterLow|tempAddress\(1) & ((\Controller|state.CALL4~q\) # (\Controller|state.BRANCH2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.CALL4~q\,
	datab => \Controller|state.BRANCH2~q\,
	datac => \AddressRegisterLow|tempAddress\(1),
	datad => \dataBus[1]~48_combout\,
	combout => \dataBus[1]~49_combout\);

-- Location: LCCOMB_X24_Y26_N18
\dataBus[1]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[1]~50_combout\ = (\dataBus[1]~49_combout\) # ((\AddressRegisterHigh|tempAddress\(1) & ((\Controller|state.CALL5~q\) # (\Controller|state.BRANCH3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.CALL5~q\,
	datab => \AddressRegisterHigh|tempAddress\(1),
	datac => \Controller|state.BRANCH3~q\,
	datad => \dataBus[1]~49_combout\,
	combout => \dataBus[1]~50_combout\);

-- Location: LCCOMB_X30_Y23_N18
\ALU|Mux8~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Mux8~2_combout\ = (\D|Data\(1) & \A|Data[1]~_Duplicate_1_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D|Data\(1),
	datac => \A|Data[1]~_Duplicate_1_q\,
	combout => \ALU|Mux8~2_combout\);

-- Location: LCCOMB_X32_Y23_N2
\ALU|Mux8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Mux8~0_combout\ = (\tempALUreg|Data[3]~0_combout\ & ((\A|Data[2]~_Duplicate_1_q\) # ((\tempALUreg|Data[3]~1_combout\)))) # (!\tempALUreg|Data[3]~0_combout\ & (((\ALU|Add2~2_combout\ & !\tempALUreg|Data[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|Data[2]~_Duplicate_1_q\,
	datab => \tempALUreg|Data[3]~0_combout\,
	datac => \ALU|Add2~2_combout\,
	datad => \tempALUreg|Data[3]~1_combout\,
	combout => \ALU|Mux8~0_combout\);

-- Location: LCCOMB_X31_Y23_N12
\ALU|Mux8~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Mux8~1_combout\ = (\ALU|Mux8~0_combout\ & (((\ALU|Mult0|auto_generated|mac_out2~DATAOUT9\) # (!\tempALUreg|Data[3]~1_combout\)))) # (!\ALU|Mux8~0_combout\ & (\ALU|Add0~4_combout\ & (\tempALUreg|Data[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux8~0_combout\,
	datab => \ALU|Add0~4_combout\,
	datac => \tempALUreg|Data[3]~1_combout\,
	datad => \ALU|Mult0|auto_generated|mac_out2~DATAOUT9\,
	combout => \ALU|Mux8~1_combout\);

-- Location: LCCOMB_X31_Y23_N30
\ALU|Mux8~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Mux8~3_combout\ = (\tempALUreg|Data[3]~2_combout\ & ((\ALU|Mux8~2_combout\) # ((\ALU|Mux5~3_combout\ & \ALU|Mux8~1_combout\)))) # (!\tempALUreg|Data[3]~2_combout\ & (((\ALU|Mux5~3_combout\ & \ALU|Mux8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempALUreg|Data[3]~2_combout\,
	datab => \ALU|Mux8~2_combout\,
	datac => \ALU|Mux5~3_combout\,
	datad => \ALU|Mux8~1_combout\,
	combout => \ALU|Mux8~3_combout\);

-- Location: FF_X31_Y23_N31
\tempALUreg|Data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \ALU|Mux8~3_combout\,
	ena => \Controller|WideOr37~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tempALUreg|Data\(1));

-- Location: FF_X30_Y23_N1
\tempALUreg2|Data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \ALU|Mult0|auto_generated|mac_out2~DATAOUT1\,
	sload => VCC,
	ena => \Controller|state.MULT0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tempALUreg2|Data\(1));

-- Location: LCCOMB_X30_Y23_N0
\dataBus[1]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[1]~46_combout\ = (\Controller|state.LDAD~q\ & ((\D|Data\(1)) # ((\tempALUreg2|Data\(1) & \Controller|state.MULT2~q\)))) # (!\Controller|state.LDAD~q\ & (((\tempALUreg2|Data\(1) & \Controller|state.MULT2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.LDAD~q\,
	datab => \D|Data\(1),
	datac => \tempALUreg2|Data\(1),
	datad => \Controller|state.MULT2~q\,
	combout => \dataBus[1]~46_combout\);

-- Location: LCCOMB_X30_Y23_N20
\dataBus[1]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[1]~47_combout\ = (\dataBus[1]~46_combout\) # ((\tempALUreg|Data\(1) & ((\Controller|state.MULT1~q\) # (!\Controller|WideOr32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tempALUreg|Data\(1),
	datab => \Controller|WideOr32~0_combout\,
	datac => \Controller|state.MULT1~q\,
	datad => \dataBus[1]~46_combout\,
	combout => \dataBus[1]~47_combout\);

-- Location: LCCOMB_X24_Y23_N8
\dataBus[1]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[1]~51_combout\ = (\dataBus[1]~50_combout\) # ((\dataBus[1]~47_combout\) # ((\A|Data[1]~_Duplicate_1_q\ & \Controller|Selector17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|Data[1]~_Duplicate_1_q\,
	datab => \dataBus[1]~50_combout\,
	datac => \Controller|Selector17~1_combout\,
	datad => \dataBus[1]~47_combout\,
	combout => \dataBus[1]~51_combout\);

-- Location: LCCOMB_X24_Y23_N24
\dataBus[1]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[1]~52_combout\ = (\dataBus[1]~51_combout\) # ((\EnableDecoder|LessThan0~4_combout\ & (\Controller|WideOr26~1_combout\ & \RAM|RAM|altsyncram_component|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EnableDecoder|LessThan0~4_combout\,
	datab => \Controller|WideOr26~1_combout\,
	datac => \dataBus[1]~51_combout\,
	datad => \RAM|RAM|altsyncram_component|auto_generated|ram_block1a1\,
	combout => \dataBus[1]~52_combout\);

-- Location: LCCOMB_X24_Y23_N16
\dataBus[1]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[1]~53_combout\ = (\dataBus[1]~45_combout\) # ((\dataBus[1]~52_combout\) # ((\IN1_INPUT[1]~input_o\ & \EnableDecoder|IN1_EN~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataBus[1]~45_combout\,
	datab => \IN1_INPUT[1]~input_o\,
	datac => \EnableDecoder|IN1_EN~0_combout\,
	datad => \dataBus[1]~52_combout\,
	combout => \dataBus[1]~53_combout\);

-- Location: LCCOMB_X24_Y23_N6
\IR|Data[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \IR|Data[1]~feeder_combout\ = \dataBus[1]~53_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dataBus[1]~53_combout\,
	combout => \IR|Data[1]~feeder_combout\);

-- Location: FF_X24_Y23_N7
\IR|Data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~q\,
	d => \IR|Data[1]~feeder_combout\,
	clrn => \RESETn~input_o\,
	ena => \Controller|state.FETCH~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IR|Data\(1));

-- Location: LCCOMB_X26_Y24_N26
\Controller|Mux14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux14~0_combout\ = (\IR|Data\(1) & (\IR|Data\(4) & \Controller|Mux19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Data\(1),
	datab => \IR|Data\(4),
	datad => \Controller|Mux19~0_combout\,
	combout => \Controller|Mux14~0_combout\);

-- Location: LCCOMB_X28_Y26_N26
\Controller|nextState.STAA0_890\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.STAA0_890~combout\ = (\Controller|state.DECODE~q\ & ((GLOBAL(\Controller|Mux4~11clkctrl_outclk\) & (\Controller|Mux14~0_combout\)) # (!GLOBAL(\Controller|Mux4~11clkctrl_outclk\) & ((\Controller|nextState.STAA0_890~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|Mux14~0_combout\,
	datab => \Controller|state.DECODE~q\,
	datac => \Controller|nextState.STAA0_890~combout\,
	datad => \Controller|Mux4~11clkctrl_outclk\,
	combout => \Controller|nextState.STAA0_890~combout\);

-- Location: FF_X28_Y26_N27
\Controller|state.STAA0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.STAA0_890~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.STAA0~q\);

-- Location: LCCOMB_X28_Y26_N30
\Controller|nextState.STAA1_883\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.STAA1_883~combout\ = (GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & ((\Controller|state.STAA0~q\))) # (!GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & (\Controller|nextState.STAA1_883~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|nextState.STAA1_883~combout\,
	datac => \Controller|state.STAA0~q\,
	datad => \Controller|Selector49~0clkctrl_outclk\,
	combout => \Controller|nextState.STAA1_883~combout\);

-- Location: FF_X28_Y26_N31
\Controller|state.STAA1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.STAA1_883~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.STAA1~q\);

-- Location: LCCOMB_X28_Y26_N2
\Controller|nextState.STAA2_872\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.STAA2_872~combout\ = (GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & ((\Controller|state.STAA1~q\))) # (!GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & (\Controller|nextState.STAA2_872~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controller|nextState.STAA2_872~combout\,
	datac => \Controller|state.STAA1~q\,
	datad => \Controller|Selector49~0clkctrl_outclk\,
	combout => \Controller|nextState.STAA2_872~combout\);

-- Location: FF_X28_Y26_N3
\Controller|state.STAA2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.STAA2_872~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.STAA2~q\);

-- Location: LCCOMB_X28_Y26_N6
\Controller|Selector48~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Selector48~0_combout\ = (\Controller|state.STAA2~q\) # ((\Controller|state.LDAA2~q\) # ((\Controller|state.CALL5~q\) # (\Controller|state.BRANCH3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.STAA2~q\,
	datab => \Controller|state.LDAA2~q\,
	datac => \Controller|state.CALL5~q\,
	datad => \Controller|state.BRANCH3~q\,
	combout => \Controller|Selector48~0_combout\);

-- Location: LCCOMB_X28_Y25_N30
\Controller|Selector48~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Selector48~2_combout\ = (\Controller|state.LOADFLAGS_SZ~q\) # ((\Controller|state.RET1~q\) # ((\Controller|state.LDAD~q\) # (\Controller|state.MULT2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.LOADFLAGS_SZ~q\,
	datab => \Controller|state.RET1~q\,
	datac => \Controller|state.LDAD~q\,
	datad => \Controller|state.MULT2~q\,
	combout => \Controller|Selector48~2_combout\);

-- Location: LCCOMB_X28_Y24_N14
\Controller|state.INITIALIZE~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|state.INITIALIZE~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \Controller|state.INITIALIZE~feeder_combout\);

-- Location: FF_X28_Y24_N15
\Controller|state.INITIALIZE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|state.INITIALIZE~feeder_combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.INITIALIZE~q\);

-- Location: LCCOMB_X26_Y24_N20
\Controller|Mux20~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Mux20~0_combout\ = (!\IR|Data\(1) & ((\IR|Data\(2) & (!\IR|Data\(0) & \IR|Data\(3))) # (!\IR|Data\(2) & (\IR|Data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IR|Data\(2),
	datab => \IR|Data\(0),
	datac => \IR|Data\(1),
	datad => \IR|Data\(3),
	combout => \Controller|Mux20~0_combout\);

-- Location: LCCOMB_X29_Y24_N14
\Controller|Selector48~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Selector48~1_combout\ = ((\Controller|state.DECODE~q\ & (\IR|Data\(6) & \Controller|Mux20~0_combout\))) # (!\Controller|state.INITIALIZE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.DECODE~q\,
	datab => \IR|Data\(6),
	datac => \Controller|state.INITIALIZE~q\,
	datad => \Controller|Mux20~0_combout\,
	combout => \Controller|Selector48~1_combout\);

-- Location: LCCOMB_X29_Y24_N28
\Controller|Selector48~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Selector48~3_combout\ = (\Controller|Selector48~0_combout\) # (((\Controller|Selector48~2_combout\) # (\Controller|Selector48~1_combout\)) # (!\Controller|WideOr27~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|Selector48~0_combout\,
	datab => \Controller|WideOr27~2_combout\,
	datac => \Controller|Selector48~2_combout\,
	datad => \Controller|Selector48~1_combout\,
	combout => \Controller|Selector48~3_combout\);

-- Location: LCCOMB_X29_Y24_N0
\Controller|nextState.FETCH_1024\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.FETCH_1024~combout\ = (GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & ((\Controller|Selector48~3_combout\))) # (!GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & (\Controller|nextState.FETCH_1024~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controller|nextState.FETCH_1024~combout\,
	datac => \Controller|Selector49~0clkctrl_outclk\,
	datad => \Controller|Selector48~3_combout\,
	combout => \Controller|nextState.FETCH_1024~combout\);

-- Location: FF_X29_Y24_N1
\Controller|state.FETCH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.FETCH_1024~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.FETCH~q\);

-- Location: LCCOMB_X29_Y26_N30
\Controller|nextState.DECODE_1013\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.DECODE_1013~combout\ = (GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & ((\Controller|state.FETCH~q\))) # (!GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & (\Controller|nextState.DECODE_1013~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controller|nextState.DECODE_1013~combout\,
	datac => \Controller|Selector49~0clkctrl_outclk\,
	datad => \Controller|state.FETCH~q\,
	combout => \Controller|nextState.DECODE_1013~combout\);

-- Location: FF_X29_Y26_N31
\Controller|state.DECODE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.DECODE_1013~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.DECODE~q\);

-- Location: LCCOMB_X26_Y25_N6
\Controller|Selector49~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|Selector49~0_combout\ = (\Controller|Mux4~11_combout\) # (!\Controller|state.DECODE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Controller|state.DECODE~q\,
	datad => \Controller|Mux4~11_combout\,
	combout => \Controller|Selector49~0_combout\);

-- Location: CLKCTRL_G14
\Controller|Selector49~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Controller|Selector49~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Controller|Selector49~0clkctrl_outclk\);

-- Location: LCCOMB_X29_Y24_N30
\Controller|nextState.BRANCH1_941\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.BRANCH1_941~combout\ = (GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & ((\Controller|state.BRANCH0~q\))) # (!GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & (\Controller|nextState.BRANCH1_941~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|nextState.BRANCH1_941~combout\,
	datac => \Controller|Selector49~0clkctrl_outclk\,
	datad => \Controller|state.BRANCH0~q\,
	combout => \Controller|nextState.BRANCH1_941~combout\);

-- Location: FF_X29_Y24_N31
\Controller|state.BRANCH1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.BRANCH1_941~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.BRANCH1~q\);

-- Location: LCCOMB_X29_Y26_N2
\Controller|nextState.BRANCH2_930\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|nextState.BRANCH2_930~combout\ = (GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & ((\Controller|state.BRANCH1~q\))) # (!GLOBAL(\Controller|Selector49~0clkctrl_outclk\) & (\Controller|nextState.BRANCH2_930~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controller|nextState.BRANCH2_930~combout\,
	datac => \Controller|state.BRANCH1~q\,
	datad => \Controller|Selector49~0clkctrl_outclk\,
	combout => \Controller|nextState.BRANCH2_930~combout\);

-- Location: FF_X29_Y26_N3
\Controller|state.BRANCH2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \Controller|nextState.BRANCH2_930~combout\,
	clrn => \RESETn~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Controller|state.BRANCH2~q\);

-- Location: LCCOMB_X27_Y25_N0
\Controller|WideOr39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Controller|WideOr39~combout\ = (\Controller|state.BRANCH2~q\) # ((\Controller|state.RET1~q\) # (\Controller|state.CALL4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.BRANCH2~q\,
	datab => \Controller|state.RET1~q\,
	datad => \Controller|state.CALL4~q\,
	combout => \Controller|WideOr39~combout\);

-- Location: LCCOMB_X27_Y22_N2
\ProgramCounter|tempCount~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ProgramCounter|tempCount~17_combout\ = (\Controller|WideOr39~combout\ & ((\dataBus[0]~44_combout\))) # (!\Controller|WideOr39~combout\ & (\ProgramCounter|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Controller|WideOr39~combout\,
	datac => \ProgramCounter|Add0~0_combout\,
	datad => \dataBus[0]~44_combout\,
	combout => \ProgramCounter|tempCount~17_combout\);

-- Location: FF_X27_Y22_N3
\ProgramCounter|tempCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \ProgramCounter|tempCount~17_combout\,
	clrn => \RESETn~input_o\,
	ena => \ProgramCounter|tempCount[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ProgramCounter|tempCount\(0));

-- Location: LCCOMB_X27_Y24_N4
\SelectAddress|ADDR[0]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[0]~60_combout\ = (\AddressRegisterLow|tempAddress\(0) & (!\Controller|state.LDAA_X~q\ & ((\Controller|state.LDAA2~q\) # (\Controller|state.STAA2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.LDAA2~q\,
	datab => \AddressRegisterLow|tempAddress\(0),
	datac => \Controller|state.STAA2~q\,
	datad => \Controller|state.LDAA_X~q\,
	combout => \SelectAddress|ADDR[0]~60_combout\);

-- Location: LCCOMB_X27_Y24_N20
\SelectAddress|ADDR[0]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[0]~61_combout\ = (\indexRegister|tempCount\(0) & \Controller|state.LDAA_X~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \indexRegister|tempCount\(0),
	datad => \Controller|state.LDAA_X~q\,
	combout => \SelectAddress|ADDR[0]~61_combout\);

-- Location: LCCOMB_X27_Y24_N18
\SelectAddress|ADDR[0]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \SelectAddress|ADDR[0]~62_combout\ = (\SelectAddress|ADDR[0]~60_combout\) # ((\SelectAddress|ADDR[0]~61_combout\) # ((\ProgramCounter|tempCount\(0) & \SelectAddress|ADDR[1]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ProgramCounter|tempCount\(0),
	datab => \SelectAddress|ADDR[0]~60_combout\,
	datac => \SelectAddress|ADDR[1]~19_combout\,
	datad => \SelectAddress|ADDR[0]~61_combout\,
	combout => \SelectAddress|ADDR[0]~62_combout\);

-- Location: LCCOMB_X26_Y23_N14
\dataBus[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[5]~9_combout\ = (\IN0_INPUT[5]~input_o\ & (!\SelectAddress|ADDR[0]~62_combout\ & (\Controller|WideOr26~1_combout\ & !\EnableDecoder|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN0_INPUT[5]~input_o\,
	datab => \SelectAddress|ADDR[0]~62_combout\,
	datac => \Controller|WideOr26~1_combout\,
	datad => \EnableDecoder|LessThan0~4_combout\,
	combout => \dataBus[5]~9_combout\);

-- Location: LCCOMB_X26_Y25_N24
\StackPointerH|tempAddress[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \StackPointerH|tempAddress[5]~feeder_combout\ = \ProgramCounter|tempCount\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ProgramCounter|tempCount\(13),
	combout => \StackPointerH|tempAddress[5]~feeder_combout\);

-- Location: FF_X26_Y25_N25
\StackPointerH|tempAddress[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \StackPointerH|tempAddress[5]~feeder_combout\,
	ena => \Controller|state.CALL3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackPointerH|tempAddress\(5));

-- Location: FF_X26_Y25_N31
\StackPointerL|tempAddress[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \ProgramCounter|tempCount\(5),
	sload => VCC,
	ena => \Controller|state.CALL2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \StackPointerL|tempAddress\(5));

-- Location: LCCOMB_X26_Y25_N30
\dataBus[5]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[5]~12_combout\ = (\Controller|state.RET1~q\ & ((\StackPointerL|tempAddress\(5)) # ((\StackPointerH|tempAddress\(5) & \Controller|state.RET0~q\)))) # (!\Controller|state.RET1~q\ & (\StackPointerH|tempAddress\(5) & ((\Controller|state.RET0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.RET1~q\,
	datab => \StackPointerH|tempAddress\(5),
	datac => \StackPointerL|tempAddress\(5),
	datad => \Controller|state.RET0~q\,
	combout => \dataBus[5]~12_combout\);

-- Location: LCCOMB_X27_Y24_N12
\dataBus[5]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[5]~13_combout\ = (\dataBus[5]~12_combout\) # ((\AddressRegisterLow|tempAddress\(5) & ((\Controller|state.CALL4~q\) # (\Controller|state.BRANCH2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressRegisterLow|tempAddress\(5),
	datab => \Controller|state.CALL4~q\,
	datac => \Controller|state.BRANCH2~q\,
	datad => \dataBus[5]~12_combout\,
	combout => \dataBus[5]~13_combout\);

-- Location: LCCOMB_X27_Y24_N30
\dataBus[5]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[5]~14_combout\ = (\dataBus[5]~13_combout\) # ((\AddressRegisterHigh|tempAddress\(5) & ((\Controller|state.BRANCH3~q\) # (\Controller|state.CALL5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressRegisterHigh|tempAddress\(5),
	datab => \Controller|state.BRANCH3~q\,
	datac => \Controller|state.CALL5~q\,
	datad => \dataBus[5]~13_combout\,
	combout => \dataBus[5]~14_combout\);

-- Location: LCCOMB_X31_Y23_N26
\ALU|Mux4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Mux4~2_combout\ = (\A|Data[5]~_Duplicate_1_q\ & \D|Data\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A|Data[5]~_Duplicate_1_q\,
	datac => \D|Data\(5),
	combout => \ALU|Mux4~2_combout\);

-- Location: LCCOMB_X32_Y23_N22
\ALU|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Mux4~0_combout\ = (\tempALUreg|Data[3]~0_combout\ & ((\A|Data[6]~_Duplicate_1_q\) # ((\tempALUreg|Data[3]~1_combout\)))) # (!\tempALUreg|Data[3]~0_combout\ & (((\ALU|Add2~10_combout\ & !\tempALUreg|Data[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|Data[6]~_Duplicate_1_q\,
	datab => \tempALUreg|Data[3]~0_combout\,
	datac => \ALU|Add2~10_combout\,
	datad => \tempALUreg|Data[3]~1_combout\,
	combout => \ALU|Mux4~0_combout\);

-- Location: LCCOMB_X31_Y23_N24
\ALU|Mux4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Mux4~1_combout\ = (\ALU|Mux4~0_combout\ & (((\ALU|Mult0|auto_generated|mac_out2~DATAOUT13\) # (!\tempALUreg|Data[3]~1_combout\)))) # (!\ALU|Mux4~0_combout\ & (\ALU|Add0~12_combout\ & (\tempALUreg|Data[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Add0~12_combout\,
	datab => \ALU|Mux4~0_combout\,
	datac => \tempALUreg|Data[3]~1_combout\,
	datad => \ALU|Mult0|auto_generated|mac_out2~DATAOUT13\,
	combout => \ALU|Mux4~1_combout\);

-- Location: LCCOMB_X31_Y23_N2
\ALU|Mux4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \ALU|Mux4~3_combout\ = (\ALU|Mux4~2_combout\ & ((\tempALUreg|Data[3]~2_combout\) # ((\ALU|Mux4~1_combout\ & \ALU|Mux5~3_combout\)))) # (!\ALU|Mux4~2_combout\ & (\ALU|Mux4~1_combout\ & (\ALU|Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALU|Mux4~2_combout\,
	datab => \ALU|Mux4~1_combout\,
	datac => \ALU|Mux5~3_combout\,
	datad => \tempALUreg|Data[3]~2_combout\,
	combout => \ALU|Mux4~3_combout\);

-- Location: FF_X31_Y23_N3
\tempALUreg|Data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \ALU|Mux4~3_combout\,
	ena => \Controller|WideOr37~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tempALUreg|Data\(5));

-- Location: FF_X29_Y26_N19
\tempALUreg2|Data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \ALU|Mult0|auto_generated|mac_out2~DATAOUT5\,
	sload => VCC,
	ena => \Controller|state.MULT0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tempALUreg2|Data\(5));

-- Location: LCCOMB_X29_Y26_N18
\dataBus[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[5]~10_combout\ = (\Controller|state.LDAD~q\ & ((\D|Data\(5)) # ((\Controller|state.MULT2~q\ & \tempALUreg2|Data\(5))))) # (!\Controller|state.LDAD~q\ & (\Controller|state.MULT2~q\ & (\tempALUreg2|Data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.LDAD~q\,
	datab => \Controller|state.MULT2~q\,
	datac => \tempALUreg2|Data\(5),
	datad => \D|Data\(5),
	combout => \dataBus[5]~10_combout\);

-- Location: LCCOMB_X28_Y25_N28
\dataBus[5]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[5]~11_combout\ = (\dataBus[5]~10_combout\) # ((\tempALUreg|Data\(5) & ((\Controller|state.MULT1~q\) # (!\Controller|WideOr32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|WideOr32~0_combout\,
	datab => \Controller|state.MULT1~q\,
	datac => \tempALUreg|Data\(5),
	datad => \dataBus[5]~10_combout\,
	combout => \dataBus[5]~11_combout\);

-- Location: LCCOMB_X26_Y23_N16
\dataBus[5]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[5]~15_combout\ = (\dataBus[5]~14_combout\) # ((\dataBus[5]~11_combout\) # ((\A|Data[5]~_Duplicate_1_q\ & \Controller|Selector17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A|Data[5]~_Duplicate_1_q\,
	datab => \dataBus[5]~14_combout\,
	datac => \dataBus[5]~11_combout\,
	datad => \Controller|Selector17~1_combout\,
	combout => \dataBus[5]~15_combout\);

-- Location: LCCOMB_X26_Y23_N20
\dataBus[5]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[5]~16_combout\ = (\dataBus[5]~15_combout\) # ((\Controller|WideOr26~1_combout\ & (\EnableDecoder|LessThan0~4_combout\ & \RAM|RAM|altsyncram_component|auto_generated|ram_block1a5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|WideOr26~1_combout\,
	datab => \EnableDecoder|LessThan0~4_combout\,
	datac => \RAM|RAM|altsyncram_component|auto_generated|ram_block1a5\,
	datad => \dataBus[5]~15_combout\,
	combout => \dataBus[5]~16_combout\);

-- Location: LCCOMB_X26_Y23_N10
\dataBus[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \dataBus[5]~17_combout\ = (\dataBus[5]~9_combout\) # ((\dataBus[5]~16_combout\) # ((\IN1_INPUT[5]~input_o\ & \EnableDecoder|IN1_EN~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN1_INPUT[5]~input_o\,
	datab => \dataBus[5]~9_combout\,
	datac => \EnableDecoder|IN1_EN~0_combout\,
	datad => \dataBus[5]~16_combout\,
	combout => \dataBus[5]~17_combout\);

-- Location: LCCOMB_X28_Y27_N22
\OUT1|Data[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \OUT1|Data[5]~feeder_combout\ = \dataBus[5]~17_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dataBus[5]~17_combout\,
	combout => \OUT1|Data[5]~feeder_combout\);

-- Location: LCCOMB_X28_Y27_N4
\EnableDecoder|OUT1_EN~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \EnableDecoder|OUT1_EN~0_combout\ = (\Controller|state.STAA2~q\ & (\AddressRegisterLow|tempAddress\(0) & !\EnableDecoder|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Controller|state.STAA2~q\,
	datab => \AddressRegisterLow|tempAddress\(0),
	datad => \EnableDecoder|LessThan0~4_combout\,
	combout => \EnableDecoder|OUT1_EN~0_combout\);

-- Location: FF_X28_Y27_N23
\OUT1|Data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	d => \OUT1|Data[5]~feeder_combout\,
	clrn => \RESETn~input_o\,
	ena => \EnableDecoder|OUT1_EN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT1|Data\(5));

-- Location: FF_X28_Y27_N9
\OUT1|Data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[6]~26_combout\,
	clrn => \RESETn~input_o\,
	sload => VCC,
	ena => \EnableDecoder|OUT1_EN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT1|Data\(6));

-- Location: FF_X28_Y27_N15
\OUT1|Data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[7]~35_combout\,
	clrn => \RESETn~input_o\,
	sload => VCC,
	ena => \EnableDecoder|OUT1_EN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT1|Data\(7));

-- Location: FF_X28_Y27_N5
\OUT1|Data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[4]~8_combout\,
	clrn => \RESETn~input_o\,
	sload => VCC,
	ena => \EnableDecoder|OUT1_EN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT1|Data\(4));

-- Location: LCCOMB_X28_Y27_N14
\DecoderHigh3|y[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DecoderHigh3|y[6]~0_combout\ = (\OUT1|Data\(4) & ((\OUT1|Data\(7)) # (\OUT1|Data\(5) $ (\OUT1|Data\(6))))) # (!\OUT1|Data\(4) & ((\OUT1|Data\(5)) # (\OUT1|Data\(6) $ (\OUT1|Data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT1|Data\(5),
	datab => \OUT1|Data\(6),
	datac => \OUT1|Data\(7),
	datad => \OUT1|Data\(4),
	combout => \DecoderHigh3|y[6]~0_combout\);

-- Location: LCCOMB_X28_Y27_N16
\DecoderHigh3|y[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DecoderHigh3|y[5]~1_combout\ = (\OUT1|Data\(5) & ((\OUT1|Data\(7)) # ((\OUT1|Data\(6) & !\OUT1|Data\(4))))) # (!\OUT1|Data\(5) & ((\OUT1|Data\(6) $ (\OUT1|Data\(7))) # (!\OUT1|Data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT1|Data\(5),
	datab => \OUT1|Data\(6),
	datac => \OUT1|Data\(7),
	datad => \OUT1|Data\(4),
	combout => \DecoderHigh3|y[5]~1_combout\);

-- Location: LCCOMB_X28_Y27_N10
\DecoderHigh3|y[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DecoderHigh3|y[4]~2_combout\ = (\OUT1|Data\(5) & (((\OUT1|Data\(7)) # (!\OUT1|Data\(4))))) # (!\OUT1|Data\(5) & ((\OUT1|Data\(6) & (\OUT1|Data\(7))) # (!\OUT1|Data\(6) & ((!\OUT1|Data\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT1|Data\(5),
	datab => \OUT1|Data\(6),
	datac => \OUT1|Data\(7),
	datad => \OUT1|Data\(4),
	combout => \DecoderHigh3|y[4]~2_combout\);

-- Location: LCCOMB_X28_Y27_N28
\DecoderHigh3|y[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DecoderHigh3|y[3]~3_combout\ = (\OUT1|Data\(4) & (\OUT1|Data\(5) $ ((\OUT1|Data\(6))))) # (!\OUT1|Data\(4) & ((\OUT1|Data\(5) & ((\OUT1|Data\(6)) # (!\OUT1|Data\(7)))) # (!\OUT1|Data\(5) & ((\OUT1|Data\(7)) # (!\OUT1|Data\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT1|Data\(5),
	datab => \OUT1|Data\(6),
	datac => \OUT1|Data\(7),
	datad => \OUT1|Data\(4),
	combout => \DecoderHigh3|y[3]~3_combout\);

-- Location: LCCOMB_X28_Y27_N2
\DecoderHigh3|y[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DecoderHigh3|y[2]~4_combout\ = (\OUT1|Data\(6) & (((!\OUT1|Data\(5) & \OUT1|Data\(4))) # (!\OUT1|Data\(7)))) # (!\OUT1|Data\(6) & (((\OUT1|Data\(7)) # (\OUT1|Data\(4))) # (!\OUT1|Data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT1|Data\(5),
	datab => \OUT1|Data\(6),
	datac => \OUT1|Data\(7),
	datad => \OUT1|Data\(4),
	combout => \DecoderHigh3|y[2]~4_combout\);

-- Location: LCCOMB_X28_Y27_N8
\DecoderHigh3|y[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DecoderHigh3|y[1]~5_combout\ = (\OUT1|Data\(5) & ((\OUT1|Data\(4) & (!\OUT1|Data\(7))) # (!\OUT1|Data\(4) & ((!\OUT1|Data\(6)))))) # (!\OUT1|Data\(5) & ((\OUT1|Data\(7) $ (!\OUT1|Data\(4))) # (!\OUT1|Data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT1|Data\(5),
	datab => \OUT1|Data\(7),
	datac => \OUT1|Data\(6),
	datad => \OUT1|Data\(4),
	combout => \DecoderHigh3|y[1]~5_combout\);

-- Location: LCCOMB_X28_Y27_N12
\DecoderHigh3|y[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DecoderHigh3|y[0]~6_combout\ = (\OUT1|Data\(6) & ((\OUT1|Data\(5)) # (\OUT1|Data\(7) $ (\OUT1|Data\(4))))) # (!\OUT1|Data\(6) & ((\OUT1|Data\(5) $ (\OUT1|Data\(7))) # (!\OUT1|Data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT1|Data\(5),
	datab => \OUT1|Data\(6),
	datac => \OUT1|Data\(7),
	datad => \OUT1|Data\(4),
	combout => \DecoderHigh3|y[0]~6_combout\);

-- Location: FF_X28_Y27_N31
\OUT1|Data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[0]~44_combout\,
	clrn => \RESETn~input_o\,
	sload => VCC,
	ena => \EnableDecoder|OUT1_EN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT1|Data\(0));

-- Location: FF_X28_Y27_N21
\OUT1|Data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[1]~53_combout\,
	clrn => \RESETn~input_o\,
	sload => VCC,
	ena => \EnableDecoder|OUT1_EN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT1|Data\(1));

-- Location: FF_X28_Y27_N27
\OUT1|Data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[2]~62_combout\,
	clrn => \RESETn~input_o\,
	sload => VCC,
	ena => \EnableDecoder|OUT1_EN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT1|Data\(2));

-- Location: FF_X28_Y27_N25
\OUT1|Data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[3]~71_combout\,
	clrn => \RESETn~input_o\,
	sload => VCC,
	ena => \EnableDecoder|OUT1_EN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT1|Data\(3));

-- Location: LCCOMB_X28_Y27_N26
\DecoderLow2|y[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DecoderLow2|y[6]~0_combout\ = (\OUT1|Data\(0) & ((\OUT1|Data\(3)) # (\OUT1|Data\(1) $ (\OUT1|Data\(2))))) # (!\OUT1|Data\(0) & ((\OUT1|Data\(1)) # (\OUT1|Data\(2) $ (\OUT1|Data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT1|Data\(0),
	datab => \OUT1|Data\(1),
	datac => \OUT1|Data\(2),
	datad => \OUT1|Data\(3),
	combout => \DecoderLow2|y[6]~0_combout\);

-- Location: LCCOMB_X28_Y27_N6
\DecoderLow2|y[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DecoderLow2|y[5]~1_combout\ = (\OUT1|Data\(0) & (\OUT1|Data\(3) $ (((!\OUT1|Data\(1) & \OUT1|Data\(2)))))) # (!\OUT1|Data\(0) & (((\OUT1|Data\(2)) # (\OUT1|Data\(3))) # (!\OUT1|Data\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT1|Data\(0),
	datab => \OUT1|Data\(1),
	datac => \OUT1|Data\(2),
	datad => \OUT1|Data\(3),
	combout => \DecoderLow2|y[5]~1_combout\);

-- Location: LCCOMB_X28_Y27_N0
\DecoderLow2|y[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DecoderLow2|y[4]~2_combout\ = (\OUT1|Data\(1) & (((\OUT1|Data\(3))) # (!\OUT1|Data\(0)))) # (!\OUT1|Data\(1) & ((\OUT1|Data\(2) & ((\OUT1|Data\(3)))) # (!\OUT1|Data\(2) & (!\OUT1|Data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT1|Data\(0),
	datab => \OUT1|Data\(1),
	datac => \OUT1|Data\(2),
	datad => \OUT1|Data\(3),
	combout => \DecoderLow2|y[4]~2_combout\);

-- Location: LCCOMB_X28_Y27_N30
\DecoderLow2|y[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DecoderLow2|y[3]~3_combout\ = (\OUT1|Data\(0) & (\OUT1|Data\(2) $ ((\OUT1|Data\(1))))) # (!\OUT1|Data\(0) & ((\OUT1|Data\(2) & ((\OUT1|Data\(1)) # (\OUT1|Data\(3)))) # (!\OUT1|Data\(2) & ((!\OUT1|Data\(3)) # (!\OUT1|Data\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101101101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT1|Data\(2),
	datab => \OUT1|Data\(1),
	datac => \OUT1|Data\(0),
	datad => \OUT1|Data\(3),
	combout => \DecoderLow2|y[3]~3_combout\);

-- Location: LCCOMB_X28_Y27_N20
\DecoderLow2|y[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DecoderLow2|y[2]~4_combout\ = (\OUT1|Data\(2) & (((\OUT1|Data\(0) & !\OUT1|Data\(1))) # (!\OUT1|Data\(3)))) # (!\OUT1|Data\(2) & ((\OUT1|Data\(0)) # ((\OUT1|Data\(3)) # (!\OUT1|Data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT1|Data\(2),
	datab => \OUT1|Data\(0),
	datac => \OUT1|Data\(1),
	datad => \OUT1|Data\(3),
	combout => \DecoderLow2|y[2]~4_combout\);

-- Location: LCCOMB_X28_Y27_N18
\DecoderLow2|y[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DecoderLow2|y[1]~5_combout\ = (\OUT1|Data\(1) & ((\OUT1|Data\(0) & ((!\OUT1|Data\(3)))) # (!\OUT1|Data\(0) & (!\OUT1|Data\(2))))) # (!\OUT1|Data\(1) & ((\OUT1|Data\(0) $ (!\OUT1|Data\(3))) # (!\OUT1|Data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT1|Data\(0),
	datab => \OUT1|Data\(1),
	datac => \OUT1|Data\(2),
	datad => \OUT1|Data\(3),
	combout => \DecoderLow2|y[1]~5_combout\);

-- Location: LCCOMB_X28_Y27_N24
\DecoderLow2|y[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DecoderLow2|y[0]~6_combout\ = (\OUT1|Data\(2) & ((\OUT1|Data\(1)) # (\OUT1|Data\(3) $ (\OUT1|Data\(0))))) # (!\OUT1|Data\(2) & ((\OUT1|Data\(1) $ (\OUT1|Data\(3))) # (!\OUT1|Data\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT1|Data\(2),
	datab => \OUT1|Data\(1),
	datac => \OUT1|Data\(3),
	datad => \OUT1|Data\(0),
	combout => \DecoderLow2|y[0]~6_combout\);

-- Location: LCCOMB_X28_Y22_N28
\EnableDecoder|OUT0_EN~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \EnableDecoder|OUT0_EN~0_combout\ = (!\AddressRegisterLow|tempAddress\(0) & (!\EnableDecoder|LessThan0~4_combout\ & \Controller|state.STAA2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AddressRegisterLow|tempAddress\(0),
	datab => \EnableDecoder|LessThan0~4_combout\,
	datad => \Controller|state.STAA2~q\,
	combout => \EnableDecoder|OUT0_EN~0_combout\);

-- Location: FF_X26_Y22_N15
\OUT0|Data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[5]~17_combout\,
	clrn => \RESETn~input_o\,
	sload => VCC,
	ena => \EnableDecoder|OUT0_EN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT0|Data\(5));

-- Location: FF_X28_Y22_N29
\OUT0|Data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[4]~8_combout\,
	clrn => \RESETn~input_o\,
	sload => VCC,
	ena => \EnableDecoder|OUT0_EN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT0|Data\(4));

-- Location: FF_X28_Y22_N31
\OUT0|Data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[7]~35_combout\,
	clrn => \RESETn~input_o\,
	sload => VCC,
	ena => \EnableDecoder|OUT0_EN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT0|Data\(7));

-- Location: FF_X26_Y22_N1
\OUT0|Data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[6]~26_combout\,
	clrn => \RESETn~input_o\,
	sload => VCC,
	ena => \EnableDecoder|OUT0_EN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT0|Data\(6));

-- Location: LCCOMB_X28_Y22_N12
\DecoderHigh1|y[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DecoderHigh1|y[6]~0_combout\ = (\OUT0|Data\(4) & ((\OUT0|Data\(7)) # (\OUT0|Data\(5) $ (\OUT0|Data\(6))))) # (!\OUT0|Data\(4) & ((\OUT0|Data\(5)) # (\OUT0|Data\(7) $ (\OUT0|Data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT0|Data\(5),
	datab => \OUT0|Data\(4),
	datac => \OUT0|Data\(7),
	datad => \OUT0|Data\(6),
	combout => \DecoderHigh1|y[6]~0_combout\);

-- Location: LCCOMB_X28_Y22_N10
\DecoderHigh1|y[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DecoderHigh1|y[5]~1_combout\ = (\OUT0|Data\(5) & ((\OUT0|Data\(7)) # ((!\OUT0|Data\(4) & \OUT0|Data\(6))))) # (!\OUT0|Data\(5) & ((\OUT0|Data\(7) $ (\OUT0|Data\(6))) # (!\OUT0|Data\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT0|Data\(5),
	datab => \OUT0|Data\(4),
	datac => \OUT0|Data\(7),
	datad => \OUT0|Data\(6),
	combout => \DecoderHigh1|y[5]~1_combout\);

-- Location: LCCOMB_X28_Y22_N24
\DecoderHigh1|y[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DecoderHigh1|y[4]~2_combout\ = (\OUT0|Data\(5) & (((\OUT0|Data\(7))) # (!\OUT0|Data\(4)))) # (!\OUT0|Data\(5) & ((\OUT0|Data\(6) & ((\OUT0|Data\(7)))) # (!\OUT0|Data\(6) & (!\OUT0|Data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT0|Data\(5),
	datab => \OUT0|Data\(4),
	datac => \OUT0|Data\(7),
	datad => \OUT0|Data\(6),
	combout => \DecoderHigh1|y[4]~2_combout\);

-- Location: LCCOMB_X28_Y22_N6
\DecoderHigh1|y[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DecoderHigh1|y[3]~3_combout\ = (\OUT0|Data\(4) & (\OUT0|Data\(5) $ (((\OUT0|Data\(6)))))) # (!\OUT0|Data\(4) & ((\OUT0|Data\(5) & ((\OUT0|Data\(6)) # (!\OUT0|Data\(7)))) # (!\OUT0|Data\(5) & ((\OUT0|Data\(7)) # (!\OUT0|Data\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011010011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT0|Data\(5),
	datab => \OUT0|Data\(4),
	datac => \OUT0|Data\(7),
	datad => \OUT0|Data\(6),
	combout => \DecoderHigh1|y[3]~3_combout\);

-- Location: LCCOMB_X28_Y22_N4
\DecoderHigh1|y[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DecoderHigh1|y[2]~4_combout\ = (\OUT0|Data\(7) & (((!\OUT0|Data\(5) & \OUT0|Data\(4))) # (!\OUT0|Data\(6)))) # (!\OUT0|Data\(7) & (((\OUT0|Data\(4)) # (\OUT0|Data\(6))) # (!\OUT0|Data\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT0|Data\(5),
	datab => \OUT0|Data\(4),
	datac => \OUT0|Data\(7),
	datad => \OUT0|Data\(6),
	combout => \DecoderHigh1|y[2]~4_combout\);

-- Location: LCCOMB_X28_Y22_N14
\DecoderHigh1|y[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DecoderHigh1|y[1]~5_combout\ = (\OUT0|Data\(5) & ((\OUT0|Data\(4) & (!\OUT0|Data\(7))) # (!\OUT0|Data\(4) & ((!\OUT0|Data\(6)))))) # (!\OUT0|Data\(5) & ((\OUT0|Data\(4) $ (!\OUT0|Data\(7))) # (!\OUT0|Data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT0|Data\(5),
	datab => \OUT0|Data\(4),
	datac => \OUT0|Data\(7),
	datad => \OUT0|Data\(6),
	combout => \DecoderHigh1|y[1]~5_combout\);

-- Location: LCCOMB_X28_Y22_N30
\DecoderHigh1|y[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DecoderHigh1|y[0]~6_combout\ = (\OUT0|Data\(7) & ((\OUT0|Data\(5) $ (!\OUT0|Data\(6))) # (!\OUT0|Data\(4)))) # (!\OUT0|Data\(7) & ((\OUT0|Data\(5)) # (\OUT0|Data\(4) $ (!\OUT0|Data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT0|Data\(5),
	datab => \OUT0|Data\(4),
	datac => \OUT0|Data\(7),
	datad => \OUT0|Data\(6),
	combout => \DecoderHigh1|y[0]~6_combout\);

-- Location: FF_X28_Y22_N27
\OUT0|Data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[3]~71_combout\,
	clrn => \RESETn~input_o\,
	sload => VCC,
	ena => \EnableDecoder|OUT0_EN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT0|Data\(3));

-- Location: FF_X28_Y22_N1
\OUT0|Data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[0]~44_combout\,
	clrn => \RESETn~input_o\,
	sload => VCC,
	ena => \EnableDecoder|OUT0_EN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT0|Data\(0));

-- Location: FF_X28_Y22_N3
\OUT0|Data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[1]~53_combout\,
	clrn => \RESETn~input_o\,
	sload => VCC,
	ena => \EnableDecoder|OUT0_EN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT0|Data\(1));

-- Location: FF_X28_Y22_N21
\OUT0|Data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \slowCLK|onoff~clkctrl_outclk\,
	asdata => \dataBus[2]~62_combout\,
	clrn => \RESETn~input_o\,
	sload => VCC,
	ena => \EnableDecoder|OUT0_EN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \OUT0|Data\(2));

-- Location: LCCOMB_X28_Y22_N16
\DecoderLow0|y[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DecoderLow0|y[6]~0_combout\ = (\OUT0|Data\(0) & ((\OUT0|Data\(3)) # (\OUT0|Data\(1) $ (\OUT0|Data\(2))))) # (!\OUT0|Data\(0) & ((\OUT0|Data\(1)) # (\OUT0|Data\(3) $ (\OUT0|Data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT0|Data\(3),
	datab => \OUT0|Data\(0),
	datac => \OUT0|Data\(1),
	datad => \OUT0|Data\(2),
	combout => \DecoderLow0|y[6]~0_combout\);

-- Location: LCCOMB_X28_Y22_N18
\DecoderLow0|y[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DecoderLow0|y[5]~1_combout\ = (\OUT0|Data\(0) & (\OUT0|Data\(3) $ (((!\OUT0|Data\(1) & \OUT0|Data\(2)))))) # (!\OUT0|Data\(0) & ((\OUT0|Data\(3)) # ((\OUT0|Data\(2)) # (!\OUT0|Data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT0|Data\(3),
	datab => \OUT0|Data\(0),
	datac => \OUT0|Data\(1),
	datad => \OUT0|Data\(2),
	combout => \DecoderLow0|y[5]~1_combout\);

-- Location: LCCOMB_X27_Y22_N24
\DecoderLow0|y[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DecoderLow0|y[4]~2_combout\ = (\OUT0|Data\(1) & (((\OUT0|Data\(3))) # (!\OUT0|Data\(0)))) # (!\OUT0|Data\(1) & ((\OUT0|Data\(2) & ((\OUT0|Data\(3)))) # (!\OUT0|Data\(2) & (!\OUT0|Data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT0|Data\(1),
	datab => \OUT0|Data\(0),
	datac => \OUT0|Data\(2),
	datad => \OUT0|Data\(3),
	combout => \DecoderLow0|y[4]~2_combout\);

-- Location: LCCOMB_X28_Y22_N0
\DecoderLow0|y[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DecoderLow0|y[3]~3_combout\ = (\OUT0|Data\(0) & ((\OUT0|Data\(2) $ (\OUT0|Data\(1))))) # (!\OUT0|Data\(0) & ((\OUT0|Data\(3) & ((\OUT0|Data\(2)) # (!\OUT0|Data\(1)))) # (!\OUT0|Data\(3) & ((\OUT0|Data\(1)) # (!\OUT0|Data\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT0|Data\(3),
	datab => \OUT0|Data\(2),
	datac => \OUT0|Data\(0),
	datad => \OUT0|Data\(1),
	combout => \DecoderLow0|y[3]~3_combout\);

-- Location: LCCOMB_X28_Y22_N2
\DecoderLow0|y[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DecoderLow0|y[2]~4_combout\ = (\OUT0|Data\(3) & (((!\OUT0|Data\(1) & \OUT0|Data\(0))) # (!\OUT0|Data\(2)))) # (!\OUT0|Data\(3) & ((\OUT0|Data\(2)) # ((\OUT0|Data\(0)) # (!\OUT0|Data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT0|Data\(3),
	datab => \OUT0|Data\(2),
	datac => \OUT0|Data\(1),
	datad => \OUT0|Data\(0),
	combout => \DecoderLow0|y[2]~4_combout\);

-- Location: LCCOMB_X28_Y22_N20
\DecoderLow0|y[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DecoderLow0|y[1]~5_combout\ = (\OUT0|Data\(3) & ((\OUT0|Data\(0) & ((!\OUT0|Data\(1)))) # (!\OUT0|Data\(0) & (!\OUT0|Data\(2))))) # (!\OUT0|Data\(3) & ((\OUT0|Data\(0) $ (!\OUT0|Data\(1))) # (!\OUT0|Data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT0|Data\(3),
	datab => \OUT0|Data\(0),
	datac => \OUT0|Data\(2),
	datad => \OUT0|Data\(1),
	combout => \DecoderLow0|y[1]~5_combout\);

-- Location: LCCOMB_X28_Y22_N26
\DecoderLow0|y[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \DecoderLow0|y[0]~6_combout\ = (\OUT0|Data\(3) & ((\OUT0|Data\(1) $ (!\OUT0|Data\(2))) # (!\OUT0|Data\(0)))) # (!\OUT0|Data\(3) & ((\OUT0|Data\(1)) # (\OUT0|Data\(0) $ (!\OUT0|Data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OUT0|Data\(1),
	datab => \OUT0|Data\(0),
	datac => \OUT0|Data\(3),
	datad => \OUT0|Data\(2),
	combout => \DecoderLow0|y[0]~6_combout\);

ww_led_hi3(0) <= \led_hi3[0]~output_o\;

ww_led_hi3(1) <= \led_hi3[1]~output_o\;

ww_led_hi3(2) <= \led_hi3[2]~output_o\;

ww_led_hi3(3) <= \led_hi3[3]~output_o\;

ww_led_hi3(4) <= \led_hi3[4]~output_o\;

ww_led_hi3(5) <= \led_hi3[5]~output_o\;

ww_led_hi3(6) <= \led_hi3[6]~output_o\;

ww_led_lo2(0) <= \led_lo2[0]~output_o\;

ww_led_lo2(1) <= \led_lo2[1]~output_o\;

ww_led_lo2(2) <= \led_lo2[2]~output_o\;

ww_led_lo2(3) <= \led_lo2[3]~output_o\;

ww_led_lo2(4) <= \led_lo2[4]~output_o\;

ww_led_lo2(5) <= \led_lo2[5]~output_o\;

ww_led_lo2(6) <= \led_lo2[6]~output_o\;

ww_led_hi1(0) <= \led_hi1[0]~output_o\;

ww_led_hi1(1) <= \led_hi1[1]~output_o\;

ww_led_hi1(2) <= \led_hi1[2]~output_o\;

ww_led_hi1(3) <= \led_hi1[3]~output_o\;

ww_led_hi1(4) <= \led_hi1[4]~output_o\;

ww_led_hi1(5) <= \led_hi1[5]~output_o\;

ww_led_hi1(6) <= \led_hi1[6]~output_o\;

ww_led_lo0(0) <= \led_lo0[0]~output_o\;

ww_led_lo0(1) <= \led_lo0[1]~output_o\;

ww_led_lo0(2) <= \led_lo0[2]~output_o\;

ww_led_lo0(3) <= \led_lo0[3]~output_o\;

ww_led_lo0(4) <= \led_lo0[4]~output_o\;

ww_led_lo0(5) <= \led_lo0[5]~output_o\;

ww_led_lo0(6) <= \led_lo0[6]~output_o\;
END structure;


