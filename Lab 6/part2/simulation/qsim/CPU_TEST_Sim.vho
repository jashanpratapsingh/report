-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "04/06/2026 18:38:56"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CPU_TEST_Sim IS
    PORT (
	cpuClk : IN std_logic;
	memClk : IN std_logic;
	rst : IN std_logic;
	outA : BUFFER std_logic_vector(31 DOWNTO 0);
	outB : BUFFER std_logic_vector(31 DOWNTO 0);
	outC : BUFFER std_logic;
	outZ : BUFFER std_logic;
	outIR : BUFFER std_logic_vector(31 DOWNTO 0);
	outPC : BUFFER std_logic_vector(31 DOWNTO 0);
	addrOut : BUFFER std_logic_vector(5 DOWNTO 0);
	wEn : BUFFER std_logic;
	memDataOut : BUFFER std_logic_vector(31 DOWNTO 0);
	memDataIn : BUFFER std_logic_vector(31 DOWNTO 0);
	T_Info : BUFFER std_logic_vector(2 DOWNTO 0);
	wen_mem : BUFFER std_logic;
	en_mem : BUFFER std_logic
	);
END CPU_TEST_Sim;

-- Design Ports Information
-- outA[0]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[1]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[2]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[3]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[6]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[8]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[9]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[10]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[11]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[12]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[13]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[14]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[15]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[16]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[17]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[18]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[19]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[20]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[21]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[22]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[23]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[24]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[25]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[26]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[27]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[28]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[29]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[30]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outA[31]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[0]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[1]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[2]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[4]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[5]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[6]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[7]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[8]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[9]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[10]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[11]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[12]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[13]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[14]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[15]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[16]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[17]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[18]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[19]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[20]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[21]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[22]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[23]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[24]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[25]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[26]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[27]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[28]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[29]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[30]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outB[31]	=>  Location: PIN_P25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outC	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outZ	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[0]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[1]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[2]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[3]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[4]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[5]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[6]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[7]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[8]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[9]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[10]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[11]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[12]	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[13]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[14]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[15]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[16]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[17]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[18]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[19]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[20]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[21]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[22]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[23]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[24]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[25]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[26]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[27]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[28]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[29]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[30]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outIR[31]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[0]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[1]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[2]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[3]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[4]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[5]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[6]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[7]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[8]	=>  Location: PIN_U27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[9]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[10]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[11]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[12]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[13]	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[14]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[15]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[16]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[17]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[18]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[19]	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[20]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[21]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[22]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[23]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[24]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[25]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[26]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[27]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[28]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[29]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[30]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- outPC[31]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrOut[0]	=>  Location: PIN_AF24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrOut[1]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrOut[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrOut[3]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrOut[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- addrOut[5]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wEn	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[1]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[3]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[4]	=>  Location: PIN_R23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[5]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[6]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[7]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[8]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[9]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[10]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[11]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[12]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[13]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[14]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[15]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[16]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[17]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[18]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[19]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[20]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[21]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[22]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[23]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[24]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[25]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[26]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[27]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[28]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[29]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[30]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataOut[31]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[0]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[1]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[2]	=>  Location: PIN_T26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[3]	=>  Location: PIN_AH11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[4]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[6]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[7]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[8]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[9]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[10]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[11]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[12]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[13]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[14]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[15]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[16]	=>  Location: PIN_P27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[17]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[18]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[19]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[20]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[21]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[22]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[23]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[24]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[25]	=>  Location: PIN_R26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[26]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[27]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[28]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[29]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[30]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memDataIn[31]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T_Info[0]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T_Info[1]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T_Info[2]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wen_mem	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en_mem	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cpuClk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- memClk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CPU_TEST_Sim IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_cpuClk : std_logic;
SIGNAL ww_memClk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_outA : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_outB : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_outC : std_logic;
SIGNAL ww_outZ : std_logic;
SIGNAL ww_outIR : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_outPC : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_addrOut : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_wEn : std_logic;
SIGNAL ww_memDataOut : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_memDataIn : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_T_Info : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_wen_mem : std_logic;
SIGNAL ww_en_mem : std_logic;
SIGNAL \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \memClk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \main_processor|R1|Enable_PD~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cpuClk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \outA[0]~output_o\ : std_logic;
SIGNAL \outA[1]~output_o\ : std_logic;
SIGNAL \outA[2]~output_o\ : std_logic;
SIGNAL \outA[3]~output_o\ : std_logic;
SIGNAL \outA[4]~output_o\ : std_logic;
SIGNAL \outA[5]~output_o\ : std_logic;
SIGNAL \outA[6]~output_o\ : std_logic;
SIGNAL \outA[7]~output_o\ : std_logic;
SIGNAL \outA[8]~output_o\ : std_logic;
SIGNAL \outA[9]~output_o\ : std_logic;
SIGNAL \outA[10]~output_o\ : std_logic;
SIGNAL \outA[11]~output_o\ : std_logic;
SIGNAL \outA[12]~output_o\ : std_logic;
SIGNAL \outA[13]~output_o\ : std_logic;
SIGNAL \outA[14]~output_o\ : std_logic;
SIGNAL \outA[15]~output_o\ : std_logic;
SIGNAL \outA[16]~output_o\ : std_logic;
SIGNAL \outA[17]~output_o\ : std_logic;
SIGNAL \outA[18]~output_o\ : std_logic;
SIGNAL \outA[19]~output_o\ : std_logic;
SIGNAL \outA[20]~output_o\ : std_logic;
SIGNAL \outA[21]~output_o\ : std_logic;
SIGNAL \outA[22]~output_o\ : std_logic;
SIGNAL \outA[23]~output_o\ : std_logic;
SIGNAL \outA[24]~output_o\ : std_logic;
SIGNAL \outA[25]~output_o\ : std_logic;
SIGNAL \outA[26]~output_o\ : std_logic;
SIGNAL \outA[27]~output_o\ : std_logic;
SIGNAL \outA[28]~output_o\ : std_logic;
SIGNAL \outA[29]~output_o\ : std_logic;
SIGNAL \outA[30]~output_o\ : std_logic;
SIGNAL \outA[31]~output_o\ : std_logic;
SIGNAL \outB[0]~output_o\ : std_logic;
SIGNAL \outB[1]~output_o\ : std_logic;
SIGNAL \outB[2]~output_o\ : std_logic;
SIGNAL \outB[3]~output_o\ : std_logic;
SIGNAL \outB[4]~output_o\ : std_logic;
SIGNAL \outB[5]~output_o\ : std_logic;
SIGNAL \outB[6]~output_o\ : std_logic;
SIGNAL \outB[7]~output_o\ : std_logic;
SIGNAL \outB[8]~output_o\ : std_logic;
SIGNAL \outB[9]~output_o\ : std_logic;
SIGNAL \outB[10]~output_o\ : std_logic;
SIGNAL \outB[11]~output_o\ : std_logic;
SIGNAL \outB[12]~output_o\ : std_logic;
SIGNAL \outB[13]~output_o\ : std_logic;
SIGNAL \outB[14]~output_o\ : std_logic;
SIGNAL \outB[15]~output_o\ : std_logic;
SIGNAL \outB[16]~output_o\ : std_logic;
SIGNAL \outB[17]~output_o\ : std_logic;
SIGNAL \outB[18]~output_o\ : std_logic;
SIGNAL \outB[19]~output_o\ : std_logic;
SIGNAL \outB[20]~output_o\ : std_logic;
SIGNAL \outB[21]~output_o\ : std_logic;
SIGNAL \outB[22]~output_o\ : std_logic;
SIGNAL \outB[23]~output_o\ : std_logic;
SIGNAL \outB[24]~output_o\ : std_logic;
SIGNAL \outB[25]~output_o\ : std_logic;
SIGNAL \outB[26]~output_o\ : std_logic;
SIGNAL \outB[27]~output_o\ : std_logic;
SIGNAL \outB[28]~output_o\ : std_logic;
SIGNAL \outB[29]~output_o\ : std_logic;
SIGNAL \outB[30]~output_o\ : std_logic;
SIGNAL \outB[31]~output_o\ : std_logic;
SIGNAL \outC~output_o\ : std_logic;
SIGNAL \outZ~output_o\ : std_logic;
SIGNAL \outIR[0]~output_o\ : std_logic;
SIGNAL \outIR[1]~output_o\ : std_logic;
SIGNAL \outIR[2]~output_o\ : std_logic;
SIGNAL \outIR[3]~output_o\ : std_logic;
SIGNAL \outIR[4]~output_o\ : std_logic;
SIGNAL \outIR[5]~output_o\ : std_logic;
SIGNAL \outIR[6]~output_o\ : std_logic;
SIGNAL \outIR[7]~output_o\ : std_logic;
SIGNAL \outIR[8]~output_o\ : std_logic;
SIGNAL \outIR[9]~output_o\ : std_logic;
SIGNAL \outIR[10]~output_o\ : std_logic;
SIGNAL \outIR[11]~output_o\ : std_logic;
SIGNAL \outIR[12]~output_o\ : std_logic;
SIGNAL \outIR[13]~output_o\ : std_logic;
SIGNAL \outIR[14]~output_o\ : std_logic;
SIGNAL \outIR[15]~output_o\ : std_logic;
SIGNAL \outIR[16]~output_o\ : std_logic;
SIGNAL \outIR[17]~output_o\ : std_logic;
SIGNAL \outIR[18]~output_o\ : std_logic;
SIGNAL \outIR[19]~output_o\ : std_logic;
SIGNAL \outIR[20]~output_o\ : std_logic;
SIGNAL \outIR[21]~output_o\ : std_logic;
SIGNAL \outIR[22]~output_o\ : std_logic;
SIGNAL \outIR[23]~output_o\ : std_logic;
SIGNAL \outIR[24]~output_o\ : std_logic;
SIGNAL \outIR[25]~output_o\ : std_logic;
SIGNAL \outIR[26]~output_o\ : std_logic;
SIGNAL \outIR[27]~output_o\ : std_logic;
SIGNAL \outIR[28]~output_o\ : std_logic;
SIGNAL \outIR[29]~output_o\ : std_logic;
SIGNAL \outIR[30]~output_o\ : std_logic;
SIGNAL \outIR[31]~output_o\ : std_logic;
SIGNAL \outPC[0]~output_o\ : std_logic;
SIGNAL \outPC[1]~output_o\ : std_logic;
SIGNAL \outPC[2]~output_o\ : std_logic;
SIGNAL \outPC[3]~output_o\ : std_logic;
SIGNAL \outPC[4]~output_o\ : std_logic;
SIGNAL \outPC[5]~output_o\ : std_logic;
SIGNAL \outPC[6]~output_o\ : std_logic;
SIGNAL \outPC[7]~output_o\ : std_logic;
SIGNAL \outPC[8]~output_o\ : std_logic;
SIGNAL \outPC[9]~output_o\ : std_logic;
SIGNAL \outPC[10]~output_o\ : std_logic;
SIGNAL \outPC[11]~output_o\ : std_logic;
SIGNAL \outPC[12]~output_o\ : std_logic;
SIGNAL \outPC[13]~output_o\ : std_logic;
SIGNAL \outPC[14]~output_o\ : std_logic;
SIGNAL \outPC[15]~output_o\ : std_logic;
SIGNAL \outPC[16]~output_o\ : std_logic;
SIGNAL \outPC[17]~output_o\ : std_logic;
SIGNAL \outPC[18]~output_o\ : std_logic;
SIGNAL \outPC[19]~output_o\ : std_logic;
SIGNAL \outPC[20]~output_o\ : std_logic;
SIGNAL \outPC[21]~output_o\ : std_logic;
SIGNAL \outPC[22]~output_o\ : std_logic;
SIGNAL \outPC[23]~output_o\ : std_logic;
SIGNAL \outPC[24]~output_o\ : std_logic;
SIGNAL \outPC[25]~output_o\ : std_logic;
SIGNAL \outPC[26]~output_o\ : std_logic;
SIGNAL \outPC[27]~output_o\ : std_logic;
SIGNAL \outPC[28]~output_o\ : std_logic;
SIGNAL \outPC[29]~output_o\ : std_logic;
SIGNAL \outPC[30]~output_o\ : std_logic;
SIGNAL \outPC[31]~output_o\ : std_logic;
SIGNAL \addrOut[0]~output_o\ : std_logic;
SIGNAL \addrOut[1]~output_o\ : std_logic;
SIGNAL \addrOut[2]~output_o\ : std_logic;
SIGNAL \addrOut[3]~output_o\ : std_logic;
SIGNAL \addrOut[4]~output_o\ : std_logic;
SIGNAL \addrOut[5]~output_o\ : std_logic;
SIGNAL \wEn~output_o\ : std_logic;
SIGNAL \memDataOut[0]~output_o\ : std_logic;
SIGNAL \memDataOut[1]~output_o\ : std_logic;
SIGNAL \memDataOut[2]~output_o\ : std_logic;
SIGNAL \memDataOut[3]~output_o\ : std_logic;
SIGNAL \memDataOut[4]~output_o\ : std_logic;
SIGNAL \memDataOut[5]~output_o\ : std_logic;
SIGNAL \memDataOut[6]~output_o\ : std_logic;
SIGNAL \memDataOut[7]~output_o\ : std_logic;
SIGNAL \memDataOut[8]~output_o\ : std_logic;
SIGNAL \memDataOut[9]~output_o\ : std_logic;
SIGNAL \memDataOut[10]~output_o\ : std_logic;
SIGNAL \memDataOut[11]~output_o\ : std_logic;
SIGNAL \memDataOut[12]~output_o\ : std_logic;
SIGNAL \memDataOut[13]~output_o\ : std_logic;
SIGNAL \memDataOut[14]~output_o\ : std_logic;
SIGNAL \memDataOut[15]~output_o\ : std_logic;
SIGNAL \memDataOut[16]~output_o\ : std_logic;
SIGNAL \memDataOut[17]~output_o\ : std_logic;
SIGNAL \memDataOut[18]~output_o\ : std_logic;
SIGNAL \memDataOut[19]~output_o\ : std_logic;
SIGNAL \memDataOut[20]~output_o\ : std_logic;
SIGNAL \memDataOut[21]~output_o\ : std_logic;
SIGNAL \memDataOut[22]~output_o\ : std_logic;
SIGNAL \memDataOut[23]~output_o\ : std_logic;
SIGNAL \memDataOut[24]~output_o\ : std_logic;
SIGNAL \memDataOut[25]~output_o\ : std_logic;
SIGNAL \memDataOut[26]~output_o\ : std_logic;
SIGNAL \memDataOut[27]~output_o\ : std_logic;
SIGNAL \memDataOut[28]~output_o\ : std_logic;
SIGNAL \memDataOut[29]~output_o\ : std_logic;
SIGNAL \memDataOut[30]~output_o\ : std_logic;
SIGNAL \memDataOut[31]~output_o\ : std_logic;
SIGNAL \memDataIn[0]~output_o\ : std_logic;
SIGNAL \memDataIn[1]~output_o\ : std_logic;
SIGNAL \memDataIn[2]~output_o\ : std_logic;
SIGNAL \memDataIn[3]~output_o\ : std_logic;
SIGNAL \memDataIn[4]~output_o\ : std_logic;
SIGNAL \memDataIn[5]~output_o\ : std_logic;
SIGNAL \memDataIn[6]~output_o\ : std_logic;
SIGNAL \memDataIn[7]~output_o\ : std_logic;
SIGNAL \memDataIn[8]~output_o\ : std_logic;
SIGNAL \memDataIn[9]~output_o\ : std_logic;
SIGNAL \memDataIn[10]~output_o\ : std_logic;
SIGNAL \memDataIn[11]~output_o\ : std_logic;
SIGNAL \memDataIn[12]~output_o\ : std_logic;
SIGNAL \memDataIn[13]~output_o\ : std_logic;
SIGNAL \memDataIn[14]~output_o\ : std_logic;
SIGNAL \memDataIn[15]~output_o\ : std_logic;
SIGNAL \memDataIn[16]~output_o\ : std_logic;
SIGNAL \memDataIn[17]~output_o\ : std_logic;
SIGNAL \memDataIn[18]~output_o\ : std_logic;
SIGNAL \memDataIn[19]~output_o\ : std_logic;
SIGNAL \memDataIn[20]~output_o\ : std_logic;
SIGNAL \memDataIn[21]~output_o\ : std_logic;
SIGNAL \memDataIn[22]~output_o\ : std_logic;
SIGNAL \memDataIn[23]~output_o\ : std_logic;
SIGNAL \memDataIn[24]~output_o\ : std_logic;
SIGNAL \memDataIn[25]~output_o\ : std_logic;
SIGNAL \memDataIn[26]~output_o\ : std_logic;
SIGNAL \memDataIn[27]~output_o\ : std_logic;
SIGNAL \memDataIn[28]~output_o\ : std_logic;
SIGNAL \memDataIn[29]~output_o\ : std_logic;
SIGNAL \memDataIn[30]~output_o\ : std_logic;
SIGNAL \memDataIn[31]~output_o\ : std_logic;
SIGNAL \T_Info[0]~output_o\ : std_logic;
SIGNAL \T_Info[1]~output_o\ : std_logic;
SIGNAL \T_Info[2]~output_o\ : std_logic;
SIGNAL \wen_mem~output_o\ : std_logic;
SIGNAL \en_mem~output_o\ : std_logic;
SIGNAL \cpuClk~input_o\ : std_logic;
SIGNAL \cpuClk~inputclkctrl_outclk\ : std_logic;
SIGNAL \main_processor|C1|present_state.state_0~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \main_processor|R1|Add0~0_combout\ : std_logic;
SIGNAL \main_processor|R1|counter~31_combout\ : std_logic;
SIGNAL \main_processor|R1|Add0~1\ : std_logic;
SIGNAL \main_processor|R1|Add0~2_combout\ : std_logic;
SIGNAL \main_processor|R1|counter~30_combout\ : std_logic;
SIGNAL \main_processor|R1|Add0~3\ : std_logic;
SIGNAL \main_processor|R1|Add0~4_combout\ : std_logic;
SIGNAL \main_processor|R1|counter~4_combout\ : std_logic;
SIGNAL \main_processor|R1|Add0~5\ : std_logic;
SIGNAL \main_processor|R1|Add0~6_combout\ : std_logic;
SIGNAL \main_processor|R1|counter~1_combout\ : std_logic;
SIGNAL \main_processor|R1|Add0~7\ : std_logic;
SIGNAL \main_processor|R1|Add0~8_combout\ : std_logic;
SIGNAL \main_processor|R1|counter~2_combout\ : std_logic;
SIGNAL \main_processor|R1|Add0~9\ : std_logic;
SIGNAL \main_processor|R1|Add0~10_combout\ : std_logic;
SIGNAL \main_processor|R1|counter~3_combout\ : std_logic;
SIGNAL \main_processor|R1|Add0~11\ : std_logic;
SIGNAL \main_processor|R1|Add0~12_combout\ : std_logic;
SIGNAL \main_processor|R1|counter~5_combout\ : std_logic;
SIGNAL \main_processor|R1|Add0~13\ : std_logic;
SIGNAL \main_processor|R1|Add0~14_combout\ : std_logic;
SIGNAL \main_processor|R1|counter~6_combout\ : std_logic;
SIGNAL \main_processor|R1|Add0~15\ : std_logic;
SIGNAL \main_processor|R1|Add0~16_combout\ : std_logic;
SIGNAL \main_processor|R1|counter~7_combout\ : std_logic;
SIGNAL \main_processor|R1|Add0~17\ : std_logic;
SIGNAL \main_processor|R1|Add0~18_combout\ : std_logic;
SIGNAL \main_processor|R1|counter~8_combout\ : std_logic;
SIGNAL \main_processor|R1|Add0~19\ : std_logic;
SIGNAL \main_processor|R1|Add0~20_combout\ : std_logic;
SIGNAL \main_processor|R1|counter~9_combout\ : std_logic;
SIGNAL \main_processor|R1|Add0~21\ : std_logic;
SIGNAL \main_processor|R1|Add0~22_combout\ : std_logic;
SIGNAL \main_processor|R1|counter~10_combout\ : std_logic;
SIGNAL \main_processor|R1|Add0~23\ : std_logic;
SIGNAL \main_processor|R1|Add0~24_combout\ : std_logic;
SIGNAL \main_processor|R1|counter~11_combout\ : std_logic;
SIGNAL \main_processor|R1|Add0~25\ : std_logic;
SIGNAL \main_processor|R1|Add0~26_combout\ : std_logic;
SIGNAL \main_processor|R1|counter~12_combout\ : std_logic;
SIGNAL \main_processor|R1|Add0~27\ : std_logic;
SIGNAL \main_processor|R1|Add0~28_combout\ : std_logic;
SIGNAL \main_processor|R1|counter~13_combout\ : std_logic;
SIGNAL \main_processor|R1|Add0~29\ : std_logic;
SIGNAL \main_processor|R1|Add0~30_combout\ : std_logic;
SIGNAL \main_processor|R1|counter~14_combout\ : std_logic;
SIGNAL \main_processor|R1|Add0~31\ : std_logic;
SIGNAL \main_processor|R1|Add0~32_combout\ : std_logic;
SIGNAL \main_processor|R1|counter~15_combout\ : std_logic;
SIGNAL \main_processor|R1|Add0~33\ : std_logic;
SIGNAL \main_processor|R1|Add0~34_combout\ : std_logic;
SIGNAL \main_processor|R1|counter~16_combout\ : std_logic;
SIGNAL \main_processor|R1|Add0~35\ : std_logic;
SIGNAL \main_processor|R1|Add0~36_combout\ : std_logic;
SIGNAL \main_processor|R1|counter~17_combout\ : std_logic;
SIGNAL \main_processor|R1|Add0~37\ : std_logic;
SIGNAL \main_processor|R1|Add0~38_combout\ : std_logic;
SIGNAL \main_processor|R1|counter~18_combout\ : std_logic;
SIGNAL \main_processor|R1|Add0~39\ : std_logic;
SIGNAL \main_processor|R1|Add0~40_combout\ : std_logic;
SIGNAL \main_processor|R1|counter~19_combout\ : std_logic;
SIGNAL \main_processor|R1|Add0~41\ : std_logic;
SIGNAL \main_processor|R1|Add0~42_combout\ : std_logic;
SIGNAL \main_processor|R1|counter~20_combout\ : std_logic;
SIGNAL \main_processor|R1|Add0~43\ : std_logic;
SIGNAL \main_processor|R1|Add0~44_combout\ : std_logic;
SIGNAL \main_processor|R1|counter~21_combout\ : std_logic;
SIGNAL \main_processor|R1|Add0~45\ : std_logic;
SIGNAL \main_processor|R1|Add0~46_combout\ : std_logic;
SIGNAL \main_processor|R1|counter~22_combout\ : std_logic;
SIGNAL \main_processor|R1|Add0~47\ : std_logic;
SIGNAL \main_processor|R1|Add0~48_combout\ : std_logic;
SIGNAL \main_processor|R1|counter~23_combout\ : std_logic;
SIGNAL \main_processor|R1|Add0~49\ : std_logic;
SIGNAL \main_processor|R1|Add0~50_combout\ : std_logic;
SIGNAL \main_processor|R1|counter~24_combout\ : std_logic;
SIGNAL \main_processor|R1|Add0~51\ : std_logic;
SIGNAL \main_processor|R1|Add0~52_combout\ : std_logic;
SIGNAL \main_processor|R1|counter~26_combout\ : std_logic;
SIGNAL \main_processor|R1|Add0~53\ : std_logic;
SIGNAL \main_processor|R1|Add0~54_combout\ : std_logic;
SIGNAL \main_processor|R1|counter~27_combout\ : std_logic;
SIGNAL \main_processor|R1|Add0~55\ : std_logic;
SIGNAL \main_processor|R1|Add0~56_combout\ : std_logic;
SIGNAL \main_processor|R1|counter~28_combout\ : std_logic;
SIGNAL \main_processor|R1|Add0~57\ : std_logic;
SIGNAL \main_processor|R1|Add0~58_combout\ : std_logic;
SIGNAL \main_processor|R1|counter[29]~29_combout\ : std_logic;
SIGNAL \main_processor|R1|Add0~59\ : std_logic;
SIGNAL \main_processor|R1|Add0~60_combout\ : std_logic;
SIGNAL \main_processor|R1|counter[30]~25_combout\ : std_logic;
SIGNAL \main_processor|R1|Add0~61\ : std_logic;
SIGNAL \main_processor|R1|Add0~62_combout\ : std_logic;
SIGNAL \main_processor|R1|counter~0_combout\ : std_logic;
SIGNAL \main_processor|R1|LessThan0~5_combout\ : std_logic;
SIGNAL \main_processor|R1|LessThan0~6_combout\ : std_logic;
SIGNAL \main_processor|R1|LessThan0~7_combout\ : std_logic;
SIGNAL \main_processor|R1|LessThan0~8_combout\ : std_logic;
SIGNAL \main_processor|R1|LessThan0~1_combout\ : std_logic;
SIGNAL \main_processor|R1|LessThan0~0_combout\ : std_logic;
SIGNAL \main_processor|R1|LessThan0~2_combout\ : std_logic;
SIGNAL \main_processor|R1|LessThan0~3_combout\ : std_logic;
SIGNAL \main_processor|R1|LessThan0~4_combout\ : std_logic;
SIGNAL \main_processor|R1|LessThan0~9_combout\ : std_logic;
SIGNAL \main_processor|R1|Enable_PD~0_combout\ : std_logic;
SIGNAL \main_processor|R1|Enable_PD~q\ : std_logic;
SIGNAL \main_processor|R1|Enable_PD~clkctrl_outclk\ : std_logic;
SIGNAL \main_processor|C1|present_state.state_0~q\ : std_logic;
SIGNAL \main_processor|C1|present_state.state_1~0_combout\ : std_logic;
SIGNAL \main_processor|C1|present_state.state_1~q\ : std_logic;
SIGNAL \main_processor|C1|present_state.state_2~feeder_combout\ : std_logic;
SIGNAL \main_processor|C1|present_state.state_2~q\ : std_logic;
SIGNAL \main_processor|C1|DATA_Mux~1_combout\ : std_logic;
SIGNAL \main_processor|C1|DATA_Mux~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux31~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M2|Out2[7]~7_combout\ : std_logic;
SIGNAL \main_processor|C1|IM_MUX2~1_combout\ : std_logic;
SIGNAL \memClk~input_o\ : std_logic;
SIGNAL \memClk~inputclkctrl_outclk\ : std_logic;
SIGNAL \main_processor|Dpth|M2|Out2[14]~14_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|process_0~1_combout\ : std_logic;
SIGNAL \main_processor|C1|IM_MUX2~0_combout\ : std_logic;
SIGNAL \main_processor|C1|ld_B~0_combout\ : std_logic;
SIGNAL \main_processor|C1|ld_B~1_combout\ : std_logic;
SIGNAL \main_processor|C1|ld_B~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M5|Mux30~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux30~9_combout\ : std_logic;
SIGNAL \main_processor|C1|IM_MUX1~combout\ : std_logic;
SIGNAL \main_processor|Dpth|M5|Mux25~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M4|Out2[6]~6_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux25~9_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|process_0~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~1\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[1]~1_combout\ : std_logic;
SIGNAL \main_processor|R1|Clr_PC~q\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~3\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~4_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[2]~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[2]~reg0_q\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~5\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~6_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[3]~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[3]~reg0_q\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~7\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~8_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[4]~4_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[4]~reg0_q\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~9\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~10_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[5]~5_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[5]~reg0_q\ : std_logic;
SIGNAL \main_processor|Dpth|IR|Q32[8]~feeder_combout\ : std_logic;
SIGNAL \main_processor|C1|ld_IR~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M2|Out2[8]~8_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M5|Mux23~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M4|Out2[8]~8_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M4|Out2[7]~7_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M5|Mux26~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M4|Out2[5]~5_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M4|Out2[4]~4_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M5|Mux27~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M4|Out2[3]~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M5|Mux28~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M5|Mux29~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M4|Out2[2]~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M4|Out2[0]~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M5|Mux31~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~1\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~3\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~5\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~7\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~9\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~11\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~13\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~15\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~16_combout\ : std_logic;
SIGNAL \main_processor|Dpth|B|Q32[9]~feeder_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M5|Mux22~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~17\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~18_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux22~6_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~1\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~3\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~5\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~7\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~9\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~11\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~13\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~15\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~17\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~18_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux22~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M5|Mux21~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~19\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~20_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux21~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M2|Out2[11]~11_combout\ : std_logic;
SIGNAL \main_processor|Dpth|A|Q32[11]~feeder_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M4|Out2[11]~11_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux21~1_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux23~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~19\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~20_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux21~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux21~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|IR|Q32[13]~feeder_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M2|Out2[13]~13_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M4|Out2[13]~13_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M5|Mux18~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M2|Out2[12]~12_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M4|Out2[12]~12_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M5|Mux20~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~21\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~23\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~25\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~26_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux18~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux18~1_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux18~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~21\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~23\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~25\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~26_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux18~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux18~4_combout\ : std_logic;
SIGNAL \main_processor|C1|Mux23~0_combout\ : std_logic;
SIGNAL \main_processor|C1|ld_IR~0_wirecell_combout\ : std_logic;
SIGNAL \main_processor|C1|REG_Mux~combout\ : std_logic;
SIGNAL \main_processor|Dpth|M1|Out2[0]~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M1|Out2[1]~1_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M1|Out2[2]~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M1|Out2[3]~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M1|Out2[4]~4_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M1|Out2[5]~5_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M1|Out2[6]~6_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M1|Out2[7]~7_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M1|Out2[8]~8_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M1|Out2[9]~9_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M1|Out2[10]~10_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M1|Out2[11]~11_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M1|Out2[12]~12_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M1|Out2[13]~13_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M1|Out2[14]~14_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M5|Mux16~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M4|Out2[15]~15_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M5|Mux17~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~27\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~29\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~30_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~27\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~29\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~30_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux16~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M5|Mux15~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~31\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~32_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~31\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~32_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M5|Mux14~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~33\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~34_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux14~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M5|Mux13~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~35\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~36_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux13~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux12~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M5|Mux12~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M5|Mux11~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~37\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~39\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~40_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M5|Mux10~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~41\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~42_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux10~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M5|Mux9~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~43\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~44_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~33\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~35\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~37\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~39\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~41\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~43\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~44_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux9~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux9~1_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux9~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux9~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M1|Out2[16]~16_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M1|Out2[17]~17_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M1|Out2[18]~18_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M1|Out2[19]~19_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M1|Out2[20]~20_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M1|Out2[21]~21_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M1|Out2[22]~22_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M5|Mux8~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~45\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~46_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux8~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M1|Out2[24]~24_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M1|Out2[25]~25_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M1|Out2[26]~26_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M5|Mux3~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M4|Out2[28]~28_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M5|Mux4~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M4|Out2[26]~26_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M4|Out2[25]~25_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M5|Mux7~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~47\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~49\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~51\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~53\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~55\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~56_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux9~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M1|Out2[29]~29_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M2|Out2[31]~31_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M1|Out2[31]~31_combout\ : std_logic;
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a30\ : std_logic;
SIGNAL \main_processor|Dpth|D1|data_out~30_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux1~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M2|Out2[30]~30_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M1|Out2[30]~30_combout\ : std_logic;
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a23\ : std_logic;
SIGNAL \main_processor|Dpth|D1|data_out~23_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux8~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux8~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a21\ : std_logic;
SIGNAL \main_processor|Dpth|D1|data_out~21_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux10~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux10~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a29\ : std_logic;
SIGNAL \main_processor|Dpth|D1|data_out~29_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux2~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M2|Out2[29]~29_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M4|Out2[29]~29_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux3~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux3~1_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~45\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~47\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~49\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~51\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~53\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~55\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~56_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux3~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux3~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M2|Out2[28]~28_combout\ : std_logic;
SIGNAL \main_processor|Dpth|B|Q32[28]~feeder_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M1|Out2[28]~28_combout\ : std_logic;
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a20\ : std_logic;
SIGNAL \main_processor|Dpth|D1|data_out~20_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux11~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux11~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a19\ : std_logic;
SIGNAL \main_processor|Dpth|D1|data_out~19_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux12~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux12~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a27\ : std_logic;
SIGNAL \main_processor|Dpth|D1|data_out~27_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux4~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M2|Out2[27]~27_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M1|Out2[27]~27_combout\ : std_logic;
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a18\ : std_logic;
SIGNAL \main_processor|Dpth|D1|data_out~18_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux13~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux13~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a17\ : std_logic;
SIGNAL \main_processor|Dpth|D1|data_out~17_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux14~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux14~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a16\ : std_logic;
SIGNAL \main_processor|Dpth|D1|data_out~16_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux15~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux15~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a24\ : std_logic;
SIGNAL \main_processor|Dpth|D1|data_out~24_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux7~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M2|Out2[24]~24_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M4|Out2[24]~24_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux8~1_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux8~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~46_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux8~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux8~4_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M2|Out2[23]~23_combout\ : std_logic;
SIGNAL \main_processor|Dpth|B|Q32[23]~feeder_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M1|Out2[23]~23_combout\ : std_logic;
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a22\ : std_logic;
SIGNAL \main_processor|Dpth|D1|data_out~22_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux9~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M2|Out2[22]~22_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M4|Out2[22]~22_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux10~1_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux10~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~42_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux10~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux10~4_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M2|Out2[21]~21_combout\ : std_logic;
SIGNAL \main_processor|Dpth|A|Q32[21]~feeder_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M4|Out2[21]~21_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux11~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux11~1_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~40_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux11~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux11~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M2|Out2[20]~20_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M4|Out2[20]~20_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux12~1_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux12~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~38_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux12~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~38_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux12~4_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M2|Out2[19]~19_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M4|Out2[19]~19_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux13~1_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~36_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux13~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux13~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M2|Out2[18]~18_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M4|Out2[18]~18_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux14~1_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux14~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~34_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux14~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux14~4_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M2|Out2[17]~17_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M4|Out2[17]~17_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux15~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux15~1_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux15~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux15~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M2|Out2[16]~16_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M4|Out2[16]~16_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux16~1_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux16~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux16~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux16~4_combout\ : std_logic;
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \main_processor|Dpth|D1|data_out~15_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux16~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux16~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M2|Out2[15]~15_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M1|Out2[15]~15_combout\ : std_logic;
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \main_processor|Dpth|D1|data_out~13_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux18~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux18~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \main_processor|Dpth|D1|data_out~10_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux21~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux21~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|IR|Q32[10]~feeder_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M2|Out2[10]~10_combout\ : std_logic;
SIGNAL \main_processor|Dpth|A|Q32[10]~feeder_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M4|Out2[10]~10_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux22~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux22~4_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux22~5_combout\ : std_logic;
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \main_processor|Dpth|D1|data_out~9_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux22~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux22~1_combout\ : std_logic;
SIGNAL \main_processor|Dpth|IR|Q32[9]~feeder_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M2|Out2[9]~9_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M4|Out2[9]~9_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux23~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux23~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~16_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux23~4_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux23~5_combout\ : std_logic;
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a8\ : std_logic;
SIGNAL \main_processor|Dpth|D1|data_out~8_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux23~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux23~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \main_processor|Dpth|D1|data_out~12_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux19~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux19~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|IR|Q32[12]~feeder_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M5|Mux19~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~24_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux19~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux19~1_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~24_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux19~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux19~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Equal0~7_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Equal0~8_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Equal0~9_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Equal0~10_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Equal0~1_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M4|Out2[31]~31_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M5|Mux0~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M5|Mux1~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M5|Mux2~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~57\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~59\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~61\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~62_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~57\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~59\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~61\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~62_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux0~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Equal0~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Equal0~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Equal0~4_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Equal0~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Equal0~5_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Equal0~6_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Equal0~11_combout\ : std_logic;
SIGNAL \main_processor|C1|clr_A~0_combout\ : std_logic;
SIGNAL \main_processor|C1|clr_Z~0_combout\ : std_logic;
SIGNAL \main_processor|C1|clr_Z~1_combout\ : std_logic;
SIGNAL \main_processor|C1|Mux6~0_combout\ : std_logic;
SIGNAL \main_processor|C1|ld_C~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|Z|Q~q\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|process_0~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|process_0~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|process_0~4_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q~32_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[1]~reg0_q\ : std_logic;
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a26\ : std_logic;
SIGNAL \main_processor|Dpth|D1|data_out~26_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux5~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M2|Out2[26]~26_combout\ : std_logic;
SIGNAL \main_processor|Dpth|B|Q32[26]~feeder_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M5|Mux5~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~52_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux5~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux5~1_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~52_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux5~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux5~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux5~3_combout\ : std_logic;
SIGNAL \main_processor|C1|Mux3~0_combout\ : std_logic;
SIGNAL \main_processor|C1|ld_A~1_combout\ : std_logic;
SIGNAL \main_processor|C1|ld_A~0_combout\ : std_logic;
SIGNAL \main_processor|C1|ld_A~2_combout\ : std_logic;
SIGNAL \main_processor|C1|Mux0~0_combout\ : std_logic;
SIGNAL \main_processor|C1|ld_A~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux25~11_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~12_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~12_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux25~8_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux25~10_combout\ : std_logic;
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \main_processor|Dpth|D1|data_out~6_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux25~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux25~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|IR|Q32[6]~feeder_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M2|Out2[6]~6_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux26~11_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux26~9_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~10_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~10_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux26~8_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux26~10_combout\ : std_logic;
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \main_processor|Dpth|D1|data_out~5_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux26~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux26~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|IR|Q32[5]~feeder_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M2|Out2[5]~5_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux27~11_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~8_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~8_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux27~8_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux27~9_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux27~10_combout\ : std_logic;
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \main_processor|Dpth|D1|data_out~4_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux27~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux27~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|IR|Q32[4]~feeder_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M2|Out2[4]~4_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux28~11_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~6_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~6_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux28~8_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux28~9_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux28~10_combout\ : std_logic;
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \main_processor|Dpth|D1|data_out~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux28~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux28~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M2|Out2[3]~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux29~11_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux29~9_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~4_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~4_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux29~8_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux29~10_combout\ : std_logic;
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \main_processor|Dpth|D1|data_out~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux29~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux29~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M2|Out2[2]~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux30~11_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux30~8_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux30~10_combout\ : std_logic;
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \main_processor|Dpth|D1|data_out~1_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux30~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux30~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M2|Out2[1]~1_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M4|Out2[1]~1_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux31~1_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux31~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux31~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux31~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \main_processor|Dpth|D1|data_out~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux31~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux31~4_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[0]~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[0]~reg0_q\ : std_logic;
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a28\ : std_logic;
SIGNAL \main_processor|Dpth|D1|data_out~28_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux3~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux3~3_combout\ : std_logic;
SIGNAL \main_processor|C1|clr_A~1_combout\ : std_logic;
SIGNAL \main_processor|C1|clr_A~2_combout\ : std_logic;
SIGNAL \main_processor|C1|clr_A~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M4|Out2[14]~14_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~28_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~28_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux17~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux17~1_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux17~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux17~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \main_processor|Dpth|D1|data_out~14_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux17~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux17~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M4|Out2[30]~30_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~60_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux1~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux1~1_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~60_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux1~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux1~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux1~3_combout\ : std_logic;
SIGNAL \main_processor|C1|wen~1_combout\ : std_logic;
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a25\ : std_logic;
SIGNAL \main_processor|Dpth|D1|data_out~25_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux6~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M2|Out2[25]~25_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M5|Mux6~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~50_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux6~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux6~1_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux6~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~50_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux6~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux6~4_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux6~3_combout\ : std_logic;
SIGNAL \main_processor|C1|ALU_op~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux2~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux2~1_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux2~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~58_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux2~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~58_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux2~4_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux2~3_combout\ : std_logic;
SIGNAL \main_processor|C1|clr_B~0_combout\ : std_logic;
SIGNAL \main_processor|C1|clr_B~1_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M5|Mux24~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux24~9_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux24~11_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~14_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~14_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux24~8_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux24~10_combout\ : std_logic;
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \main_processor|Dpth|D1|data_out~7_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux24~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux24~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M4|Out2[23]~23_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux7~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux7~1_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~48_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux7~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~48_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux7~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux7~3_combout\ : std_logic;
SIGNAL \main_processor|C1|ALU_op~1_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux23~1_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~22_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux20~1_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux20~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux20~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux20~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~22_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux20~4_combout\ : std_logic;
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \main_processor|Dpth|D1|data_out~11_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux20~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux20~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|IR|Q32[11]~feeder_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M4|Out2[27]~27_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~54_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux4~1_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux4~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux4~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~54_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux4~3_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux4~4_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux4~3_combout\ : std_logic;
SIGNAL \main_processor|C1|ALU_op~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux0~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux0~1_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux0~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a31\ : std_logic;
SIGNAL \main_processor|Dpth|D1|data_out~31_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux0~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|M6|Mux0~1_combout\ : std_logic;
SIGNAL \main_processor|C1|Selector3~0_combout\ : std_logic;
SIGNAL \main_processor|C1|A_Mux~combout\ : std_logic;
SIGNAL \main_processor|Dpth|M2|Out2[0]~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux32~4_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~63\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add0~64_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~63\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Add1~64_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux32~2_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ALU|Mux32~3_combout\ : std_logic;
SIGNAL \main_processor|C1|clr_C~0_combout\ : std_logic;
SIGNAL \main_processor|Dpth|C|Q~q\ : std_logic;
SIGNAL \main_processor|Dpth|IR|Q32[17]~feeder_combout\ : std_logic;
SIGNAL \main_processor|Dpth|IR|Q32[18]~feeder_combout\ : std_logic;
SIGNAL \main_processor|Dpth|IR|Q32[19]~feeder_combout\ : std_logic;
SIGNAL \main_processor|Dpth|IR|Q32[23]~feeder_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~11\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~12_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[6]~6_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[6]~reg0_q\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~13\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~14_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[7]~7_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[7]~reg0_q\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~15\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~16_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[8]~8_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[8]~reg0_q\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~17\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~18_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[9]~9_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[9]~reg0_q\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~19\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~20_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[10]~10_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[10]~reg0_q\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~21\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~22_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[11]~11_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[11]~reg0_q\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~23\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~24_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[12]~12_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[12]~reg0_q\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~25\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~26_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[13]~13_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[13]~reg0_q\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~27\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~28_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[14]~14_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[14]~reg0_q\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~29\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~30_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[15]~15_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[15]~reg0_q\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~31\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~32_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q~33_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[16]~16_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[16]~reg0_q\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~33\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~34_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q~34_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[17]~17_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[17]~reg0_q\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q~35_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~35\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~36_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[18]~18_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[18]~reg0_q\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q~36_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~37\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~38_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[19]~19_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[19]~reg0_q\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~39\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~40_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q~37_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[20]~20_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[20]~reg0_q\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q~38_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~41\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~42_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[21]~21_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[21]~reg0_q\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~43\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~44_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q~39_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[22]~22_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[22]~reg0_q\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~45\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~46_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q~40_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[23]~23_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[23]~reg0_q\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q~41_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~47\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~48_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[24]~24_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[24]~reg0_q\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q~42_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~49\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~50_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[25]~25_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[25]~reg0_q\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~51\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~52_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q~43_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[26]~26_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[26]~reg0_q\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q~44_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~53\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~54_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[27]~27_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[27]~reg0_q\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q~45_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~55\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~56_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[28]~28_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[28]~reg0_q\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q~46_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~57\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~58_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[29]~29_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[29]~reg0_q\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q~47_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~59\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~60_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[30]~30_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[30]~reg0_q\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q~48_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~61\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|Add0~62_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[31]~31_combout\ : std_logic;
SIGNAL \main_processor|Dpth|ProgCount|q[31]~reg0_q\ : std_logic;
SIGNAL \main_processor|C1|T[0]~0_combout\ : std_logic;
SIGNAL \main_processor|C1|T[1]~1_combout\ : std_logic;
SIGNAL \main_processor|C1|T[2]~feeder_combout\ : std_logic;
SIGNAL \main_processor|C1|Selector11~0_combout\ : std_logic;
SIGNAL \main_processor|C1|ALU_op\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \main_processor|C1|IM_MUX2\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \main_processor|C1|DATA_Mux\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \main_processor|C1|T\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \main_processor|Dpth|D1|data_out\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \main_processor|Dpth|IR|Q32\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \main_processor|R1|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \main_processor|Dpth|B|Q32\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \main_processor|Dpth|A|Q32\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \main_memory|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_memClk~inputclkctrl_outclk\ : std_logic;
SIGNAL \main_processor|C1|ALT_INV_ld_IR~0_wirecell_combout\ : std_logic;
SIGNAL \main_processor|C1|ALT_INV_ld_IR~0_combout\ : std_logic;
SIGNAL \main_processor|C1|ALT_INV_clr_Z~1_combout\ : std_logic;
SIGNAL \main_processor|C1|ALT_INV_clr_C~0_combout\ : std_logic;
SIGNAL \main_processor|C1|ALT_INV_clr_B~1_combout\ : std_logic;
SIGNAL \main_processor|C1|ALT_INV_clr_A~3_combout\ : std_logic;
SIGNAL \main_processor|R1|ALT_INV_Enable_PD~q\ : std_logic;
SIGNAL \main_processor|C1|ALT_INV_T\ : std_logic_vector(0 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_cpuClk <= cpuClk;
ww_memClk <= memClk;
ww_rst <= rst;
outA <= ww_outA;
outB <= ww_outB;
outC <= ww_outC;
outZ <= ww_outZ;
outIR <= ww_outIR;
outPC <= ww_outPC;
addrOut <= ww_addrOut;
wEn <= ww_wEn;
memDataOut <= ww_memDataOut;
memDataIn <= ww_memDataIn;
T_Info <= ww_T_Info;
wen_mem <= ww_wen_mem;
en_mem <= ww_en_mem;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \main_processor|Dpth|M6|Mux18~3_combout\ & \main_processor|Dpth|M6|Mux19~3_combout\ & \main_processor|Dpth|M6|Mux20~3_combout\ & 
\main_processor|Dpth|M6|Mux21~3_combout\ & \main_processor|Dpth|M6|Mux22~1_combout\ & \main_processor|Dpth|M6|Mux23~3_combout\ & \main_processor|Dpth|M6|Mux24~3_combout\ & \main_processor|Dpth|M6|Mux25~3_combout\ & \main_processor|Dpth|M6|Mux26~3_combout\
& \main_processor|Dpth|M6|Mux27~3_combout\ & \main_processor|Dpth|M6|Mux28~3_combout\ & \main_processor|Dpth|M6|Mux29~3_combout\ & \main_processor|Dpth|M6|Mux30~3_combout\ & \main_processor|Dpth|M6|Mux31~4_combout\);

\main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\main_processor|Dpth|ProgCount|q[5]~reg0_q\ & \main_processor|Dpth|ProgCount|q[4]~reg0_q\ & \main_processor|Dpth|ProgCount|q[3]~reg0_q\ & 
\main_processor|Dpth|ProgCount|q[2]~reg0_q\ & \main_processor|Dpth|ProgCount|q[1]~reg0_q\ & \main_processor|Dpth|ProgCount|q[0]~reg0_q\);

\main_memory|altsyncram_component|auto_generated|q_a\(0) <= \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\main_memory|altsyncram_component|auto_generated|q_a\(1) <= \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\main_memory|altsyncram_component|auto_generated|q_a\(2) <= \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\main_memory|altsyncram_component|auto_generated|q_a\(3) <= \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\main_memory|altsyncram_component|auto_generated|q_a\(4) <= \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\main_memory|altsyncram_component|auto_generated|q_a\(5) <= \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\main_memory|altsyncram_component|auto_generated|q_a\(6) <= \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\main_memory|altsyncram_component|auto_generated|q_a\(7) <= \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\main_memory|altsyncram_component|auto_generated|q_a\(8) <= \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\main_memory|altsyncram_component|auto_generated|q_a\(9) <= \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\main_memory|altsyncram_component|auto_generated|q_a\(10) <= \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\main_memory|altsyncram_component|auto_generated|q_a\(11) <= \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\main_memory|altsyncram_component|auto_generated|q_a\(12) <= \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\main_memory|altsyncram_component|auto_generated|q_a\(13) <= \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);

\main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ <= (\main_processor|Dpth|M6|Mux0~1_combout\ & \main_processor|Dpth|M6|Mux1~3_combout\ & \main_processor|Dpth|M6|Mux2~3_combout\ & \main_processor|Dpth|M6|Mux3~3_combout\ & 
\main_processor|Dpth|M6|Mux4~3_combout\ & \main_processor|Dpth|M6|Mux5~3_combout\ & \main_processor|Dpth|M6|Mux6~3_combout\ & \main_processor|Dpth|M6|Mux7~3_combout\ & \main_processor|Dpth|M6|Mux8~3_combout\ & \main_processor|Dpth|M6|Mux9~3_combout\ & 
\main_processor|Dpth|M6|Mux10~3_combout\ & \main_processor|Dpth|M6|Mux11~3_combout\ & \main_processor|Dpth|M6|Mux12~3_combout\ & \main_processor|Dpth|M6|Mux13~3_combout\ & \main_processor|Dpth|M6|Mux14~3_combout\ & \main_processor|Dpth|M6|Mux15~3_combout\
& \main_processor|Dpth|M6|Mux16~3_combout\ & \main_processor|Dpth|M6|Mux17~3_combout\);

\main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\main_processor|Dpth|ProgCount|q[5]~reg0_q\ & \main_processor|Dpth|ProgCount|q[4]~reg0_q\ & \main_processor|Dpth|ProgCount|q[3]~reg0_q\ & 
\main_processor|Dpth|ProgCount|q[2]~reg0_q\ & \main_processor|Dpth|ProgCount|q[1]~reg0_q\ & \main_processor|Dpth|ProgCount|q[0]~reg0_q\);

\main_memory|altsyncram_component|auto_generated|q_a\(14) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);
\main_memory|altsyncram_component|auto_generated|q_a\(15) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(1);
\main_memory|altsyncram_component|auto_generated|q_a\(16) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(2);
\main_memory|altsyncram_component|auto_generated|q_a\(17) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(3);
\main_memory|altsyncram_component|auto_generated|q_a\(18) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(4);
\main_memory|altsyncram_component|auto_generated|q_a\(19) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(5);
\main_memory|altsyncram_component|auto_generated|q_a\(20) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(6);
\main_memory|altsyncram_component|auto_generated|q_a\(21) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(7);
\main_memory|altsyncram_component|auto_generated|q_a\(22) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(8);
\main_memory|altsyncram_component|auto_generated|q_a\(23) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(9);
\main_memory|altsyncram_component|auto_generated|q_a\(24) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(10);
\main_memory|altsyncram_component|auto_generated|q_a\(25) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(11);
\main_memory|altsyncram_component|auto_generated|q_a\(26) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(12);
\main_memory|altsyncram_component|auto_generated|q_a\(27) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(13);
\main_memory|altsyncram_component|auto_generated|q_a\(28) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(14);
\main_memory|altsyncram_component|auto_generated|q_a\(29) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(15);
\main_memory|altsyncram_component|auto_generated|q_a\(30) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(16);
\main_memory|altsyncram_component|auto_generated|q_a\(31) <= \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(17);

\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \main_processor|Dpth|M1|Out2[31]~31_combout\ & \main_processor|Dpth|M1|Out2[30]~30_combout\ & \main_processor|Dpth|M1|Out2[29]~29_combout\ & 
\main_processor|Dpth|M1|Out2[28]~28_combout\ & \main_processor|Dpth|M1|Out2[27]~27_combout\ & \main_processor|Dpth|M1|Out2[26]~26_combout\ & \main_processor|Dpth|M1|Out2[25]~25_combout\ & \main_processor|Dpth|M1|Out2[24]~24_combout\ & 
\main_processor|Dpth|M1|Out2[23]~23_combout\ & \main_processor|Dpth|M1|Out2[22]~22_combout\ & \main_processor|Dpth|M1|Out2[21]~21_combout\ & \main_processor|Dpth|M1|Out2[20]~20_combout\ & \main_processor|Dpth|M1|Out2[19]~19_combout\ & 
\main_processor|Dpth|M1|Out2[18]~18_combout\ & \main_processor|Dpth|M1|Out2[17]~17_combout\ & \main_processor|Dpth|M1|Out2[16]~16_combout\ & \main_processor|Dpth|M1|Out2[15]~15_combout\ & \main_processor|Dpth|M1|Out2[14]~14_combout\ & 
\main_processor|Dpth|M1|Out2[13]~13_combout\ & \main_processor|Dpth|M1|Out2[12]~12_combout\ & \main_processor|Dpth|M1|Out2[11]~11_combout\ & \main_processor|Dpth|M1|Out2[10]~10_combout\ & \main_processor|Dpth|M1|Out2[9]~9_combout\ & 
\main_processor|Dpth|M1|Out2[8]~8_combout\ & \main_processor|Dpth|M1|Out2[7]~7_combout\ & \main_processor|Dpth|M1|Out2[6]~6_combout\ & \main_processor|Dpth|M1|Out2[5]~5_combout\ & \main_processor|Dpth|M1|Out2[4]~4_combout\ & 
\main_processor|Dpth|M1|Out2[3]~3_combout\ & \main_processor|Dpth|M1|Out2[2]~2_combout\ & \main_processor|Dpth|M1|Out2[1]~1_combout\ & \main_processor|Dpth|M1|Out2[0]~0_combout\);

\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\main_processor|Dpth|IR|Q32\(7) & \main_processor|Dpth|IR|Q32\(6) & \main_processor|Dpth|IR|Q32\(5) & \main_processor|Dpth|IR|Q32\(4) & 
\main_processor|Dpth|IR|Q32\(3) & \main_processor|Dpth|IR|Q32\(2) & \main_processor|Dpth|IR|Q32\(1) & \main_processor|Dpth|IR|Q32\(0));

\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\main_processor|Dpth|M6|Mux24~3_combout\ & \main_processor|Dpth|M6|Mux25~3_combout\ & \main_processor|Dpth|M6|Mux26~3_combout\ & \main_processor|Dpth|M6|Mux27~3_combout\ & 
\main_processor|Dpth|M6|Mux28~3_combout\ & \main_processor|Dpth|M6|Mux29~3_combout\ & \main_processor|Dpth|M6|Mux30~3_combout\ & \main_processor|Dpth|M6|Mux31~4_combout\);

\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a1\ <= \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a2\ <= \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a3\ <= \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a4\ <= \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a5\ <= \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a6\ <= \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a7\ <= \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a8\ <= \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a9\ <= \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);
\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a10\ <= \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(10);
\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a11\ <= \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(11);
\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a12\ <= \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(12);
\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a13\ <= \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(13);
\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a14\ <= \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(14);
\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a15\ <= \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(15);
\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a16\ <= \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(16);
\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a17\ <= \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(17);
\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a18\ <= \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(18);
\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a19\ <= \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(19);
\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a20\ <= \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(20);
\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a21\ <= \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(21);
\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a22\ <= \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(22);
\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a23\ <= \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(23);
\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a24\ <= \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(24);
\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a25\ <= \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(25);
\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a26\ <= \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(26);
\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a27\ <= \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(27);
\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a28\ <= \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(28);
\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a29\ <= \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(29);
\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a30\ <= \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(30);
\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a31\ <= \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(31);

\memClk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \memClk~input_o\);

\main_processor|R1|Enable_PD~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \main_processor|R1|Enable_PD~q\);

\cpuClk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \cpuClk~input_o\);
\ALT_INV_memClk~inputclkctrl_outclk\ <= NOT \memClk~inputclkctrl_outclk\;
\main_processor|C1|ALT_INV_ld_IR~0_wirecell_combout\ <= NOT \main_processor|C1|ld_IR~0_wirecell_combout\;
\main_processor|C1|ALT_INV_ld_IR~0_combout\ <= NOT \main_processor|C1|ld_IR~0_combout\;
\main_processor|C1|ALT_INV_clr_Z~1_combout\ <= NOT \main_processor|C1|clr_Z~1_combout\;
\main_processor|C1|ALT_INV_clr_C~0_combout\ <= NOT \main_processor|C1|clr_C~0_combout\;
\main_processor|C1|ALT_INV_clr_B~1_combout\ <= NOT \main_processor|C1|clr_B~1_combout\;
\main_processor|C1|ALT_INV_clr_A~3_combout\ <= NOT \main_processor|C1|clr_A~3_combout\;
\main_processor|R1|ALT_INV_Enable_PD~q\ <= NOT \main_processor|R1|Enable_PD~q\;
\main_processor|C1|ALT_INV_T\(0) <= NOT \main_processor|C1|T\(0);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y26_N16
\outA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|A|Q32\(0),
	devoe => ww_devoe,
	o => \outA[0]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\outA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|A|Q32\(1),
	devoe => ww_devoe,
	o => \outA[1]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\outA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|A|Q32\(2),
	devoe => ww_devoe,
	o => \outA[2]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\outA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|A|Q32\(3),
	devoe => ww_devoe,
	o => \outA[3]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\outA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|A|Q32\(4),
	devoe => ww_devoe,
	o => \outA[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\outA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|A|Q32\(5),
	devoe => ww_devoe,
	o => \outA[5]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\outA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|A|Q32\(6),
	devoe => ww_devoe,
	o => \outA[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\outA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|A|Q32\(7),
	devoe => ww_devoe,
	o => \outA[7]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\outA[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|A|Q32\(8),
	devoe => ww_devoe,
	o => \outA[8]~output_o\);

-- Location: IOOBUF_X79_Y73_N9
\outA[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|A|Q32\(9),
	devoe => ww_devoe,
	o => \outA[9]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\outA[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|A|Q32\(10),
	devoe => ww_devoe,
	o => \outA[10]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\outA[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|A|Q32\(11),
	devoe => ww_devoe,
	o => \outA[11]~output_o\);

-- Location: IOOBUF_X115_Y35_N23
\outA[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|A|Q32\(12),
	devoe => ww_devoe,
	o => \outA[12]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\outA[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|A|Q32\(13),
	devoe => ww_devoe,
	o => \outA[13]~output_o\);

-- Location: IOOBUF_X115_Y32_N9
\outA[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|A|Q32\(14),
	devoe => ww_devoe,
	o => \outA[14]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\outA[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|A|Q32\(15),
	devoe => ww_devoe,
	o => \outA[15]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\outA[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|A|Q32\(16),
	devoe => ww_devoe,
	o => \outA[16]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\outA[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|A|Q32\(17),
	devoe => ww_devoe,
	o => \outA[17]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\outA[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|A|Q32\(18),
	devoe => ww_devoe,
	o => \outA[18]~output_o\);

-- Location: IOOBUF_X0_Y33_N16
\outA[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|A|Q32\(19),
	devoe => ww_devoe,
	o => \outA[19]~output_o\);

-- Location: IOOBUF_X115_Y36_N16
\outA[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|A|Q32\(20),
	devoe => ww_devoe,
	o => \outA[20]~output_o\);

-- Location: IOOBUF_X0_Y33_N23
\outA[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|A|Q32\(21),
	devoe => ww_devoe,
	o => \outA[21]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\outA[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|A|Q32\(22),
	devoe => ww_devoe,
	o => \outA[22]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\outA[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|A|Q32\(23),
	devoe => ww_devoe,
	o => \outA[23]~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\outA[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|A|Q32\(24),
	devoe => ww_devoe,
	o => \outA[24]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\outA[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|A|Q32\(25),
	devoe => ww_devoe,
	o => \outA[25]~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\outA[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|A|Q32\(26),
	devoe => ww_devoe,
	o => \outA[26]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\outA[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|A|Q32\(27),
	devoe => ww_devoe,
	o => \outA[27]~output_o\);

-- Location: IOOBUF_X20_Y73_N23
\outA[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|A|Q32\(28),
	devoe => ww_devoe,
	o => \outA[28]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\outA[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|A|Q32\(29),
	devoe => ww_devoe,
	o => \outA[29]~output_o\);

-- Location: IOOBUF_X79_Y0_N2
\outA[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|A|Q32\(30),
	devoe => ww_devoe,
	o => \outA[30]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\outA[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|A|Q32\(31),
	devoe => ww_devoe,
	o => \outA[31]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\outB[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|B|Q32\(0),
	devoe => ww_devoe,
	o => \outB[0]~output_o\);

-- Location: IOOBUF_X81_Y0_N23
\outB[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|B|Q32\(1),
	devoe => ww_devoe,
	o => \outB[1]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\outB[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|B|Q32\(2),
	devoe => ww_devoe,
	o => \outB[2]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\outB[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|B|Q32\(3),
	devoe => ww_devoe,
	o => \outB[3]~output_o\);

-- Location: IOOBUF_X29_Y73_N9
\outB[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|B|Q32\(4),
	devoe => ww_devoe,
	o => \outB[4]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\outB[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|B|Q32\(5),
	devoe => ww_devoe,
	o => \outB[5]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\outB[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|B|Q32\(6),
	devoe => ww_devoe,
	o => \outB[6]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\outB[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|B|Q32\(7),
	devoe => ww_devoe,
	o => \outB[7]~output_o\);

-- Location: IOOBUF_X0_Y47_N23
\outB[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|B|Q32\(8),
	devoe => ww_devoe,
	o => \outB[8]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\outB[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|B|Q32\(9),
	devoe => ww_devoe,
	o => \outB[9]~output_o\);

-- Location: IOOBUF_X29_Y73_N2
\outB[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|B|Q32\(10),
	devoe => ww_devoe,
	o => \outB[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\outB[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|B|Q32\(11),
	devoe => ww_devoe,
	o => \outB[11]~output_o\);

-- Location: IOOBUF_X27_Y73_N23
\outB[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|B|Q32\(12),
	devoe => ww_devoe,
	o => \outB[12]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\outB[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|B|Q32\(13),
	devoe => ww_devoe,
	o => \outB[13]~output_o\);

-- Location: IOOBUF_X27_Y0_N23
\outB[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|B|Q32\(14),
	devoe => ww_devoe,
	o => \outB[14]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\outB[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|B|Q32\(15),
	devoe => ww_devoe,
	o => \outB[15]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\outB[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|B|Q32\(16),
	devoe => ww_devoe,
	o => \outB[16]~output_o\);

-- Location: IOOBUF_X60_Y0_N16
\outB[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|B|Q32\(17),
	devoe => ww_devoe,
	o => \outB[17]~output_o\);

-- Location: IOOBUF_X0_Y32_N23
\outB[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|B|Q32\(18),
	devoe => ww_devoe,
	o => \outB[18]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\outB[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|B|Q32\(19),
	devoe => ww_devoe,
	o => \outB[19]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\outB[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|B|Q32\(20),
	devoe => ww_devoe,
	o => \outB[20]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\outB[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|B|Q32\(21),
	devoe => ww_devoe,
	o => \outB[21]~output_o\);

-- Location: IOOBUF_X115_Y34_N23
\outB[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|B|Q32\(22),
	devoe => ww_devoe,
	o => \outB[22]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\outB[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|B|Q32\(23),
	devoe => ww_devoe,
	o => \outB[23]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\outB[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|B|Q32\(24),
	devoe => ww_devoe,
	o => \outB[24]~output_o\);

-- Location: IOOBUF_X85_Y0_N2
\outB[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|B|Q32\(25),
	devoe => ww_devoe,
	o => \outB[25]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\outB[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|B|Q32\(26),
	devoe => ww_devoe,
	o => \outB[26]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\outB[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|B|Q32\(27),
	devoe => ww_devoe,
	o => \outB[27]~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\outB[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|B|Q32\(28),
	devoe => ww_devoe,
	o => \outB[28]~output_o\);

-- Location: IOOBUF_X27_Y73_N16
\outB[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|B|Q32\(29),
	devoe => ww_devoe,
	o => \outB[29]~output_o\);

-- Location: IOOBUF_X115_Y36_N2
\outB[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|B|Q32\(30),
	devoe => ww_devoe,
	o => \outB[30]~output_o\);

-- Location: IOOBUF_X115_Y41_N9
\outB[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|B|Q32\(31),
	devoe => ww_devoe,
	o => \outB[31]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\outC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|C|Q~q\,
	devoe => ww_devoe,
	o => \outC~output_o\);

-- Location: IOOBUF_X85_Y73_N2
\outZ~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|Z|Q~q\,
	devoe => ww_devoe,
	o => \outZ~output_o\);

-- Location: IOOBUF_X33_Y0_N9
\outIR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|IR|Q32\(0),
	devoe => ww_devoe,
	o => \outIR[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\outIR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|IR|Q32\(1),
	devoe => ww_devoe,
	o => \outIR[1]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\outIR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|IR|Q32\(2),
	devoe => ww_devoe,
	o => \outIR[2]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\outIR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|IR|Q32\(3),
	devoe => ww_devoe,
	o => \outIR[3]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\outIR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|IR|Q32\(4),
	devoe => ww_devoe,
	o => \outIR[4]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\outIR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|IR|Q32\(5),
	devoe => ww_devoe,
	o => \outIR[5]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\outIR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|IR|Q32\(6),
	devoe => ww_devoe,
	o => \outIR[6]~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\outIR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|IR|Q32\(7),
	devoe => ww_devoe,
	o => \outIR[7]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\outIR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|IR|Q32\(8),
	devoe => ww_devoe,
	o => \outIR[8]~output_o\);

-- Location: IOOBUF_X0_Y29_N16
\outIR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|IR|Q32\(9),
	devoe => ww_devoe,
	o => \outIR[9]~output_o\);

-- Location: IOOBUF_X0_Y28_N16
\outIR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|IR|Q32\(10),
	devoe => ww_devoe,
	o => \outIR[10]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\outIR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|IR|Q32\(11),
	devoe => ww_devoe,
	o => \outIR[11]~output_o\);

-- Location: IOOBUF_X35_Y0_N16
\outIR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|IR|Q32\(12),
	devoe => ww_devoe,
	o => \outIR[12]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\outIR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|IR|Q32\(13),
	devoe => ww_devoe,
	o => \outIR[13]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\outIR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|IR|Q32\(14),
	devoe => ww_devoe,
	o => \outIR[14]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\outIR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|IR|Q32\(15),
	devoe => ww_devoe,
	o => \outIR[15]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\outIR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|IR|Q32\(16),
	devoe => ww_devoe,
	o => \outIR[16]~output_o\);

-- Location: IOOBUF_X47_Y0_N9
\outIR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|IR|Q32\(17),
	devoe => ww_devoe,
	o => \outIR[17]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\outIR[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|IR|Q32\(18),
	devoe => ww_devoe,
	o => \outIR[18]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\outIR[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|IR|Q32\(19),
	devoe => ww_devoe,
	o => \outIR[19]~output_o\);

-- Location: IOOBUF_X47_Y73_N16
\outIR[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|IR|Q32\(20),
	devoe => ww_devoe,
	o => \outIR[20]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\outIR[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|IR|Q32\(21),
	devoe => ww_devoe,
	o => \outIR[21]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\outIR[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|IR|Q32\(22),
	devoe => ww_devoe,
	o => \outIR[22]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\outIR[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|IR|Q32\(23),
	devoe => ww_devoe,
	o => \outIR[23]~output_o\);

-- Location: IOOBUF_X60_Y73_N2
\outIR[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|IR|Q32\(24),
	devoe => ww_devoe,
	o => \outIR[24]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\outIR[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|IR|Q32\(25),
	devoe => ww_devoe,
	o => \outIR[25]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\outIR[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|IR|Q32\(26),
	devoe => ww_devoe,
	o => \outIR[26]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\outIR[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|IR|Q32\(27),
	devoe => ww_devoe,
	o => \outIR[27]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\outIR[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|IR|Q32\(28),
	devoe => ww_devoe,
	o => \outIR[28]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\outIR[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|IR|Q32\(29),
	devoe => ww_devoe,
	o => \outIR[29]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\outIR[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|IR|Q32\(30),
	devoe => ww_devoe,
	o => \outIR[30]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\outIR[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|IR|Q32\(31),
	devoe => ww_devoe,
	o => \outIR[31]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\outPC[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[0]~reg0_q\,
	devoe => ww_devoe,
	o => \outPC[0]~output_o\);

-- Location: IOOBUF_X85_Y0_N23
\outPC[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[1]~reg0_q\,
	devoe => ww_devoe,
	o => \outPC[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\outPC[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[2]~reg0_q\,
	devoe => ww_devoe,
	o => \outPC[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\outPC[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[3]~reg0_q\,
	devoe => ww_devoe,
	o => \outPC[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\outPC[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[4]~reg0_q\,
	devoe => ww_devoe,
	o => \outPC[4]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\outPC[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[5]~reg0_q\,
	devoe => ww_devoe,
	o => \outPC[5]~output_o\);

-- Location: IOOBUF_X81_Y0_N16
\outPC[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[6]~reg0_q\,
	devoe => ww_devoe,
	o => \outPC[6]~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\outPC[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[7]~reg0_q\,
	devoe => ww_devoe,
	o => \outPC[7]~output_o\);

-- Location: IOOBUF_X115_Y29_N9
\outPC[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[8]~reg0_q\,
	devoe => ww_devoe,
	o => \outPC[8]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\outPC[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[9]~reg0_q\,
	devoe => ww_devoe,
	o => \outPC[9]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\outPC[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[10]~reg0_q\,
	devoe => ww_devoe,
	o => \outPC[10]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\outPC[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[11]~reg0_q\,
	devoe => ww_devoe,
	o => \outPC[11]~output_o\);

-- Location: IOOBUF_X52_Y0_N16
\outPC[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[12]~reg0_q\,
	devoe => ww_devoe,
	o => \outPC[12]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\outPC[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[13]~reg0_q\,
	devoe => ww_devoe,
	o => \outPC[13]~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\outPC[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[14]~reg0_q\,
	devoe => ww_devoe,
	o => \outPC[14]~output_o\);

-- Location: IOOBUF_X0_Y29_N23
\outPC[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[15]~reg0_q\,
	devoe => ww_devoe,
	o => \outPC[15]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\outPC[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[16]~reg0_q\,
	devoe => ww_devoe,
	o => \outPC[16]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\outPC[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[17]~reg0_q\,
	devoe => ww_devoe,
	o => \outPC[17]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\outPC[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[18]~reg0_q\,
	devoe => ww_devoe,
	o => \outPC[18]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\outPC[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[19]~reg0_q\,
	devoe => ww_devoe,
	o => \outPC[19]~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\outPC[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[20]~reg0_q\,
	devoe => ww_devoe,
	o => \outPC[20]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\outPC[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[21]~reg0_q\,
	devoe => ww_devoe,
	o => \outPC[21]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\outPC[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[22]~reg0_q\,
	devoe => ww_devoe,
	o => \outPC[22]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\outPC[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[23]~reg0_q\,
	devoe => ww_devoe,
	o => \outPC[23]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\outPC[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[24]~reg0_q\,
	devoe => ww_devoe,
	o => \outPC[24]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\outPC[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[25]~reg0_q\,
	devoe => ww_devoe,
	o => \outPC[25]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\outPC[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[26]~reg0_q\,
	devoe => ww_devoe,
	o => \outPC[26]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\outPC[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[27]~reg0_q\,
	devoe => ww_devoe,
	o => \outPC[27]~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\outPC[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[28]~reg0_q\,
	devoe => ww_devoe,
	o => \outPC[28]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\outPC[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[29]~reg0_q\,
	devoe => ww_devoe,
	o => \outPC[29]~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\outPC[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[30]~reg0_q\,
	devoe => ww_devoe,
	o => \outPC[30]~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\outPC[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[31]~reg0_q\,
	devoe => ww_devoe,
	o => \outPC[31]~output_o\);

-- Location: IOOBUF_X83_Y0_N9
\addrOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[0]~reg0_q\,
	devoe => ww_devoe,
	o => \addrOut[0]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\addrOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[1]~reg0_q\,
	devoe => ww_devoe,
	o => \addrOut[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\addrOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[2]~reg0_q\,
	devoe => ww_devoe,
	o => \addrOut[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\addrOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[3]~reg0_q\,
	devoe => ww_devoe,
	o => \addrOut[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\addrOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[4]~reg0_q\,
	devoe => ww_devoe,
	o => \addrOut[4]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\addrOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|ProgCount|q[5]~reg0_q\,
	devoe => ww_devoe,
	o => \addrOut[5]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\wEn~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \wEn~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\memDataOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|M6|Mux31~4_combout\,
	devoe => ww_devoe,
	o => \memDataOut[0]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\memDataOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|M6|Mux30~3_combout\,
	devoe => ww_devoe,
	o => \memDataOut[1]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\memDataOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|M6|Mux29~3_combout\,
	devoe => ww_devoe,
	o => \memDataOut[2]~output_o\);

-- Location: IOOBUF_X42_Y0_N16
\memDataOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|M6|Mux28~3_combout\,
	devoe => ww_devoe,
	o => \memDataOut[3]~output_o\);

-- Location: IOOBUF_X115_Y35_N16
\memDataOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|M6|Mux27~3_combout\,
	devoe => ww_devoe,
	o => \memDataOut[4]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\memDataOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|M6|Mux26~3_combout\,
	devoe => ww_devoe,
	o => \memDataOut[5]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\memDataOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|M6|Mux25~3_combout\,
	devoe => ww_devoe,
	o => \memDataOut[6]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\memDataOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|M6|Mux24~3_combout\,
	devoe => ww_devoe,
	o => \memDataOut[7]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\memDataOut[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|M6|Mux23~3_combout\,
	devoe => ww_devoe,
	o => \memDataOut[8]~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\memDataOut[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|M6|Mux22~1_combout\,
	devoe => ww_devoe,
	o => \memDataOut[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\memDataOut[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|M6|Mux21~3_combout\,
	devoe => ww_devoe,
	o => \memDataOut[10]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\memDataOut[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|M6|Mux20~3_combout\,
	devoe => ww_devoe,
	o => \memDataOut[11]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\memDataOut[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|M6|Mux19~3_combout\,
	devoe => ww_devoe,
	o => \memDataOut[12]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\memDataOut[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|M6|Mux18~3_combout\,
	devoe => ww_devoe,
	o => \memDataOut[13]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\memDataOut[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|M6|Mux17~3_combout\,
	devoe => ww_devoe,
	o => \memDataOut[14]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\memDataOut[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|M6|Mux16~3_combout\,
	devoe => ww_devoe,
	o => \memDataOut[15]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\memDataOut[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|M6|Mux15~3_combout\,
	devoe => ww_devoe,
	o => \memDataOut[16]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\memDataOut[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|M6|Mux14~3_combout\,
	devoe => ww_devoe,
	o => \memDataOut[17]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\memDataOut[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|M6|Mux13~3_combout\,
	devoe => ww_devoe,
	o => \memDataOut[18]~output_o\);

-- Location: IOOBUF_X33_Y0_N2
\memDataOut[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|M6|Mux12~3_combout\,
	devoe => ww_devoe,
	o => \memDataOut[19]~output_o\);

-- Location: IOOBUF_X0_Y42_N2
\memDataOut[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|M6|Mux11~3_combout\,
	devoe => ww_devoe,
	o => \memDataOut[20]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\memDataOut[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|M6|Mux10~3_combout\,
	devoe => ww_devoe,
	o => \memDataOut[21]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\memDataOut[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|M6|Mux9~3_combout\,
	devoe => ww_devoe,
	o => \memDataOut[22]~output_o\);

-- Location: IOOBUF_X0_Y25_N16
\memDataOut[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|M6|Mux8~3_combout\,
	devoe => ww_devoe,
	o => \memDataOut[23]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\memDataOut[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|M6|Mux7~3_combout\,
	devoe => ww_devoe,
	o => \memDataOut[24]~output_o\);

-- Location: IOOBUF_X58_Y73_N16
\memDataOut[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|M6|Mux6~3_combout\,
	devoe => ww_devoe,
	o => \memDataOut[25]~output_o\);

-- Location: IOOBUF_X49_Y73_N16
\memDataOut[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|M6|Mux5~3_combout\,
	devoe => ww_devoe,
	o => \memDataOut[26]~output_o\);

-- Location: IOOBUF_X79_Y73_N2
\memDataOut[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|M6|Mux4~3_combout\,
	devoe => ww_devoe,
	o => \memDataOut[27]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\memDataOut[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|M6|Mux3~3_combout\,
	devoe => ww_devoe,
	o => \memDataOut[28]~output_o\);

-- Location: IOOBUF_X79_Y0_N9
\memDataOut[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|M6|Mux2~3_combout\,
	devoe => ww_devoe,
	o => \memDataOut[29]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\memDataOut[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|M6|Mux1~3_combout\,
	devoe => ww_devoe,
	o => \memDataOut[30]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\memDataOut[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|Dpth|M6|Mux0~1_combout\,
	devoe => ww_devoe,
	o => \memDataOut[31]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\memDataIn[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \memDataIn[0]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\memDataIn[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \memDataIn[1]~output_o\);

-- Location: IOOBUF_X115_Y31_N9
\memDataIn[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \memDataIn[2]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\memDataIn[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \memDataIn[3]~output_o\);

-- Location: IOOBUF_X0_Y43_N16
\memDataIn[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \memDataIn[4]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\memDataIn[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \memDataIn[5]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\memDataIn[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \memDataIn[6]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\memDataIn[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \memDataIn[7]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\memDataIn[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \memDataIn[8]~output_o\);

-- Location: IOOBUF_X49_Y73_N23
\memDataIn[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \memDataIn[9]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\memDataIn[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \memDataIn[10]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\memDataIn[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \memDataIn[11]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\memDataIn[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \memDataIn[12]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\memDataIn[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \memDataIn[13]~output_o\);

-- Location: IOOBUF_X0_Y32_N16
\memDataIn[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \memDataIn[14]~output_o\);

-- Location: IOOBUF_X27_Y73_N9
\memDataIn[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \memDataIn[15]~output_o\);

-- Location: IOOBUF_X115_Y44_N9
\memDataIn[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => \memDataIn[16]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\memDataIn[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => \memDataIn[17]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\memDataIn[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => \memDataIn[18]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\memDataIn[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => \memDataIn[19]~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\memDataIn[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => \memDataIn[20]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\memDataIn[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => \memDataIn[21]~output_o\);

-- Location: IOOBUF_X23_Y73_N23
\memDataIn[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => \memDataIn[22]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\memDataIn[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => \memDataIn[23]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\memDataIn[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(24),
	devoe => ww_devoe,
	o => \memDataIn[24]~output_o\);

-- Location: IOOBUF_X115_Y33_N9
\memDataIn[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(25),
	devoe => ww_devoe,
	o => \memDataIn[25]~output_o\);

-- Location: IOOBUF_X0_Y42_N9
\memDataIn[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(26),
	devoe => ww_devoe,
	o => \memDataIn[26]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\memDataIn[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(27),
	devoe => ww_devoe,
	o => \memDataIn[27]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\memDataIn[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(28),
	devoe => ww_devoe,
	o => \memDataIn[28]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\memDataIn[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(29),
	devoe => ww_devoe,
	o => \memDataIn[29]~output_o\);

-- Location: IOOBUF_X115_Y40_N9
\memDataIn[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(30),
	devoe => ww_devoe,
	o => \memDataIn[30]~output_o\);

-- Location: IOOBUF_X45_Y73_N9
\memDataIn[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_memory|altsyncram_component|auto_generated|q_a\(31),
	devoe => ww_devoe,
	o => \memDataIn[31]~output_o\);

-- Location: IOOBUF_X83_Y0_N2
\T_Info[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|C1|ALT_INV_T\(0),
	devoe => ww_devoe,
	o => \T_Info[0]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\T_Info[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|C1|T\(1),
	devoe => ww_devoe,
	o => \T_Info[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\T_Info[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|C1|T\(2),
	devoe => ww_devoe,
	o => \T_Info[2]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\wen_mem~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|C1|wen~1_combout\,
	devoe => ww_devoe,
	o => \wen_mem~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\en_mem~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \main_processor|C1|Selector11~0_combout\,
	devoe => ww_devoe,
	o => \en_mem~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\cpuClk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cpuClk,
	o => \cpuClk~input_o\);

-- Location: CLKCTRL_G2
\cpuClk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cpuClk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cpuClk~inputclkctrl_outclk\);

-- Location: LCCOMB_X54_Y35_N8
\main_processor|C1|present_state.state_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|present_state.state_0~0_combout\ = !\main_processor|C1|present_state.state_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|C1|present_state.state_2~q\,
	combout => \main_processor|C1|present_state.state_0~0_combout\);

-- Location: IOIBUF_X56_Y0_N8
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: LCCOMB_X56_Y30_N0
\main_processor|R1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|Add0~0_combout\ = (((!\main_processor|R1|counter\(0) & !\rst~input_o\)))
-- \main_processor|R1|Add0~1\ = CARRY((!\main_processor|R1|counter\(0) & !\rst~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|R1|counter\(0),
	datab => \rst~input_o\,
	datad => VCC,
	combout => \main_processor|R1|Add0~0_combout\,
	cout => \main_processor|R1|Add0~1\);

-- Location: LCCOMB_X55_Y30_N16
\main_processor|R1|counter~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|counter~31_combout\ = (!\main_processor|R1|LessThan0~9_combout\) # (!\main_processor|R1|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|R1|Add0~0_combout\,
	datad => \main_processor|R1|LessThan0~9_combout\,
	combout => \main_processor|R1|counter~31_combout\);

-- Location: FF_X55_Y30_N17
\main_processor|R1|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|R1|counter~31_combout\,
	ena => \main_processor|R1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|R1|counter\(0));

-- Location: LCCOMB_X56_Y30_N2
\main_processor|R1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|Add0~2_combout\ = (\main_processor|R1|Add0~1\ & (((\rst~input_o\)) # (!\main_processor|R1|counter\(1)))) # (!\main_processor|R1|Add0~1\ & (((\main_processor|R1|counter\(1) & !\rst~input_o\)) # (GND)))
-- \main_processor|R1|Add0~3\ = CARRY(((\rst~input_o\) # (!\main_processor|R1|Add0~1\)) # (!\main_processor|R1|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|R1|counter\(1),
	datab => \rst~input_o\,
	datad => VCC,
	cin => \main_processor|R1|Add0~1\,
	combout => \main_processor|R1|Add0~2_combout\,
	cout => \main_processor|R1|Add0~3\);

-- Location: LCCOMB_X55_Y30_N14
\main_processor|R1|counter~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|counter~30_combout\ = (\main_processor|R1|Add0~2_combout\ & \main_processor|R1|LessThan0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|R1|Add0~2_combout\,
	datad => \main_processor|R1|LessThan0~9_combout\,
	combout => \main_processor|R1|counter~30_combout\);

-- Location: FF_X55_Y30_N15
\main_processor|R1|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|R1|counter~30_combout\,
	ena => \main_processor|R1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|R1|counter\(1));

-- Location: LCCOMB_X56_Y30_N4
\main_processor|R1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|Add0~4_combout\ = (\main_processor|R1|Add0~3\ & (!\main_processor|R1|counter\(2) & (!\rst~input_o\ & VCC))) # (!\main_processor|R1|Add0~3\ & ((((!\main_processor|R1|counter\(2) & !\rst~input_o\)))))
-- \main_processor|R1|Add0~5\ = CARRY((!\main_processor|R1|counter\(2) & (!\rst~input_o\ & !\main_processor|R1|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|R1|counter\(2),
	datab => \rst~input_o\,
	datad => VCC,
	cin => \main_processor|R1|Add0~3\,
	combout => \main_processor|R1|Add0~4_combout\,
	cout => \main_processor|R1|Add0~5\);

-- Location: LCCOMB_X57_Y30_N2
\main_processor|R1|counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|counter~4_combout\ = (!\main_processor|R1|Add0~4_combout\) # (!\main_processor|R1|LessThan0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|R1|LessThan0~9_combout\,
	datac => \main_processor|R1|Add0~4_combout\,
	combout => \main_processor|R1|counter~4_combout\);

-- Location: FF_X57_Y30_N3
\main_processor|R1|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|R1|counter~4_combout\,
	ena => \main_processor|R1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|R1|counter\(2));

-- Location: LCCOMB_X56_Y30_N6
\main_processor|R1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|Add0~6_combout\ = (\main_processor|R1|Add0~5\ & ((\rst~input_o\) # ((!\main_processor|R1|counter\(3))))) # (!\main_processor|R1|Add0~5\ & (((!\rst~input_o\ & \main_processor|R1|counter\(3))) # (GND)))
-- \main_processor|R1|Add0~7\ = CARRY((\rst~input_o\) # ((!\main_processor|R1|Add0~5\) # (!\main_processor|R1|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \main_processor|R1|counter\(3),
	datad => VCC,
	cin => \main_processor|R1|Add0~5\,
	combout => \main_processor|R1|Add0~6_combout\,
	cout => \main_processor|R1|Add0~7\);

-- Location: LCCOMB_X57_Y30_N12
\main_processor|R1|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|counter~1_combout\ = (\main_processor|R1|LessThan0~9_combout\ & \main_processor|R1|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|R1|LessThan0~9_combout\,
	datac => \main_processor|R1|Add0~6_combout\,
	combout => \main_processor|R1|counter~1_combout\);

-- Location: FF_X57_Y30_N13
\main_processor|R1|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|R1|counter~1_combout\,
	ena => \main_processor|R1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|R1|counter\(3));

-- Location: LCCOMB_X56_Y30_N8
\main_processor|R1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|Add0~8_combout\ = (\main_processor|R1|Add0~7\ & (!\rst~input_o\ & (\main_processor|R1|counter\(4) & VCC))) # (!\main_processor|R1|Add0~7\ & ((((!\rst~input_o\ & \main_processor|R1|counter\(4))))))
-- \main_processor|R1|Add0~9\ = CARRY((!\rst~input_o\ & (\main_processor|R1|counter\(4) & !\main_processor|R1|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \main_processor|R1|counter\(4),
	datad => VCC,
	cin => \main_processor|R1|Add0~7\,
	combout => \main_processor|R1|Add0~8_combout\,
	cout => \main_processor|R1|Add0~9\);

-- Location: LCCOMB_X57_Y30_N10
\main_processor|R1|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|counter~2_combout\ = (\main_processor|R1|LessThan0~9_combout\ & \main_processor|R1|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|R1|LessThan0~9_combout\,
	datad => \main_processor|R1|Add0~8_combout\,
	combout => \main_processor|R1|counter~2_combout\);

-- Location: FF_X57_Y30_N11
\main_processor|R1|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|R1|counter~2_combout\,
	ena => \main_processor|R1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|R1|counter\(4));

-- Location: LCCOMB_X56_Y30_N10
\main_processor|R1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|Add0~10_combout\ = (\main_processor|R1|Add0~9\ & ((\rst~input_o\) # ((!\main_processor|R1|counter\(5))))) # (!\main_processor|R1|Add0~9\ & (((!\rst~input_o\ & \main_processor|R1|counter\(5))) # (GND)))
-- \main_processor|R1|Add0~11\ = CARRY((\rst~input_o\) # ((!\main_processor|R1|Add0~9\) # (!\main_processor|R1|counter\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \main_processor|R1|counter\(5),
	datad => VCC,
	cin => \main_processor|R1|Add0~9\,
	combout => \main_processor|R1|Add0~10_combout\,
	cout => \main_processor|R1|Add0~11\);

-- Location: LCCOMB_X57_Y30_N28
\main_processor|R1|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|counter~3_combout\ = (\main_processor|R1|LessThan0~9_combout\ & \main_processor|R1|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|R1|LessThan0~9_combout\,
	datad => \main_processor|R1|Add0~10_combout\,
	combout => \main_processor|R1|counter~3_combout\);

-- Location: FF_X57_Y30_N29
\main_processor|R1|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|R1|counter~3_combout\,
	ena => \main_processor|R1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|R1|counter\(5));

-- Location: LCCOMB_X56_Y30_N12
\main_processor|R1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|Add0~12_combout\ = (\main_processor|R1|Add0~11\ & (\main_processor|R1|counter\(6) & (!\rst~input_o\ & VCC))) # (!\main_processor|R1|Add0~11\ & ((((\main_processor|R1|counter\(6) & !\rst~input_o\)))))
-- \main_processor|R1|Add0~13\ = CARRY((\main_processor|R1|counter\(6) & (!\rst~input_o\ & !\main_processor|R1|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|R1|counter\(6),
	datab => \rst~input_o\,
	datad => VCC,
	cin => \main_processor|R1|Add0~11\,
	combout => \main_processor|R1|Add0~12_combout\,
	cout => \main_processor|R1|Add0~13\);

-- Location: LCCOMB_X55_Y30_N12
\main_processor|R1|counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|counter~5_combout\ = (\main_processor|R1|Add0~12_combout\ & \main_processor|R1|LessThan0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|R1|Add0~12_combout\,
	datad => \main_processor|R1|LessThan0~9_combout\,
	combout => \main_processor|R1|counter~5_combout\);

-- Location: FF_X55_Y30_N13
\main_processor|R1|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|R1|counter~5_combout\,
	ena => \main_processor|R1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|R1|counter\(6));

-- Location: LCCOMB_X56_Y30_N14
\main_processor|R1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|Add0~14_combout\ = (\main_processor|R1|Add0~13\ & ((\rst~input_o\) # ((!\main_processor|R1|counter\(7))))) # (!\main_processor|R1|Add0~13\ & (((!\rst~input_o\ & \main_processor|R1|counter\(7))) # (GND)))
-- \main_processor|R1|Add0~15\ = CARRY((\rst~input_o\) # ((!\main_processor|R1|Add0~13\) # (!\main_processor|R1|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \main_processor|R1|counter\(7),
	datad => VCC,
	cin => \main_processor|R1|Add0~13\,
	combout => \main_processor|R1|Add0~14_combout\,
	cout => \main_processor|R1|Add0~15\);

-- Location: LCCOMB_X55_Y30_N22
\main_processor|R1|counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|counter~6_combout\ = (\main_processor|R1|Add0~14_combout\ & \main_processor|R1|LessThan0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|R1|Add0~14_combout\,
	datad => \main_processor|R1|LessThan0~9_combout\,
	combout => \main_processor|R1|counter~6_combout\);

-- Location: FF_X55_Y30_N23
\main_processor|R1|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|R1|counter~6_combout\,
	ena => \main_processor|R1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|R1|counter\(7));

-- Location: LCCOMB_X56_Y30_N16
\main_processor|R1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|Add0~16_combout\ = (\main_processor|R1|Add0~15\ & (!\rst~input_o\ & (\main_processor|R1|counter\(8) & VCC))) # (!\main_processor|R1|Add0~15\ & ((((!\rst~input_o\ & \main_processor|R1|counter\(8))))))
-- \main_processor|R1|Add0~17\ = CARRY((!\rst~input_o\ & (\main_processor|R1|counter\(8) & !\main_processor|R1|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \main_processor|R1|counter\(8),
	datad => VCC,
	cin => \main_processor|R1|Add0~15\,
	combout => \main_processor|R1|Add0~16_combout\,
	cout => \main_processor|R1|Add0~17\);

-- Location: LCCOMB_X55_Y30_N4
\main_processor|R1|counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|counter~7_combout\ = (\main_processor|R1|Add0~16_combout\ & \main_processor|R1|LessThan0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|R1|Add0~16_combout\,
	datad => \main_processor|R1|LessThan0~9_combout\,
	combout => \main_processor|R1|counter~7_combout\);

-- Location: FF_X55_Y30_N5
\main_processor|R1|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|R1|counter~7_combout\,
	ena => \main_processor|R1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|R1|counter\(8));

-- Location: LCCOMB_X56_Y30_N18
\main_processor|R1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|Add0~18_combout\ = (\main_processor|R1|Add0~17\ & (((\rst~input_o\)) # (!\main_processor|R1|counter\(9)))) # (!\main_processor|R1|Add0~17\ & (((\main_processor|R1|counter\(9) & !\rst~input_o\)) # (GND)))
-- \main_processor|R1|Add0~19\ = CARRY(((\rst~input_o\) # (!\main_processor|R1|Add0~17\)) # (!\main_processor|R1|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|R1|counter\(9),
	datab => \rst~input_o\,
	datad => VCC,
	cin => \main_processor|R1|Add0~17\,
	combout => \main_processor|R1|Add0~18_combout\,
	cout => \main_processor|R1|Add0~19\);

-- Location: LCCOMB_X55_Y30_N10
\main_processor|R1|counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|counter~8_combout\ = (\main_processor|R1|LessThan0~9_combout\ & \main_processor|R1|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|R1|LessThan0~9_combout\,
	datad => \main_processor|R1|Add0~18_combout\,
	combout => \main_processor|R1|counter~8_combout\);

-- Location: FF_X55_Y30_N11
\main_processor|R1|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|R1|counter~8_combout\,
	ena => \main_processor|R1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|R1|counter\(9));

-- Location: LCCOMB_X56_Y30_N20
\main_processor|R1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|Add0~20_combout\ = (\main_processor|R1|Add0~19\ & (\main_processor|R1|counter\(10) & (!\rst~input_o\ & VCC))) # (!\main_processor|R1|Add0~19\ & ((((\main_processor|R1|counter\(10) & !\rst~input_o\)))))
-- \main_processor|R1|Add0~21\ = CARRY((\main_processor|R1|counter\(10) & (!\rst~input_o\ & !\main_processor|R1|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|R1|counter\(10),
	datab => \rst~input_o\,
	datad => VCC,
	cin => \main_processor|R1|Add0~19\,
	combout => \main_processor|R1|Add0~20_combout\,
	cout => \main_processor|R1|Add0~21\);

-- Location: LCCOMB_X57_Y30_N6
\main_processor|R1|counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|counter~9_combout\ = (\main_processor|R1|LessThan0~9_combout\ & \main_processor|R1|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|R1|LessThan0~9_combout\,
	datad => \main_processor|R1|Add0~20_combout\,
	combout => \main_processor|R1|counter~9_combout\);

-- Location: FF_X57_Y30_N7
\main_processor|R1|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|R1|counter~9_combout\,
	ena => \main_processor|R1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|R1|counter\(10));

-- Location: LCCOMB_X56_Y30_N22
\main_processor|R1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|Add0~22_combout\ = (\main_processor|R1|Add0~21\ & ((\rst~input_o\) # ((!\main_processor|R1|counter\(11))))) # (!\main_processor|R1|Add0~21\ & (((!\rst~input_o\ & \main_processor|R1|counter\(11))) # (GND)))
-- \main_processor|R1|Add0~23\ = CARRY((\rst~input_o\) # ((!\main_processor|R1|Add0~21\) # (!\main_processor|R1|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \main_processor|R1|counter\(11),
	datad => VCC,
	cin => \main_processor|R1|Add0~21\,
	combout => \main_processor|R1|Add0~22_combout\,
	cout => \main_processor|R1|Add0~23\);

-- Location: LCCOMB_X57_Y30_N0
\main_processor|R1|counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|counter~10_combout\ = (\main_processor|R1|LessThan0~9_combout\ & \main_processor|R1|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|R1|LessThan0~9_combout\,
	datad => \main_processor|R1|Add0~22_combout\,
	combout => \main_processor|R1|counter~10_combout\);

-- Location: FF_X57_Y30_N1
\main_processor|R1|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|R1|counter~10_combout\,
	ena => \main_processor|R1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|R1|counter\(11));

-- Location: LCCOMB_X56_Y30_N24
\main_processor|R1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|Add0~24_combout\ = (\main_processor|R1|Add0~23\ & (!\rst~input_o\ & (\main_processor|R1|counter\(12) & VCC))) # (!\main_processor|R1|Add0~23\ & ((((!\rst~input_o\ & \main_processor|R1|counter\(12))))))
-- \main_processor|R1|Add0~25\ = CARRY((!\rst~input_o\ & (\main_processor|R1|counter\(12) & !\main_processor|R1|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \main_processor|R1|counter\(12),
	datad => VCC,
	cin => \main_processor|R1|Add0~23\,
	combout => \main_processor|R1|Add0~24_combout\,
	cout => \main_processor|R1|Add0~25\);

-- Location: LCCOMB_X57_Y30_N26
\main_processor|R1|counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|counter~11_combout\ = (\main_processor|R1|LessThan0~9_combout\ & \main_processor|R1|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|R1|LessThan0~9_combout\,
	datad => \main_processor|R1|Add0~24_combout\,
	combout => \main_processor|R1|counter~11_combout\);

-- Location: FF_X57_Y30_N27
\main_processor|R1|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|R1|counter~11_combout\,
	ena => \main_processor|R1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|R1|counter\(12));

-- Location: LCCOMB_X56_Y30_N26
\main_processor|R1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|Add0~26_combout\ = (\main_processor|R1|Add0~25\ & (((\rst~input_o\)) # (!\main_processor|R1|counter\(13)))) # (!\main_processor|R1|Add0~25\ & (((\main_processor|R1|counter\(13) & !\rst~input_o\)) # (GND)))
-- \main_processor|R1|Add0~27\ = CARRY(((\rst~input_o\) # (!\main_processor|R1|Add0~25\)) # (!\main_processor|R1|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|R1|counter\(13),
	datab => \rst~input_o\,
	datad => VCC,
	cin => \main_processor|R1|Add0~25\,
	combout => \main_processor|R1|Add0~26_combout\,
	cout => \main_processor|R1|Add0~27\);

-- Location: LCCOMB_X57_Y30_N20
\main_processor|R1|counter~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|counter~12_combout\ = (\main_processor|R1|LessThan0~9_combout\ & \main_processor|R1|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|R1|LessThan0~9_combout\,
	datac => \main_processor|R1|Add0~26_combout\,
	combout => \main_processor|R1|counter~12_combout\);

-- Location: FF_X57_Y30_N21
\main_processor|R1|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|R1|counter~12_combout\,
	ena => \main_processor|R1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|R1|counter\(13));

-- Location: LCCOMB_X56_Y30_N28
\main_processor|R1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|Add0~28_combout\ = (\main_processor|R1|Add0~27\ & (\main_processor|R1|counter\(14) & (!\rst~input_o\ & VCC))) # (!\main_processor|R1|Add0~27\ & ((((\main_processor|R1|counter\(14) & !\rst~input_o\)))))
-- \main_processor|R1|Add0~29\ = CARRY((\main_processor|R1|counter\(14) & (!\rst~input_o\ & !\main_processor|R1|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|R1|counter\(14),
	datab => \rst~input_o\,
	datad => VCC,
	cin => \main_processor|R1|Add0~27\,
	combout => \main_processor|R1|Add0~28_combout\,
	cout => \main_processor|R1|Add0~29\);

-- Location: LCCOMB_X57_Y30_N8
\main_processor|R1|counter~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|counter~13_combout\ = (\main_processor|R1|LessThan0~9_combout\ & \main_processor|R1|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|R1|LessThan0~9_combout\,
	datad => \main_processor|R1|Add0~28_combout\,
	combout => \main_processor|R1|counter~13_combout\);

-- Location: FF_X57_Y30_N9
\main_processor|R1|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|R1|counter~13_combout\,
	ena => \main_processor|R1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|R1|counter\(14));

-- Location: LCCOMB_X56_Y30_N30
\main_processor|R1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|Add0~30_combout\ = (\main_processor|R1|Add0~29\ & ((\rst~input_o\) # ((!\main_processor|R1|counter\(15))))) # (!\main_processor|R1|Add0~29\ & (((!\rst~input_o\ & \main_processor|R1|counter\(15))) # (GND)))
-- \main_processor|R1|Add0~31\ = CARRY((\rst~input_o\) # ((!\main_processor|R1|Add0~29\) # (!\main_processor|R1|counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \main_processor|R1|counter\(15),
	datad => VCC,
	cin => \main_processor|R1|Add0~29\,
	combout => \main_processor|R1|Add0~30_combout\,
	cout => \main_processor|R1|Add0~31\);

-- Location: LCCOMB_X57_Y30_N22
\main_processor|R1|counter~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|counter~14_combout\ = (\main_processor|R1|LessThan0~9_combout\ & \main_processor|R1|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|R1|LessThan0~9_combout\,
	datad => \main_processor|R1|Add0~30_combout\,
	combout => \main_processor|R1|counter~14_combout\);

-- Location: FF_X57_Y30_N23
\main_processor|R1|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|R1|counter~14_combout\,
	ena => \main_processor|R1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|R1|counter\(15));

-- Location: LCCOMB_X56_Y29_N0
\main_processor|R1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|Add0~32_combout\ = (\main_processor|R1|Add0~31\ & (\main_processor|R1|counter\(16) & (!\rst~input_o\ & VCC))) # (!\main_processor|R1|Add0~31\ & ((((\main_processor|R1|counter\(16) & !\rst~input_o\)))))
-- \main_processor|R1|Add0~33\ = CARRY((\main_processor|R1|counter\(16) & (!\rst~input_o\ & !\main_processor|R1|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|R1|counter\(16),
	datab => \rst~input_o\,
	datad => VCC,
	cin => \main_processor|R1|Add0~31\,
	combout => \main_processor|R1|Add0~32_combout\,
	cout => \main_processor|R1|Add0~33\);

-- Location: LCCOMB_X57_Y30_N4
\main_processor|R1|counter~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|counter~15_combout\ = (\main_processor|R1|LessThan0~9_combout\ & \main_processor|R1|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|R1|LessThan0~9_combout\,
	datad => \main_processor|R1|Add0~32_combout\,
	combout => \main_processor|R1|counter~15_combout\);

-- Location: FF_X57_Y30_N5
\main_processor|R1|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|R1|counter~15_combout\,
	ena => \main_processor|R1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|R1|counter\(16));

-- Location: LCCOMB_X56_Y29_N2
\main_processor|R1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|Add0~34_combout\ = (\main_processor|R1|Add0~33\ & (((\rst~input_o\)) # (!\main_processor|R1|counter\(17)))) # (!\main_processor|R1|Add0~33\ & (((\main_processor|R1|counter\(17) & !\rst~input_o\)) # (GND)))
-- \main_processor|R1|Add0~35\ = CARRY(((\rst~input_o\) # (!\main_processor|R1|Add0~33\)) # (!\main_processor|R1|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|R1|counter\(17),
	datab => \rst~input_o\,
	datad => VCC,
	cin => \main_processor|R1|Add0~33\,
	combout => \main_processor|R1|Add0~34_combout\,
	cout => \main_processor|R1|Add0~35\);

-- Location: LCCOMB_X57_Y30_N18
\main_processor|R1|counter~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|counter~16_combout\ = (\main_processor|R1|LessThan0~9_combout\ & \main_processor|R1|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|R1|LessThan0~9_combout\,
	datad => \main_processor|R1|Add0~34_combout\,
	combout => \main_processor|R1|counter~16_combout\);

-- Location: FF_X57_Y30_N19
\main_processor|R1|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|R1|counter~16_combout\,
	ena => \main_processor|R1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|R1|counter\(17));

-- Location: LCCOMB_X56_Y29_N4
\main_processor|R1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|Add0~36_combout\ = (\main_processor|R1|Add0~35\ & (\main_processor|R1|counter\(18) & (!\rst~input_o\ & VCC))) # (!\main_processor|R1|Add0~35\ & ((((\main_processor|R1|counter\(18) & !\rst~input_o\)))))
-- \main_processor|R1|Add0~37\ = CARRY((\main_processor|R1|counter\(18) & (!\rst~input_o\ & !\main_processor|R1|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|R1|counter\(18),
	datab => \rst~input_o\,
	datad => VCC,
	cin => \main_processor|R1|Add0~35\,
	combout => \main_processor|R1|Add0~36_combout\,
	cout => \main_processor|R1|Add0~37\);

-- Location: LCCOMB_X55_Y29_N26
\main_processor|R1|counter~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|counter~17_combout\ = (\main_processor|R1|LessThan0~9_combout\ & \main_processor|R1|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|R1|LessThan0~9_combout\,
	datad => \main_processor|R1|Add0~36_combout\,
	combout => \main_processor|R1|counter~17_combout\);

-- Location: FF_X55_Y29_N27
\main_processor|R1|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|R1|counter~17_combout\,
	ena => \main_processor|R1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|R1|counter\(18));

-- Location: LCCOMB_X56_Y29_N6
\main_processor|R1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|Add0~38_combout\ = (\main_processor|R1|Add0~37\ & (((\rst~input_o\)) # (!\main_processor|R1|counter\(19)))) # (!\main_processor|R1|Add0~37\ & (((\main_processor|R1|counter\(19) & !\rst~input_o\)) # (GND)))
-- \main_processor|R1|Add0~39\ = CARRY(((\rst~input_o\) # (!\main_processor|R1|Add0~37\)) # (!\main_processor|R1|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|R1|counter\(19),
	datab => \rst~input_o\,
	datad => VCC,
	cin => \main_processor|R1|Add0~37\,
	combout => \main_processor|R1|Add0~38_combout\,
	cout => \main_processor|R1|Add0~39\);

-- Location: LCCOMB_X55_Y29_N8
\main_processor|R1|counter~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|counter~18_combout\ = (\main_processor|R1|LessThan0~9_combout\ & \main_processor|R1|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|R1|LessThan0~9_combout\,
	datad => \main_processor|R1|Add0~38_combout\,
	combout => \main_processor|R1|counter~18_combout\);

-- Location: FF_X55_Y29_N9
\main_processor|R1|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|R1|counter~18_combout\,
	ena => \main_processor|R1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|R1|counter\(19));

-- Location: LCCOMB_X56_Y29_N8
\main_processor|R1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|Add0~40_combout\ = (\main_processor|R1|Add0~39\ & (\main_processor|R1|counter\(20) & (!\rst~input_o\ & VCC))) # (!\main_processor|R1|Add0~39\ & ((((\main_processor|R1|counter\(20) & !\rst~input_o\)))))
-- \main_processor|R1|Add0~41\ = CARRY((\main_processor|R1|counter\(20) & (!\rst~input_o\ & !\main_processor|R1|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|R1|counter\(20),
	datab => \rst~input_o\,
	datad => VCC,
	cin => \main_processor|R1|Add0~39\,
	combout => \main_processor|R1|Add0~40_combout\,
	cout => \main_processor|R1|Add0~41\);

-- Location: LCCOMB_X55_Y30_N30
\main_processor|R1|counter~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|counter~19_combout\ = (\main_processor|R1|Add0~40_combout\ & \main_processor|R1|LessThan0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|R1|Add0~40_combout\,
	datad => \main_processor|R1|LessThan0~9_combout\,
	combout => \main_processor|R1|counter~19_combout\);

-- Location: FF_X55_Y29_N11
\main_processor|R1|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|R1|counter~19_combout\,
	sload => VCC,
	ena => \main_processor|R1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|R1|counter\(20));

-- Location: LCCOMB_X56_Y29_N10
\main_processor|R1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|Add0~42_combout\ = (\main_processor|R1|Add0~41\ & (((\rst~input_o\)) # (!\main_processor|R1|counter\(21)))) # (!\main_processor|R1|Add0~41\ & (((\main_processor|R1|counter\(21) & !\rst~input_o\)) # (GND)))
-- \main_processor|R1|Add0~43\ = CARRY(((\rst~input_o\) # (!\main_processor|R1|Add0~41\)) # (!\main_processor|R1|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|R1|counter\(21),
	datab => \rst~input_o\,
	datad => VCC,
	cin => \main_processor|R1|Add0~41\,
	combout => \main_processor|R1|Add0~42_combout\,
	cout => \main_processor|R1|Add0~43\);

-- Location: LCCOMB_X55_Y29_N16
\main_processor|R1|counter~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|counter~20_combout\ = (\main_processor|R1|Add0~42_combout\ & \main_processor|R1|LessThan0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|R1|Add0~42_combout\,
	datad => \main_processor|R1|LessThan0~9_combout\,
	combout => \main_processor|R1|counter~20_combout\);

-- Location: FF_X55_Y29_N17
\main_processor|R1|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|R1|counter~20_combout\,
	ena => \main_processor|R1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|R1|counter\(21));

-- Location: LCCOMB_X56_Y29_N12
\main_processor|R1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|Add0~44_combout\ = (\main_processor|R1|Add0~43\ & (!\rst~input_o\ & (\main_processor|R1|counter\(22) & VCC))) # (!\main_processor|R1|Add0~43\ & ((((!\rst~input_o\ & \main_processor|R1|counter\(22))))))
-- \main_processor|R1|Add0~45\ = CARRY((!\rst~input_o\ & (\main_processor|R1|counter\(22) & !\main_processor|R1|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \main_processor|R1|counter\(22),
	datad => VCC,
	cin => \main_processor|R1|Add0~43\,
	combout => \main_processor|R1|Add0~44_combout\,
	cout => \main_processor|R1|Add0~45\);

-- Location: LCCOMB_X55_Y29_N14
\main_processor|R1|counter~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|counter~21_combout\ = (\main_processor|R1|Add0~44_combout\ & \main_processor|R1|LessThan0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|R1|Add0~44_combout\,
	datad => \main_processor|R1|LessThan0~9_combout\,
	combout => \main_processor|R1|counter~21_combout\);

-- Location: FF_X55_Y29_N15
\main_processor|R1|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|R1|counter~21_combout\,
	ena => \main_processor|R1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|R1|counter\(22));

-- Location: LCCOMB_X56_Y29_N14
\main_processor|R1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|Add0~46_combout\ = (\main_processor|R1|Add0~45\ & ((\rst~input_o\) # ((!\main_processor|R1|counter\(23))))) # (!\main_processor|R1|Add0~45\ & (((!\rst~input_o\ & \main_processor|R1|counter\(23))) # (GND)))
-- \main_processor|R1|Add0~47\ = CARRY((\rst~input_o\) # ((!\main_processor|R1|Add0~45\) # (!\main_processor|R1|counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \main_processor|R1|counter\(23),
	datad => VCC,
	cin => \main_processor|R1|Add0~45\,
	combout => \main_processor|R1|Add0~46_combout\,
	cout => \main_processor|R1|Add0~47\);

-- Location: LCCOMB_X55_Y29_N28
\main_processor|R1|counter~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|counter~22_combout\ = (\main_processor|R1|Add0~46_combout\ & \main_processor|R1|LessThan0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|R1|Add0~46_combout\,
	datad => \main_processor|R1|LessThan0~9_combout\,
	combout => \main_processor|R1|counter~22_combout\);

-- Location: FF_X55_Y29_N29
\main_processor|R1|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|R1|counter~22_combout\,
	ena => \main_processor|R1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|R1|counter\(23));

-- Location: LCCOMB_X56_Y29_N16
\main_processor|R1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|Add0~48_combout\ = (\main_processor|R1|Add0~47\ & (!\rst~input_o\ & (\main_processor|R1|counter\(24) & VCC))) # (!\main_processor|R1|Add0~47\ & ((((!\rst~input_o\ & \main_processor|R1|counter\(24))))))
-- \main_processor|R1|Add0~49\ = CARRY((!\rst~input_o\ & (\main_processor|R1|counter\(24) & !\main_processor|R1|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \main_processor|R1|counter\(24),
	datad => VCC,
	cin => \main_processor|R1|Add0~47\,
	combout => \main_processor|R1|Add0~48_combout\,
	cout => \main_processor|R1|Add0~49\);

-- Location: LCCOMB_X55_Y29_N6
\main_processor|R1|counter~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|counter~23_combout\ = (\main_processor|R1|LessThan0~9_combout\ & \main_processor|R1|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|R1|LessThan0~9_combout\,
	datad => \main_processor|R1|Add0~48_combout\,
	combout => \main_processor|R1|counter~23_combout\);

-- Location: FF_X55_Y29_N7
\main_processor|R1|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|R1|counter~23_combout\,
	ena => \main_processor|R1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|R1|counter\(24));

-- Location: LCCOMB_X56_Y29_N18
\main_processor|R1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|Add0~50_combout\ = (\main_processor|R1|Add0~49\ & ((\rst~input_o\) # ((!\main_processor|R1|counter\(25))))) # (!\main_processor|R1|Add0~49\ & (((!\rst~input_o\ & \main_processor|R1|counter\(25))) # (GND)))
-- \main_processor|R1|Add0~51\ = CARRY((\rst~input_o\) # ((!\main_processor|R1|Add0~49\) # (!\main_processor|R1|counter\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \main_processor|R1|counter\(25),
	datad => VCC,
	cin => \main_processor|R1|Add0~49\,
	combout => \main_processor|R1|Add0~50_combout\,
	cout => \main_processor|R1|Add0~51\);

-- Location: LCCOMB_X55_Y29_N20
\main_processor|R1|counter~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|counter~24_combout\ = (\main_processor|R1|LessThan0~9_combout\ & \main_processor|R1|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|R1|LessThan0~9_combout\,
	datad => \main_processor|R1|Add0~50_combout\,
	combout => \main_processor|R1|counter~24_combout\);

-- Location: FF_X55_Y29_N21
\main_processor|R1|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|R1|counter~24_combout\,
	ena => \main_processor|R1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|R1|counter\(25));

-- Location: LCCOMB_X56_Y29_N20
\main_processor|R1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|Add0~52_combout\ = (\main_processor|R1|Add0~51\ & (!\rst~input_o\ & (\main_processor|R1|counter\(26) & VCC))) # (!\main_processor|R1|Add0~51\ & ((((!\rst~input_o\ & \main_processor|R1|counter\(26))))))
-- \main_processor|R1|Add0~53\ = CARRY((!\rst~input_o\ & (\main_processor|R1|counter\(26) & !\main_processor|R1|Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \main_processor|R1|counter\(26),
	datad => VCC,
	cin => \main_processor|R1|Add0~51\,
	combout => \main_processor|R1|Add0~52_combout\,
	cout => \main_processor|R1|Add0~53\);

-- Location: LCCOMB_X57_Y29_N24
\main_processor|R1|counter~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|counter~26_combout\ = (\main_processor|R1|LessThan0~9_combout\ & \main_processor|R1|Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|R1|LessThan0~9_combout\,
	datad => \main_processor|R1|Add0~52_combout\,
	combout => \main_processor|R1|counter~26_combout\);

-- Location: FF_X57_Y29_N25
\main_processor|R1|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|R1|counter~26_combout\,
	ena => \main_processor|R1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|R1|counter\(26));

-- Location: LCCOMB_X56_Y29_N22
\main_processor|R1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|Add0~54_combout\ = (\main_processor|R1|Add0~53\ & ((\rst~input_o\) # ((!\main_processor|R1|counter\(27))))) # (!\main_processor|R1|Add0~53\ & (((!\rst~input_o\ & \main_processor|R1|counter\(27))) # (GND)))
-- \main_processor|R1|Add0~55\ = CARRY((\rst~input_o\) # ((!\main_processor|R1|Add0~53\) # (!\main_processor|R1|counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \main_processor|R1|counter\(27),
	datad => VCC,
	cin => \main_processor|R1|Add0~53\,
	combout => \main_processor|R1|Add0~54_combout\,
	cout => \main_processor|R1|Add0~55\);

-- Location: LCCOMB_X57_Y29_N10
\main_processor|R1|counter~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|counter~27_combout\ = (\main_processor|R1|LessThan0~9_combout\ & \main_processor|R1|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|R1|LessThan0~9_combout\,
	datad => \main_processor|R1|Add0~54_combout\,
	combout => \main_processor|R1|counter~27_combout\);

-- Location: FF_X57_Y29_N11
\main_processor|R1|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|R1|counter~27_combout\,
	ena => \main_processor|R1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|R1|counter\(27));

-- Location: LCCOMB_X56_Y29_N24
\main_processor|R1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|Add0~56_combout\ = (\main_processor|R1|Add0~55\ & (!\rst~input_o\ & (\main_processor|R1|counter\(28) & VCC))) # (!\main_processor|R1|Add0~55\ & ((((!\rst~input_o\ & \main_processor|R1|counter\(28))))))
-- \main_processor|R1|Add0~57\ = CARRY((!\rst~input_o\ & (\main_processor|R1|counter\(28) & !\main_processor|R1|Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \main_processor|R1|counter\(28),
	datad => VCC,
	cin => \main_processor|R1|Add0~55\,
	combout => \main_processor|R1|Add0~56_combout\,
	cout => \main_processor|R1|Add0~57\);

-- Location: LCCOMB_X55_Y29_N22
\main_processor|R1|counter~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|counter~28_combout\ = (\main_processor|R1|LessThan0~9_combout\ & \main_processor|R1|Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|R1|LessThan0~9_combout\,
	datad => \main_processor|R1|Add0~56_combout\,
	combout => \main_processor|R1|counter~28_combout\);

-- Location: FF_X55_Y29_N23
\main_processor|R1|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|R1|counter~28_combout\,
	ena => \main_processor|R1|LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|R1|counter\(28));

-- Location: LCCOMB_X56_Y29_N26
\main_processor|R1|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|Add0~58_combout\ = (\main_processor|R1|Add0~57\ & ((\rst~input_o\) # ((!\main_processor|R1|counter\(29))))) # (!\main_processor|R1|Add0~57\ & (((!\rst~input_o\ & \main_processor|R1|counter\(29))) # (GND)))
-- \main_processor|R1|Add0~59\ = CARRY((\rst~input_o\) # ((!\main_processor|R1|Add0~57\) # (!\main_processor|R1|counter\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \main_processor|R1|counter\(29),
	datad => VCC,
	cin => \main_processor|R1|Add0~57\,
	combout => \main_processor|R1|Add0~58_combout\,
	cout => \main_processor|R1|Add0~59\);

-- Location: LCCOMB_X55_Y29_N0
\main_processor|R1|counter[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|counter[29]~29_combout\ = (\main_processor|R1|LessThan0~9_combout\ & ((\main_processor|R1|Add0~58_combout\))) # (!\main_processor|R1|LessThan0~9_combout\ & (\main_processor|R1|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|R1|LessThan0~9_combout\,
	datac => \main_processor|R1|counter\(29),
	datad => \main_processor|R1|Add0~58_combout\,
	combout => \main_processor|R1|counter[29]~29_combout\);

-- Location: FF_X55_Y29_N1
\main_processor|R1|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|R1|counter[29]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|R1|counter\(29));

-- Location: LCCOMB_X56_Y29_N28
\main_processor|R1|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|Add0~60_combout\ = (\main_processor|R1|Add0~59\ & (\main_processor|R1|counter\(30) & (!\rst~input_o\ & VCC))) # (!\main_processor|R1|Add0~59\ & ((((\main_processor|R1|counter\(30) & !\rst~input_o\)))))
-- \main_processor|R1|Add0~61\ = CARRY((\main_processor|R1|counter\(30) & (!\rst~input_o\ & !\main_processor|R1|Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|R1|counter\(30),
	datab => \rst~input_o\,
	datad => VCC,
	cin => \main_processor|R1|Add0~59\,
	combout => \main_processor|R1|Add0~60_combout\,
	cout => \main_processor|R1|Add0~61\);

-- Location: LCCOMB_X55_Y29_N24
\main_processor|R1|counter[30]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|counter[30]~25_combout\ = (\main_processor|R1|LessThan0~9_combout\ & ((\main_processor|R1|Add0~60_combout\))) # (!\main_processor|R1|LessThan0~9_combout\ & (\main_processor|R1|counter\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|R1|LessThan0~9_combout\,
	datac => \main_processor|R1|counter\(30),
	datad => \main_processor|R1|Add0~60_combout\,
	combout => \main_processor|R1|counter[30]~25_combout\);

-- Location: FF_X55_Y29_N25
\main_processor|R1|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|R1|counter[30]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|R1|counter\(30));

-- Location: LCCOMB_X56_Y29_N30
\main_processor|R1|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|Add0~62_combout\ = \main_processor|R1|Add0~61\ $ (((\main_processor|R1|counter\(31) & !\rst~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|R1|counter\(31),
	datad => \rst~input_o\,
	cin => \main_processor|R1|Add0~61\,
	combout => \main_processor|R1|Add0~62_combout\);

-- Location: LCCOMB_X55_Y29_N12
\main_processor|R1|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|counter~0_combout\ = (\main_processor|R1|Add0~62_combout\ & \main_processor|R1|LessThan0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|R1|Add0~62_combout\,
	datad => \main_processor|R1|LessThan0~9_combout\,
	combout => \main_processor|R1|counter~0_combout\);

-- Location: FF_X55_Y29_N13
\main_processor|R1|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|R1|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|R1|counter\(31));

-- Location: LCCOMB_X55_Y29_N10
\main_processor|R1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|LessThan0~5_combout\ = (\main_processor|R1|counter\(18)) # ((\main_processor|R1|counter\(19)) # ((\main_processor|R1|counter\(20)) # (\main_processor|R1|counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|R1|counter\(18),
	datab => \main_processor|R1|counter\(19),
	datac => \main_processor|R1|counter\(20),
	datad => \main_processor|R1|counter\(21),
	combout => \main_processor|R1|LessThan0~5_combout\);

-- Location: LCCOMB_X55_Y29_N30
\main_processor|R1|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|LessThan0~6_combout\ = (\main_processor|R1|counter\(24)) # ((\main_processor|R1|counter\(25)) # ((\main_processor|R1|counter\(22)) # (\main_processor|R1|counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|R1|counter\(24),
	datab => \main_processor|R1|counter\(25),
	datac => \main_processor|R1|counter\(22),
	datad => \main_processor|R1|counter\(23),
	combout => \main_processor|R1|LessThan0~6_combout\);

-- Location: LCCOMB_X55_Y29_N18
\main_processor|R1|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|LessThan0~7_combout\ = (\main_processor|R1|counter\(27)) # ((\main_processor|R1|counter\(29)) # ((\main_processor|R1|counter\(28)) # (\main_processor|R1|counter\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|R1|counter\(27),
	datab => \main_processor|R1|counter\(29),
	datac => \main_processor|R1|counter\(28),
	datad => \main_processor|R1|counter\(26),
	combout => \main_processor|R1|LessThan0~7_combout\);

-- Location: LCCOMB_X55_Y29_N4
\main_processor|R1|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|LessThan0~8_combout\ = (\main_processor|R1|LessThan0~5_combout\) # ((\main_processor|R1|counter\(30)) # ((\main_processor|R1|LessThan0~6_combout\) # (\main_processor|R1|LessThan0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|R1|LessThan0~5_combout\,
	datab => \main_processor|R1|counter\(30),
	datac => \main_processor|R1|LessThan0~6_combout\,
	datad => \main_processor|R1|LessThan0~7_combout\,
	combout => \main_processor|R1|LessThan0~8_combout\);

-- Location: LCCOMB_X55_Y30_N24
\main_processor|R1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|LessThan0~1_combout\ = (\main_processor|R1|counter\(6)) # ((\main_processor|R1|counter\(8)) # ((\main_processor|R1|counter\(7)) # (\main_processor|R1|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|R1|counter\(6),
	datab => \main_processor|R1|counter\(8),
	datac => \main_processor|R1|counter\(7),
	datad => \main_processor|R1|counter\(9),
	combout => \main_processor|R1|LessThan0~1_combout\);

-- Location: LCCOMB_X57_Y30_N16
\main_processor|R1|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|LessThan0~0_combout\ = (\main_processor|R1|counter\(3)) # ((\main_processor|R1|counter\(5)) # ((\main_processor|R1|counter\(4)) # (!\main_processor|R1|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|R1|counter\(3),
	datab => \main_processor|R1|counter\(5),
	datac => \main_processor|R1|counter\(4),
	datad => \main_processor|R1|counter\(2),
	combout => \main_processor|R1|LessThan0~0_combout\);

-- Location: LCCOMB_X57_Y30_N14
\main_processor|R1|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|LessThan0~2_combout\ = (\main_processor|R1|counter\(10)) # ((\main_processor|R1|counter\(13)) # ((\main_processor|R1|counter\(12)) # (\main_processor|R1|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|R1|counter\(10),
	datab => \main_processor|R1|counter\(13),
	datac => \main_processor|R1|counter\(12),
	datad => \main_processor|R1|counter\(11),
	combout => \main_processor|R1|LessThan0~2_combout\);

-- Location: LCCOMB_X57_Y30_N24
\main_processor|R1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|LessThan0~3_combout\ = (\main_processor|R1|counter\(15)) # ((\main_processor|R1|counter\(17)) # ((\main_processor|R1|counter\(14)) # (\main_processor|R1|counter\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|R1|counter\(15),
	datab => \main_processor|R1|counter\(17),
	datac => \main_processor|R1|counter\(14),
	datad => \main_processor|R1|counter\(16),
	combout => \main_processor|R1|LessThan0~3_combout\);

-- Location: LCCOMB_X57_Y30_N30
\main_processor|R1|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|LessThan0~4_combout\ = (\main_processor|R1|LessThan0~1_combout\) # ((\main_processor|R1|LessThan0~0_combout\) # ((\main_processor|R1|LessThan0~2_combout\) # (\main_processor|R1|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|R1|LessThan0~1_combout\,
	datab => \main_processor|R1|LessThan0~0_combout\,
	datac => \main_processor|R1|LessThan0~2_combout\,
	datad => \main_processor|R1|LessThan0~3_combout\,
	combout => \main_processor|R1|LessThan0~4_combout\);

-- Location: LCCOMB_X55_Y29_N2
\main_processor|R1|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|LessThan0~9_combout\ = (\main_processor|R1|counter\(31)) # ((\rst~input_o\) # ((!\main_processor|R1|LessThan0~8_combout\ & !\main_processor|R1|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|R1|counter\(31),
	datab => \main_processor|R1|LessThan0~8_combout\,
	datac => \rst~input_o\,
	datad => \main_processor|R1|LessThan0~4_combout\,
	combout => \main_processor|R1|LessThan0~9_combout\);

-- Location: LCCOMB_X54_Y32_N2
\main_processor|R1|Enable_PD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|R1|Enable_PD~0_combout\ = !\main_processor|R1|LessThan0~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|R1|LessThan0~9_combout\,
	combout => \main_processor|R1|Enable_PD~0_combout\);

-- Location: FF_X54_Y32_N3
\main_processor|R1|Enable_PD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|R1|Enable_PD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|R1|Enable_PD~q\);

-- Location: CLKCTRL_G18
\main_processor|R1|Enable_PD~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \main_processor|R1|Enable_PD~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \main_processor|R1|Enable_PD~clkctrl_outclk\);

-- Location: FF_X54_Y35_N9
\main_processor|C1|present_state.state_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|C1|present_state.state_0~0_combout\,
	clrn => \main_processor|R1|Enable_PD~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|C1|present_state.state_0~q\);

-- Location: LCCOMB_X54_Y35_N28
\main_processor|C1|present_state.state_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|present_state.state_1~0_combout\ = !\main_processor|C1|present_state.state_0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|C1|present_state.state_0~q\,
	combout => \main_processor|C1|present_state.state_1~0_combout\);

-- Location: FF_X54_Y35_N29
\main_processor|C1|present_state.state_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|C1|present_state.state_1~0_combout\,
	clrn => \main_processor|R1|Enable_PD~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|C1|present_state.state_1~q\);

-- Location: LCCOMB_X54_Y35_N14
\main_processor|C1|present_state.state_2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|present_state.state_2~feeder_combout\ = \main_processor|C1|present_state.state_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_processor|C1|present_state.state_1~q\,
	combout => \main_processor|C1|present_state.state_2~feeder_combout\);

-- Location: FF_X54_Y35_N15
\main_processor|C1|present_state.state_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|C1|present_state.state_2~feeder_combout\,
	clrn => \main_processor|R1|Enable_PD~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|C1|present_state.state_2~q\);

-- Location: LCCOMB_X54_Y35_N26
\main_processor|C1|DATA_Mux~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|DATA_Mux~1_combout\ = (\main_processor|Dpth|IR|Q32\(31)) # (!\main_processor|C1|present_state.state_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|present_state.state_2~q\,
	datac => \main_processor|Dpth|IR|Q32\(31),
	combout => \main_processor|C1|DATA_Mux~1_combout\);

-- Location: LCCOMB_X54_Y35_N12
\main_processor|C1|DATA_Mux[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|DATA_Mux\(1) = (GLOBAL(\main_processor|R1|Enable_PD~clkctrl_outclk\) & ((!\main_processor|C1|DATA_Mux~1_combout\))) # (!GLOBAL(\main_processor|R1|Enable_PD~clkctrl_outclk\) & (\main_processor|C1|DATA_Mux\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datac => \main_processor|C1|DATA_Mux~1_combout\,
	datad => \main_processor|R1|Enable_PD~clkctrl_outclk\,
	combout => \main_processor|C1|DATA_Mux\(1));

-- Location: LCCOMB_X54_Y35_N4
\main_processor|C1|DATA_Mux~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|DATA_Mux~0_combout\ = (\main_processor|C1|present_state.state_2~q\ & \main_processor|Dpth|IR|Q32\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|C1|present_state.state_2~q\,
	datac => \main_processor|Dpth|IR|Q32\(31),
	combout => \main_processor|C1|DATA_Mux~0_combout\);

-- Location: LCCOMB_X54_Y35_N10
\main_processor|C1|DATA_Mux[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|DATA_Mux\(0) = (GLOBAL(\main_processor|R1|Enable_PD~clkctrl_outclk\) & ((\main_processor|C1|DATA_Mux~0_combout\))) # (!GLOBAL(\main_processor|R1|Enable_PD~clkctrl_outclk\) & (\main_processor|C1|DATA_Mux\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(0),
	datac => \main_processor|C1|DATA_Mux~0_combout\,
	datad => \main_processor|R1|Enable_PD~clkctrl_outclk\,
	combout => \main_processor|C1|DATA_Mux\(0));

-- Location: LCCOMB_X48_Y38_N0
\main_processor|Dpth|M6|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux31~3_combout\ = (\main_processor|C1|DATA_Mux\(1) & !\main_processor|C1|DATA_Mux\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|C1|DATA_Mux\(1),
	datad => \main_processor|C1|DATA_Mux\(0),
	combout => \main_processor|Dpth|M6|Mux31~3_combout\);

-- Location: LCCOMB_X52_Y36_N8
\main_processor|Dpth|M2|Out2[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M2|Out2[7]~7_combout\ = (\main_processor|C1|A_Mux~combout\ & (\main_processor|Dpth|IR|Q32\(7))) # (!\main_processor|C1|A_Mux~combout\ & ((\main_processor|Dpth|M6|Mux24~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|IR|Q32\(7),
	datac => \main_processor|C1|A_Mux~combout\,
	datad => \main_processor|Dpth|M6|Mux24~3_combout\,
	combout => \main_processor|Dpth|M2|Out2[7]~7_combout\);

-- Location: LCCOMB_X55_Y37_N20
\main_processor|C1|IM_MUX2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|IM_MUX2~1_combout\ = (\main_processor|Dpth|IR|Q32\(24) & (\main_processor|Dpth|IR|Q32\(29) & !\main_processor|Dpth|IR|Q32\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|IR|Q32\(24),
	datac => \main_processor|Dpth|IR|Q32\(29),
	datad => \main_processor|Dpth|IR|Q32\(25),
	combout => \main_processor|C1|IM_MUX2~1_combout\);

-- Location: LCCOMB_X54_Y39_N30
\main_processor|C1|IM_MUX2[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|IM_MUX2\(0) = (GLOBAL(\main_processor|R1|Enable_PD~clkctrl_outclk\) & (\main_processor|C1|IM_MUX2~1_combout\)) # (!GLOBAL(\main_processor|R1|Enable_PD~clkctrl_outclk\) & ((\main_processor|C1|IM_MUX2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|C1|IM_MUX2~1_combout\,
	datac => \main_processor|C1|IM_MUX2\(0),
	datad => \main_processor|R1|Enable_PD~clkctrl_outclk\,
	combout => \main_processor|C1|IM_MUX2\(0));

-- Location: IOIBUF_X0_Y36_N15
\memClk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_memClk,
	o => \memClk~input_o\);

-- Location: CLKCTRL_G4
\memClk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \memClk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \memClk~inputclkctrl_outclk\);

-- Location: LCCOMB_X52_Y35_N30
\main_processor|Dpth|M2|Out2[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M2|Out2[14]~14_combout\ = (\main_processor|C1|A_Mux~combout\ & (\main_processor|Dpth|IR|Q32\(14))) # (!\main_processor|C1|A_Mux~combout\ & ((\main_processor|Dpth|M6|Mux17~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(14),
	datac => \main_processor|C1|A_Mux~combout\,
	datad => \main_processor|Dpth|M6|Mux17~3_combout\,
	combout => \main_processor|Dpth|M2|Out2[14]~14_combout\);

-- Location: LCCOMB_X54_Y29_N0
\main_processor|Dpth|ProgCount|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|Add0~0_combout\ = \main_processor|Dpth|ProgCount|q[0]~reg0_q\ $ (VCC)
-- \main_processor|Dpth|ProgCount|Add0~1\ = CARRY(\main_processor|Dpth|ProgCount|q[0]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|ProgCount|q[0]~reg0_q\,
	datad => VCC,
	combout => \main_processor|Dpth|ProgCount|Add0~0_combout\,
	cout => \main_processor|Dpth|ProgCount|Add0~1\);

-- Location: LCCOMB_X53_Y29_N8
\main_processor|Dpth|ProgCount|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|process_0~1_combout\ = (\main_processor|C1|present_state.state_1~q\ & \main_processor|R1|Enable_PD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|C1|present_state.state_1~q\,
	datad => \main_processor|R1|Enable_PD~q\,
	combout => \main_processor|Dpth|ProgCount|process_0~1_combout\);

-- Location: LCCOMB_X55_Y37_N18
\main_processor|C1|IM_MUX2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|IM_MUX2~0_combout\ = (\main_processor|Dpth|IR|Q32\(29) & (\main_processor|Dpth|IR|Q32\(25) & (\main_processor|Dpth|IR|Q32\(27) $ (\main_processor|Dpth|IR|Q32\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(27),
	datab => \main_processor|Dpth|IR|Q32\(29),
	datac => \main_processor|Dpth|IR|Q32\(25),
	datad => \main_processor|Dpth|IR|Q32\(24),
	combout => \main_processor|C1|IM_MUX2~0_combout\);

-- Location: LCCOMB_X53_Y39_N2
\main_processor|C1|IM_MUX2[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|IM_MUX2\(1) = (GLOBAL(\main_processor|R1|Enable_PD~clkctrl_outclk\) & (\main_processor|C1|IM_MUX2~0_combout\)) # (!GLOBAL(\main_processor|R1|Enable_PD~clkctrl_outclk\) & ((\main_processor|C1|IM_MUX2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|IM_MUX2~0_combout\,
	datab => \main_processor|C1|IM_MUX2\(1),
	datad => \main_processor|R1|Enable_PD~clkctrl_outclk\,
	combout => \main_processor|C1|IM_MUX2\(1));

-- Location: LCCOMB_X54_Y34_N4
\main_processor|C1|ld_B~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|ld_B~0_combout\ = (\main_processor|C1|present_state.state_1~q\) # ((\main_processor|Dpth|IR|Q32\(29) & \main_processor|C1|present_state.state_2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|C1|present_state.state_1~q\,
	datac => \main_processor|Dpth|IR|Q32\(29),
	datad => \main_processor|C1|present_state.state_2~q\,
	combout => \main_processor|C1|ld_B~0_combout\);

-- Location: LCCOMB_X54_Y34_N2
\main_processor|C1|ld_B~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|ld_B~1_combout\ = (\main_processor|Dpth|IR|Q32\(28) & (!\main_processor|Dpth|IR|Q32\(31) & !\main_processor|Dpth|IR|Q32\(29))) # (!\main_processor|Dpth|IR|Q32\(28) & (\main_processor|Dpth|IR|Q32\(31) & \main_processor|Dpth|IR|Q32\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(28),
	datab => \main_processor|Dpth|IR|Q32\(31),
	datac => \main_processor|Dpth|IR|Q32\(29),
	combout => \main_processor|C1|ld_B~1_combout\);

-- Location: LCCOMB_X53_Y34_N14
\main_processor|C1|ld_B~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|ld_B~2_combout\ = (\main_processor|C1|ld_B~0_combout\ & (!\main_processor|Dpth|IR|Q32\(30) & (\main_processor|R1|Enable_PD~q\ & \main_processor|C1|ld_B~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ld_B~0_combout\,
	datab => \main_processor|Dpth|IR|Q32\(30),
	datac => \main_processor|R1|Enable_PD~q\,
	datad => \main_processor|C1|ld_B~1_combout\,
	combout => \main_processor|C1|ld_B~2_combout\);

-- Location: FF_X54_Y36_N31
\main_processor|Dpth|B|Q32[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[1]~1_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_B~1_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|B|Q32\(1));

-- Location: LCCOMB_X53_Y35_N2
\main_processor|Dpth|M5|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M5|Mux30~0_combout\ = (\main_processor|C1|IM_MUX2\(1) & (((\main_processor|C1|IM_MUX2\(0))))) # (!\main_processor|C1|IM_MUX2\(1) & ((\main_processor|C1|IM_MUX2\(0) & (\main_processor|Dpth|IR|Q32\(1))) # 
-- (!\main_processor|C1|IM_MUX2\(0) & ((\main_processor|Dpth|B|Q32\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(1),
	datab => \main_processor|C1|IM_MUX2\(1),
	datac => \main_processor|Dpth|B|Q32\(1),
	datad => \main_processor|C1|IM_MUX2\(0),
	combout => \main_processor|Dpth|M5|Mux30~0_combout\);

-- Location: LCCOMB_X53_Y35_N30
\main_processor|Dpth|ALU|Mux30~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux30~9_combout\ = (\main_processor|C1|ALU_op\(0) & ((\main_processor|C1|ALU_op\(1)) # ((\main_processor|Dpth|M4|Out2[1]~1_combout\) # (\main_processor|Dpth|M5|Mux30~0_combout\)))) # (!\main_processor|C1|ALU_op\(0) & 
-- (!\main_processor|C1|ALU_op\(1) & (\main_processor|Dpth|M4|Out2[1]~1_combout\ & \main_processor|Dpth|M5|Mux30~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(0),
	datab => \main_processor|C1|ALU_op\(1),
	datac => \main_processor|Dpth|M4|Out2[1]~1_combout\,
	datad => \main_processor|Dpth|M5|Mux30~0_combout\,
	combout => \main_processor|Dpth|ALU|Mux30~9_combout\);

-- Location: LCCOMB_X53_Y36_N14
\main_processor|C1|IM_MUX1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|IM_MUX1~combout\ = (GLOBAL(\main_processor|R1|Enable_PD~clkctrl_outclk\) & (!\main_processor|Dpth|IR|Q32\(29))) # (!GLOBAL(\main_processor|R1|Enable_PD~clkctrl_outclk\) & ((\main_processor|C1|IM_MUX1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|IR|Q32\(29),
	datac => \main_processor|C1|IM_MUX1~combout\,
	datad => \main_processor|R1|Enable_PD~clkctrl_outclk\,
	combout => \main_processor|C1|IM_MUX1~combout\);

-- Location: FF_X52_Y39_N5
\main_processor|Dpth|B|Q32[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|M2|Out2[6]~6_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_B~1_combout\,
	ena => \main_processor|C1|ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|B|Q32\(6));

-- Location: LCCOMB_X54_Y39_N18
\main_processor|Dpth|M5|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M5|Mux25~0_combout\ = (\main_processor|C1|IM_MUX2\(1) & (((\main_processor|C1|IM_MUX2\(0))))) # (!\main_processor|C1|IM_MUX2\(1) & ((\main_processor|C1|IM_MUX2\(0) & ((\main_processor|Dpth|IR|Q32\(6)))) # 
-- (!\main_processor|C1|IM_MUX2\(0) & (\main_processor|Dpth|B|Q32\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|IM_MUX2\(1),
	datab => \main_processor|Dpth|B|Q32\(6),
	datac => \main_processor|C1|IM_MUX2\(0),
	datad => \main_processor|Dpth|IR|Q32\(6),
	combout => \main_processor|Dpth|M5|Mux25~0_combout\);

-- Location: LCCOMB_X52_Y39_N20
\main_processor|Dpth|M4|Out2[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M4|Out2[6]~6_combout\ = (!\main_processor|C1|IM_MUX1~combout\ & \main_processor|Dpth|A|Q32\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|C1|IM_MUX1~combout\,
	datac => \main_processor|Dpth|A|Q32\(6),
	combout => \main_processor|Dpth|M4|Out2[6]~6_combout\);

-- Location: LCCOMB_X52_Y39_N16
\main_processor|Dpth|ALU|Mux25~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux25~9_combout\ = (\main_processor|C1|ALU_op\(0) & ((\main_processor|Dpth|M5|Mux25~0_combout\) # ((\main_processor|C1|ALU_op\(1)) # (\main_processor|Dpth|M4|Out2[6]~6_combout\)))) # (!\main_processor|C1|ALU_op\(0) & 
-- (\main_processor|Dpth|M5|Mux25~0_combout\ & (!\main_processor|C1|ALU_op\(1) & \main_processor|Dpth|M4|Out2[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(0),
	datab => \main_processor|Dpth|M5|Mux25~0_combout\,
	datac => \main_processor|C1|ALU_op\(1),
	datad => \main_processor|Dpth|M4|Out2[6]~6_combout\,
	combout => \main_processor|Dpth|ALU|Mux25~9_combout\);

-- Location: LCCOMB_X54_Y37_N18
\main_processor|Dpth|ProgCount|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|process_0~0_combout\ = (\main_processor|Dpth|IR|Q32\(30) & !\main_processor|Dpth|IR|Q32\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|IR|Q32\(30),
	datad => \main_processor|Dpth|IR|Q32\(31),
	combout => \main_processor|Dpth|ProgCount|process_0~0_combout\);

-- Location: LCCOMB_X54_Y29_N2
\main_processor|Dpth|ProgCount|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|Add0~2_combout\ = (\main_processor|Dpth|ProgCount|q[1]~reg0_q\ & (!\main_processor|Dpth|ProgCount|Add0~1\)) # (!\main_processor|Dpth|ProgCount|q[1]~reg0_q\ & ((\main_processor|Dpth|ProgCount|Add0~1\) # (GND)))
-- \main_processor|Dpth|ProgCount|Add0~3\ = CARRY((!\main_processor|Dpth|ProgCount|Add0~1\) # (!\main_processor|Dpth|ProgCount|q[1]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|q[1]~reg0_q\,
	datad => VCC,
	cin => \main_processor|Dpth|ProgCount|Add0~1\,
	combout => \main_processor|Dpth|ProgCount|Add0~2_combout\,
	cout => \main_processor|Dpth|ProgCount|Add0~3\);

-- Location: LCCOMB_X53_Y29_N14
\main_processor|Dpth|ProgCount|q[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q[1]~1_combout\ = (\main_processor|Dpth|ProgCount|process_0~1_combout\ & (\main_processor|Dpth|ProgCount|Add0~2_combout\)) # (!\main_processor|Dpth|ProgCount|process_0~1_combout\ & ((\main_processor|Dpth|IR|Q32\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|Add0~2_combout\,
	datab => \main_processor|Dpth|ProgCount|process_0~1_combout\,
	datad => \main_processor|Dpth|IR|Q32\(1),
	combout => \main_processor|Dpth|ProgCount|q[1]~1_combout\);

-- Location: FF_X54_Y29_N15
\main_processor|R1|Clr_PC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|R1|LessThan0~9_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|R1|Clr_PC~q\);

-- Location: LCCOMB_X54_Y29_N4
\main_processor|Dpth|ProgCount|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|Add0~4_combout\ = (\main_processor|Dpth|ProgCount|q[2]~reg0_q\ & (\main_processor|Dpth|ProgCount|Add0~3\ $ (GND))) # (!\main_processor|Dpth|ProgCount|q[2]~reg0_q\ & (!\main_processor|Dpth|ProgCount|Add0~3\ & VCC))
-- \main_processor|Dpth|ProgCount|Add0~5\ = CARRY((\main_processor|Dpth|ProgCount|q[2]~reg0_q\ & !\main_processor|Dpth|ProgCount|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|q[2]~reg0_q\,
	datad => VCC,
	cin => \main_processor|Dpth|ProgCount|Add0~3\,
	combout => \main_processor|Dpth|ProgCount|Add0~4_combout\,
	cout => \main_processor|Dpth|ProgCount|Add0~5\);

-- Location: LCCOMB_X53_Y29_N0
\main_processor|Dpth|ProgCount|q[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q[2]~2_combout\ = (\main_processor|Dpth|ProgCount|process_0~1_combout\ & (\main_processor|Dpth|ProgCount|Add0~4_combout\)) # (!\main_processor|Dpth|ProgCount|process_0~1_combout\ & ((\main_processor|Dpth|IR|Q32\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|Add0~4_combout\,
	datab => \main_processor|Dpth|ProgCount|process_0~1_combout\,
	datad => \main_processor|Dpth|IR|Q32\(2),
	combout => \main_processor|Dpth|ProgCount|q[2]~2_combout\);

-- Location: FF_X53_Y29_N1
\main_processor|Dpth|ProgCount|q[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|ProgCount|q[2]~2_combout\,
	asdata => \main_processor|Dpth|ProgCount|q[2]~reg0_q\,
	sclr => \main_processor|R1|Clr_PC~q\,
	sload => \main_processor|Dpth|ProgCount|q~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|ProgCount|q[2]~reg0_q\);

-- Location: LCCOMB_X54_Y29_N6
\main_processor|Dpth|ProgCount|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|Add0~6_combout\ = (\main_processor|Dpth|ProgCount|q[3]~reg0_q\ & (!\main_processor|Dpth|ProgCount|Add0~5\)) # (!\main_processor|Dpth|ProgCount|q[3]~reg0_q\ & ((\main_processor|Dpth|ProgCount|Add0~5\) # (GND)))
-- \main_processor|Dpth|ProgCount|Add0~7\ = CARRY((!\main_processor|Dpth|ProgCount|Add0~5\) # (!\main_processor|Dpth|ProgCount|q[3]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|ProgCount|q[3]~reg0_q\,
	datad => VCC,
	cin => \main_processor|Dpth|ProgCount|Add0~5\,
	combout => \main_processor|Dpth|ProgCount|Add0~6_combout\,
	cout => \main_processor|Dpth|ProgCount|Add0~7\);

-- Location: LCCOMB_X53_Y29_N22
\main_processor|Dpth|ProgCount|q[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q[3]~3_combout\ = (\main_processor|Dpth|ProgCount|process_0~1_combout\ & (\main_processor|Dpth|ProgCount|Add0~6_combout\)) # (!\main_processor|Dpth|ProgCount|process_0~1_combout\ & ((\main_processor|Dpth|IR|Q32\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|Add0~6_combout\,
	datab => \main_processor|Dpth|ProgCount|process_0~1_combout\,
	datad => \main_processor|Dpth|IR|Q32\(3),
	combout => \main_processor|Dpth|ProgCount|q[3]~3_combout\);

-- Location: FF_X53_Y29_N23
\main_processor|Dpth|ProgCount|q[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|ProgCount|q[3]~3_combout\,
	asdata => \main_processor|Dpth|ProgCount|q[3]~reg0_q\,
	sclr => \main_processor|R1|Clr_PC~q\,
	sload => \main_processor|Dpth|ProgCount|q~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|ProgCount|q[3]~reg0_q\);

-- Location: LCCOMB_X54_Y29_N8
\main_processor|Dpth|ProgCount|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|Add0~8_combout\ = (\main_processor|Dpth|ProgCount|q[4]~reg0_q\ & (\main_processor|Dpth|ProgCount|Add0~7\ $ (GND))) # (!\main_processor|Dpth|ProgCount|q[4]~reg0_q\ & (!\main_processor|Dpth|ProgCount|Add0~7\ & VCC))
-- \main_processor|Dpth|ProgCount|Add0~9\ = CARRY((\main_processor|Dpth|ProgCount|q[4]~reg0_q\ & !\main_processor|Dpth|ProgCount|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|ProgCount|q[4]~reg0_q\,
	datad => VCC,
	cin => \main_processor|Dpth|ProgCount|Add0~7\,
	combout => \main_processor|Dpth|ProgCount|Add0~8_combout\,
	cout => \main_processor|Dpth|ProgCount|Add0~9\);

-- Location: LCCOMB_X53_Y29_N28
\main_processor|Dpth|ProgCount|q[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q[4]~4_combout\ = (\main_processor|Dpth|ProgCount|process_0~1_combout\ & (\main_processor|Dpth|ProgCount|Add0~8_combout\)) # (!\main_processor|Dpth|ProgCount|process_0~1_combout\ & ((\main_processor|Dpth|IR|Q32\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|Add0~8_combout\,
	datab => \main_processor|Dpth|ProgCount|process_0~1_combout\,
	datad => \main_processor|Dpth|IR|Q32\(4),
	combout => \main_processor|Dpth|ProgCount|q[4]~4_combout\);

-- Location: FF_X53_Y29_N29
\main_processor|Dpth|ProgCount|q[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|ProgCount|q[4]~4_combout\,
	asdata => \main_processor|Dpth|ProgCount|q[4]~reg0_q\,
	sclr => \main_processor|R1|Clr_PC~q\,
	sload => \main_processor|Dpth|ProgCount|q~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|ProgCount|q[4]~reg0_q\);

-- Location: LCCOMB_X54_Y29_N10
\main_processor|Dpth|ProgCount|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|Add0~10_combout\ = (\main_processor|Dpth|ProgCount|q[5]~reg0_q\ & (!\main_processor|Dpth|ProgCount|Add0~9\)) # (!\main_processor|Dpth|ProgCount|q[5]~reg0_q\ & ((\main_processor|Dpth|ProgCount|Add0~9\) # (GND)))
-- \main_processor|Dpth|ProgCount|Add0~11\ = CARRY((!\main_processor|Dpth|ProgCount|Add0~9\) # (!\main_processor|Dpth|ProgCount|q[5]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|ProgCount|q[5]~reg0_q\,
	datad => VCC,
	cin => \main_processor|Dpth|ProgCount|Add0~9\,
	combout => \main_processor|Dpth|ProgCount|Add0~10_combout\,
	cout => \main_processor|Dpth|ProgCount|Add0~11\);

-- Location: LCCOMB_X53_Y29_N2
\main_processor|Dpth|ProgCount|q[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q[5]~5_combout\ = (\main_processor|Dpth|ProgCount|process_0~1_combout\ & ((\main_processor|Dpth|ProgCount|Add0~10_combout\))) # (!\main_processor|Dpth|ProgCount|process_0~1_combout\ & (\main_processor|Dpth|IR|Q32\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(5),
	datab => \main_processor|Dpth|ProgCount|Add0~10_combout\,
	datad => \main_processor|Dpth|ProgCount|process_0~1_combout\,
	combout => \main_processor|Dpth|ProgCount|q[5]~5_combout\);

-- Location: FF_X53_Y29_N3
\main_processor|Dpth|ProgCount|q[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|ProgCount|q[5]~5_combout\,
	asdata => \main_processor|Dpth|ProgCount|q[5]~reg0_q\,
	sclr => \main_processor|R1|Clr_PC~q\,
	sload => \main_processor|Dpth|ProgCount|q~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|ProgCount|q[5]~reg0_q\);

-- Location: LCCOMB_X52_Y38_N12
\main_processor|Dpth|IR|Q32[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|IR|Q32[8]~feeder_combout\ = \main_processor|Dpth|M6|Mux23~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|Dpth|M6|Mux23~3_combout\,
	combout => \main_processor|Dpth|IR|Q32[8]~feeder_combout\);

-- Location: LCCOMB_X54_Y35_N22
\main_processor|C1|ld_IR~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|ld_IR~0_combout\ = (\main_processor|C1|present_state.state_0~q\) # (!\main_processor|R1|Enable_PD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|C1|present_state.state_0~q\,
	datac => \main_processor|R1|Enable_PD~q\,
	combout => \main_processor|C1|ld_IR~0_combout\);

-- Location: FF_X52_Y38_N13
\main_processor|Dpth|IR|Q32[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|IR|Q32[8]~feeder_combout\,
	ena => \main_processor|C1|ALT_INV_ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|IR|Q32\(8));

-- Location: LCCOMB_X52_Y39_N22
\main_processor|Dpth|M2|Out2[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M2|Out2[8]~8_combout\ = (\main_processor|C1|A_Mux~combout\ & (\main_processor|Dpth|IR|Q32\(8))) # (!\main_processor|C1|A_Mux~combout\ & ((\main_processor|Dpth|M6|Mux23~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(8),
	datac => \main_processor|Dpth|M6|Mux23~3_combout\,
	datad => \main_processor|C1|A_Mux~combout\,
	combout => \main_processor|Dpth|M2|Out2[8]~8_combout\);

-- Location: FF_X52_Y39_N23
\main_processor|Dpth|B|Q32[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|M2|Out2[8]~8_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_B~1_combout\,
	ena => \main_processor|C1|ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|B|Q32\(8));

-- Location: LCCOMB_X52_Y38_N14
\main_processor|Dpth|M5|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M5|Mux23~0_combout\ = (\main_processor|C1|IM_MUX2\(0) & ((\main_processor|Dpth|IR|Q32\(8)) # ((\main_processor|C1|IM_MUX2\(1))))) # (!\main_processor|C1|IM_MUX2\(0) & (((\main_processor|Dpth|B|Q32\(8) & 
-- !\main_processor|C1|IM_MUX2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(8),
	datab => \main_processor|C1|IM_MUX2\(0),
	datac => \main_processor|Dpth|B|Q32\(8),
	datad => \main_processor|C1|IM_MUX2\(1),
	combout => \main_processor|Dpth|M5|Mux23~0_combout\);

-- Location: FF_X52_Y39_N15
\main_processor|Dpth|A|Q32[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[8]~8_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_A~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_A~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|A|Q32\(8));

-- Location: LCCOMB_X52_Y39_N14
\main_processor|Dpth|M4|Out2[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M4|Out2[8]~8_combout\ = (!\main_processor|C1|IM_MUX1~combout\ & \main_processor|Dpth|A|Q32\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|C1|IM_MUX1~combout\,
	datac => \main_processor|Dpth|A|Q32\(8),
	combout => \main_processor|Dpth|M4|Out2[8]~8_combout\);

-- Location: LCCOMB_X52_Y36_N18
\main_processor|Dpth|M4|Out2[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M4|Out2[7]~7_combout\ = (\main_processor|Dpth|A|Q32\(7) & !\main_processor|C1|IM_MUX1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|A|Q32\(7),
	datac => \main_processor|C1|IM_MUX1~combout\,
	combout => \main_processor|Dpth|M4|Out2[7]~7_combout\);

-- Location: FF_X52_Y36_N25
\main_processor|Dpth|B|Q32[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[5]~5_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_B~1_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|B|Q32\(5));

-- Location: LCCOMB_X54_Y39_N22
\main_processor|Dpth|M5|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M5|Mux26~0_combout\ = (\main_processor|C1|IM_MUX2\(1) & (((\main_processor|C1|IM_MUX2\(0))))) # (!\main_processor|C1|IM_MUX2\(1) & ((\main_processor|C1|IM_MUX2\(0) & (\main_processor|Dpth|IR|Q32\(5))) # 
-- (!\main_processor|C1|IM_MUX2\(0) & ((\main_processor|Dpth|B|Q32\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|IM_MUX2\(1),
	datab => \main_processor|Dpth|IR|Q32\(5),
	datac => \main_processor|C1|IM_MUX2\(0),
	datad => \main_processor|Dpth|B|Q32\(5),
	combout => \main_processor|Dpth|M5|Mux26~0_combout\);

-- Location: LCCOMB_X52_Y36_N26
\main_processor|Dpth|M4|Out2[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M4|Out2[5]~5_combout\ = (!\main_processor|C1|IM_MUX1~combout\ & \main_processor|Dpth|A|Q32\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|C1|IM_MUX1~combout\,
	datad => \main_processor|Dpth|A|Q32\(5),
	combout => \main_processor|Dpth|M4|Out2[5]~5_combout\);

-- Location: LCCOMB_X50_Y39_N6
\main_processor|Dpth|M4|Out2[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M4|Out2[4]~4_combout\ = (\main_processor|Dpth|A|Q32\(4) & !\main_processor|C1|IM_MUX1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|Dpth|A|Q32\(4),
	datad => \main_processor|C1|IM_MUX1~combout\,
	combout => \main_processor|Dpth|M4|Out2[4]~4_combout\);

-- Location: FF_X50_Y39_N15
\main_processor|Dpth|B|Q32[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|M2|Out2[4]~4_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_B~1_combout\,
	ena => \main_processor|C1|ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|B|Q32\(4));

-- Location: LCCOMB_X54_Y39_N8
\main_processor|Dpth|M5|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M5|Mux27~0_combout\ = (\main_processor|C1|IM_MUX2\(1) & (((\main_processor|C1|IM_MUX2\(0))))) # (!\main_processor|C1|IM_MUX2\(1) & ((\main_processor|C1|IM_MUX2\(0) & (\main_processor|Dpth|IR|Q32\(4))) # 
-- (!\main_processor|C1|IM_MUX2\(0) & ((\main_processor|Dpth|B|Q32\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|IM_MUX2\(1),
	datab => \main_processor|Dpth|IR|Q32\(4),
	datac => \main_processor|C1|IM_MUX2\(0),
	datad => \main_processor|Dpth|B|Q32\(4),
	combout => \main_processor|Dpth|M5|Mux27~0_combout\);

-- Location: LCCOMB_X52_Y36_N12
\main_processor|Dpth|M4|Out2[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M4|Out2[3]~3_combout\ = (!\main_processor|C1|IM_MUX1~combout\ & \main_processor|Dpth|A|Q32\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|C1|IM_MUX1~combout\,
	datad => \main_processor|Dpth|A|Q32\(3),
	combout => \main_processor|Dpth|M4|Out2[3]~3_combout\);

-- Location: FF_X52_Y36_N15
\main_processor|Dpth|B|Q32[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[3]~3_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_B~1_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|B|Q32\(3));

-- Location: LCCOMB_X53_Y36_N4
\main_processor|Dpth|M5|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M5|Mux28~0_combout\ = (\main_processor|C1|IM_MUX2\(1) & (((\main_processor|C1|IM_MUX2\(0))))) # (!\main_processor|C1|IM_MUX2\(1) & ((\main_processor|C1|IM_MUX2\(0) & ((\main_processor|Dpth|IR|Q32\(3)))) # 
-- (!\main_processor|C1|IM_MUX2\(0) & (\main_processor|Dpth|B|Q32\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|B|Q32\(3),
	datab => \main_processor|Dpth|IR|Q32\(3),
	datac => \main_processor|C1|IM_MUX2\(1),
	datad => \main_processor|C1|IM_MUX2\(0),
	combout => \main_processor|Dpth|M5|Mux28~0_combout\);

-- Location: FF_X50_Y39_N9
\main_processor|Dpth|B|Q32[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|M2|Out2[2]~2_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_B~1_combout\,
	ena => \main_processor|C1|ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|B|Q32\(2));

-- Location: LCCOMB_X53_Y39_N10
\main_processor|Dpth|M5|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M5|Mux29~0_combout\ = (\main_processor|C1|IM_MUX2\(0) & ((\main_processor|C1|IM_MUX2\(1)) # ((\main_processor|Dpth|IR|Q32\(2))))) # (!\main_processor|C1|IM_MUX2\(0) & (!\main_processor|C1|IM_MUX2\(1) & 
-- ((\main_processor|Dpth|B|Q32\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|IM_MUX2\(0),
	datab => \main_processor|C1|IM_MUX2\(1),
	datac => \main_processor|Dpth|IR|Q32\(2),
	datad => \main_processor|Dpth|B|Q32\(2),
	combout => \main_processor|Dpth|M5|Mux29~0_combout\);

-- Location: LCCOMB_X50_Y39_N4
\main_processor|Dpth|M4|Out2[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M4|Out2[2]~2_combout\ = (\main_processor|Dpth|A|Q32\(2) & !\main_processor|C1|IM_MUX1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|Dpth|A|Q32\(2),
	datad => \main_processor|C1|IM_MUX1~combout\,
	combout => \main_processor|Dpth|M4|Out2[2]~2_combout\);

-- Location: LCCOMB_X54_Y36_N12
\main_processor|Dpth|M4|Out2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M4|Out2[0]~0_combout\ = (\main_processor|Dpth|A|Q32\(0) & !\main_processor|C1|IM_MUX1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|A|Q32\(0),
	datad => \main_processor|C1|IM_MUX1~combout\,
	combout => \main_processor|Dpth|M4|Out2[0]~0_combout\);

-- Location: FF_X54_Y36_N5
\main_processor|Dpth|B|Q32[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[0]~0_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_B~1_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|B|Q32\(0));

-- Location: LCCOMB_X53_Y39_N12
\main_processor|Dpth|M5|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M5|Mux31~0_combout\ = (\main_processor|C1|IM_MUX2\(1)) # ((\main_processor|C1|IM_MUX2\(0) & (\main_processor|Dpth|IR|Q32\(0))) # (!\main_processor|C1|IM_MUX2\(0) & ((\main_processor|Dpth|B|Q32\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|IM_MUX2\(0),
	datab => \main_processor|C1|IM_MUX2\(1),
	datac => \main_processor|Dpth|IR|Q32\(0),
	datad => \main_processor|Dpth|B|Q32\(0),
	combout => \main_processor|Dpth|M5|Mux31~0_combout\);

-- Location: LCCOMB_X50_Y39_N16
\main_processor|Dpth|ALU|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add1~0_combout\ = (\main_processor|Dpth|M4|Out2[0]~0_combout\ & ((GND) # (!\main_processor|Dpth|M5|Mux31~0_combout\))) # (!\main_processor|Dpth|M4|Out2[0]~0_combout\ & (\main_processor|Dpth|M5|Mux31~0_combout\ $ (GND)))
-- \main_processor|Dpth|ALU|Add1~1\ = CARRY((\main_processor|Dpth|M4|Out2[0]~0_combout\) # (!\main_processor|Dpth|M5|Mux31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[0]~0_combout\,
	datab => \main_processor|Dpth|M5|Mux31~0_combout\,
	datad => VCC,
	combout => \main_processor|Dpth|ALU|Add1~0_combout\,
	cout => \main_processor|Dpth|ALU|Add1~1\);

-- Location: LCCOMB_X50_Y39_N18
\main_processor|Dpth|ALU|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add1~2_combout\ = (\main_processor|Dpth|M5|Mux30~0_combout\ & ((\main_processor|Dpth|M4|Out2[1]~1_combout\ & (!\main_processor|Dpth|ALU|Add1~1\)) # (!\main_processor|Dpth|M4|Out2[1]~1_combout\ & ((\main_processor|Dpth|ALU|Add1~1\) 
-- # (GND))))) # (!\main_processor|Dpth|M5|Mux30~0_combout\ & ((\main_processor|Dpth|M4|Out2[1]~1_combout\ & (\main_processor|Dpth|ALU|Add1~1\ & VCC)) # (!\main_processor|Dpth|M4|Out2[1]~1_combout\ & (!\main_processor|Dpth|ALU|Add1~1\))))
-- \main_processor|Dpth|ALU|Add1~3\ = CARRY((\main_processor|Dpth|M5|Mux30~0_combout\ & ((!\main_processor|Dpth|ALU|Add1~1\) # (!\main_processor|Dpth|M4|Out2[1]~1_combout\))) # (!\main_processor|Dpth|M5|Mux30~0_combout\ & 
-- (!\main_processor|Dpth|M4|Out2[1]~1_combout\ & !\main_processor|Dpth|ALU|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux30~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[1]~1_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add1~1\,
	combout => \main_processor|Dpth|ALU|Add1~2_combout\,
	cout => \main_processor|Dpth|ALU|Add1~3\);

-- Location: LCCOMB_X50_Y39_N20
\main_processor|Dpth|ALU|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add1~4_combout\ = ((\main_processor|Dpth|M5|Mux29~0_combout\ $ (\main_processor|Dpth|M4|Out2[2]~2_combout\ $ (\main_processor|Dpth|ALU|Add1~3\)))) # (GND)
-- \main_processor|Dpth|ALU|Add1~5\ = CARRY((\main_processor|Dpth|M5|Mux29~0_combout\ & (\main_processor|Dpth|M4|Out2[2]~2_combout\ & !\main_processor|Dpth|ALU|Add1~3\)) # (!\main_processor|Dpth|M5|Mux29~0_combout\ & 
-- ((\main_processor|Dpth|M4|Out2[2]~2_combout\) # (!\main_processor|Dpth|ALU|Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux29~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[2]~2_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add1~3\,
	combout => \main_processor|Dpth|ALU|Add1~4_combout\,
	cout => \main_processor|Dpth|ALU|Add1~5\);

-- Location: LCCOMB_X50_Y39_N22
\main_processor|Dpth|ALU|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add1~6_combout\ = (\main_processor|Dpth|M4|Out2[3]~3_combout\ & ((\main_processor|Dpth|M5|Mux28~0_combout\ & (!\main_processor|Dpth|ALU|Add1~5\)) # (!\main_processor|Dpth|M5|Mux28~0_combout\ & (\main_processor|Dpth|ALU|Add1~5\ & 
-- VCC)))) # (!\main_processor|Dpth|M4|Out2[3]~3_combout\ & ((\main_processor|Dpth|M5|Mux28~0_combout\ & ((\main_processor|Dpth|ALU|Add1~5\) # (GND))) # (!\main_processor|Dpth|M5|Mux28~0_combout\ & (!\main_processor|Dpth|ALU|Add1~5\))))
-- \main_processor|Dpth|ALU|Add1~7\ = CARRY((\main_processor|Dpth|M4|Out2[3]~3_combout\ & (\main_processor|Dpth|M5|Mux28~0_combout\ & !\main_processor|Dpth|ALU|Add1~5\)) # (!\main_processor|Dpth|M4|Out2[3]~3_combout\ & 
-- ((\main_processor|Dpth|M5|Mux28~0_combout\) # (!\main_processor|Dpth|ALU|Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[3]~3_combout\,
	datab => \main_processor|Dpth|M5|Mux28~0_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add1~5\,
	combout => \main_processor|Dpth|ALU|Add1~6_combout\,
	cout => \main_processor|Dpth|ALU|Add1~7\);

-- Location: LCCOMB_X50_Y39_N24
\main_processor|Dpth|ALU|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add1~8_combout\ = ((\main_processor|Dpth|M4|Out2[4]~4_combout\ $ (\main_processor|Dpth|M5|Mux27~0_combout\ $ (\main_processor|Dpth|ALU|Add1~7\)))) # (GND)
-- \main_processor|Dpth|ALU|Add1~9\ = CARRY((\main_processor|Dpth|M4|Out2[4]~4_combout\ & ((!\main_processor|Dpth|ALU|Add1~7\) # (!\main_processor|Dpth|M5|Mux27~0_combout\))) # (!\main_processor|Dpth|M4|Out2[4]~4_combout\ & 
-- (!\main_processor|Dpth|M5|Mux27~0_combout\ & !\main_processor|Dpth|ALU|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[4]~4_combout\,
	datab => \main_processor|Dpth|M5|Mux27~0_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add1~7\,
	combout => \main_processor|Dpth|ALU|Add1~8_combout\,
	cout => \main_processor|Dpth|ALU|Add1~9\);

-- Location: LCCOMB_X50_Y39_N26
\main_processor|Dpth|ALU|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add1~10_combout\ = (\main_processor|Dpth|M5|Mux26~0_combout\ & ((\main_processor|Dpth|M4|Out2[5]~5_combout\ & (!\main_processor|Dpth|ALU|Add1~9\)) # (!\main_processor|Dpth|M4|Out2[5]~5_combout\ & 
-- ((\main_processor|Dpth|ALU|Add1~9\) # (GND))))) # (!\main_processor|Dpth|M5|Mux26~0_combout\ & ((\main_processor|Dpth|M4|Out2[5]~5_combout\ & (\main_processor|Dpth|ALU|Add1~9\ & VCC)) # (!\main_processor|Dpth|M4|Out2[5]~5_combout\ & 
-- (!\main_processor|Dpth|ALU|Add1~9\))))
-- \main_processor|Dpth|ALU|Add1~11\ = CARRY((\main_processor|Dpth|M5|Mux26~0_combout\ & ((!\main_processor|Dpth|ALU|Add1~9\) # (!\main_processor|Dpth|M4|Out2[5]~5_combout\))) # (!\main_processor|Dpth|M5|Mux26~0_combout\ & 
-- (!\main_processor|Dpth|M4|Out2[5]~5_combout\ & !\main_processor|Dpth|ALU|Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux26~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[5]~5_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add1~9\,
	combout => \main_processor|Dpth|ALU|Add1~10_combout\,
	cout => \main_processor|Dpth|ALU|Add1~11\);

-- Location: LCCOMB_X50_Y39_N28
\main_processor|Dpth|ALU|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add1~12_combout\ = ((\main_processor|Dpth|M5|Mux25~0_combout\ $ (\main_processor|Dpth|M4|Out2[6]~6_combout\ $ (\main_processor|Dpth|ALU|Add1~11\)))) # (GND)
-- \main_processor|Dpth|ALU|Add1~13\ = CARRY((\main_processor|Dpth|M5|Mux25~0_combout\ & (\main_processor|Dpth|M4|Out2[6]~6_combout\ & !\main_processor|Dpth|ALU|Add1~11\)) # (!\main_processor|Dpth|M5|Mux25~0_combout\ & 
-- ((\main_processor|Dpth|M4|Out2[6]~6_combout\) # (!\main_processor|Dpth|ALU|Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux25~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[6]~6_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add1~11\,
	combout => \main_processor|Dpth|ALU|Add1~12_combout\,
	cout => \main_processor|Dpth|ALU|Add1~13\);

-- Location: LCCOMB_X50_Y39_N30
\main_processor|Dpth|ALU|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add1~14_combout\ = (\main_processor|Dpth|M5|Mux24~0_combout\ & ((\main_processor|Dpth|M4|Out2[7]~7_combout\ & (!\main_processor|Dpth|ALU|Add1~13\)) # (!\main_processor|Dpth|M4|Out2[7]~7_combout\ & 
-- ((\main_processor|Dpth|ALU|Add1~13\) # (GND))))) # (!\main_processor|Dpth|M5|Mux24~0_combout\ & ((\main_processor|Dpth|M4|Out2[7]~7_combout\ & (\main_processor|Dpth|ALU|Add1~13\ & VCC)) # (!\main_processor|Dpth|M4|Out2[7]~7_combout\ & 
-- (!\main_processor|Dpth|ALU|Add1~13\))))
-- \main_processor|Dpth|ALU|Add1~15\ = CARRY((\main_processor|Dpth|M5|Mux24~0_combout\ & ((!\main_processor|Dpth|ALU|Add1~13\) # (!\main_processor|Dpth|M4|Out2[7]~7_combout\))) # (!\main_processor|Dpth|M5|Mux24~0_combout\ & 
-- (!\main_processor|Dpth|M4|Out2[7]~7_combout\ & !\main_processor|Dpth|ALU|Add1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux24~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[7]~7_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add1~13\,
	combout => \main_processor|Dpth|ALU|Add1~14_combout\,
	cout => \main_processor|Dpth|ALU|Add1~15\);

-- Location: LCCOMB_X50_Y38_N0
\main_processor|Dpth|ALU|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add1~16_combout\ = ((\main_processor|Dpth|M5|Mux23~0_combout\ $ (\main_processor|Dpth|M4|Out2[8]~8_combout\ $ (\main_processor|Dpth|ALU|Add1~15\)))) # (GND)
-- \main_processor|Dpth|ALU|Add1~17\ = CARRY((\main_processor|Dpth|M5|Mux23~0_combout\ & (\main_processor|Dpth|M4|Out2[8]~8_combout\ & !\main_processor|Dpth|ALU|Add1~15\)) # (!\main_processor|Dpth|M5|Mux23~0_combout\ & 
-- ((\main_processor|Dpth|M4|Out2[8]~8_combout\) # (!\main_processor|Dpth|ALU|Add1~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux23~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[8]~8_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add1~15\,
	combout => \main_processor|Dpth|ALU|Add1~16_combout\,
	cout => \main_processor|Dpth|ALU|Add1~17\);

-- Location: LCCOMB_X52_Y40_N20
\main_processor|Dpth|B|Q32[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|B|Q32[9]~feeder_combout\ = \main_processor|Dpth|M2|Out2[9]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|Dpth|M2|Out2[9]~9_combout\,
	combout => \main_processor|Dpth|B|Q32[9]~feeder_combout\);

-- Location: FF_X52_Y40_N21
\main_processor|Dpth|B|Q32[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|B|Q32[9]~feeder_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_B~1_combout\,
	ena => \main_processor|C1|ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|B|Q32\(9));

-- Location: LCCOMB_X52_Y38_N28
\main_processor|Dpth|M5|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M5|Mux22~0_combout\ = (\main_processor|C1|IM_MUX2\(0) & (((\main_processor|C1|IM_MUX2\(1)) # (\main_processor|Dpth|IR|Q32\(9))))) # (!\main_processor|C1|IM_MUX2\(0) & (\main_processor|Dpth|B|Q32\(9) & 
-- (!\main_processor|C1|IM_MUX2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|B|Q32\(9),
	datab => \main_processor|C1|IM_MUX2\(0),
	datac => \main_processor|C1|IM_MUX2\(1),
	datad => \main_processor|Dpth|IR|Q32\(9),
	combout => \main_processor|Dpth|M5|Mux22~0_combout\);

-- Location: LCCOMB_X50_Y38_N2
\main_processor|Dpth|ALU|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add1~18_combout\ = (\main_processor|Dpth|M5|Mux22~0_combout\ & ((\main_processor|Dpth|M4|Out2[9]~9_combout\ & (!\main_processor|Dpth|ALU|Add1~17\)) # (!\main_processor|Dpth|M4|Out2[9]~9_combout\ & 
-- ((\main_processor|Dpth|ALU|Add1~17\) # (GND))))) # (!\main_processor|Dpth|M5|Mux22~0_combout\ & ((\main_processor|Dpth|M4|Out2[9]~9_combout\ & (\main_processor|Dpth|ALU|Add1~17\ & VCC)) # (!\main_processor|Dpth|M4|Out2[9]~9_combout\ & 
-- (!\main_processor|Dpth|ALU|Add1~17\))))
-- \main_processor|Dpth|ALU|Add1~19\ = CARRY((\main_processor|Dpth|M5|Mux22~0_combout\ & ((!\main_processor|Dpth|ALU|Add1~17\) # (!\main_processor|Dpth|M4|Out2[9]~9_combout\))) # (!\main_processor|Dpth|M5|Mux22~0_combout\ & 
-- (!\main_processor|Dpth|M4|Out2[9]~9_combout\ & !\main_processor|Dpth|ALU|Add1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux22~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[9]~9_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add1~17\,
	combout => \main_processor|Dpth|ALU|Add1~18_combout\,
	cout => \main_processor|Dpth|ALU|Add1~19\);

-- Location: LCCOMB_X52_Y40_N26
\main_processor|Dpth|ALU|Mux22~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux22~6_combout\ = (\main_processor|C1|ALU_op\(2) & (\main_processor|C1|ALU_op\(1) & (!\main_processor|C1|ALU_op\(0) & \main_processor|Dpth|ALU|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(2),
	datab => \main_processor|C1|ALU_op\(1),
	datac => \main_processor|C1|ALU_op\(0),
	datad => \main_processor|Dpth|ALU|Add1~18_combout\,
	combout => \main_processor|Dpth|ALU|Mux22~6_combout\);

-- Location: LCCOMB_X53_Y39_N16
\main_processor|Dpth|ALU|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add0~0_combout\ = (\main_processor|Dpth|M5|Mux31~0_combout\ & (\main_processor|Dpth|M4|Out2[0]~0_combout\ $ (VCC))) # (!\main_processor|Dpth|M5|Mux31~0_combout\ & (\main_processor|Dpth|M4|Out2[0]~0_combout\ & VCC))
-- \main_processor|Dpth|ALU|Add0~1\ = CARRY((\main_processor|Dpth|M5|Mux31~0_combout\ & \main_processor|Dpth|M4|Out2[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux31~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[0]~0_combout\,
	datad => VCC,
	combout => \main_processor|Dpth|ALU|Add0~0_combout\,
	cout => \main_processor|Dpth|ALU|Add0~1\);

-- Location: LCCOMB_X53_Y39_N18
\main_processor|Dpth|ALU|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add0~2_combout\ = (\main_processor|Dpth|M4|Out2[1]~1_combout\ & ((\main_processor|Dpth|M5|Mux30~0_combout\ & (\main_processor|Dpth|ALU|Add0~1\ & VCC)) # (!\main_processor|Dpth|M5|Mux30~0_combout\ & 
-- (!\main_processor|Dpth|ALU|Add0~1\)))) # (!\main_processor|Dpth|M4|Out2[1]~1_combout\ & ((\main_processor|Dpth|M5|Mux30~0_combout\ & (!\main_processor|Dpth|ALU|Add0~1\)) # (!\main_processor|Dpth|M5|Mux30~0_combout\ & ((\main_processor|Dpth|ALU|Add0~1\) # 
-- (GND)))))
-- \main_processor|Dpth|ALU|Add0~3\ = CARRY((\main_processor|Dpth|M4|Out2[1]~1_combout\ & (!\main_processor|Dpth|M5|Mux30~0_combout\ & !\main_processor|Dpth|ALU|Add0~1\)) # (!\main_processor|Dpth|M4|Out2[1]~1_combout\ & ((!\main_processor|Dpth|ALU|Add0~1\) # 
-- (!\main_processor|Dpth|M5|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[1]~1_combout\,
	datab => \main_processor|Dpth|M5|Mux30~0_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add0~1\,
	combout => \main_processor|Dpth|ALU|Add0~2_combout\,
	cout => \main_processor|Dpth|ALU|Add0~3\);

-- Location: LCCOMB_X53_Y39_N20
\main_processor|Dpth|ALU|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add0~4_combout\ = ((\main_processor|Dpth|M5|Mux29~0_combout\ $ (\main_processor|Dpth|M4|Out2[2]~2_combout\ $ (!\main_processor|Dpth|ALU|Add0~3\)))) # (GND)
-- \main_processor|Dpth|ALU|Add0~5\ = CARRY((\main_processor|Dpth|M5|Mux29~0_combout\ & ((\main_processor|Dpth|M4|Out2[2]~2_combout\) # (!\main_processor|Dpth|ALU|Add0~3\))) # (!\main_processor|Dpth|M5|Mux29~0_combout\ & 
-- (\main_processor|Dpth|M4|Out2[2]~2_combout\ & !\main_processor|Dpth|ALU|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux29~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[2]~2_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add0~3\,
	combout => \main_processor|Dpth|ALU|Add0~4_combout\,
	cout => \main_processor|Dpth|ALU|Add0~5\);

-- Location: LCCOMB_X53_Y39_N22
\main_processor|Dpth|ALU|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add0~6_combout\ = (\main_processor|Dpth|M4|Out2[3]~3_combout\ & ((\main_processor|Dpth|M5|Mux28~0_combout\ & (\main_processor|Dpth|ALU|Add0~5\ & VCC)) # (!\main_processor|Dpth|M5|Mux28~0_combout\ & 
-- (!\main_processor|Dpth|ALU|Add0~5\)))) # (!\main_processor|Dpth|M4|Out2[3]~3_combout\ & ((\main_processor|Dpth|M5|Mux28~0_combout\ & (!\main_processor|Dpth|ALU|Add0~5\)) # (!\main_processor|Dpth|M5|Mux28~0_combout\ & ((\main_processor|Dpth|ALU|Add0~5\) # 
-- (GND)))))
-- \main_processor|Dpth|ALU|Add0~7\ = CARRY((\main_processor|Dpth|M4|Out2[3]~3_combout\ & (!\main_processor|Dpth|M5|Mux28~0_combout\ & !\main_processor|Dpth|ALU|Add0~5\)) # (!\main_processor|Dpth|M4|Out2[3]~3_combout\ & ((!\main_processor|Dpth|ALU|Add0~5\) # 
-- (!\main_processor|Dpth|M5|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[3]~3_combout\,
	datab => \main_processor|Dpth|M5|Mux28~0_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add0~5\,
	combout => \main_processor|Dpth|ALU|Add0~6_combout\,
	cout => \main_processor|Dpth|ALU|Add0~7\);

-- Location: LCCOMB_X53_Y39_N24
\main_processor|Dpth|ALU|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add0~8_combout\ = ((\main_processor|Dpth|M4|Out2[4]~4_combout\ $ (\main_processor|Dpth|M5|Mux27~0_combout\ $ (!\main_processor|Dpth|ALU|Add0~7\)))) # (GND)
-- \main_processor|Dpth|ALU|Add0~9\ = CARRY((\main_processor|Dpth|M4|Out2[4]~4_combout\ & ((\main_processor|Dpth|M5|Mux27~0_combout\) # (!\main_processor|Dpth|ALU|Add0~7\))) # (!\main_processor|Dpth|M4|Out2[4]~4_combout\ & 
-- (\main_processor|Dpth|M5|Mux27~0_combout\ & !\main_processor|Dpth|ALU|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[4]~4_combout\,
	datab => \main_processor|Dpth|M5|Mux27~0_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add0~7\,
	combout => \main_processor|Dpth|ALU|Add0~8_combout\,
	cout => \main_processor|Dpth|ALU|Add0~9\);

-- Location: LCCOMB_X53_Y39_N26
\main_processor|Dpth|ALU|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add0~10_combout\ = (\main_processor|Dpth|M4|Out2[5]~5_combout\ & ((\main_processor|Dpth|M5|Mux26~0_combout\ & (\main_processor|Dpth|ALU|Add0~9\ & VCC)) # (!\main_processor|Dpth|M5|Mux26~0_combout\ & 
-- (!\main_processor|Dpth|ALU|Add0~9\)))) # (!\main_processor|Dpth|M4|Out2[5]~5_combout\ & ((\main_processor|Dpth|M5|Mux26~0_combout\ & (!\main_processor|Dpth|ALU|Add0~9\)) # (!\main_processor|Dpth|M5|Mux26~0_combout\ & ((\main_processor|Dpth|ALU|Add0~9\) # 
-- (GND)))))
-- \main_processor|Dpth|ALU|Add0~11\ = CARRY((\main_processor|Dpth|M4|Out2[5]~5_combout\ & (!\main_processor|Dpth|M5|Mux26~0_combout\ & !\main_processor|Dpth|ALU|Add0~9\)) # (!\main_processor|Dpth|M4|Out2[5]~5_combout\ & ((!\main_processor|Dpth|ALU|Add0~9\) 
-- # (!\main_processor|Dpth|M5|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[5]~5_combout\,
	datab => \main_processor|Dpth|M5|Mux26~0_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add0~9\,
	combout => \main_processor|Dpth|ALU|Add0~10_combout\,
	cout => \main_processor|Dpth|ALU|Add0~11\);

-- Location: LCCOMB_X53_Y39_N28
\main_processor|Dpth|ALU|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add0~12_combout\ = ((\main_processor|Dpth|M5|Mux25~0_combout\ $ (\main_processor|Dpth|M4|Out2[6]~6_combout\ $ (!\main_processor|Dpth|ALU|Add0~11\)))) # (GND)
-- \main_processor|Dpth|ALU|Add0~13\ = CARRY((\main_processor|Dpth|M5|Mux25~0_combout\ & ((\main_processor|Dpth|M4|Out2[6]~6_combout\) # (!\main_processor|Dpth|ALU|Add0~11\))) # (!\main_processor|Dpth|M5|Mux25~0_combout\ & 
-- (\main_processor|Dpth|M4|Out2[6]~6_combout\ & !\main_processor|Dpth|ALU|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux25~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[6]~6_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add0~11\,
	combout => \main_processor|Dpth|ALU|Add0~12_combout\,
	cout => \main_processor|Dpth|ALU|Add0~13\);

-- Location: LCCOMB_X53_Y39_N30
\main_processor|Dpth|ALU|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add0~14_combout\ = (\main_processor|Dpth|M4|Out2[7]~7_combout\ & ((\main_processor|Dpth|M5|Mux24~0_combout\ & (\main_processor|Dpth|ALU|Add0~13\ & VCC)) # (!\main_processor|Dpth|M5|Mux24~0_combout\ & 
-- (!\main_processor|Dpth|ALU|Add0~13\)))) # (!\main_processor|Dpth|M4|Out2[7]~7_combout\ & ((\main_processor|Dpth|M5|Mux24~0_combout\ & (!\main_processor|Dpth|ALU|Add0~13\)) # (!\main_processor|Dpth|M5|Mux24~0_combout\ & ((\main_processor|Dpth|ALU|Add0~13\) 
-- # (GND)))))
-- \main_processor|Dpth|ALU|Add0~15\ = CARRY((\main_processor|Dpth|M4|Out2[7]~7_combout\ & (!\main_processor|Dpth|M5|Mux24~0_combout\ & !\main_processor|Dpth|ALU|Add0~13\)) # (!\main_processor|Dpth|M4|Out2[7]~7_combout\ & 
-- ((!\main_processor|Dpth|ALU|Add0~13\) # (!\main_processor|Dpth|M5|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[7]~7_combout\,
	datab => \main_processor|Dpth|M5|Mux24~0_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add0~13\,
	combout => \main_processor|Dpth|ALU|Add0~14_combout\,
	cout => \main_processor|Dpth|ALU|Add0~15\);

-- Location: LCCOMB_X53_Y38_N0
\main_processor|Dpth|ALU|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add0~16_combout\ = ((\main_processor|Dpth|M5|Mux23~0_combout\ $ (\main_processor|Dpth|M4|Out2[8]~8_combout\ $ (!\main_processor|Dpth|ALU|Add0~15\)))) # (GND)
-- \main_processor|Dpth|ALU|Add0~17\ = CARRY((\main_processor|Dpth|M5|Mux23~0_combout\ & ((\main_processor|Dpth|M4|Out2[8]~8_combout\) # (!\main_processor|Dpth|ALU|Add0~15\))) # (!\main_processor|Dpth|M5|Mux23~0_combout\ & 
-- (\main_processor|Dpth|M4|Out2[8]~8_combout\ & !\main_processor|Dpth|ALU|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux23~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[8]~8_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add0~15\,
	combout => \main_processor|Dpth|ALU|Add0~16_combout\,
	cout => \main_processor|Dpth|ALU|Add0~17\);

-- Location: LCCOMB_X53_Y38_N2
\main_processor|Dpth|ALU|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add0~18_combout\ = (\main_processor|Dpth|M5|Mux22~0_combout\ & ((\main_processor|Dpth|M4|Out2[9]~9_combout\ & (\main_processor|Dpth|ALU|Add0~17\ & VCC)) # (!\main_processor|Dpth|M4|Out2[9]~9_combout\ & 
-- (!\main_processor|Dpth|ALU|Add0~17\)))) # (!\main_processor|Dpth|M5|Mux22~0_combout\ & ((\main_processor|Dpth|M4|Out2[9]~9_combout\ & (!\main_processor|Dpth|ALU|Add0~17\)) # (!\main_processor|Dpth|M4|Out2[9]~9_combout\ & 
-- ((\main_processor|Dpth|ALU|Add0~17\) # (GND)))))
-- \main_processor|Dpth|ALU|Add0~19\ = CARRY((\main_processor|Dpth|M5|Mux22~0_combout\ & (!\main_processor|Dpth|M4|Out2[9]~9_combout\ & !\main_processor|Dpth|ALU|Add0~17\)) # (!\main_processor|Dpth|M5|Mux22~0_combout\ & ((!\main_processor|Dpth|ALU|Add0~17\) 
-- # (!\main_processor|Dpth|M4|Out2[9]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux22~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[9]~9_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add0~17\,
	combout => \main_processor|Dpth|ALU|Add0~18_combout\,
	cout => \main_processor|Dpth|ALU|Add0~19\);

-- Location: LCCOMB_X52_Y40_N24
\main_processor|Dpth|ALU|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux22~2_combout\ = (\main_processor|Dpth|M5|Mux22~0_combout\ & ((\main_processor|C1|ALU_op\(0)) # ((!\main_processor|C1|IM_MUX1~combout\ & \main_processor|Dpth|A|Q32\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(0),
	datab => \main_processor|C1|IM_MUX1~combout\,
	datac => \main_processor|Dpth|A|Q32\(9),
	datad => \main_processor|Dpth|M5|Mux22~0_combout\,
	combout => \main_processor|Dpth|ALU|Mux22~2_combout\);

-- Location: FF_X52_Y40_N31
\main_processor|Dpth|B|Q32[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|M2|Out2[10]~10_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_B~1_combout\,
	ena => \main_processor|C1|ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|B|Q32\(10));

-- Location: LCCOMB_X54_Y39_N0
\main_processor|Dpth|M5|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M5|Mux21~0_combout\ = (\main_processor|C1|IM_MUX2\(0) & ((\main_processor|Dpth|IR|Q32\(10)) # ((\main_processor|C1|IM_MUX2\(1))))) # (!\main_processor|C1|IM_MUX2\(0) & (((\main_processor|Dpth|B|Q32\(10) & 
-- !\main_processor|C1|IM_MUX2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|IM_MUX2\(0),
	datab => \main_processor|Dpth|IR|Q32\(10),
	datac => \main_processor|Dpth|B|Q32\(10),
	datad => \main_processor|C1|IM_MUX2\(1),
	combout => \main_processor|Dpth|M5|Mux21~0_combout\);

-- Location: LCCOMB_X50_Y38_N4
\main_processor|Dpth|ALU|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add1~20_combout\ = ((\main_processor|Dpth|M5|Mux21~0_combout\ $ (\main_processor|Dpth|M4|Out2[10]~10_combout\ $ (\main_processor|Dpth|ALU|Add1~19\)))) # (GND)
-- \main_processor|Dpth|ALU|Add1~21\ = CARRY((\main_processor|Dpth|M5|Mux21~0_combout\ & (\main_processor|Dpth|M4|Out2[10]~10_combout\ & !\main_processor|Dpth|ALU|Add1~19\)) # (!\main_processor|Dpth|M5|Mux21~0_combout\ & 
-- ((\main_processor|Dpth|M4|Out2[10]~10_combout\) # (!\main_processor|Dpth|ALU|Add1~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux21~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[10]~10_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add1~19\,
	combout => \main_processor|Dpth|ALU|Add1~20_combout\,
	cout => \main_processor|Dpth|ALU|Add1~21\);

-- Location: LCCOMB_X52_Y38_N26
\main_processor|Dpth|ALU|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux21~0_combout\ = (\main_processor|C1|ALU_op\(0) & ((\main_processor|Dpth|M5|Mux21~0_combout\) # ((\main_processor|Dpth|M4|Out2[10]~10_combout\) # (\main_processor|C1|ALU_op\(2))))) # (!\main_processor|C1|ALU_op\(0) & 
-- (\main_processor|Dpth|M5|Mux21~0_combout\ & (\main_processor|Dpth|M4|Out2[10]~10_combout\ & !\main_processor|C1|ALU_op\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(0),
	datab => \main_processor|Dpth|M5|Mux21~0_combout\,
	datac => \main_processor|Dpth|M4|Out2[10]~10_combout\,
	datad => \main_processor|C1|ALU_op\(2),
	combout => \main_processor|Dpth|ALU|Mux21~0_combout\);

-- Location: LCCOMB_X55_Y38_N8
\main_processor|Dpth|M2|Out2[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M2|Out2[11]~11_combout\ = (\main_processor|C1|A_Mux~combout\ & (\main_processor|Dpth|IR|Q32\(11))) # (!\main_processor|C1|A_Mux~combout\ & ((\main_processor|Dpth|M6|Mux20~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|A_Mux~combout\,
	datac => \main_processor|Dpth|IR|Q32\(11),
	datad => \main_processor|Dpth|M6|Mux20~3_combout\,
	combout => \main_processor|Dpth|M2|Out2[11]~11_combout\);

-- Location: LCCOMB_X55_Y38_N12
\main_processor|Dpth|A|Q32[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|A|Q32[11]~feeder_combout\ = \main_processor|Dpth|M2|Out2[11]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|Dpth|M2|Out2[11]~11_combout\,
	combout => \main_processor|Dpth|A|Q32[11]~feeder_combout\);

-- Location: FF_X55_Y38_N13
\main_processor|Dpth|A|Q32[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|A|Q32[11]~feeder_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_A~3_combout\,
	ena => \main_processor|C1|ld_A~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|A|Q32\(11));

-- Location: LCCOMB_X55_Y38_N28
\main_processor|Dpth|M4|Out2[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M4|Out2[11]~11_combout\ = (!\main_processor|C1|IM_MUX1~combout\ & \main_processor|Dpth|A|Q32\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|C1|IM_MUX1~combout\,
	datad => \main_processor|Dpth|A|Q32\(11),
	combout => \main_processor|Dpth|M4|Out2[11]~11_combout\);

-- Location: LCCOMB_X52_Y38_N4
\main_processor|Dpth|ALU|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux21~1_combout\ = (\main_processor|Dpth|ALU|Mux21~0_combout\ & (((\main_processor|Dpth|M4|Out2[11]~11_combout\)) # (!\main_processor|C1|ALU_op\(2)))) # (!\main_processor|Dpth|ALU|Mux21~0_combout\ & (\main_processor|C1|ALU_op\(2) 
-- & (\main_processor|Dpth|M4|Out2[9]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux21~0_combout\,
	datab => \main_processor|C1|ALU_op\(2),
	datac => \main_processor|Dpth|M4|Out2[9]~9_combout\,
	datad => \main_processor|Dpth|M4|Out2[11]~11_combout\,
	combout => \main_processor|Dpth|ALU|Mux21~1_combout\);

-- Location: LCCOMB_X53_Y35_N8
\main_processor|Dpth|ALU|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux23~0_combout\ = (\main_processor|C1|ALU_op\(1) & (!\main_processor|C1|ALU_op\(2) & !\main_processor|C1|ALU_op\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(1),
	datab => \main_processor|C1|ALU_op\(2),
	datad => \main_processor|C1|ALU_op\(0),
	combout => \main_processor|Dpth|ALU|Mux23~0_combout\);

-- Location: LCCOMB_X53_Y38_N4
\main_processor|Dpth|ALU|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add0~20_combout\ = ((\main_processor|Dpth|M4|Out2[10]~10_combout\ $ (\main_processor|Dpth|M5|Mux21~0_combout\ $ (!\main_processor|Dpth|ALU|Add0~19\)))) # (GND)
-- \main_processor|Dpth|ALU|Add0~21\ = CARRY((\main_processor|Dpth|M4|Out2[10]~10_combout\ & ((\main_processor|Dpth|M5|Mux21~0_combout\) # (!\main_processor|Dpth|ALU|Add0~19\))) # (!\main_processor|Dpth|M4|Out2[10]~10_combout\ & 
-- (\main_processor|Dpth|M5|Mux21~0_combout\ & !\main_processor|Dpth|ALU|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[10]~10_combout\,
	datab => \main_processor|Dpth|M5|Mux21~0_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add0~19\,
	combout => \main_processor|Dpth|ALU|Add0~20_combout\,
	cout => \main_processor|Dpth|ALU|Add0~21\);

-- Location: LCCOMB_X52_Y38_N22
\main_processor|Dpth|ALU|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux21~2_combout\ = (\main_processor|C1|ALU_op\(1) & (((\main_processor|Dpth|ALU|Mux23~0_combout\ & \main_processor|Dpth|ALU|Add0~20_combout\)))) # (!\main_processor|C1|ALU_op\(1) & ((\main_processor|Dpth|ALU|Mux21~1_combout\) # 
-- ((\main_processor|Dpth|ALU|Mux23~0_combout\ & \main_processor|Dpth|ALU|Add0~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(1),
	datab => \main_processor|Dpth|ALU|Mux21~1_combout\,
	datac => \main_processor|Dpth|ALU|Mux23~0_combout\,
	datad => \main_processor|Dpth|ALU|Add0~20_combout\,
	combout => \main_processor|Dpth|ALU|Mux21~2_combout\);

-- Location: LCCOMB_X52_Y40_N22
\main_processor|Dpth|ALU|Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux21~3_combout\ = (\main_processor|Dpth|ALU|Mux21~2_combout\) # ((\main_processor|Dpth|ALU|Mux23~1_combout\ & \main_processor|Dpth|ALU|Add1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux23~1_combout\,
	datac => \main_processor|Dpth|ALU|Add1~20_combout\,
	datad => \main_processor|Dpth|ALU|Mux21~2_combout\,
	combout => \main_processor|Dpth|ALU|Mux21~3_combout\);

-- Location: LCCOMB_X52_Y38_N20
\main_processor|Dpth|IR|Q32[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|IR|Q32[13]~feeder_combout\ = \main_processor|Dpth|M6|Mux18~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_processor|Dpth|M6|Mux18~3_combout\,
	combout => \main_processor|Dpth|IR|Q32[13]~feeder_combout\);

-- Location: FF_X52_Y38_N21
\main_processor|Dpth|IR|Q32[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|IR|Q32[13]~feeder_combout\,
	ena => \main_processor|C1|ALT_INV_ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|IR|Q32\(13));

-- Location: LCCOMB_X52_Y35_N4
\main_processor|Dpth|M2|Out2[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M2|Out2[13]~13_combout\ = (\main_processor|C1|A_Mux~combout\ & (\main_processor|Dpth|IR|Q32\(13))) # (!\main_processor|C1|A_Mux~combout\ & ((\main_processor|Dpth|M6|Mux18~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(13),
	datac => \main_processor|C1|A_Mux~combout\,
	datad => \main_processor|Dpth|M6|Mux18~3_combout\,
	combout => \main_processor|Dpth|M2|Out2[13]~13_combout\);

-- Location: FF_X52_Y35_N27
\main_processor|Dpth|A|Q32[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[13]~13_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_A~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_A~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|A|Q32\(13));

-- Location: LCCOMB_X52_Y35_N24
\main_processor|Dpth|M4|Out2[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M4|Out2[13]~13_combout\ = (\main_processor|Dpth|A|Q32\(13) & !\main_processor|C1|IM_MUX1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|A|Q32\(13),
	datad => \main_processor|C1|IM_MUX1~combout\,
	combout => \main_processor|Dpth|M4|Out2[13]~13_combout\);

-- Location: FF_X52_Y35_N5
\main_processor|Dpth|B|Q32[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|M2|Out2[13]~13_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_B~1_combout\,
	ena => \main_processor|C1|ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|B|Q32\(13));

-- Location: LCCOMB_X52_Y38_N0
\main_processor|Dpth|M5|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M5|Mux18~0_combout\ = (\main_processor|C1|IM_MUX2\(1) & (((\main_processor|C1|IM_MUX2\(0))))) # (!\main_processor|C1|IM_MUX2\(1) & ((\main_processor|C1|IM_MUX2\(0) & (\main_processor|Dpth|IR|Q32\(13))) # 
-- (!\main_processor|C1|IM_MUX2\(0) & ((\main_processor|Dpth|B|Q32\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|IM_MUX2\(1),
	datab => \main_processor|Dpth|IR|Q32\(13),
	datac => \main_processor|C1|IM_MUX2\(0),
	datad => \main_processor|Dpth|B|Q32\(13),
	combout => \main_processor|Dpth|M5|Mux18~0_combout\);

-- Location: LCCOMB_X52_Y35_N14
\main_processor|Dpth|M2|Out2[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M2|Out2[12]~12_combout\ = (\main_processor|C1|A_Mux~combout\ & (\main_processor|Dpth|IR|Q32\(12))) # (!\main_processor|C1|A_Mux~combout\ & ((\main_processor|Dpth|M6|Mux19~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(12),
	datac => \main_processor|C1|A_Mux~combout\,
	datad => \main_processor|Dpth|M6|Mux19~3_combout\,
	combout => \main_processor|Dpth|M2|Out2[12]~12_combout\);

-- Location: FF_X52_Y35_N21
\main_processor|Dpth|A|Q32[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[12]~12_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_A~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_A~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|A|Q32\(12));

-- Location: LCCOMB_X52_Y35_N20
\main_processor|Dpth|M4|Out2[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M4|Out2[12]~12_combout\ = (\main_processor|Dpth|A|Q32\(12) & !\main_processor|C1|IM_MUX1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|Dpth|A|Q32\(12),
	datad => \main_processor|C1|IM_MUX1~combout\,
	combout => \main_processor|Dpth|M4|Out2[12]~12_combout\);

-- Location: FF_X55_Y38_N15
\main_processor|Dpth|B|Q32[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[11]~11_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_B~1_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|B|Q32\(11));

-- Location: LCCOMB_X54_Y39_N10
\main_processor|Dpth|M5|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M5|Mux20~0_combout\ = (\main_processor|C1|IM_MUX2\(1) & (\main_processor|C1|IM_MUX2\(0))) # (!\main_processor|C1|IM_MUX2\(1) & ((\main_processor|C1|IM_MUX2\(0) & ((\main_processor|Dpth|IR|Q32\(11)))) # (!\main_processor|C1|IM_MUX2\(0) 
-- & (\main_processor|Dpth|B|Q32\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|IM_MUX2\(1),
	datab => \main_processor|C1|IM_MUX2\(0),
	datac => \main_processor|Dpth|B|Q32\(11),
	datad => \main_processor|Dpth|IR|Q32\(11),
	combout => \main_processor|Dpth|M5|Mux20~0_combout\);

-- Location: LCCOMB_X50_Y38_N6
\main_processor|Dpth|ALU|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add1~22_combout\ = (\main_processor|Dpth|M4|Out2[11]~11_combout\ & ((\main_processor|Dpth|M5|Mux20~0_combout\ & (!\main_processor|Dpth|ALU|Add1~21\)) # (!\main_processor|Dpth|M5|Mux20~0_combout\ & 
-- (\main_processor|Dpth|ALU|Add1~21\ & VCC)))) # (!\main_processor|Dpth|M4|Out2[11]~11_combout\ & ((\main_processor|Dpth|M5|Mux20~0_combout\ & ((\main_processor|Dpth|ALU|Add1~21\) # (GND))) # (!\main_processor|Dpth|M5|Mux20~0_combout\ & 
-- (!\main_processor|Dpth|ALU|Add1~21\))))
-- \main_processor|Dpth|ALU|Add1~23\ = CARRY((\main_processor|Dpth|M4|Out2[11]~11_combout\ & (\main_processor|Dpth|M5|Mux20~0_combout\ & !\main_processor|Dpth|ALU|Add1~21\)) # (!\main_processor|Dpth|M4|Out2[11]~11_combout\ & 
-- ((\main_processor|Dpth|M5|Mux20~0_combout\) # (!\main_processor|Dpth|ALU|Add1~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[11]~11_combout\,
	datab => \main_processor|Dpth|M5|Mux20~0_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add1~21\,
	combout => \main_processor|Dpth|ALU|Add1~22_combout\,
	cout => \main_processor|Dpth|ALU|Add1~23\);

-- Location: LCCOMB_X50_Y38_N8
\main_processor|Dpth|ALU|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add1~24_combout\ = ((\main_processor|Dpth|M5|Mux19~0_combout\ $ (\main_processor|Dpth|M4|Out2[12]~12_combout\ $ (\main_processor|Dpth|ALU|Add1~23\)))) # (GND)
-- \main_processor|Dpth|ALU|Add1~25\ = CARRY((\main_processor|Dpth|M5|Mux19~0_combout\ & (\main_processor|Dpth|M4|Out2[12]~12_combout\ & !\main_processor|Dpth|ALU|Add1~23\)) # (!\main_processor|Dpth|M5|Mux19~0_combout\ & 
-- ((\main_processor|Dpth|M4|Out2[12]~12_combout\) # (!\main_processor|Dpth|ALU|Add1~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux19~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[12]~12_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add1~23\,
	combout => \main_processor|Dpth|ALU|Add1~24_combout\,
	cout => \main_processor|Dpth|ALU|Add1~25\);

-- Location: LCCOMB_X50_Y38_N10
\main_processor|Dpth|ALU|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add1~26_combout\ = (\main_processor|Dpth|M4|Out2[13]~13_combout\ & ((\main_processor|Dpth|M5|Mux18~0_combout\ & (!\main_processor|Dpth|ALU|Add1~25\)) # (!\main_processor|Dpth|M5|Mux18~0_combout\ & 
-- (\main_processor|Dpth|ALU|Add1~25\ & VCC)))) # (!\main_processor|Dpth|M4|Out2[13]~13_combout\ & ((\main_processor|Dpth|M5|Mux18~0_combout\ & ((\main_processor|Dpth|ALU|Add1~25\) # (GND))) # (!\main_processor|Dpth|M5|Mux18~0_combout\ & 
-- (!\main_processor|Dpth|ALU|Add1~25\))))
-- \main_processor|Dpth|ALU|Add1~27\ = CARRY((\main_processor|Dpth|M4|Out2[13]~13_combout\ & (\main_processor|Dpth|M5|Mux18~0_combout\ & !\main_processor|Dpth|ALU|Add1~25\)) # (!\main_processor|Dpth|M4|Out2[13]~13_combout\ & 
-- ((\main_processor|Dpth|M5|Mux18~0_combout\) # (!\main_processor|Dpth|ALU|Add1~25\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[13]~13_combout\,
	datab => \main_processor|Dpth|M5|Mux18~0_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add1~25\,
	combout => \main_processor|Dpth|ALU|Add1~26_combout\,
	cout => \main_processor|Dpth|ALU|Add1~27\);

-- Location: LCCOMB_X52_Y35_N26
\main_processor|Dpth|ALU|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux18~0_combout\ = (\main_processor|Dpth|M5|Mux18~0_combout\ & ((\main_processor|C1|ALU_op\(0)) # ((\main_processor|Dpth|A|Q32\(13) & !\main_processor|C1|IM_MUX1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(0),
	datab => \main_processor|Dpth|M5|Mux18~0_combout\,
	datac => \main_processor|Dpth|A|Q32\(13),
	datad => \main_processor|C1|IM_MUX1~combout\,
	combout => \main_processor|Dpth|ALU|Mux18~0_combout\);

-- Location: LCCOMB_X53_Y35_N4
\main_processor|Dpth|ALU|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux18~1_combout\ = (\main_processor|C1|ALU_op\(2) & ((\main_processor|C1|ALU_op\(0) & (\main_processor|Dpth|M4|Out2[14]~14_combout\)) # (!\main_processor|C1|ALU_op\(0) & ((\main_processor|Dpth|M4|Out2[12]~12_combout\))))) # 
-- (!\main_processor|C1|ALU_op\(2) & (((\main_processor|C1|ALU_op\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[14]~14_combout\,
	datab => \main_processor|C1|ALU_op\(2),
	datac => \main_processor|C1|ALU_op\(0),
	datad => \main_processor|Dpth|M4|Out2[12]~12_combout\,
	combout => \main_processor|Dpth|ALU|Mux18~1_combout\);

-- Location: LCCOMB_X52_Y35_N2
\main_processor|Dpth|ALU|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux18~2_combout\ = (\main_processor|C1|ALU_op\(2) & (((\main_processor|Dpth|ALU|Mux18~1_combout\)))) # (!\main_processor|C1|ALU_op\(2) & ((\main_processor|Dpth|ALU|Mux18~0_combout\) # ((\main_processor|Dpth|M4|Out2[13]~13_combout\ 
-- & \main_processor|Dpth|ALU|Mux18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(2),
	datab => \main_processor|Dpth|M4|Out2[13]~13_combout\,
	datac => \main_processor|Dpth|ALU|Mux18~0_combout\,
	datad => \main_processor|Dpth|ALU|Mux18~1_combout\,
	combout => \main_processor|Dpth|ALU|Mux18~2_combout\);

-- Location: LCCOMB_X53_Y38_N6
\main_processor|Dpth|ALU|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add0~22_combout\ = (\main_processor|Dpth|M4|Out2[11]~11_combout\ & ((\main_processor|Dpth|M5|Mux20~0_combout\ & (\main_processor|Dpth|ALU|Add0~21\ & VCC)) # (!\main_processor|Dpth|M5|Mux20~0_combout\ & 
-- (!\main_processor|Dpth|ALU|Add0~21\)))) # (!\main_processor|Dpth|M4|Out2[11]~11_combout\ & ((\main_processor|Dpth|M5|Mux20~0_combout\ & (!\main_processor|Dpth|ALU|Add0~21\)) # (!\main_processor|Dpth|M5|Mux20~0_combout\ & 
-- ((\main_processor|Dpth|ALU|Add0~21\) # (GND)))))
-- \main_processor|Dpth|ALU|Add0~23\ = CARRY((\main_processor|Dpth|M4|Out2[11]~11_combout\ & (!\main_processor|Dpth|M5|Mux20~0_combout\ & !\main_processor|Dpth|ALU|Add0~21\)) # (!\main_processor|Dpth|M4|Out2[11]~11_combout\ & 
-- ((!\main_processor|Dpth|ALU|Add0~21\) # (!\main_processor|Dpth|M5|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[11]~11_combout\,
	datab => \main_processor|Dpth|M5|Mux20~0_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add0~21\,
	combout => \main_processor|Dpth|ALU|Add0~22_combout\,
	cout => \main_processor|Dpth|ALU|Add0~23\);

-- Location: LCCOMB_X53_Y38_N8
\main_processor|Dpth|ALU|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add0~24_combout\ = ((\main_processor|Dpth|M4|Out2[12]~12_combout\ $ (\main_processor|Dpth|M5|Mux19~0_combout\ $ (!\main_processor|Dpth|ALU|Add0~23\)))) # (GND)
-- \main_processor|Dpth|ALU|Add0~25\ = CARRY((\main_processor|Dpth|M4|Out2[12]~12_combout\ & ((\main_processor|Dpth|M5|Mux19~0_combout\) # (!\main_processor|Dpth|ALU|Add0~23\))) # (!\main_processor|Dpth|M4|Out2[12]~12_combout\ & 
-- (\main_processor|Dpth|M5|Mux19~0_combout\ & !\main_processor|Dpth|ALU|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[12]~12_combout\,
	datab => \main_processor|Dpth|M5|Mux19~0_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add0~23\,
	combout => \main_processor|Dpth|ALU|Add0~24_combout\,
	cout => \main_processor|Dpth|ALU|Add0~25\);

-- Location: LCCOMB_X53_Y38_N10
\main_processor|Dpth|ALU|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add0~26_combout\ = (\main_processor|Dpth|M5|Mux18~0_combout\ & ((\main_processor|Dpth|M4|Out2[13]~13_combout\ & (\main_processor|Dpth|ALU|Add0~25\ & VCC)) # (!\main_processor|Dpth|M4|Out2[13]~13_combout\ & 
-- (!\main_processor|Dpth|ALU|Add0~25\)))) # (!\main_processor|Dpth|M5|Mux18~0_combout\ & ((\main_processor|Dpth|M4|Out2[13]~13_combout\ & (!\main_processor|Dpth|ALU|Add0~25\)) # (!\main_processor|Dpth|M4|Out2[13]~13_combout\ & 
-- ((\main_processor|Dpth|ALU|Add0~25\) # (GND)))))
-- \main_processor|Dpth|ALU|Add0~27\ = CARRY((\main_processor|Dpth|M5|Mux18~0_combout\ & (!\main_processor|Dpth|M4|Out2[13]~13_combout\ & !\main_processor|Dpth|ALU|Add0~25\)) # (!\main_processor|Dpth|M5|Mux18~0_combout\ & 
-- ((!\main_processor|Dpth|ALU|Add0~25\) # (!\main_processor|Dpth|M4|Out2[13]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux18~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[13]~13_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add0~25\,
	combout => \main_processor|Dpth|ALU|Add0~26_combout\,
	cout => \main_processor|Dpth|ALU|Add0~27\);

-- Location: LCCOMB_X49_Y38_N18
\main_processor|Dpth|ALU|Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux18~3_combout\ = (\main_processor|Dpth|ALU|Mux18~2_combout\ & (((\main_processor|Dpth|ALU|Mux23~0_combout\ & \main_processor|Dpth|ALU|Add0~26_combout\)) # (!\main_processor|C1|ALU_op\(1)))) # 
-- (!\main_processor|Dpth|ALU|Mux18~2_combout\ & (((\main_processor|Dpth|ALU|Mux23~0_combout\ & \main_processor|Dpth|ALU|Add0~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux18~2_combout\,
	datab => \main_processor|C1|ALU_op\(1),
	datac => \main_processor|Dpth|ALU|Mux23~0_combout\,
	datad => \main_processor|Dpth|ALU|Add0~26_combout\,
	combout => \main_processor|Dpth|ALU|Mux18~3_combout\);

-- Location: LCCOMB_X49_Y38_N4
\main_processor|Dpth|ALU|Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux18~4_combout\ = (\main_processor|Dpth|ALU|Mux18~3_combout\) # ((\main_processor|Dpth|ALU|Mux23~1_combout\ & \main_processor|Dpth|ALU|Add1~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux23~1_combout\,
	datac => \main_processor|Dpth|ALU|Add1~26_combout\,
	datad => \main_processor|Dpth|ALU|Mux18~3_combout\,
	combout => \main_processor|Dpth|ALU|Mux18~4_combout\);

-- Location: M9K_X51_Y37_N0
\main_memory|altsyncram_component|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000040000000042AAA",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "system_memory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "system_memory:main_memory|altsyncram:altsyncram_component|altsyncram_jps3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 6,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \memClk~inputclkctrl_outclk\,
	portadatain => \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \main_memory|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y34_N22
\main_processor|C1|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|Mux23~0_combout\ = (\main_processor|Dpth|IR|Q32\(31) & (!\main_processor|Dpth|IR|Q32\(30) & (\main_processor|Dpth|IR|Q32\(28) $ (\main_processor|Dpth|IR|Q32\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(28),
	datab => \main_processor|Dpth|IR|Q32\(31),
	datac => \main_processor|Dpth|IR|Q32\(29),
	datad => \main_processor|Dpth|IR|Q32\(30),
	combout => \main_processor|C1|Mux23~0_combout\);

-- Location: LCCOMB_X55_Y36_N18
\main_processor|C1|ld_IR~0_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|ld_IR~0_wirecell_combout\ = !\main_processor|C1|ld_IR~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|C1|ld_IR~0_combout\,
	combout => \main_processor|C1|ld_IR~0_wirecell_combout\);

-- Location: LCCOMB_X54_Y37_N26
\main_processor|C1|REG_Mux\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|REG_Mux~combout\ = (GLOBAL(\main_processor|R1|Enable_PD~clkctrl_outclk\) & (\main_processor|Dpth|IR|Q32\(28))) # (!GLOBAL(\main_processor|R1|Enable_PD~clkctrl_outclk\) & ((\main_processor|C1|REG_Mux~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|IR|Q32\(28),
	datac => \main_processor|C1|REG_Mux~combout\,
	datad => \main_processor|R1|Enable_PD~clkctrl_outclk\,
	combout => \main_processor|C1|REG_Mux~combout\);

-- Location: LCCOMB_X54_Y36_N28
\main_processor|Dpth|M1|Out2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M1|Out2[0]~0_combout\ = (\main_processor|C1|REG_Mux~combout\ & (\main_processor|Dpth|B|Q32\(0))) # (!\main_processor|C1|REG_Mux~combout\ & ((\main_processor|Dpth|A|Q32\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|B|Q32\(0),
	datac => \main_processor|Dpth|A|Q32\(0),
	datad => \main_processor|C1|REG_Mux~combout\,
	combout => \main_processor|Dpth|M1|Out2[0]~0_combout\);

-- Location: LCCOMB_X54_Y36_N22
\main_processor|Dpth|M1|Out2[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M1|Out2[1]~1_combout\ = (\main_processor|C1|REG_Mux~combout\ & ((\main_processor|Dpth|B|Q32\(1)))) # (!\main_processor|C1|REG_Mux~combout\ & (\main_processor|Dpth|A|Q32\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|A|Q32\(1),
	datac => \main_processor|Dpth|B|Q32\(1),
	datad => \main_processor|C1|REG_Mux~combout\,
	combout => \main_processor|Dpth|M1|Out2[1]~1_combout\);

-- Location: LCCOMB_X52_Y36_N28
\main_processor|Dpth|M1|Out2[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M1|Out2[2]~2_combout\ = (\main_processor|C1|REG_Mux~combout\ & (\main_processor|Dpth|B|Q32\(2))) # (!\main_processor|C1|REG_Mux~combout\ & ((\main_processor|Dpth|A|Q32\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|B|Q32\(2),
	datab => \main_processor|Dpth|A|Q32\(2),
	datad => \main_processor|C1|REG_Mux~combout\,
	combout => \main_processor|Dpth|M1|Out2[2]~2_combout\);

-- Location: LCCOMB_X54_Y36_N16
\main_processor|Dpth|M1|Out2[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M1|Out2[3]~3_combout\ = (\main_processor|C1|REG_Mux~combout\ & (\main_processor|Dpth|B|Q32\(3))) # (!\main_processor|C1|REG_Mux~combout\ & ((\main_processor|Dpth|A|Q32\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|B|Q32\(3),
	datab => \main_processor|Dpth|A|Q32\(3),
	datad => \main_processor|C1|REG_Mux~combout\,
	combout => \main_processor|Dpth|M1|Out2[3]~3_combout\);

-- Location: LCCOMB_X55_Y36_N14
\main_processor|Dpth|M1|Out2[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M1|Out2[4]~4_combout\ = (\main_processor|C1|REG_Mux~combout\ & (\main_processor|Dpth|B|Q32\(4))) # (!\main_processor|C1|REG_Mux~combout\ & ((\main_processor|Dpth|A|Q32\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|B|Q32\(4),
	datab => \main_processor|Dpth|A|Q32\(4),
	datac => \main_processor|C1|REG_Mux~combout\,
	combout => \main_processor|Dpth|M1|Out2[4]~4_combout\);

-- Location: LCCOMB_X52_Y36_N14
\main_processor|Dpth|M1|Out2[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M1|Out2[5]~5_combout\ = (\main_processor|C1|REG_Mux~combout\ & ((\main_processor|Dpth|B|Q32\(5)))) # (!\main_processor|C1|REG_Mux~combout\ & (\main_processor|Dpth|A|Q32\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|A|Q32\(5),
	datab => \main_processor|Dpth|B|Q32\(5),
	datad => \main_processor|C1|REG_Mux~combout\,
	combout => \main_processor|Dpth|M1|Out2[5]~5_combout\);

-- Location: LCCOMB_X55_Y36_N8
\main_processor|Dpth|M1|Out2[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M1|Out2[6]~6_combout\ = (\main_processor|C1|REG_Mux~combout\ & (\main_processor|Dpth|B|Q32\(6))) # (!\main_processor|C1|REG_Mux~combout\ & ((\main_processor|Dpth|A|Q32\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|B|Q32\(6),
	datac => \main_processor|C1|REG_Mux~combout\,
	datad => \main_processor|Dpth|A|Q32\(6),
	combout => \main_processor|Dpth|M1|Out2[6]~6_combout\);

-- Location: LCCOMB_X52_Y36_N2
\main_processor|Dpth|M1|Out2[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M1|Out2[7]~7_combout\ = (\main_processor|C1|REG_Mux~combout\ & (\main_processor|Dpth|B|Q32\(7))) # (!\main_processor|C1|REG_Mux~combout\ & ((\main_processor|Dpth|A|Q32\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|C1|REG_Mux~combout\,
	datac => \main_processor|Dpth|B|Q32\(7),
	datad => \main_processor|Dpth|A|Q32\(7),
	combout => \main_processor|Dpth|M1|Out2[7]~7_combout\);

-- Location: LCCOMB_X55_Y36_N2
\main_processor|Dpth|M1|Out2[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M1|Out2[8]~8_combout\ = (\main_processor|C1|REG_Mux~combout\ & ((\main_processor|Dpth|B|Q32\(8)))) # (!\main_processor|C1|REG_Mux~combout\ & (\main_processor|Dpth|A|Q32\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|A|Q32\(8),
	datac => \main_processor|C1|REG_Mux~combout\,
	datad => \main_processor|Dpth|B|Q32\(8),
	combout => \main_processor|Dpth|M1|Out2[8]~8_combout\);

-- Location: LCCOMB_X55_Y36_N4
\main_processor|Dpth|M1|Out2[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M1|Out2[9]~9_combout\ = (\main_processor|C1|REG_Mux~combout\ & ((\main_processor|Dpth|B|Q32\(9)))) # (!\main_processor|C1|REG_Mux~combout\ & (\main_processor|Dpth|A|Q32\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|A|Q32\(9),
	datac => \main_processor|C1|REG_Mux~combout\,
	datad => \main_processor|Dpth|B|Q32\(9),
	combout => \main_processor|Dpth|M1|Out2[9]~9_combout\);

-- Location: LCCOMB_X55_Y36_N10
\main_processor|Dpth|M1|Out2[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M1|Out2[10]~10_combout\ = (\main_processor|C1|REG_Mux~combout\ & ((\main_processor|Dpth|B|Q32\(10)))) # (!\main_processor|C1|REG_Mux~combout\ & (\main_processor|Dpth|A|Q32\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|A|Q32\(10),
	datac => \main_processor|C1|REG_Mux~combout\,
	datad => \main_processor|Dpth|B|Q32\(10),
	combout => \main_processor|Dpth|M1|Out2[10]~10_combout\);

-- Location: LCCOMB_X55_Y36_N20
\main_processor|Dpth|M1|Out2[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M1|Out2[11]~11_combout\ = (\main_processor|C1|REG_Mux~combout\ & ((\main_processor|Dpth|B|Q32\(11)))) # (!\main_processor|C1|REG_Mux~combout\ & (\main_processor|Dpth|A|Q32\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|A|Q32\(11),
	datac => \main_processor|C1|REG_Mux~combout\,
	datad => \main_processor|Dpth|B|Q32\(11),
	combout => \main_processor|Dpth|M1|Out2[11]~11_combout\);

-- Location: FF_X52_Y35_N15
\main_processor|Dpth|B|Q32[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|M2|Out2[12]~12_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_B~1_combout\,
	ena => \main_processor|C1|ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|B|Q32\(12));

-- Location: LCCOMB_X54_Y36_N30
\main_processor|Dpth|M1|Out2[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M1|Out2[12]~12_combout\ = (\main_processor|C1|REG_Mux~combout\ & (\main_processor|Dpth|B|Q32\(12))) # (!\main_processor|C1|REG_Mux~combout\ & ((\main_processor|Dpth|A|Q32\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|B|Q32\(12),
	datab => \main_processor|Dpth|A|Q32\(12),
	datad => \main_processor|C1|REG_Mux~combout\,
	combout => \main_processor|Dpth|M1|Out2[12]~12_combout\);

-- Location: LCCOMB_X55_Y36_N22
\main_processor|Dpth|M1|Out2[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M1|Out2[13]~13_combout\ = (\main_processor|C1|REG_Mux~combout\ & (\main_processor|Dpth|B|Q32\(13))) # (!\main_processor|C1|REG_Mux~combout\ & ((\main_processor|Dpth|A|Q32\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|B|Q32\(13),
	datac => \main_processor|C1|REG_Mux~combout\,
	datad => \main_processor|Dpth|A|Q32\(13),
	combout => \main_processor|Dpth|M1|Out2[13]~13_combout\);

-- Location: FF_X52_Y35_N31
\main_processor|Dpth|B|Q32[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|M2|Out2[14]~14_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_B~1_combout\,
	ena => \main_processor|C1|ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|B|Q32\(14));

-- Location: LCCOMB_X53_Y36_N12
\main_processor|Dpth|M1|Out2[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M1|Out2[14]~14_combout\ = (\main_processor|C1|REG_Mux~combout\ & ((\main_processor|Dpth|B|Q32\(14)))) # (!\main_processor|C1|REG_Mux~combout\ & (\main_processor|Dpth|A|Q32\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|A|Q32\(14),
	datab => \main_processor|Dpth|B|Q32\(14),
	datad => \main_processor|C1|REG_Mux~combout\,
	combout => \main_processor|Dpth|M1|Out2[14]~14_combout\);

-- Location: FF_X54_Y38_N9
\main_processor|Dpth|B|Q32[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|M2|Out2[15]~15_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_B~1_combout\,
	ena => \main_processor|C1|ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|B|Q32\(15));

-- Location: LCCOMB_X52_Y38_N2
\main_processor|Dpth|M5|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M5|Mux16~0_combout\ = (\main_processor|C1|IM_MUX2\(1) & (((\main_processor|C1|IM_MUX2\(0))))) # (!\main_processor|C1|IM_MUX2\(1) & ((\main_processor|C1|IM_MUX2\(0) & (\main_processor|Dpth|IR|Q32\(15))) # 
-- (!\main_processor|C1|IM_MUX2\(0) & ((\main_processor|Dpth|B|Q32\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|IM_MUX2\(1),
	datab => \main_processor|Dpth|IR|Q32\(15),
	datac => \main_processor|C1|IM_MUX2\(0),
	datad => \main_processor|Dpth|B|Q32\(15),
	combout => \main_processor|Dpth|M5|Mux16~0_combout\);

-- Location: LCCOMB_X54_Y38_N20
\main_processor|Dpth|M4|Out2[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M4|Out2[15]~15_combout\ = (\main_processor|Dpth|A|Q32\(15) & !\main_processor|C1|IM_MUX1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|Dpth|A|Q32\(15),
	datad => \main_processor|C1|IM_MUX1~combout\,
	combout => \main_processor|Dpth|M4|Out2[15]~15_combout\);

-- Location: LCCOMB_X53_Y36_N24
\main_processor|Dpth|M5|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M5|Mux17~0_combout\ = (\main_processor|C1|IM_MUX2\(1) & (((\main_processor|C1|IM_MUX2\(0))))) # (!\main_processor|C1|IM_MUX2\(1) & ((\main_processor|C1|IM_MUX2\(0) & (\main_processor|Dpth|IR|Q32\(14))) # 
-- (!\main_processor|C1|IM_MUX2\(0) & ((\main_processor|Dpth|B|Q32\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(14),
	datab => \main_processor|C1|IM_MUX2\(1),
	datac => \main_processor|C1|IM_MUX2\(0),
	datad => \main_processor|Dpth|B|Q32\(14),
	combout => \main_processor|Dpth|M5|Mux17~0_combout\);

-- Location: LCCOMB_X50_Y38_N12
\main_processor|Dpth|ALU|Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add1~28_combout\ = ((\main_processor|Dpth|M4|Out2[14]~14_combout\ $ (\main_processor|Dpth|M5|Mux17~0_combout\ $ (\main_processor|Dpth|ALU|Add1~27\)))) # (GND)
-- \main_processor|Dpth|ALU|Add1~29\ = CARRY((\main_processor|Dpth|M4|Out2[14]~14_combout\ & ((!\main_processor|Dpth|ALU|Add1~27\) # (!\main_processor|Dpth|M5|Mux17~0_combout\))) # (!\main_processor|Dpth|M4|Out2[14]~14_combout\ & 
-- (!\main_processor|Dpth|M5|Mux17~0_combout\ & !\main_processor|Dpth|ALU|Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[14]~14_combout\,
	datab => \main_processor|Dpth|M5|Mux17~0_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add1~27\,
	combout => \main_processor|Dpth|ALU|Add1~28_combout\,
	cout => \main_processor|Dpth|ALU|Add1~29\);

-- Location: LCCOMB_X50_Y38_N14
\main_processor|Dpth|ALU|Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add1~30_combout\ = (\main_processor|Dpth|M5|Mux16~0_combout\ & ((\main_processor|Dpth|M4|Out2[15]~15_combout\ & (!\main_processor|Dpth|ALU|Add1~29\)) # (!\main_processor|Dpth|M4|Out2[15]~15_combout\ & 
-- ((\main_processor|Dpth|ALU|Add1~29\) # (GND))))) # (!\main_processor|Dpth|M5|Mux16~0_combout\ & ((\main_processor|Dpth|M4|Out2[15]~15_combout\ & (\main_processor|Dpth|ALU|Add1~29\ & VCC)) # (!\main_processor|Dpth|M4|Out2[15]~15_combout\ & 
-- (!\main_processor|Dpth|ALU|Add1~29\))))
-- \main_processor|Dpth|ALU|Add1~31\ = CARRY((\main_processor|Dpth|M5|Mux16~0_combout\ & ((!\main_processor|Dpth|ALU|Add1~29\) # (!\main_processor|Dpth|M4|Out2[15]~15_combout\))) # (!\main_processor|Dpth|M5|Mux16~0_combout\ & 
-- (!\main_processor|Dpth|M4|Out2[15]~15_combout\ & !\main_processor|Dpth|ALU|Add1~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux16~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[15]~15_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add1~29\,
	combout => \main_processor|Dpth|ALU|Add1~30_combout\,
	cout => \main_processor|Dpth|ALU|Add1~31\);

-- Location: LCCOMB_X53_Y38_N12
\main_processor|Dpth|ALU|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add0~28_combout\ = ((\main_processor|Dpth|M4|Out2[14]~14_combout\ $ (\main_processor|Dpth|M5|Mux17~0_combout\ $ (!\main_processor|Dpth|ALU|Add0~27\)))) # (GND)
-- \main_processor|Dpth|ALU|Add0~29\ = CARRY((\main_processor|Dpth|M4|Out2[14]~14_combout\ & ((\main_processor|Dpth|M5|Mux17~0_combout\) # (!\main_processor|Dpth|ALU|Add0~27\))) # (!\main_processor|Dpth|M4|Out2[14]~14_combout\ & 
-- (\main_processor|Dpth|M5|Mux17~0_combout\ & !\main_processor|Dpth|ALU|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[14]~14_combout\,
	datab => \main_processor|Dpth|M5|Mux17~0_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add0~27\,
	combout => \main_processor|Dpth|ALU|Add0~28_combout\,
	cout => \main_processor|Dpth|ALU|Add0~29\);

-- Location: LCCOMB_X53_Y38_N14
\main_processor|Dpth|ALU|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add0~30_combout\ = (\main_processor|Dpth|M5|Mux16~0_combout\ & ((\main_processor|Dpth|M4|Out2[15]~15_combout\ & (\main_processor|Dpth|ALU|Add0~29\ & VCC)) # (!\main_processor|Dpth|M4|Out2[15]~15_combout\ & 
-- (!\main_processor|Dpth|ALU|Add0~29\)))) # (!\main_processor|Dpth|M5|Mux16~0_combout\ & ((\main_processor|Dpth|M4|Out2[15]~15_combout\ & (!\main_processor|Dpth|ALU|Add0~29\)) # (!\main_processor|Dpth|M4|Out2[15]~15_combout\ & 
-- ((\main_processor|Dpth|ALU|Add0~29\) # (GND)))))
-- \main_processor|Dpth|ALU|Add0~31\ = CARRY((\main_processor|Dpth|M5|Mux16~0_combout\ & (!\main_processor|Dpth|M4|Out2[15]~15_combout\ & !\main_processor|Dpth|ALU|Add0~29\)) # (!\main_processor|Dpth|M5|Mux16~0_combout\ & 
-- ((!\main_processor|Dpth|ALU|Add0~29\) # (!\main_processor|Dpth|M4|Out2[15]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux16~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[15]~15_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add0~29\,
	combout => \main_processor|Dpth|ALU|Add0~30_combout\,
	cout => \main_processor|Dpth|ALU|Add0~31\);

-- Location: LCCOMB_X52_Y38_N24
\main_processor|Dpth|ALU|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux16~0_combout\ = (\main_processor|Dpth|M5|Mux16~0_combout\ & ((\main_processor|C1|ALU_op\(0)) # ((\main_processor|Dpth|A|Q32\(15) & !\main_processor|C1|IM_MUX1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(0),
	datab => \main_processor|Dpth|A|Q32\(15),
	datac => \main_processor|C1|IM_MUX1~combout\,
	datad => \main_processor|Dpth|M5|Mux16~0_combout\,
	combout => \main_processor|Dpth|ALU|Mux16~0_combout\);

-- Location: FF_X54_Y38_N27
\main_processor|Dpth|B|Q32[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[16]~16_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_B~1_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|B|Q32\(16));

-- Location: LCCOMB_X54_Y38_N26
\main_processor|Dpth|M5|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M5|Mux15~0_combout\ = (\main_processor|C1|IM_MUX2\(0) & ((\main_processor|C1|IM_MUX2\(1)))) # (!\main_processor|C1|IM_MUX2\(0) & (\main_processor|Dpth|B|Q32\(16) & !\main_processor|C1|IM_MUX2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|IM_MUX2\(0),
	datac => \main_processor|Dpth|B|Q32\(16),
	datad => \main_processor|C1|IM_MUX2\(1),
	combout => \main_processor|Dpth|M5|Mux15~0_combout\);

-- Location: LCCOMB_X50_Y38_N16
\main_processor|Dpth|ALU|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add1~32_combout\ = ((\main_processor|Dpth|M5|Mux15~0_combout\ $ (\main_processor|Dpth|M4|Out2[16]~16_combout\ $ (\main_processor|Dpth|ALU|Add1~31\)))) # (GND)
-- \main_processor|Dpth|ALU|Add1~33\ = CARRY((\main_processor|Dpth|M5|Mux15~0_combout\ & (\main_processor|Dpth|M4|Out2[16]~16_combout\ & !\main_processor|Dpth|ALU|Add1~31\)) # (!\main_processor|Dpth|M5|Mux15~0_combout\ & 
-- ((\main_processor|Dpth|M4|Out2[16]~16_combout\) # (!\main_processor|Dpth|ALU|Add1~31\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux15~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[16]~16_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add1~31\,
	combout => \main_processor|Dpth|ALU|Add1~32_combout\,
	cout => \main_processor|Dpth|ALU|Add1~33\);

-- Location: LCCOMB_X53_Y38_N16
\main_processor|Dpth|ALU|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add0~32_combout\ = ((\main_processor|Dpth|M4|Out2[16]~16_combout\ $ (\main_processor|Dpth|M5|Mux15~0_combout\ $ (!\main_processor|Dpth|ALU|Add0~31\)))) # (GND)
-- \main_processor|Dpth|ALU|Add0~33\ = CARRY((\main_processor|Dpth|M4|Out2[16]~16_combout\ & ((\main_processor|Dpth|M5|Mux15~0_combout\) # (!\main_processor|Dpth|ALU|Add0~31\))) # (!\main_processor|Dpth|M4|Out2[16]~16_combout\ & 
-- (\main_processor|Dpth|M5|Mux15~0_combout\ & !\main_processor|Dpth|ALU|Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[16]~16_combout\,
	datab => \main_processor|Dpth|M5|Mux15~0_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add0~31\,
	combout => \main_processor|Dpth|ALU|Add0~32_combout\,
	cout => \main_processor|Dpth|ALU|Add0~33\);

-- Location: FF_X52_Y35_N29
\main_processor|Dpth|B|Q32[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[17]~17_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_B~1_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|B|Q32\(17));

-- Location: LCCOMB_X52_Y35_N28
\main_processor|Dpth|M5|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M5|Mux14~0_combout\ = (\main_processor|C1|IM_MUX2\(0) & ((\main_processor|C1|IM_MUX2\(1)))) # (!\main_processor|C1|IM_MUX2\(0) & (\main_processor|Dpth|B|Q32\(17) & !\main_processor|C1|IM_MUX2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|IM_MUX2\(0),
	datac => \main_processor|Dpth|B|Q32\(17),
	datad => \main_processor|C1|IM_MUX2\(1),
	combout => \main_processor|Dpth|M5|Mux14~0_combout\);

-- Location: LCCOMB_X50_Y38_N18
\main_processor|Dpth|ALU|Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add1~34_combout\ = (\main_processor|Dpth|M4|Out2[17]~17_combout\ & ((\main_processor|Dpth|M5|Mux14~0_combout\ & (!\main_processor|Dpth|ALU|Add1~33\)) # (!\main_processor|Dpth|M5|Mux14~0_combout\ & 
-- (\main_processor|Dpth|ALU|Add1~33\ & VCC)))) # (!\main_processor|Dpth|M4|Out2[17]~17_combout\ & ((\main_processor|Dpth|M5|Mux14~0_combout\ & ((\main_processor|Dpth|ALU|Add1~33\) # (GND))) # (!\main_processor|Dpth|M5|Mux14~0_combout\ & 
-- (!\main_processor|Dpth|ALU|Add1~33\))))
-- \main_processor|Dpth|ALU|Add1~35\ = CARRY((\main_processor|Dpth|M4|Out2[17]~17_combout\ & (\main_processor|Dpth|M5|Mux14~0_combout\ & !\main_processor|Dpth|ALU|Add1~33\)) # (!\main_processor|Dpth|M4|Out2[17]~17_combout\ & 
-- ((\main_processor|Dpth|M5|Mux14~0_combout\) # (!\main_processor|Dpth|ALU|Add1~33\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[17]~17_combout\,
	datab => \main_processor|Dpth|M5|Mux14~0_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add1~33\,
	combout => \main_processor|Dpth|ALU|Add1~34_combout\,
	cout => \main_processor|Dpth|ALU|Add1~35\);

-- Location: LCCOMB_X50_Y35_N0
\main_processor|Dpth|ALU|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux14~0_combout\ = (\main_processor|C1|IM_MUX1~combout\ & ((\main_processor|Dpth|IR|Q32\(1)))) # (!\main_processor|C1|IM_MUX1~combout\ & (\main_processor|Dpth|A|Q32\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|IM_MUX1~combout\,
	datac => \main_processor|Dpth|A|Q32\(17),
	datad => \main_processor|Dpth|IR|Q32\(1),
	combout => \main_processor|Dpth|ALU|Mux14~0_combout\);

-- Location: FF_X50_Y36_N21
\main_processor|Dpth|B|Q32[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[18]~18_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_B~1_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|B|Q32\(18));

-- Location: LCCOMB_X50_Y36_N18
\main_processor|Dpth|M5|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M5|Mux13~0_combout\ = (\main_processor|C1|IM_MUX2\(1) & ((\main_processor|C1|IM_MUX2\(0)))) # (!\main_processor|C1|IM_MUX2\(1) & (\main_processor|Dpth|B|Q32\(18) & !\main_processor|C1|IM_MUX2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|B|Q32\(18),
	datac => \main_processor|C1|IM_MUX2\(1),
	datad => \main_processor|C1|IM_MUX2\(0),
	combout => \main_processor|Dpth|M5|Mux13~0_combout\);

-- Location: LCCOMB_X50_Y38_N20
\main_processor|Dpth|ALU|Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add1~36_combout\ = ((\main_processor|Dpth|M4|Out2[18]~18_combout\ $ (\main_processor|Dpth|M5|Mux13~0_combout\ $ (\main_processor|Dpth|ALU|Add1~35\)))) # (GND)
-- \main_processor|Dpth|ALU|Add1~37\ = CARRY((\main_processor|Dpth|M4|Out2[18]~18_combout\ & ((!\main_processor|Dpth|ALU|Add1~35\) # (!\main_processor|Dpth|M5|Mux13~0_combout\))) # (!\main_processor|Dpth|M4|Out2[18]~18_combout\ & 
-- (!\main_processor|Dpth|M5|Mux13~0_combout\ & !\main_processor|Dpth|ALU|Add1~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[18]~18_combout\,
	datab => \main_processor|Dpth|M5|Mux13~0_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add1~35\,
	combout => \main_processor|Dpth|ALU|Add1~36_combout\,
	cout => \main_processor|Dpth|ALU|Add1~37\);

-- Location: LCCOMB_X49_Y35_N18
\main_processor|Dpth|ALU|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux13~0_combout\ = (\main_processor|Dpth|M5|Mux13~0_combout\ & ((\main_processor|C1|ALU_op\(0)) # ((!\main_processor|C1|ALU_op\(2) & \main_processor|Dpth|M4|Out2[18]~18_combout\)))) # (!\main_processor|Dpth|M5|Mux13~0_combout\ & 
-- (\main_processor|C1|ALU_op\(0) & ((\main_processor|C1|ALU_op\(2)) # (\main_processor|Dpth|M4|Out2[18]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux13~0_combout\,
	datab => \main_processor|C1|ALU_op\(2),
	datac => \main_processor|C1|ALU_op\(0),
	datad => \main_processor|Dpth|M4|Out2[18]~18_combout\,
	combout => \main_processor|Dpth|ALU|Mux13~0_combout\);

-- Location: LCCOMB_X53_Y36_N0
\main_processor|Dpth|ALU|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux12~0_combout\ = (\main_processor|C1|IM_MUX1~combout\ & (\main_processor|Dpth|IR|Q32\(3))) # (!\main_processor|C1|IM_MUX1~combout\ & ((\main_processor|Dpth|A|Q32\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(3),
	datab => \main_processor|C1|IM_MUX1~combout\,
	datad => \main_processor|Dpth|A|Q32\(19),
	combout => \main_processor|Dpth|ALU|Mux12~0_combout\);

-- Location: FF_X50_Y36_N15
\main_processor|Dpth|B|Q32[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[19]~19_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_B~1_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|B|Q32\(19));

-- Location: LCCOMB_X50_Y36_N14
\main_processor|Dpth|M5|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M5|Mux12~0_combout\ = (\main_processor|C1|IM_MUX2\(1) & ((\main_processor|C1|IM_MUX2\(0)))) # (!\main_processor|C1|IM_MUX2\(1) & (\main_processor|Dpth|B|Q32\(19) & !\main_processor|C1|IM_MUX2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|C1|IM_MUX2\(1),
	datac => \main_processor|Dpth|B|Q32\(19),
	datad => \main_processor|C1|IM_MUX2\(0),
	combout => \main_processor|Dpth|M5|Mux12~0_combout\);

-- Location: FF_X52_Y38_N17
\main_processor|Dpth|B|Q32[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[20]~20_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_B~1_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|B|Q32\(20));

-- Location: LCCOMB_X52_Y38_N16
\main_processor|Dpth|M5|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M5|Mux11~0_combout\ = (\main_processor|C1|IM_MUX2\(0) & ((\main_processor|C1|IM_MUX2\(1)))) # (!\main_processor|C1|IM_MUX2\(0) & (\main_processor|Dpth|B|Q32\(20) & !\main_processor|C1|IM_MUX2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|C1|IM_MUX2\(0),
	datac => \main_processor|Dpth|B|Q32\(20),
	datad => \main_processor|C1|IM_MUX2\(1),
	combout => \main_processor|Dpth|M5|Mux11~0_combout\);

-- Location: LCCOMB_X50_Y38_N22
\main_processor|Dpth|ALU|Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add1~38_combout\ = (\main_processor|Dpth|M4|Out2[19]~19_combout\ & ((\main_processor|Dpth|M5|Mux12~0_combout\ & (!\main_processor|Dpth|ALU|Add1~37\)) # (!\main_processor|Dpth|M5|Mux12~0_combout\ & 
-- (\main_processor|Dpth|ALU|Add1~37\ & VCC)))) # (!\main_processor|Dpth|M4|Out2[19]~19_combout\ & ((\main_processor|Dpth|M5|Mux12~0_combout\ & ((\main_processor|Dpth|ALU|Add1~37\) # (GND))) # (!\main_processor|Dpth|M5|Mux12~0_combout\ & 
-- (!\main_processor|Dpth|ALU|Add1~37\))))
-- \main_processor|Dpth|ALU|Add1~39\ = CARRY((\main_processor|Dpth|M4|Out2[19]~19_combout\ & (\main_processor|Dpth|M5|Mux12~0_combout\ & !\main_processor|Dpth|ALU|Add1~37\)) # (!\main_processor|Dpth|M4|Out2[19]~19_combout\ & 
-- ((\main_processor|Dpth|M5|Mux12~0_combout\) # (!\main_processor|Dpth|ALU|Add1~37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[19]~19_combout\,
	datab => \main_processor|Dpth|M5|Mux12~0_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add1~37\,
	combout => \main_processor|Dpth|ALU|Add1~38_combout\,
	cout => \main_processor|Dpth|ALU|Add1~39\);

-- Location: LCCOMB_X50_Y38_N24
\main_processor|Dpth|ALU|Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add1~40_combout\ = ((\main_processor|Dpth|M5|Mux11~0_combout\ $ (\main_processor|Dpth|M4|Out2[20]~20_combout\ $ (\main_processor|Dpth|ALU|Add1~39\)))) # (GND)
-- \main_processor|Dpth|ALU|Add1~41\ = CARRY((\main_processor|Dpth|M5|Mux11~0_combout\ & (\main_processor|Dpth|M4|Out2[20]~20_combout\ & !\main_processor|Dpth|ALU|Add1~39\)) # (!\main_processor|Dpth|M5|Mux11~0_combout\ & 
-- ((\main_processor|Dpth|M4|Out2[20]~20_combout\) # (!\main_processor|Dpth|ALU|Add1~39\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux11~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[20]~20_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add1~39\,
	combout => \main_processor|Dpth|ALU|Add1~40_combout\,
	cout => \main_processor|Dpth|ALU|Add1~41\);

-- Location: FF_X52_Y38_N7
\main_processor|Dpth|B|Q32[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[21]~21_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_B~1_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|B|Q32\(21));

-- Location: LCCOMB_X52_Y38_N6
\main_processor|Dpth|M5|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M5|Mux10~0_combout\ = (\main_processor|C1|IM_MUX2\(0) & ((\main_processor|C1|IM_MUX2\(1)))) # (!\main_processor|C1|IM_MUX2\(0) & (\main_processor|Dpth|B|Q32\(21) & !\main_processor|C1|IM_MUX2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|C1|IM_MUX2\(0),
	datac => \main_processor|Dpth|B|Q32\(21),
	datad => \main_processor|C1|IM_MUX2\(1),
	combout => \main_processor|Dpth|M5|Mux10~0_combout\);

-- Location: LCCOMB_X50_Y38_N26
\main_processor|Dpth|ALU|Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add1~42_combout\ = (\main_processor|Dpth|M4|Out2[21]~21_combout\ & ((\main_processor|Dpth|M5|Mux10~0_combout\ & (!\main_processor|Dpth|ALU|Add1~41\)) # (!\main_processor|Dpth|M5|Mux10~0_combout\ & 
-- (\main_processor|Dpth|ALU|Add1~41\ & VCC)))) # (!\main_processor|Dpth|M4|Out2[21]~21_combout\ & ((\main_processor|Dpth|M5|Mux10~0_combout\ & ((\main_processor|Dpth|ALU|Add1~41\) # (GND))) # (!\main_processor|Dpth|M5|Mux10~0_combout\ & 
-- (!\main_processor|Dpth|ALU|Add1~41\))))
-- \main_processor|Dpth|ALU|Add1~43\ = CARRY((\main_processor|Dpth|M4|Out2[21]~21_combout\ & (\main_processor|Dpth|M5|Mux10~0_combout\ & !\main_processor|Dpth|ALU|Add1~41\)) # (!\main_processor|Dpth|M4|Out2[21]~21_combout\ & 
-- ((\main_processor|Dpth|M5|Mux10~0_combout\) # (!\main_processor|Dpth|ALU|Add1~41\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[21]~21_combout\,
	datab => \main_processor|Dpth|M5|Mux10~0_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add1~41\,
	combout => \main_processor|Dpth|ALU|Add1~42_combout\,
	cout => \main_processor|Dpth|ALU|Add1~43\);

-- Location: LCCOMB_X49_Y36_N4
\main_processor|Dpth|ALU|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux10~0_combout\ = (\main_processor|C1|IM_MUX1~combout\ & ((\main_processor|Dpth|IR|Q32\(5)))) # (!\main_processor|C1|IM_MUX1~combout\ & (\main_processor|Dpth|A|Q32\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|A|Q32\(21),
	datac => \main_processor|C1|IM_MUX1~combout\,
	datad => \main_processor|Dpth|IR|Q32\(5),
	combout => \main_processor|Dpth|ALU|Mux10~0_combout\);

-- Location: FF_X53_Y34_N9
\main_processor|Dpth|B|Q32[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[22]~22_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_B~1_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|B|Q32\(22));

-- Location: LCCOMB_X53_Y34_N12
\main_processor|Dpth|M5|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M5|Mux9~0_combout\ = (\main_processor|C1|IM_MUX2\(1) & ((\main_processor|C1|IM_MUX2\(0)))) # (!\main_processor|C1|IM_MUX2\(1) & (\main_processor|Dpth|B|Q32\(22) & !\main_processor|C1|IM_MUX2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|IM_MUX2\(1),
	datac => \main_processor|Dpth|B|Q32\(22),
	datad => \main_processor|C1|IM_MUX2\(0),
	combout => \main_processor|Dpth|M5|Mux9~0_combout\);

-- Location: LCCOMB_X50_Y38_N28
\main_processor|Dpth|ALU|Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add1~44_combout\ = ((\main_processor|Dpth|M4|Out2[22]~22_combout\ $ (\main_processor|Dpth|M5|Mux9~0_combout\ $ (\main_processor|Dpth|ALU|Add1~43\)))) # (GND)
-- \main_processor|Dpth|ALU|Add1~45\ = CARRY((\main_processor|Dpth|M4|Out2[22]~22_combout\ & ((!\main_processor|Dpth|ALU|Add1~43\) # (!\main_processor|Dpth|M5|Mux9~0_combout\))) # (!\main_processor|Dpth|M4|Out2[22]~22_combout\ & 
-- (!\main_processor|Dpth|M5|Mux9~0_combout\ & !\main_processor|Dpth|ALU|Add1~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[22]~22_combout\,
	datab => \main_processor|Dpth|M5|Mux9~0_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add1~43\,
	combout => \main_processor|Dpth|ALU|Add1~44_combout\,
	cout => \main_processor|Dpth|ALU|Add1~45\);

-- Location: LCCOMB_X53_Y38_N18
\main_processor|Dpth|ALU|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add0~34_combout\ = (\main_processor|Dpth|M5|Mux14~0_combout\ & ((\main_processor|Dpth|M4|Out2[17]~17_combout\ & (\main_processor|Dpth|ALU|Add0~33\ & VCC)) # (!\main_processor|Dpth|M4|Out2[17]~17_combout\ & 
-- (!\main_processor|Dpth|ALU|Add0~33\)))) # (!\main_processor|Dpth|M5|Mux14~0_combout\ & ((\main_processor|Dpth|M4|Out2[17]~17_combout\ & (!\main_processor|Dpth|ALU|Add0~33\)) # (!\main_processor|Dpth|M4|Out2[17]~17_combout\ & 
-- ((\main_processor|Dpth|ALU|Add0~33\) # (GND)))))
-- \main_processor|Dpth|ALU|Add0~35\ = CARRY((\main_processor|Dpth|M5|Mux14~0_combout\ & (!\main_processor|Dpth|M4|Out2[17]~17_combout\ & !\main_processor|Dpth|ALU|Add0~33\)) # (!\main_processor|Dpth|M5|Mux14~0_combout\ & 
-- ((!\main_processor|Dpth|ALU|Add0~33\) # (!\main_processor|Dpth|M4|Out2[17]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux14~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[17]~17_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add0~33\,
	combout => \main_processor|Dpth|ALU|Add0~34_combout\,
	cout => \main_processor|Dpth|ALU|Add0~35\);

-- Location: LCCOMB_X53_Y38_N20
\main_processor|Dpth|ALU|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add0~36_combout\ = ((\main_processor|Dpth|M4|Out2[18]~18_combout\ $ (\main_processor|Dpth|M5|Mux13~0_combout\ $ (!\main_processor|Dpth|ALU|Add0~35\)))) # (GND)
-- \main_processor|Dpth|ALU|Add0~37\ = CARRY((\main_processor|Dpth|M4|Out2[18]~18_combout\ & ((\main_processor|Dpth|M5|Mux13~0_combout\) # (!\main_processor|Dpth|ALU|Add0~35\))) # (!\main_processor|Dpth|M4|Out2[18]~18_combout\ & 
-- (\main_processor|Dpth|M5|Mux13~0_combout\ & !\main_processor|Dpth|ALU|Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[18]~18_combout\,
	datab => \main_processor|Dpth|M5|Mux13~0_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add0~35\,
	combout => \main_processor|Dpth|ALU|Add0~36_combout\,
	cout => \main_processor|Dpth|ALU|Add0~37\);

-- Location: LCCOMB_X53_Y38_N22
\main_processor|Dpth|ALU|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add0~38_combout\ = (\main_processor|Dpth|M4|Out2[19]~19_combout\ & ((\main_processor|Dpth|M5|Mux12~0_combout\ & (\main_processor|Dpth|ALU|Add0~37\ & VCC)) # (!\main_processor|Dpth|M5|Mux12~0_combout\ & 
-- (!\main_processor|Dpth|ALU|Add0~37\)))) # (!\main_processor|Dpth|M4|Out2[19]~19_combout\ & ((\main_processor|Dpth|M5|Mux12~0_combout\ & (!\main_processor|Dpth|ALU|Add0~37\)) # (!\main_processor|Dpth|M5|Mux12~0_combout\ & 
-- ((\main_processor|Dpth|ALU|Add0~37\) # (GND)))))
-- \main_processor|Dpth|ALU|Add0~39\ = CARRY((\main_processor|Dpth|M4|Out2[19]~19_combout\ & (!\main_processor|Dpth|M5|Mux12~0_combout\ & !\main_processor|Dpth|ALU|Add0~37\)) # (!\main_processor|Dpth|M4|Out2[19]~19_combout\ & 
-- ((!\main_processor|Dpth|ALU|Add0~37\) # (!\main_processor|Dpth|M5|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[19]~19_combout\,
	datab => \main_processor|Dpth|M5|Mux12~0_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add0~37\,
	combout => \main_processor|Dpth|ALU|Add0~38_combout\,
	cout => \main_processor|Dpth|ALU|Add0~39\);

-- Location: LCCOMB_X53_Y38_N24
\main_processor|Dpth|ALU|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add0~40_combout\ = ((\main_processor|Dpth|M5|Mux11~0_combout\ $ (\main_processor|Dpth|M4|Out2[20]~20_combout\ $ (!\main_processor|Dpth|ALU|Add0~39\)))) # (GND)
-- \main_processor|Dpth|ALU|Add0~41\ = CARRY((\main_processor|Dpth|M5|Mux11~0_combout\ & ((\main_processor|Dpth|M4|Out2[20]~20_combout\) # (!\main_processor|Dpth|ALU|Add0~39\))) # (!\main_processor|Dpth|M5|Mux11~0_combout\ & 
-- (\main_processor|Dpth|M4|Out2[20]~20_combout\ & !\main_processor|Dpth|ALU|Add0~39\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux11~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[20]~20_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add0~39\,
	combout => \main_processor|Dpth|ALU|Add0~40_combout\,
	cout => \main_processor|Dpth|ALU|Add0~41\);

-- Location: LCCOMB_X53_Y38_N26
\main_processor|Dpth|ALU|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add0~42_combout\ = (\main_processor|Dpth|M4|Out2[21]~21_combout\ & ((\main_processor|Dpth|M5|Mux10~0_combout\ & (\main_processor|Dpth|ALU|Add0~41\ & VCC)) # (!\main_processor|Dpth|M5|Mux10~0_combout\ & 
-- (!\main_processor|Dpth|ALU|Add0~41\)))) # (!\main_processor|Dpth|M4|Out2[21]~21_combout\ & ((\main_processor|Dpth|M5|Mux10~0_combout\ & (!\main_processor|Dpth|ALU|Add0~41\)) # (!\main_processor|Dpth|M5|Mux10~0_combout\ & 
-- ((\main_processor|Dpth|ALU|Add0~41\) # (GND)))))
-- \main_processor|Dpth|ALU|Add0~43\ = CARRY((\main_processor|Dpth|M4|Out2[21]~21_combout\ & (!\main_processor|Dpth|M5|Mux10~0_combout\ & !\main_processor|Dpth|ALU|Add0~41\)) # (!\main_processor|Dpth|M4|Out2[21]~21_combout\ & 
-- ((!\main_processor|Dpth|ALU|Add0~41\) # (!\main_processor|Dpth|M5|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[21]~21_combout\,
	datab => \main_processor|Dpth|M5|Mux10~0_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add0~41\,
	combout => \main_processor|Dpth|ALU|Add0~42_combout\,
	cout => \main_processor|Dpth|ALU|Add0~43\);

-- Location: LCCOMB_X53_Y38_N28
\main_processor|Dpth|ALU|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add0~44_combout\ = ((\main_processor|Dpth|M5|Mux9~0_combout\ $ (\main_processor|Dpth|M4|Out2[22]~22_combout\ $ (!\main_processor|Dpth|ALU|Add0~43\)))) # (GND)
-- \main_processor|Dpth|ALU|Add0~45\ = CARRY((\main_processor|Dpth|M5|Mux9~0_combout\ & ((\main_processor|Dpth|M4|Out2[22]~22_combout\) # (!\main_processor|Dpth|ALU|Add0~43\))) # (!\main_processor|Dpth|M5|Mux9~0_combout\ & 
-- (\main_processor|Dpth|M4|Out2[22]~22_combout\ & !\main_processor|Dpth|ALU|Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux9~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[22]~22_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add0~43\,
	combout => \main_processor|Dpth|ALU|Add0~44_combout\,
	cout => \main_processor|Dpth|ALU|Add0~45\);

-- Location: LCCOMB_X53_Y34_N30
\main_processor|Dpth|ALU|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux9~0_combout\ = (\main_processor|C1|ALU_op\(0) & ((\main_processor|C1|ALU_op\(2)) # ((\main_processor|Dpth|M4|Out2[22]~22_combout\) # (\main_processor|Dpth|M5|Mux9~0_combout\)))) # (!\main_processor|C1|ALU_op\(0) & 
-- (!\main_processor|C1|ALU_op\(2) & (\main_processor|Dpth|M4|Out2[22]~22_combout\ & \main_processor|Dpth|M5|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(0),
	datab => \main_processor|C1|ALU_op\(2),
	datac => \main_processor|Dpth|M4|Out2[22]~22_combout\,
	datad => \main_processor|Dpth|M5|Mux9~0_combout\,
	combout => \main_processor|Dpth|ALU|Mux9~0_combout\);

-- Location: LCCOMB_X53_Y34_N20
\main_processor|Dpth|ALU|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux9~1_combout\ = (\main_processor|C1|ALU_op\(2) & ((\main_processor|Dpth|ALU|Mux9~0_combout\ & (\main_processor|Dpth|M4|Out2[23]~23_combout\)) # (!\main_processor|Dpth|ALU|Mux9~0_combout\ & 
-- ((\main_processor|Dpth|M4|Out2[21]~21_combout\))))) # (!\main_processor|C1|ALU_op\(2) & (((\main_processor|Dpth|ALU|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[23]~23_combout\,
	datab => \main_processor|C1|ALU_op\(2),
	datac => \main_processor|Dpth|ALU|Mux9~0_combout\,
	datad => \main_processor|Dpth|M4|Out2[21]~21_combout\,
	combout => \main_processor|Dpth|ALU|Mux9~1_combout\);

-- Location: LCCOMB_X52_Y37_N2
\main_processor|Dpth|ALU|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux9~2_combout\ = (\main_processor|C1|ALU_op\(1) & (\main_processor|Dpth|ALU|Mux23~0_combout\ & (\main_processor|Dpth|ALU|Add0~44_combout\))) # (!\main_processor|C1|ALU_op\(1) & ((\main_processor|Dpth|ALU|Mux9~1_combout\) # 
-- ((\main_processor|Dpth|ALU|Mux23~0_combout\ & \main_processor|Dpth|ALU|Add0~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(1),
	datab => \main_processor|Dpth|ALU|Mux23~0_combout\,
	datac => \main_processor|Dpth|ALU|Add0~44_combout\,
	datad => \main_processor|Dpth|ALU|Mux9~1_combout\,
	combout => \main_processor|Dpth|ALU|Mux9~2_combout\);

-- Location: LCCOMB_X52_Y37_N28
\main_processor|Dpth|ALU|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux9~3_combout\ = (\main_processor|Dpth|ALU|Mux9~2_combout\) # ((\main_processor|Dpth|ALU|Add1~44_combout\ & \main_processor|Dpth|ALU|Mux23~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Add1~44_combout\,
	datab => \main_processor|Dpth|ALU|Mux23~1_combout\,
	datad => \main_processor|Dpth|ALU|Mux9~2_combout\,
	combout => \main_processor|Dpth|ALU|Mux9~3_combout\);

-- Location: LCCOMB_X55_Y36_N16
\main_processor|Dpth|M1|Out2[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M1|Out2[16]~16_combout\ = (\main_processor|C1|REG_Mux~combout\ & ((\main_processor|Dpth|B|Q32\(16)))) # (!\main_processor|C1|REG_Mux~combout\ & (\main_processor|Dpth|A|Q32\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|A|Q32\(16),
	datab => \main_processor|Dpth|B|Q32\(16),
	datac => \main_processor|C1|REG_Mux~combout\,
	combout => \main_processor|Dpth|M1|Out2[16]~16_combout\);

-- Location: LCCOMB_X54_Y36_N4
\main_processor|Dpth|M1|Out2[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M1|Out2[17]~17_combout\ = (\main_processor|C1|REG_Mux~combout\ & (\main_processor|Dpth|B|Q32\(17))) # (!\main_processor|C1|REG_Mux~combout\ & ((\main_processor|Dpth|A|Q32\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|B|Q32\(17),
	datab => \main_processor|Dpth|A|Q32\(17),
	datad => \main_processor|C1|REG_Mux~combout\,
	combout => \main_processor|Dpth|M1|Out2[17]~17_combout\);

-- Location: LCCOMB_X50_Y36_N20
\main_processor|Dpth|M1|Out2[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M1|Out2[18]~18_combout\ = (\main_processor|C1|REG_Mux~combout\ & ((\main_processor|Dpth|B|Q32\(18)))) # (!\main_processor|C1|REG_Mux~combout\ & (\main_processor|Dpth|A|Q32\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|A|Q32\(18),
	datac => \main_processor|Dpth|B|Q32\(18),
	datad => \main_processor|C1|REG_Mux~combout\,
	combout => \main_processor|Dpth|M1|Out2[18]~18_combout\);

-- Location: LCCOMB_X53_Y36_N10
\main_processor|Dpth|M1|Out2[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M1|Out2[19]~19_combout\ = (\main_processor|C1|REG_Mux~combout\ & ((\main_processor|Dpth|B|Q32\(19)))) # (!\main_processor|C1|REG_Mux~combout\ & (\main_processor|Dpth|A|Q32\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|A|Q32\(19),
	datac => \main_processor|Dpth|B|Q32\(19),
	datad => \main_processor|C1|REG_Mux~combout\,
	combout => \main_processor|Dpth|M1|Out2[19]~19_combout\);

-- Location: LCCOMB_X53_Y36_N16
\main_processor|Dpth|M1|Out2[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M1|Out2[20]~20_combout\ = (\main_processor|C1|REG_Mux~combout\ & (\main_processor|Dpth|B|Q32\(20))) # (!\main_processor|C1|REG_Mux~combout\ & ((\main_processor|Dpth|A|Q32\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|B|Q32\(20),
	datab => \main_processor|Dpth|A|Q32\(20),
	datad => \main_processor|C1|REG_Mux~combout\,
	combout => \main_processor|Dpth|M1|Out2[20]~20_combout\);

-- Location: LCCOMB_X52_Y36_N22
\main_processor|Dpth|M1|Out2[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M1|Out2[21]~21_combout\ = (\main_processor|C1|REG_Mux~combout\ & (\main_processor|Dpth|B|Q32\(21))) # (!\main_processor|C1|REG_Mux~combout\ & ((\main_processor|Dpth|A|Q32\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|B|Q32\(21),
	datac => \main_processor|C1|REG_Mux~combout\,
	datad => \main_processor|Dpth|A|Q32\(21),
	combout => \main_processor|Dpth|M1|Out2[21]~21_combout\);

-- Location: LCCOMB_X55_Y36_N6
\main_processor|Dpth|M1|Out2[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M1|Out2[22]~22_combout\ = (\main_processor|C1|REG_Mux~combout\ & ((\main_processor|Dpth|B|Q32\(22)))) # (!\main_processor|C1|REG_Mux~combout\ & (\main_processor|Dpth|A|Q32\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|A|Q32\(22),
	datac => \main_processor|C1|REG_Mux~combout\,
	datad => \main_processor|Dpth|B|Q32\(22),
	combout => \main_processor|Dpth|M1|Out2[22]~22_combout\);

-- Location: LCCOMB_X53_Y34_N18
\main_processor|Dpth|M5|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M5|Mux8~0_combout\ = (\main_processor|C1|IM_MUX2\(1) & (\main_processor|C1|IM_MUX2\(0))) # (!\main_processor|C1|IM_MUX2\(1) & (!\main_processor|C1|IM_MUX2\(0) & \main_processor|Dpth|B|Q32\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|IM_MUX2\(1),
	datac => \main_processor|C1|IM_MUX2\(0),
	datad => \main_processor|Dpth|B|Q32\(23),
	combout => \main_processor|Dpth|M5|Mux8~0_combout\);

-- Location: LCCOMB_X50_Y38_N30
\main_processor|Dpth|ALU|Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add1~46_combout\ = (\main_processor|Dpth|M5|Mux8~0_combout\ & ((\main_processor|Dpth|M4|Out2[23]~23_combout\ & (!\main_processor|Dpth|ALU|Add1~45\)) # (!\main_processor|Dpth|M4|Out2[23]~23_combout\ & 
-- ((\main_processor|Dpth|ALU|Add1~45\) # (GND))))) # (!\main_processor|Dpth|M5|Mux8~0_combout\ & ((\main_processor|Dpth|M4|Out2[23]~23_combout\ & (\main_processor|Dpth|ALU|Add1~45\ & VCC)) # (!\main_processor|Dpth|M4|Out2[23]~23_combout\ & 
-- (!\main_processor|Dpth|ALU|Add1~45\))))
-- \main_processor|Dpth|ALU|Add1~47\ = CARRY((\main_processor|Dpth|M5|Mux8~0_combout\ & ((!\main_processor|Dpth|ALU|Add1~45\) # (!\main_processor|Dpth|M4|Out2[23]~23_combout\))) # (!\main_processor|Dpth|M5|Mux8~0_combout\ & 
-- (!\main_processor|Dpth|M4|Out2[23]~23_combout\ & !\main_processor|Dpth|ALU|Add1~45\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux8~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[23]~23_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add1~45\,
	combout => \main_processor|Dpth|ALU|Add1~46_combout\,
	cout => \main_processor|Dpth|ALU|Add1~47\);

-- Location: FF_X53_Y34_N11
\main_processor|Dpth|A|Q32[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[23]~23_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_A~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_A~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|A|Q32\(23));

-- Location: LCCOMB_X53_Y34_N4
\main_processor|Dpth|ALU|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux8~0_combout\ = (\main_processor|C1|IM_MUX1~combout\ & ((\main_processor|Dpth|IR|Q32\(7)))) # (!\main_processor|C1|IM_MUX1~combout\ & (\main_processor|Dpth|A|Q32\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|A|Q32\(23),
	datab => \main_processor|Dpth|IR|Q32\(7),
	datad => \main_processor|C1|IM_MUX1~combout\,
	combout => \main_processor|Dpth|ALU|Mux8~0_combout\);

-- Location: FF_X53_Y34_N1
\main_processor|Dpth|B|Q32[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[24]~24_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_B~1_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|B|Q32\(24));

-- Location: LCCOMB_X52_Y36_N16
\main_processor|Dpth|M1|Out2[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M1|Out2[24]~24_combout\ = (\main_processor|C1|REG_Mux~combout\ & ((\main_processor|Dpth|B|Q32\(24)))) # (!\main_processor|C1|REG_Mux~combout\ & (\main_processor|Dpth|A|Q32\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|A|Q32\(24),
	datab => \main_processor|Dpth|B|Q32\(24),
	datad => \main_processor|C1|REG_Mux~combout\,
	combout => \main_processor|Dpth|M1|Out2[24]~24_combout\);

-- Location: FF_X53_Y34_N3
\main_processor|Dpth|A|Q32[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[25]~25_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_A~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_A~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|A|Q32\(25));

-- Location: LCCOMB_X55_Y36_N28
\main_processor|Dpth|M1|Out2[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M1|Out2[25]~25_combout\ = (\main_processor|C1|REG_Mux~combout\ & (\main_processor|Dpth|B|Q32\(25))) # (!\main_processor|C1|REG_Mux~combout\ & ((\main_processor|Dpth|A|Q32\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|B|Q32\(25),
	datac => \main_processor|C1|REG_Mux~combout\,
	datad => \main_processor|Dpth|A|Q32\(25),
	combout => \main_processor|Dpth|M1|Out2[25]~25_combout\);

-- Location: FF_X49_Y37_N1
\main_processor|Dpth|A|Q32[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[26]~26_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_A~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_A~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|A|Q32\(26));

-- Location: LCCOMB_X50_Y36_N16
\main_processor|Dpth|M1|Out2[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M1|Out2[26]~26_combout\ = (\main_processor|C1|REG_Mux~combout\ & (\main_processor|Dpth|B|Q32\(26))) # (!\main_processor|C1|REG_Mux~combout\ & ((\main_processor|Dpth|A|Q32\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|B|Q32\(26),
	datac => \main_processor|Dpth|A|Q32\(26),
	datad => \main_processor|C1|REG_Mux~combout\,
	combout => \main_processor|Dpth|M1|Out2[26]~26_combout\);

-- Location: LCCOMB_X52_Y38_N30
\main_processor|Dpth|M5|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M5|Mux3~0_combout\ = (\main_processor|C1|IM_MUX2\(1) & (\main_processor|C1|IM_MUX2\(0))) # (!\main_processor|C1|IM_MUX2\(1) & (!\main_processor|C1|IM_MUX2\(0) & \main_processor|Dpth|B|Q32\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|C1|IM_MUX2\(1),
	datac => \main_processor|C1|IM_MUX2\(0),
	datad => \main_processor|Dpth|B|Q32\(28),
	combout => \main_processor|Dpth|M5|Mux3~0_combout\);

-- Location: FF_X48_Y37_N21
\main_processor|Dpth|A|Q32[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[28]~28_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_A~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_A~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|A|Q32\(28));

-- Location: LCCOMB_X48_Y37_N20
\main_processor|Dpth|M4|Out2[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M4|Out2[28]~28_combout\ = (\main_processor|C1|IM_MUX1~combout\ & (\main_processor|Dpth|IR|Q32\(12))) # (!\main_processor|C1|IM_MUX1~combout\ & ((\main_processor|Dpth|A|Q32\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|IR|Q32\(12),
	datac => \main_processor|Dpth|A|Q32\(28),
	datad => \main_processor|C1|IM_MUX1~combout\,
	combout => \main_processor|Dpth|M4|Out2[28]~28_combout\);

-- Location: FF_X50_Y37_N21
\main_processor|Dpth|B|Q32[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[27]~27_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_B~1_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|B|Q32\(27));

-- Location: LCCOMB_X53_Y37_N22
\main_processor|Dpth|M5|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M5|Mux4~0_combout\ = (\main_processor|C1|IM_MUX2\(1) & ((\main_processor|C1|IM_MUX2\(0)))) # (!\main_processor|C1|IM_MUX2\(1) & (\main_processor|Dpth|B|Q32\(27) & !\main_processor|C1|IM_MUX2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|B|Q32\(27),
	datac => \main_processor|C1|IM_MUX2\(1),
	datad => \main_processor|C1|IM_MUX2\(0),
	combout => \main_processor|Dpth|M5|Mux4~0_combout\);

-- Location: LCCOMB_X49_Y37_N24
\main_processor|Dpth|M4|Out2[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M4|Out2[26]~26_combout\ = (\main_processor|C1|IM_MUX1~combout\ & ((\main_processor|Dpth|IR|Q32\(10)))) # (!\main_processor|C1|IM_MUX1~combout\ & (\main_processor|Dpth|A|Q32\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|A|Q32\(26),
	datac => \main_processor|Dpth|IR|Q32\(10),
	datad => \main_processor|C1|IM_MUX1~combout\,
	combout => \main_processor|Dpth|M4|Out2[26]~26_combout\);

-- Location: LCCOMB_X53_Y34_N2
\main_processor|Dpth|M4|Out2[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M4|Out2[25]~25_combout\ = (\main_processor|C1|IM_MUX1~combout\ & (\main_processor|Dpth|IR|Q32\(9))) # (!\main_processor|C1|IM_MUX1~combout\ & ((\main_processor|Dpth|A|Q32\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(9),
	datac => \main_processor|Dpth|A|Q32\(25),
	datad => \main_processor|C1|IM_MUX1~combout\,
	combout => \main_processor|Dpth|M4|Out2[25]~25_combout\);

-- Location: LCCOMB_X53_Y34_N0
\main_processor|Dpth|M5|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M5|Mux7~0_combout\ = (\main_processor|C1|IM_MUX2\(1) & (\main_processor|C1|IM_MUX2\(0))) # (!\main_processor|C1|IM_MUX2\(1) & (!\main_processor|C1|IM_MUX2\(0) & \main_processor|Dpth|B|Q32\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|IM_MUX2\(1),
	datab => \main_processor|C1|IM_MUX2\(0),
	datac => \main_processor|Dpth|B|Q32\(24),
	combout => \main_processor|Dpth|M5|Mux7~0_combout\);

-- Location: LCCOMB_X50_Y37_N0
\main_processor|Dpth|ALU|Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add1~48_combout\ = ((\main_processor|Dpth|M5|Mux7~0_combout\ $ (\main_processor|Dpth|M4|Out2[24]~24_combout\ $ (\main_processor|Dpth|ALU|Add1~47\)))) # (GND)
-- \main_processor|Dpth|ALU|Add1~49\ = CARRY((\main_processor|Dpth|M5|Mux7~0_combout\ & (\main_processor|Dpth|M4|Out2[24]~24_combout\ & !\main_processor|Dpth|ALU|Add1~47\)) # (!\main_processor|Dpth|M5|Mux7~0_combout\ & 
-- ((\main_processor|Dpth|M4|Out2[24]~24_combout\) # (!\main_processor|Dpth|ALU|Add1~47\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux7~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[24]~24_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add1~47\,
	combout => \main_processor|Dpth|ALU|Add1~48_combout\,
	cout => \main_processor|Dpth|ALU|Add1~49\);

-- Location: LCCOMB_X50_Y37_N2
\main_processor|Dpth|ALU|Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add1~50_combout\ = (\main_processor|Dpth|M5|Mux6~0_combout\ & ((\main_processor|Dpth|M4|Out2[25]~25_combout\ & (!\main_processor|Dpth|ALU|Add1~49\)) # (!\main_processor|Dpth|M4|Out2[25]~25_combout\ & 
-- ((\main_processor|Dpth|ALU|Add1~49\) # (GND))))) # (!\main_processor|Dpth|M5|Mux6~0_combout\ & ((\main_processor|Dpth|M4|Out2[25]~25_combout\ & (\main_processor|Dpth|ALU|Add1~49\ & VCC)) # (!\main_processor|Dpth|M4|Out2[25]~25_combout\ & 
-- (!\main_processor|Dpth|ALU|Add1~49\))))
-- \main_processor|Dpth|ALU|Add1~51\ = CARRY((\main_processor|Dpth|M5|Mux6~0_combout\ & ((!\main_processor|Dpth|ALU|Add1~49\) # (!\main_processor|Dpth|M4|Out2[25]~25_combout\))) # (!\main_processor|Dpth|M5|Mux6~0_combout\ & 
-- (!\main_processor|Dpth|M4|Out2[25]~25_combout\ & !\main_processor|Dpth|ALU|Add1~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux6~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[25]~25_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add1~49\,
	combout => \main_processor|Dpth|ALU|Add1~50_combout\,
	cout => \main_processor|Dpth|ALU|Add1~51\);

-- Location: LCCOMB_X50_Y37_N4
\main_processor|Dpth|ALU|Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add1~52_combout\ = ((\main_processor|Dpth|M5|Mux5~0_combout\ $ (\main_processor|Dpth|M4|Out2[26]~26_combout\ $ (\main_processor|Dpth|ALU|Add1~51\)))) # (GND)
-- \main_processor|Dpth|ALU|Add1~53\ = CARRY((\main_processor|Dpth|M5|Mux5~0_combout\ & (\main_processor|Dpth|M4|Out2[26]~26_combout\ & !\main_processor|Dpth|ALU|Add1~51\)) # (!\main_processor|Dpth|M5|Mux5~0_combout\ & 
-- ((\main_processor|Dpth|M4|Out2[26]~26_combout\) # (!\main_processor|Dpth|ALU|Add1~51\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux5~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[26]~26_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add1~51\,
	combout => \main_processor|Dpth|ALU|Add1~52_combout\,
	cout => \main_processor|Dpth|ALU|Add1~53\);

-- Location: LCCOMB_X50_Y37_N6
\main_processor|Dpth|ALU|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add1~54_combout\ = (\main_processor|Dpth|M4|Out2[27]~27_combout\ & ((\main_processor|Dpth|M5|Mux4~0_combout\ & (!\main_processor|Dpth|ALU|Add1~53\)) # (!\main_processor|Dpth|M5|Mux4~0_combout\ & (\main_processor|Dpth|ALU|Add1~53\ 
-- & VCC)))) # (!\main_processor|Dpth|M4|Out2[27]~27_combout\ & ((\main_processor|Dpth|M5|Mux4~0_combout\ & ((\main_processor|Dpth|ALU|Add1~53\) # (GND))) # (!\main_processor|Dpth|M5|Mux4~0_combout\ & (!\main_processor|Dpth|ALU|Add1~53\))))
-- \main_processor|Dpth|ALU|Add1~55\ = CARRY((\main_processor|Dpth|M4|Out2[27]~27_combout\ & (\main_processor|Dpth|M5|Mux4~0_combout\ & !\main_processor|Dpth|ALU|Add1~53\)) # (!\main_processor|Dpth|M4|Out2[27]~27_combout\ & 
-- ((\main_processor|Dpth|M5|Mux4~0_combout\) # (!\main_processor|Dpth|ALU|Add1~53\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[27]~27_combout\,
	datab => \main_processor|Dpth|M5|Mux4~0_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add1~53\,
	combout => \main_processor|Dpth|ALU|Add1~54_combout\,
	cout => \main_processor|Dpth|ALU|Add1~55\);

-- Location: LCCOMB_X50_Y37_N8
\main_processor|Dpth|ALU|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add1~56_combout\ = ((\main_processor|Dpth|M5|Mux3~0_combout\ $ (\main_processor|Dpth|M4|Out2[28]~28_combout\ $ (\main_processor|Dpth|ALU|Add1~55\)))) # (GND)
-- \main_processor|Dpth|ALU|Add1~57\ = CARRY((\main_processor|Dpth|M5|Mux3~0_combout\ & (\main_processor|Dpth|M4|Out2[28]~28_combout\ & !\main_processor|Dpth|ALU|Add1~55\)) # (!\main_processor|Dpth|M5|Mux3~0_combout\ & 
-- ((\main_processor|Dpth|M4|Out2[28]~28_combout\) # (!\main_processor|Dpth|ALU|Add1~55\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux3~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[28]~28_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add1~55\,
	combout => \main_processor|Dpth|ALU|Add1~56_combout\,
	cout => \main_processor|Dpth|ALU|Add1~57\);

-- Location: LCCOMB_X52_Y37_N26
\main_processor|Dpth|M6|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux9~3_combout\ = (\main_processor|Dpth|M6|Mux9~2_combout\) # ((\main_processor|C1|DATA_Mux\(1) & (\main_processor|Dpth|ALU|Mux9~3_combout\ & !\main_processor|C1|DATA_Mux\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|Dpth|ALU|Mux9~3_combout\,
	datac => \main_processor|C1|DATA_Mux\(0),
	datad => \main_processor|Dpth|M6|Mux9~2_combout\,
	combout => \main_processor|Dpth|M6|Mux9~3_combout\);

-- Location: M9K_X51_Y37_N0
\main_memory|altsyncram_component|auto_generated|ram_block1a14\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001C00000000000090001D400200000002",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "system_memory.mif",
	init_file_layout => "port_a",
	logical_ram_name => "system_memory:main_memory|altsyncram:altsyncram_component|altsyncram_jps3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 6,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 63,
	port_a_logical_ram_depth => 64,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_width => 6,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \memClk~inputclkctrl_outclk\,
	portadatain => \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \main_memory|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: FF_X50_Y37_N19
\main_processor|Dpth|B|Q32[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[29]~29_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_B~1_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|B|Q32\(29));

-- Location: LCCOMB_X53_Y36_N2
\main_processor|Dpth|M1|Out2[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M1|Out2[29]~29_combout\ = (\main_processor|C1|REG_Mux~combout\ & (\main_processor|Dpth|B|Q32\(29))) # (!\main_processor|C1|REG_Mux~combout\ & ((\main_processor|Dpth|A|Q32\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|B|Q32\(29),
	datac => \main_processor|Dpth|A|Q32\(29),
	datad => \main_processor|C1|REG_Mux~combout\,
	combout => \main_processor|Dpth|M1|Out2[29]~29_combout\);

-- Location: LCCOMB_X50_Y37_N20
\main_processor|Dpth|M2|Out2[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M2|Out2[31]~31_combout\ = (!\main_processor|C1|A_Mux~combout\ & \main_processor|Dpth|M6|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|C1|A_Mux~combout\,
	datad => \main_processor|Dpth|M6|Mux0~1_combout\,
	combout => \main_processor|Dpth|M2|Out2[31]~31_combout\);

-- Location: FF_X50_Y37_N9
\main_processor|Dpth|B|Q32[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[31]~31_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_B~1_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|B|Q32\(31));

-- Location: FF_X50_Y37_N27
\main_processor|Dpth|A|Q32[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[31]~31_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_A~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_A~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|A|Q32\(31));

-- Location: LCCOMB_X52_Y38_N18
\main_processor|Dpth|M1|Out2[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M1|Out2[31]~31_combout\ = (\main_processor|C1|REG_Mux~combout\ & (\main_processor|Dpth|B|Q32\(31))) # (!\main_processor|C1|REG_Mux~combout\ & ((\main_processor|Dpth|A|Q32\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|B|Q32\(31),
	datac => \main_processor|Dpth|A|Q32\(31),
	datad => \main_processor|C1|REG_Mux~combout\,
	combout => \main_processor|Dpth|M1|Out2[31]~31_combout\);

-- Location: M9K_X51_Y36_N0
\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "cpu1:main_processor|datapath:Dpth|data_mem:D1|altsyncram:mem_rtl_0|altsyncram_hie1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 8,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 32,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \main_processor|C1|wen~1_combout\,
	portbre => VCC,
	portbaddrstall => \main_processor|C1|ALT_INV_ld_IR~0_wirecell_combout\,
	clk0 => \ALT_INV_memClk~inputclkctrl_outclk\,
	clk1 => \cpuClk~inputclkctrl_outclk\,
	ena0 => \main_processor|C1|wen~1_combout\,
	portadatain => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X55_Y37_N4
\main_processor|Dpth|D1|data_out~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|D1|data_out~30_combout\ = (!\main_processor|C1|wen~1_combout\ & (\main_processor|C1|Mux23~0_combout\ & (\main_processor|C1|present_state.state_2~q\ & \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|wen~1_combout\,
	datab => \main_processor|C1|Mux23~0_combout\,
	datac => \main_processor|C1|present_state.state_2~q\,
	datad => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a30\,
	combout => \main_processor|Dpth|D1|data_out~30_combout\);

-- Location: FF_X55_Y37_N5
\main_processor|Dpth|D1|data_out[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|D1|data_out~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|D1|data_out\(30));

-- Location: LCCOMB_X55_Y37_N30
\main_processor|Dpth|M6|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux1~2_combout\ = (\main_processor|C1|DATA_Mux\(1) & (\main_processor|C1|DATA_Mux\(0))) # (!\main_processor|C1|DATA_Mux\(1) & ((\main_processor|C1|DATA_Mux\(0) & (\main_processor|Dpth|D1|data_out\(30))) # 
-- (!\main_processor|C1|DATA_Mux\(0) & ((\main_memory|altsyncram_component|auto_generated|q_a\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_processor|Dpth|D1|data_out\(30),
	datad => \main_memory|altsyncram_component|auto_generated|q_a\(30),
	combout => \main_processor|Dpth|M6|Mux1~2_combout\);

-- Location: LCCOMB_X54_Y36_N0
\main_processor|Dpth|M2|Out2[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M2|Out2[30]~30_combout\ = (!\main_processor|C1|A_Mux~combout\ & ((\main_processor|Dpth|M6|Mux1~2_combout\) # ((\main_processor|Dpth|M6|Mux31~3_combout\ & \main_processor|Dpth|ALU|Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M6|Mux31~3_combout\,
	datab => \main_processor|C1|A_Mux~combout\,
	datac => \main_processor|Dpth|ALU|Mux1~3_combout\,
	datad => \main_processor|Dpth|M6|Mux1~2_combout\,
	combout => \main_processor|Dpth|M2|Out2[30]~30_combout\);

-- Location: FF_X53_Y36_N29
\main_processor|Dpth|A|Q32[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[30]~30_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_A~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_A~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|A|Q32\(30));

-- Location: FF_X54_Y36_N9
\main_processor|Dpth|B|Q32[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[30]~30_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_B~1_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|B|Q32\(30));

-- Location: LCCOMB_X53_Y36_N20
\main_processor|Dpth|M1|Out2[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M1|Out2[30]~30_combout\ = (\main_processor|C1|REG_Mux~combout\ & ((\main_processor|Dpth|B|Q32\(30)))) # (!\main_processor|C1|REG_Mux~combout\ & (\main_processor|Dpth|A|Q32\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|A|Q32\(30),
	datac => \main_processor|Dpth|B|Q32\(30),
	datad => \main_processor|C1|REG_Mux~combout\,
	combout => \main_processor|Dpth|M1|Out2[30]~30_combout\);

-- Location: LCCOMB_X52_Y34_N10
\main_processor|Dpth|D1|data_out~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|D1|data_out~23_combout\ = (!\main_processor|C1|wen~1_combout\ & (\main_processor|C1|Mux23~0_combout\ & (\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a23\ & \main_processor|C1|present_state.state_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|wen~1_combout\,
	datab => \main_processor|C1|Mux23~0_combout\,
	datac => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a23\,
	datad => \main_processor|C1|present_state.state_2~q\,
	combout => \main_processor|Dpth|D1|data_out~23_combout\);

-- Location: FF_X52_Y34_N11
\main_processor|Dpth|D1|data_out[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|D1|data_out~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|D1|data_out\(23));

-- Location: LCCOMB_X52_Y34_N28
\main_processor|Dpth|M6|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux8~2_combout\ = (\main_processor|C1|DATA_Mux\(0) & ((\main_processor|C1|DATA_Mux\(1)) # ((\main_processor|Dpth|D1|data_out\(23))))) # (!\main_processor|C1|DATA_Mux\(0) & (!\main_processor|C1|DATA_Mux\(1) & 
-- (\main_memory|altsyncram_component|auto_generated|q_a\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(0),
	datab => \main_processor|C1|DATA_Mux\(1),
	datac => \main_memory|altsyncram_component|auto_generated|q_a\(23),
	datad => \main_processor|Dpth|D1|data_out\(23),
	combout => \main_processor|Dpth|M6|Mux8~2_combout\);

-- Location: LCCOMB_X52_Y34_N26
\main_processor|Dpth|M6|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux8~3_combout\ = (\main_processor|Dpth|M6|Mux8~2_combout\) # ((!\main_processor|C1|DATA_Mux\(0) & (\main_processor|C1|DATA_Mux\(1) & \main_processor|Dpth|ALU|Mux8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(0),
	datab => \main_processor|C1|DATA_Mux\(1),
	datac => \main_processor|Dpth|ALU|Mux8~4_combout\,
	datad => \main_processor|Dpth|M6|Mux8~2_combout\,
	combout => \main_processor|Dpth|M6|Mux8~3_combout\);

-- Location: LCCOMB_X48_Y38_N12
\main_processor|Dpth|D1|data_out~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|D1|data_out~21_combout\ = (\main_processor|C1|Mux23~0_combout\ & (!\main_processor|C1|wen~1_combout\ & (\main_processor|C1|present_state.state_2~q\ & \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|Mux23~0_combout\,
	datab => \main_processor|C1|wen~1_combout\,
	datac => \main_processor|C1|present_state.state_2~q\,
	datad => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a21\,
	combout => \main_processor|Dpth|D1|data_out~21_combout\);

-- Location: FF_X48_Y38_N13
\main_processor|Dpth|D1|data_out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|D1|data_out~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|D1|data_out\(21));

-- Location: LCCOMB_X48_Y38_N6
\main_processor|Dpth|M6|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux10~2_combout\ = (\main_processor|C1|DATA_Mux\(1) & (\main_processor|C1|DATA_Mux\(0))) # (!\main_processor|C1|DATA_Mux\(1) & ((\main_processor|C1|DATA_Mux\(0) & ((\main_processor|Dpth|D1|data_out\(21)))) # 
-- (!\main_processor|C1|DATA_Mux\(0) & (\main_memory|altsyncram_component|auto_generated|q_a\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_memory|altsyncram_component|auto_generated|q_a\(21),
	datad => \main_processor|Dpth|D1|data_out\(21),
	combout => \main_processor|Dpth|M6|Mux10~2_combout\);

-- Location: LCCOMB_X48_Y38_N8
\main_processor|Dpth|M6|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux10~3_combout\ = (\main_processor|Dpth|M6|Mux10~2_combout\) # ((!\main_processor|C1|DATA_Mux\(0) & (\main_processor|C1|DATA_Mux\(1) & \main_processor|Dpth|ALU|Mux10~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(0),
	datab => \main_processor|C1|DATA_Mux\(1),
	datac => \main_processor|Dpth|ALU|Mux10~4_combout\,
	datad => \main_processor|Dpth|M6|Mux10~2_combout\,
	combout => \main_processor|Dpth|M6|Mux10~3_combout\);

-- Location: LCCOMB_X48_Y37_N28
\main_processor|Dpth|D1|data_out~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|D1|data_out~29_combout\ = (\main_processor|C1|present_state.state_2~q\ & (!\main_processor|C1|wen~1_combout\ & (\main_processor|C1|Mux23~0_combout\ & \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|present_state.state_2~q\,
	datab => \main_processor|C1|wen~1_combout\,
	datac => \main_processor|C1|Mux23~0_combout\,
	datad => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a29\,
	combout => \main_processor|Dpth|D1|data_out~29_combout\);

-- Location: FF_X48_Y37_N29
\main_processor|Dpth|D1|data_out[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|D1|data_out~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|D1|data_out\(29));

-- Location: LCCOMB_X48_Y37_N6
\main_processor|Dpth|M6|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux2~2_combout\ = (\main_processor|C1|DATA_Mux\(1) & (\main_processor|C1|DATA_Mux\(0))) # (!\main_processor|C1|DATA_Mux\(1) & ((\main_processor|C1|DATA_Mux\(0) & ((\main_processor|Dpth|D1|data_out\(29)))) # 
-- (!\main_processor|C1|DATA_Mux\(0) & (\main_memory|altsyncram_component|auto_generated|q_a\(29)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_memory|altsyncram_component|auto_generated|q_a\(29),
	datad => \main_processor|Dpth|D1|data_out\(29),
	combout => \main_processor|Dpth|M6|Mux2~2_combout\);

-- Location: LCCOMB_X48_Y37_N8
\main_processor|Dpth|M2|Out2[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M2|Out2[29]~29_combout\ = (!\main_processor|C1|A_Mux~combout\ & ((\main_processor|Dpth|M6|Mux2~2_combout\) # ((\main_processor|Dpth|M6|Mux31~3_combout\ & \main_processor|Dpth|ALU|Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|A_Mux~combout\,
	datab => \main_processor|Dpth|M6|Mux31~3_combout\,
	datac => \main_processor|Dpth|ALU|Mux2~4_combout\,
	datad => \main_processor|Dpth|M6|Mux2~2_combout\,
	combout => \main_processor|Dpth|M2|Out2[29]~29_combout\);

-- Location: FF_X48_Y37_N15
\main_processor|Dpth|A|Q32[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[29]~29_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_A~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_A~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|A|Q32\(29));

-- Location: LCCOMB_X48_Y37_N14
\main_processor|Dpth|M4|Out2[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M4|Out2[29]~29_combout\ = (\main_processor|C1|IM_MUX1~combout\ & (\main_processor|Dpth|IR|Q32\(13))) # (!\main_processor|C1|IM_MUX1~combout\ & ((\main_processor|Dpth|A|Q32\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|IR|Q32\(13),
	datac => \main_processor|Dpth|A|Q32\(29),
	datad => \main_processor|C1|IM_MUX1~combout\,
	combout => \main_processor|Dpth|M4|Out2[29]~29_combout\);

-- Location: LCCOMB_X48_Y37_N24
\main_processor|Dpth|ALU|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux3~0_combout\ = (\main_processor|Dpth|M5|Mux3~0_combout\ & ((\main_processor|C1|ALU_op\(0)) # ((!\main_processor|C1|ALU_op\(2) & \main_processor|Dpth|M4|Out2[28]~28_combout\)))) # (!\main_processor|Dpth|M5|Mux3~0_combout\ & 
-- (\main_processor|C1|ALU_op\(0) & ((\main_processor|C1|ALU_op\(2)) # (\main_processor|Dpth|M4|Out2[28]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux3~0_combout\,
	datab => \main_processor|C1|ALU_op\(0),
	datac => \main_processor|C1|ALU_op\(2),
	datad => \main_processor|Dpth|M4|Out2[28]~28_combout\,
	combout => \main_processor|Dpth|ALU|Mux3~0_combout\);

-- Location: LCCOMB_X48_Y37_N26
\main_processor|Dpth|ALU|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux3~1_combout\ = (\main_processor|C1|ALU_op\(2) & ((\main_processor|Dpth|ALU|Mux3~0_combout\ & ((\main_processor|Dpth|M4|Out2[29]~29_combout\))) # (!\main_processor|Dpth|ALU|Mux3~0_combout\ & 
-- (\main_processor|Dpth|M4|Out2[27]~27_combout\)))) # (!\main_processor|C1|ALU_op\(2) & (((\main_processor|Dpth|ALU|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[27]~27_combout\,
	datab => \main_processor|Dpth|M4|Out2[29]~29_combout\,
	datac => \main_processor|C1|ALU_op\(2),
	datad => \main_processor|Dpth|ALU|Mux3~0_combout\,
	combout => \main_processor|Dpth|ALU|Mux3~1_combout\);

-- Location: LCCOMB_X53_Y38_N30
\main_processor|Dpth|ALU|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add0~46_combout\ = (\main_processor|Dpth|M4|Out2[23]~23_combout\ & ((\main_processor|Dpth|M5|Mux8~0_combout\ & (\main_processor|Dpth|ALU|Add0~45\ & VCC)) # (!\main_processor|Dpth|M5|Mux8~0_combout\ & 
-- (!\main_processor|Dpth|ALU|Add0~45\)))) # (!\main_processor|Dpth|M4|Out2[23]~23_combout\ & ((\main_processor|Dpth|M5|Mux8~0_combout\ & (!\main_processor|Dpth|ALU|Add0~45\)) # (!\main_processor|Dpth|M5|Mux8~0_combout\ & ((\main_processor|Dpth|ALU|Add0~45\) 
-- # (GND)))))
-- \main_processor|Dpth|ALU|Add0~47\ = CARRY((\main_processor|Dpth|M4|Out2[23]~23_combout\ & (!\main_processor|Dpth|M5|Mux8~0_combout\ & !\main_processor|Dpth|ALU|Add0~45\)) # (!\main_processor|Dpth|M4|Out2[23]~23_combout\ & 
-- ((!\main_processor|Dpth|ALU|Add0~45\) # (!\main_processor|Dpth|M5|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[23]~23_combout\,
	datab => \main_processor|Dpth|M5|Mux8~0_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add0~45\,
	combout => \main_processor|Dpth|ALU|Add0~46_combout\,
	cout => \main_processor|Dpth|ALU|Add0~47\);

-- Location: LCCOMB_X53_Y37_N0
\main_processor|Dpth|ALU|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add0~48_combout\ = ((\main_processor|Dpth|M4|Out2[24]~24_combout\ $ (\main_processor|Dpth|M5|Mux7~0_combout\ $ (!\main_processor|Dpth|ALU|Add0~47\)))) # (GND)
-- \main_processor|Dpth|ALU|Add0~49\ = CARRY((\main_processor|Dpth|M4|Out2[24]~24_combout\ & ((\main_processor|Dpth|M5|Mux7~0_combout\) # (!\main_processor|Dpth|ALU|Add0~47\))) # (!\main_processor|Dpth|M4|Out2[24]~24_combout\ & 
-- (\main_processor|Dpth|M5|Mux7~0_combout\ & !\main_processor|Dpth|ALU|Add0~47\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[24]~24_combout\,
	datab => \main_processor|Dpth|M5|Mux7~0_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add0~47\,
	combout => \main_processor|Dpth|ALU|Add0~48_combout\,
	cout => \main_processor|Dpth|ALU|Add0~49\);

-- Location: LCCOMB_X53_Y37_N2
\main_processor|Dpth|ALU|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add0~50_combout\ = (\main_processor|Dpth|M5|Mux6~0_combout\ & ((\main_processor|Dpth|M4|Out2[25]~25_combout\ & (\main_processor|Dpth|ALU|Add0~49\ & VCC)) # (!\main_processor|Dpth|M4|Out2[25]~25_combout\ & 
-- (!\main_processor|Dpth|ALU|Add0~49\)))) # (!\main_processor|Dpth|M5|Mux6~0_combout\ & ((\main_processor|Dpth|M4|Out2[25]~25_combout\ & (!\main_processor|Dpth|ALU|Add0~49\)) # (!\main_processor|Dpth|M4|Out2[25]~25_combout\ & 
-- ((\main_processor|Dpth|ALU|Add0~49\) # (GND)))))
-- \main_processor|Dpth|ALU|Add0~51\ = CARRY((\main_processor|Dpth|M5|Mux6~0_combout\ & (!\main_processor|Dpth|M4|Out2[25]~25_combout\ & !\main_processor|Dpth|ALU|Add0~49\)) # (!\main_processor|Dpth|M5|Mux6~0_combout\ & ((!\main_processor|Dpth|ALU|Add0~49\) 
-- # (!\main_processor|Dpth|M4|Out2[25]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux6~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[25]~25_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add0~49\,
	combout => \main_processor|Dpth|ALU|Add0~50_combout\,
	cout => \main_processor|Dpth|ALU|Add0~51\);

-- Location: LCCOMB_X53_Y37_N4
\main_processor|Dpth|ALU|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add0~52_combout\ = ((\main_processor|Dpth|M5|Mux5~0_combout\ $ (\main_processor|Dpth|M4|Out2[26]~26_combout\ $ (!\main_processor|Dpth|ALU|Add0~51\)))) # (GND)
-- \main_processor|Dpth|ALU|Add0~53\ = CARRY((\main_processor|Dpth|M5|Mux5~0_combout\ & ((\main_processor|Dpth|M4|Out2[26]~26_combout\) # (!\main_processor|Dpth|ALU|Add0~51\))) # (!\main_processor|Dpth|M5|Mux5~0_combout\ & 
-- (\main_processor|Dpth|M4|Out2[26]~26_combout\ & !\main_processor|Dpth|ALU|Add0~51\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux5~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[26]~26_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add0~51\,
	combout => \main_processor|Dpth|ALU|Add0~52_combout\,
	cout => \main_processor|Dpth|ALU|Add0~53\);

-- Location: LCCOMB_X53_Y37_N6
\main_processor|Dpth|ALU|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add0~54_combout\ = (\main_processor|Dpth|M5|Mux4~0_combout\ & ((\main_processor|Dpth|M4|Out2[27]~27_combout\ & (\main_processor|Dpth|ALU|Add0~53\ & VCC)) # (!\main_processor|Dpth|M4|Out2[27]~27_combout\ & 
-- (!\main_processor|Dpth|ALU|Add0~53\)))) # (!\main_processor|Dpth|M5|Mux4~0_combout\ & ((\main_processor|Dpth|M4|Out2[27]~27_combout\ & (!\main_processor|Dpth|ALU|Add0~53\)) # (!\main_processor|Dpth|M4|Out2[27]~27_combout\ & 
-- ((\main_processor|Dpth|ALU|Add0~53\) # (GND)))))
-- \main_processor|Dpth|ALU|Add0~55\ = CARRY((\main_processor|Dpth|M5|Mux4~0_combout\ & (!\main_processor|Dpth|M4|Out2[27]~27_combout\ & !\main_processor|Dpth|ALU|Add0~53\)) # (!\main_processor|Dpth|M5|Mux4~0_combout\ & ((!\main_processor|Dpth|ALU|Add0~53\) 
-- # (!\main_processor|Dpth|M4|Out2[27]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux4~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[27]~27_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add0~53\,
	combout => \main_processor|Dpth|ALU|Add0~54_combout\,
	cout => \main_processor|Dpth|ALU|Add0~55\);

-- Location: LCCOMB_X53_Y37_N8
\main_processor|Dpth|ALU|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add0~56_combout\ = ((\main_processor|Dpth|M5|Mux3~0_combout\ $ (\main_processor|Dpth|M4|Out2[28]~28_combout\ $ (!\main_processor|Dpth|ALU|Add0~55\)))) # (GND)
-- \main_processor|Dpth|ALU|Add0~57\ = CARRY((\main_processor|Dpth|M5|Mux3~0_combout\ & ((\main_processor|Dpth|M4|Out2[28]~28_combout\) # (!\main_processor|Dpth|ALU|Add0~55\))) # (!\main_processor|Dpth|M5|Mux3~0_combout\ & 
-- (\main_processor|Dpth|M4|Out2[28]~28_combout\ & !\main_processor|Dpth|ALU|Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux3~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[28]~28_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add0~55\,
	combout => \main_processor|Dpth|ALU|Add0~56_combout\,
	cout => \main_processor|Dpth|ALU|Add0~57\);

-- Location: LCCOMB_X48_Y37_N0
\main_processor|Dpth|ALU|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux3~2_combout\ = (\main_processor|Dpth|ALU|Mux3~1_combout\ & (((\main_processor|Dpth|ALU|Mux23~0_combout\ & \main_processor|Dpth|ALU|Add0~56_combout\)) # (!\main_processor|C1|ALU_op\(1)))) # 
-- (!\main_processor|Dpth|ALU|Mux3~1_combout\ & (((\main_processor|Dpth|ALU|Mux23~0_combout\ & \main_processor|Dpth|ALU|Add0~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux3~1_combout\,
	datab => \main_processor|C1|ALU_op\(1),
	datac => \main_processor|Dpth|ALU|Mux23~0_combout\,
	datad => \main_processor|Dpth|ALU|Add0~56_combout\,
	combout => \main_processor|Dpth|ALU|Mux3~2_combout\);

-- Location: LCCOMB_X48_Y37_N10
\main_processor|Dpth|ALU|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux3~3_combout\ = (\main_processor|Dpth|ALU|Mux3~2_combout\) # ((\main_processor|Dpth|ALU|Mux23~1_combout\ & \main_processor|Dpth|ALU|Add1~56_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux23~1_combout\,
	datac => \main_processor|Dpth|ALU|Add1~56_combout\,
	datad => \main_processor|Dpth|ALU|Mux3~2_combout\,
	combout => \main_processor|Dpth|ALU|Mux3~3_combout\);

-- Location: LCCOMB_X48_Y37_N22
\main_processor|Dpth|M2|Out2[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M2|Out2[28]~28_combout\ = (!\main_processor|C1|A_Mux~combout\ & ((\main_processor|Dpth|M6|Mux3~2_combout\) # ((\main_processor|Dpth|ALU|Mux3~3_combout\ & \main_processor|Dpth|M6|Mux31~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux3~3_combout\,
	datab => \main_processor|Dpth|M6|Mux31~3_combout\,
	datac => \main_processor|C1|A_Mux~combout\,
	datad => \main_processor|Dpth|M6|Mux3~2_combout\,
	combout => \main_processor|Dpth|M2|Out2[28]~28_combout\);

-- Location: LCCOMB_X47_Y37_N18
\main_processor|Dpth|B|Q32[28]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|B|Q32[28]~feeder_combout\ = \main_processor|Dpth|M2|Out2[28]~28_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_processor|Dpth|M2|Out2[28]~28_combout\,
	combout => \main_processor|Dpth|B|Q32[28]~feeder_combout\);

-- Location: FF_X47_Y37_N19
\main_processor|Dpth|B|Q32[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|B|Q32[28]~feeder_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_B~1_combout\,
	ena => \main_processor|C1|ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|B|Q32\(28));

-- Location: LCCOMB_X54_Y36_N14
\main_processor|Dpth|M1|Out2[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M1|Out2[28]~28_combout\ = (\main_processor|C1|REG_Mux~combout\ & (\main_processor|Dpth|B|Q32\(28))) # (!\main_processor|C1|REG_Mux~combout\ & ((\main_processor|Dpth|A|Q32\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|B|Q32\(28),
	datab => \main_processor|Dpth|A|Q32\(28),
	datad => \main_processor|C1|REG_Mux~combout\,
	combout => \main_processor|Dpth|M1|Out2[28]~28_combout\);

-- Location: LCCOMB_X48_Y38_N14
\main_processor|Dpth|D1|data_out~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|D1|data_out~20_combout\ = (\main_processor|C1|Mux23~0_combout\ & (!\main_processor|C1|wen~1_combout\ & (\main_processor|C1|present_state.state_2~q\ & \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|Mux23~0_combout\,
	datab => \main_processor|C1|wen~1_combout\,
	datac => \main_processor|C1|present_state.state_2~q\,
	datad => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a20\,
	combout => \main_processor|Dpth|D1|data_out~20_combout\);

-- Location: FF_X48_Y38_N15
\main_processor|Dpth|D1|data_out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|D1|data_out~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|D1|data_out\(20));

-- Location: LCCOMB_X48_Y38_N20
\main_processor|Dpth|M6|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux11~2_combout\ = (\main_processor|C1|DATA_Mux\(1) & (\main_processor|C1|DATA_Mux\(0))) # (!\main_processor|C1|DATA_Mux\(1) & ((\main_processor|C1|DATA_Mux\(0) & (\main_processor|Dpth|D1|data_out\(20))) # 
-- (!\main_processor|C1|DATA_Mux\(0) & ((\main_memory|altsyncram_component|auto_generated|q_a\(20))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_processor|Dpth|D1|data_out\(20),
	datad => \main_memory|altsyncram_component|auto_generated|q_a\(20),
	combout => \main_processor|Dpth|M6|Mux11~2_combout\);

-- Location: LCCOMB_X48_Y38_N30
\main_processor|Dpth|M6|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux11~3_combout\ = (\main_processor|Dpth|M6|Mux11~2_combout\) # ((!\main_processor|C1|DATA_Mux\(0) & (\main_processor|C1|DATA_Mux\(1) & \main_processor|Dpth|ALU|Mux11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(0),
	datab => \main_processor|C1|DATA_Mux\(1),
	datac => \main_processor|Dpth|ALU|Mux11~3_combout\,
	datad => \main_processor|Dpth|M6|Mux11~2_combout\,
	combout => \main_processor|Dpth|M6|Mux11~3_combout\);

-- Location: LCCOMB_X49_Y38_N2
\main_processor|Dpth|D1|data_out~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|D1|data_out~19_combout\ = (\main_processor|C1|Mux23~0_combout\ & (!\main_processor|C1|wen~1_combout\ & (\main_processor|C1|present_state.state_2~q\ & \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|Mux23~0_combout\,
	datab => \main_processor|C1|wen~1_combout\,
	datac => \main_processor|C1|present_state.state_2~q\,
	datad => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a19\,
	combout => \main_processor|Dpth|D1|data_out~19_combout\);

-- Location: FF_X49_Y38_N3
\main_processor|Dpth|D1|data_out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|D1|data_out~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|D1|data_out\(19));

-- Location: LCCOMB_X49_Y38_N28
\main_processor|Dpth|M6|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux12~2_combout\ = (\main_processor|C1|DATA_Mux\(1) & (\main_processor|C1|DATA_Mux\(0))) # (!\main_processor|C1|DATA_Mux\(1) & ((\main_processor|C1|DATA_Mux\(0) & ((\main_processor|Dpth|D1|data_out\(19)))) # 
-- (!\main_processor|C1|DATA_Mux\(0) & (\main_memory|altsyncram_component|auto_generated|q_a\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_memory|altsyncram_component|auto_generated|q_a\(19),
	datad => \main_processor|Dpth|D1|data_out\(19),
	combout => \main_processor|Dpth|M6|Mux12~2_combout\);

-- Location: LCCOMB_X49_Y38_N30
\main_processor|Dpth|M6|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux12~3_combout\ = (\main_processor|Dpth|M6|Mux12~2_combout\) # ((\main_processor|C1|DATA_Mux\(1) & (!\main_processor|C1|DATA_Mux\(0) & \main_processor|Dpth|ALU|Mux12~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_processor|Dpth|ALU|Mux12~4_combout\,
	datad => \main_processor|Dpth|M6|Mux12~2_combout\,
	combout => \main_processor|Dpth|M6|Mux12~3_combout\);

-- Location: LCCOMB_X55_Y37_N6
\main_processor|Dpth|D1|data_out~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|D1|data_out~27_combout\ = (!\main_processor|C1|wen~1_combout\ & (\main_processor|C1|Mux23~0_combout\ & (\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a27\ & \main_processor|C1|present_state.state_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|wen~1_combout\,
	datab => \main_processor|C1|Mux23~0_combout\,
	datac => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a27\,
	datad => \main_processor|C1|present_state.state_2~q\,
	combout => \main_processor|Dpth|D1|data_out~27_combout\);

-- Location: FF_X55_Y37_N7
\main_processor|Dpth|D1|data_out[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|D1|data_out~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|D1|data_out\(27));

-- Location: LCCOMB_X55_Y37_N16
\main_processor|Dpth|M6|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux4~2_combout\ = (\main_processor|C1|DATA_Mux\(1) & (\main_processor|C1|DATA_Mux\(0))) # (!\main_processor|C1|DATA_Mux\(1) & ((\main_processor|C1|DATA_Mux\(0) & ((\main_processor|Dpth|D1|data_out\(27)))) # 
-- (!\main_processor|C1|DATA_Mux\(0) & (\main_memory|altsyncram_component|auto_generated|q_a\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_memory|altsyncram_component|auto_generated|q_a\(27),
	datad => \main_processor|Dpth|D1|data_out\(27),
	combout => \main_processor|Dpth|M6|Mux4~2_combout\);

-- Location: LCCOMB_X49_Y37_N16
\main_processor|Dpth|M2|Out2[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M2|Out2[27]~27_combout\ = (!\main_processor|C1|A_Mux~combout\ & ((\main_processor|Dpth|M6|Mux4~2_combout\) # ((\main_processor|Dpth|M6|Mux31~3_combout\ & \main_processor|Dpth|ALU|Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|A_Mux~combout\,
	datab => \main_processor|Dpth|M6|Mux31~3_combout\,
	datac => \main_processor|Dpth|ALU|Mux4~4_combout\,
	datad => \main_processor|Dpth|M6|Mux4~2_combout\,
	combout => \main_processor|Dpth|M2|Out2[27]~27_combout\);

-- Location: FF_X49_Y37_N3
\main_processor|Dpth|A|Q32[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[27]~27_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_A~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_A~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|A|Q32\(27));

-- Location: LCCOMB_X53_Y36_N28
\main_processor|Dpth|M1|Out2[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M1|Out2[27]~27_combout\ = (\main_processor|C1|REG_Mux~combout\ & ((\main_processor|Dpth|B|Q32\(27)))) # (!\main_processor|C1|REG_Mux~combout\ & (\main_processor|Dpth|A|Q32\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|A|Q32\(27),
	datab => \main_processor|Dpth|B|Q32\(27),
	datad => \main_processor|C1|REG_Mux~combout\,
	combout => \main_processor|Dpth|M1|Out2[27]~27_combout\);

-- Location: LCCOMB_X50_Y35_N4
\main_processor|Dpth|D1|data_out~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|D1|data_out~18_combout\ = (!\main_processor|C1|wen~1_combout\ & (\main_processor|C1|present_state.state_2~q\ & (\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a18\ & \main_processor|C1|Mux23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|wen~1_combout\,
	datab => \main_processor|C1|present_state.state_2~q\,
	datac => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a18\,
	datad => \main_processor|C1|Mux23~0_combout\,
	combout => \main_processor|Dpth|D1|data_out~18_combout\);

-- Location: FF_X50_Y35_N5
\main_processor|Dpth|D1|data_out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|D1|data_out~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|D1|data_out\(18));

-- Location: LCCOMB_X50_Y35_N6
\main_processor|Dpth|M6|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux13~2_combout\ = (\main_processor|C1|DATA_Mux\(1) & (\main_processor|C1|DATA_Mux\(0))) # (!\main_processor|C1|DATA_Mux\(1) & ((\main_processor|C1|DATA_Mux\(0) & (\main_processor|Dpth|D1|data_out\(18))) # 
-- (!\main_processor|C1|DATA_Mux\(0) & ((\main_memory|altsyncram_component|auto_generated|q_a\(18))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_processor|Dpth|D1|data_out\(18),
	datad => \main_memory|altsyncram_component|auto_generated|q_a\(18),
	combout => \main_processor|Dpth|M6|Mux13~2_combout\);

-- Location: LCCOMB_X50_Y35_N14
\main_processor|Dpth|M6|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux13~3_combout\ = (\main_processor|Dpth|M6|Mux13~2_combout\) # ((\main_processor|C1|DATA_Mux\(1) & (!\main_processor|C1|DATA_Mux\(0) & \main_processor|Dpth|ALU|Mux13~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_processor|Dpth|ALU|Mux13~3_combout\,
	datad => \main_processor|Dpth|M6|Mux13~2_combout\,
	combout => \main_processor|Dpth|M6|Mux13~3_combout\);

-- Location: LCCOMB_X50_Y35_N18
\main_processor|Dpth|D1|data_out~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|D1|data_out~17_combout\ = (\main_processor|C1|Mux23~0_combout\ & (\main_processor|C1|present_state.state_2~q\ & (!\main_processor|C1|wen~1_combout\ & \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|Mux23~0_combout\,
	datab => \main_processor|C1|present_state.state_2~q\,
	datac => \main_processor|C1|wen~1_combout\,
	datad => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a17\,
	combout => \main_processor|Dpth|D1|data_out~17_combout\);

-- Location: FF_X50_Y35_N19
\main_processor|Dpth|D1|data_out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|D1|data_out~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|D1|data_out\(17));

-- Location: LCCOMB_X50_Y35_N16
\main_processor|Dpth|M6|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux14~2_combout\ = (\main_processor|C1|DATA_Mux\(1) & (\main_processor|C1|DATA_Mux\(0))) # (!\main_processor|C1|DATA_Mux\(1) & ((\main_processor|C1|DATA_Mux\(0) & ((\main_processor|Dpth|D1|data_out\(17)))) # 
-- (!\main_processor|C1|DATA_Mux\(0) & (\main_memory|altsyncram_component|auto_generated|q_a\(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_memory|altsyncram_component|auto_generated|q_a\(17),
	datad => \main_processor|Dpth|D1|data_out\(17),
	combout => \main_processor|Dpth|M6|Mux14~2_combout\);

-- Location: LCCOMB_X50_Y35_N8
\main_processor|Dpth|M6|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux14~3_combout\ = (\main_processor|Dpth|M6|Mux14~2_combout\) # ((\main_processor|C1|DATA_Mux\(1) & (!\main_processor|C1|DATA_Mux\(0) & \main_processor|Dpth|ALU|Mux14~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_processor|Dpth|ALU|Mux14~4_combout\,
	datad => \main_processor|Dpth|M6|Mux14~2_combout\,
	combout => \main_processor|Dpth|M6|Mux14~3_combout\);

-- Location: LCCOMB_X55_Y36_N12
\main_processor|Dpth|D1|data_out~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|D1|data_out~16_combout\ = (!\main_processor|C1|wen~1_combout\ & (\main_processor|C1|Mux23~0_combout\ & (\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a16\ & \main_processor|C1|present_state.state_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|wen~1_combout\,
	datab => \main_processor|C1|Mux23~0_combout\,
	datac => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a16\,
	datad => \main_processor|C1|present_state.state_2~q\,
	combout => \main_processor|Dpth|D1|data_out~16_combout\);

-- Location: FF_X55_Y36_N13
\main_processor|Dpth|D1|data_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|D1|data_out~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|D1|data_out\(16));

-- Location: LCCOMB_X54_Y38_N6
\main_processor|Dpth|M6|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux15~2_combout\ = (\main_processor|C1|DATA_Mux\(1) & (\main_processor|C1|DATA_Mux\(0))) # (!\main_processor|C1|DATA_Mux\(1) & ((\main_processor|C1|DATA_Mux\(0) & ((\main_processor|Dpth|D1|data_out\(16)))) # 
-- (!\main_processor|C1|DATA_Mux\(0) & (\main_memory|altsyncram_component|auto_generated|q_a\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_memory|altsyncram_component|auto_generated|q_a\(16),
	datad => \main_processor|Dpth|D1|data_out\(16),
	combout => \main_processor|Dpth|M6|Mux15~2_combout\);

-- Location: LCCOMB_X54_Y38_N30
\main_processor|Dpth|M6|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux15~3_combout\ = (\main_processor|Dpth|M6|Mux15~2_combout\) # ((\main_processor|C1|DATA_Mux\(1) & (!\main_processor|C1|DATA_Mux\(0) & \main_processor|Dpth|ALU|Mux15~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_processor|Dpth|ALU|Mux15~3_combout\,
	datad => \main_processor|Dpth|M6|Mux15~2_combout\,
	combout => \main_processor|Dpth|M6|Mux15~3_combout\);

-- Location: LCCOMB_X56_Y37_N28
\main_processor|Dpth|D1|data_out~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|D1|data_out~24_combout\ = (\main_processor|C1|Mux23~0_combout\ & (\main_processor|C1|present_state.state_2~q\ & (!\main_processor|C1|wen~1_combout\ & \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|Mux23~0_combout\,
	datab => \main_processor|C1|present_state.state_2~q\,
	datac => \main_processor|C1|wen~1_combout\,
	datad => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a24\,
	combout => \main_processor|Dpth|D1|data_out~24_combout\);

-- Location: FF_X56_Y37_N29
\main_processor|Dpth|D1|data_out[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|D1|data_out~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|D1|data_out\(24));

-- Location: LCCOMB_X56_Y37_N6
\main_processor|Dpth|M6|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux7~2_combout\ = (\main_processor|C1|DATA_Mux\(1) & (\main_processor|C1|DATA_Mux\(0))) # (!\main_processor|C1|DATA_Mux\(1) & ((\main_processor|C1|DATA_Mux\(0) & ((\main_processor|Dpth|D1|data_out\(24)))) # 
-- (!\main_processor|C1|DATA_Mux\(0) & (\main_memory|altsyncram_component|auto_generated|q_a\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_memory|altsyncram_component|auto_generated|q_a\(24),
	datad => \main_processor|Dpth|D1|data_out\(24),
	combout => \main_processor|Dpth|M6|Mux7~2_combout\);

-- Location: LCCOMB_X56_Y37_N22
\main_processor|Dpth|M2|Out2[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M2|Out2[24]~24_combout\ = (!\main_processor|C1|A_Mux~combout\ & ((\main_processor|Dpth|M6|Mux7~2_combout\) # ((\main_processor|Dpth|M6|Mux31~3_combout\ & \main_processor|Dpth|ALU|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M6|Mux31~3_combout\,
	datab => \main_processor|C1|A_Mux~combout\,
	datac => \main_processor|Dpth|ALU|Mux7~3_combout\,
	datad => \main_processor|Dpth|M6|Mux7~2_combout\,
	combout => \main_processor|Dpth|M2|Out2[24]~24_combout\);

-- Location: FF_X53_Y34_N29
\main_processor|Dpth|A|Q32[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[24]~24_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_A~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_A~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|A|Q32\(24));

-- Location: LCCOMB_X53_Y34_N28
\main_processor|Dpth|M4|Out2[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M4|Out2[24]~24_combout\ = (\main_processor|C1|IM_MUX1~combout\ & (\main_processor|Dpth|IR|Q32\(8))) # (!\main_processor|C1|IM_MUX1~combout\ & ((\main_processor|Dpth|A|Q32\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|IR|Q32\(8),
	datac => \main_processor|Dpth|A|Q32\(24),
	datad => \main_processor|C1|IM_MUX1~combout\,
	combout => \main_processor|Dpth|M4|Out2[24]~24_combout\);

-- Location: LCCOMB_X52_Y34_N22
\main_processor|Dpth|ALU|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux8~1_combout\ = (\main_processor|C1|ALU_op\(2) & ((\main_processor|C1|ALU_op\(0) & (\main_processor|Dpth|M4|Out2[24]~24_combout\)) # (!\main_processor|C1|ALU_op\(0) & ((\main_processor|Dpth|M4|Out2[22]~22_combout\))))) # 
-- (!\main_processor|C1|ALU_op\(2) & (((\main_processor|C1|ALU_op\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(2),
	datab => \main_processor|Dpth|M4|Out2[24]~24_combout\,
	datac => \main_processor|C1|ALU_op\(0),
	datad => \main_processor|Dpth|M4|Out2[22]~22_combout\,
	combout => \main_processor|Dpth|ALU|Mux8~1_combout\);

-- Location: LCCOMB_X52_Y34_N20
\main_processor|Dpth|ALU|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux8~2_combout\ = (\main_processor|C1|ALU_op\(2) & (((\main_processor|Dpth|ALU|Mux8~1_combout\)))) # (!\main_processor|C1|ALU_op\(2) & ((\main_processor|Dpth|ALU|Mux8~0_combout\ & ((\main_processor|Dpth|ALU|Mux8~1_combout\) # 
-- (\main_processor|Dpth|M5|Mux8~0_combout\))) # (!\main_processor|Dpth|ALU|Mux8~0_combout\ & (\main_processor|Dpth|ALU|Mux8~1_combout\ & \main_processor|Dpth|M5|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(2),
	datab => \main_processor|Dpth|ALU|Mux8~0_combout\,
	datac => \main_processor|Dpth|ALU|Mux8~1_combout\,
	datad => \main_processor|Dpth|M5|Mux8~0_combout\,
	combout => \main_processor|Dpth|ALU|Mux8~2_combout\);

-- Location: LCCOMB_X52_Y34_N2
\main_processor|Dpth|ALU|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux8~3_combout\ = (\main_processor|Dpth|ALU|Mux23~0_combout\ & ((\main_processor|Dpth|ALU|Add0~46_combout\) # ((\main_processor|Dpth|ALU|Mux8~2_combout\ & !\main_processor|C1|ALU_op\(1))))) # 
-- (!\main_processor|Dpth|ALU|Mux23~0_combout\ & (\main_processor|Dpth|ALU|Mux8~2_combout\ & (!\main_processor|C1|ALU_op\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux23~0_combout\,
	datab => \main_processor|Dpth|ALU|Mux8~2_combout\,
	datac => \main_processor|C1|ALU_op\(1),
	datad => \main_processor|Dpth|ALU|Add0~46_combout\,
	combout => \main_processor|Dpth|ALU|Mux8~3_combout\);

-- Location: LCCOMB_X52_Y34_N4
\main_processor|Dpth|ALU|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux8~4_combout\ = (\main_processor|Dpth|ALU|Mux8~3_combout\) # ((\main_processor|Dpth|ALU|Mux23~1_combout\ & \main_processor|Dpth|ALU|Add1~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|ALU|Mux23~1_combout\,
	datac => \main_processor|Dpth|ALU|Add1~46_combout\,
	datad => \main_processor|Dpth|ALU|Mux8~3_combout\,
	combout => \main_processor|Dpth|ALU|Mux8~4_combout\);

-- Location: LCCOMB_X52_Y34_N6
\main_processor|Dpth|M2|Out2[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M2|Out2[23]~23_combout\ = (!\main_processor|C1|A_Mux~combout\ & ((\main_processor|Dpth|M6|Mux8~2_combout\) # ((\main_processor|Dpth|M6|Mux31~3_combout\ & \main_processor|Dpth|ALU|Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M6|Mux31~3_combout\,
	datab => \main_processor|Dpth|ALU|Mux8~4_combout\,
	datac => \main_processor|C1|A_Mux~combout\,
	datad => \main_processor|Dpth|M6|Mux8~2_combout\,
	combout => \main_processor|Dpth|M2|Out2[23]~23_combout\);

-- Location: LCCOMB_X53_Y34_N6
\main_processor|Dpth|B|Q32[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|B|Q32[23]~feeder_combout\ = \main_processor|Dpth|M2|Out2[23]~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|Dpth|M2|Out2[23]~23_combout\,
	combout => \main_processor|Dpth|B|Q32[23]~feeder_combout\);

-- Location: FF_X53_Y34_N7
\main_processor|Dpth|B|Q32[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|B|Q32[23]~feeder_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_B~1_combout\,
	ena => \main_processor|C1|ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|B|Q32\(23));

-- Location: LCCOMB_X52_Y36_N10
\main_processor|Dpth|M1|Out2[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M1|Out2[23]~23_combout\ = (\main_processor|C1|REG_Mux~combout\ & (\main_processor|Dpth|B|Q32\(23))) # (!\main_processor|C1|REG_Mux~combout\ & ((\main_processor|Dpth|A|Q32\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|B|Q32\(23),
	datab => \main_processor|Dpth|A|Q32\(23),
	datad => \main_processor|C1|REG_Mux~combout\,
	combout => \main_processor|Dpth|M1|Out2[23]~23_combout\);

-- Location: LCCOMB_X52_Y37_N30
\main_processor|Dpth|D1|data_out~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|D1|data_out~22_combout\ = (!\main_processor|C1|wen~1_combout\ & (\main_processor|C1|present_state.state_2~q\ & (\main_processor|C1|Mux23~0_combout\ & \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|wen~1_combout\,
	datab => \main_processor|C1|present_state.state_2~q\,
	datac => \main_processor|C1|Mux23~0_combout\,
	datad => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a22\,
	combout => \main_processor|Dpth|D1|data_out~22_combout\);

-- Location: FF_X52_Y37_N31
\main_processor|Dpth|D1|data_out[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|D1|data_out~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|D1|data_out\(22));

-- Location: LCCOMB_X52_Y37_N0
\main_processor|Dpth|M6|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux9~2_combout\ = (\main_processor|C1|DATA_Mux\(1) & (\main_processor|C1|DATA_Mux\(0))) # (!\main_processor|C1|DATA_Mux\(1) & ((\main_processor|C1|DATA_Mux\(0) & (\main_processor|Dpth|D1|data_out\(22))) # 
-- (!\main_processor|C1|DATA_Mux\(0) & ((\main_memory|altsyncram_component|auto_generated|q_a\(22))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_processor|Dpth|D1|data_out\(22),
	datad => \main_memory|altsyncram_component|auto_generated|q_a\(22),
	combout => \main_processor|Dpth|M6|Mux9~2_combout\);

-- Location: LCCOMB_X52_Y37_N22
\main_processor|Dpth|M2|Out2[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M2|Out2[22]~22_combout\ = (!\main_processor|C1|A_Mux~combout\ & ((\main_processor|Dpth|M6|Mux9~2_combout\) # ((\main_processor|Dpth|M6|Mux31~3_combout\ & \main_processor|Dpth|ALU|Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M6|Mux31~3_combout\,
	datab => \main_processor|Dpth|ALU|Mux9~3_combout\,
	datac => \main_processor|C1|A_Mux~combout\,
	datad => \main_processor|Dpth|M6|Mux9~2_combout\,
	combout => \main_processor|Dpth|M2|Out2[22]~22_combout\);

-- Location: FF_X53_Y34_N5
\main_processor|Dpth|A|Q32[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[22]~22_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_A~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_A~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|A|Q32\(22));

-- Location: LCCOMB_X53_Y34_N22
\main_processor|Dpth|M4|Out2[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M4|Out2[22]~22_combout\ = (\main_processor|C1|IM_MUX1~combout\ & ((\main_processor|Dpth|IR|Q32\(6)))) # (!\main_processor|C1|IM_MUX1~combout\ & (\main_processor|Dpth|A|Q32\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|A|Q32\(22),
	datac => \main_processor|C1|IM_MUX1~combout\,
	datad => \main_processor|Dpth|IR|Q32\(6),
	combout => \main_processor|Dpth|M4|Out2[22]~22_combout\);

-- Location: LCCOMB_X48_Y38_N16
\main_processor|Dpth|ALU|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux10~1_combout\ = (\main_processor|C1|ALU_op\(2) & ((\main_processor|C1|ALU_op\(0) & ((\main_processor|Dpth|M4|Out2[22]~22_combout\))) # (!\main_processor|C1|ALU_op\(0) & (\main_processor|Dpth|M4|Out2[20]~20_combout\)))) # 
-- (!\main_processor|C1|ALU_op\(2) & (\main_processor|C1|ALU_op\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(2),
	datab => \main_processor|C1|ALU_op\(0),
	datac => \main_processor|Dpth|M4|Out2[20]~20_combout\,
	datad => \main_processor|Dpth|M4|Out2[22]~22_combout\,
	combout => \main_processor|Dpth|ALU|Mux10~1_combout\);

-- Location: LCCOMB_X48_Y38_N18
\main_processor|Dpth|ALU|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux10~2_combout\ = (\main_processor|Dpth|M5|Mux10~0_combout\ & ((\main_processor|Dpth|ALU|Mux10~1_combout\) # ((!\main_processor|C1|ALU_op\(2) & \main_processor|Dpth|ALU|Mux10~0_combout\)))) # 
-- (!\main_processor|Dpth|M5|Mux10~0_combout\ & (\main_processor|Dpth|ALU|Mux10~1_combout\ & ((\main_processor|C1|ALU_op\(2)) # (\main_processor|Dpth|ALU|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux10~0_combout\,
	datab => \main_processor|C1|ALU_op\(2),
	datac => \main_processor|Dpth|ALU|Mux10~0_combout\,
	datad => \main_processor|Dpth|ALU|Mux10~1_combout\,
	combout => \main_processor|Dpth|ALU|Mux10~2_combout\);

-- Location: LCCOMB_X48_Y38_N28
\main_processor|Dpth|ALU|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux10~3_combout\ = (\main_processor|C1|ALU_op\(1) & (((\main_processor|Dpth|ALU|Mux23~0_combout\ & \main_processor|Dpth|ALU|Add0~42_combout\)))) # (!\main_processor|C1|ALU_op\(1) & ((\main_processor|Dpth|ALU|Mux10~2_combout\) # 
-- ((\main_processor|Dpth|ALU|Mux23~0_combout\ & \main_processor|Dpth|ALU|Add0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(1),
	datab => \main_processor|Dpth|ALU|Mux10~2_combout\,
	datac => \main_processor|Dpth|ALU|Mux23~0_combout\,
	datad => \main_processor|Dpth|ALU|Add0~42_combout\,
	combout => \main_processor|Dpth|ALU|Mux10~3_combout\);

-- Location: LCCOMB_X48_Y38_N22
\main_processor|Dpth|ALU|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux10~4_combout\ = (\main_processor|Dpth|ALU|Mux10~3_combout\) # ((\main_processor|Dpth|ALU|Mux23~1_combout\ & \main_processor|Dpth|ALU|Add1~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux23~1_combout\,
	datac => \main_processor|Dpth|ALU|Add1~42_combout\,
	datad => \main_processor|Dpth|ALU|Mux10~3_combout\,
	combout => \main_processor|Dpth|ALU|Mux10~4_combout\);

-- Location: LCCOMB_X48_Y38_N24
\main_processor|Dpth|M2|Out2[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M2|Out2[21]~21_combout\ = (!\main_processor|C1|A_Mux~combout\ & ((\main_processor|Dpth|M6|Mux10~2_combout\) # ((\main_processor|Dpth|M6|Mux31~3_combout\ & \main_processor|Dpth|ALU|Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M6|Mux31~3_combout\,
	datab => \main_processor|C1|A_Mux~combout\,
	datac => \main_processor|Dpth|ALU|Mux10~4_combout\,
	datad => \main_processor|Dpth|M6|Mux10~2_combout\,
	combout => \main_processor|Dpth|M2|Out2[21]~21_combout\);

-- Location: LCCOMB_X49_Y36_N8
\main_processor|Dpth|A|Q32[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|A|Q32[21]~feeder_combout\ = \main_processor|Dpth|M2|Out2[21]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|Dpth|M2|Out2[21]~21_combout\,
	combout => \main_processor|Dpth|A|Q32[21]~feeder_combout\);

-- Location: FF_X49_Y36_N9
\main_processor|Dpth|A|Q32[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|A|Q32[21]~feeder_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_A~3_combout\,
	ena => \main_processor|C1|ld_A~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|A|Q32\(21));

-- Location: LCCOMB_X49_Y36_N16
\main_processor|Dpth|M4|Out2[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M4|Out2[21]~21_combout\ = (\main_processor|C1|IM_MUX1~combout\ & ((\main_processor|Dpth|IR|Q32\(5)))) # (!\main_processor|C1|IM_MUX1~combout\ & (\main_processor|Dpth|A|Q32\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|A|Q32\(21),
	datac => \main_processor|C1|IM_MUX1~combout\,
	datad => \main_processor|Dpth|IR|Q32\(5),
	combout => \main_processor|Dpth|M4|Out2[21]~21_combout\);

-- Location: LCCOMB_X49_Y36_N6
\main_processor|Dpth|ALU|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux11~0_combout\ = (\main_processor|Dpth|M4|Out2[20]~20_combout\ & ((\main_processor|C1|ALU_op\(0)) # ((!\main_processor|C1|ALU_op\(2) & \main_processor|Dpth|M5|Mux11~0_combout\)))) # (!\main_processor|Dpth|M4|Out2[20]~20_combout\ 
-- & (\main_processor|C1|ALU_op\(0) & ((\main_processor|C1|ALU_op\(2)) # (\main_processor|Dpth|M5|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[20]~20_combout\,
	datab => \main_processor|C1|ALU_op\(0),
	datac => \main_processor|C1|ALU_op\(2),
	datad => \main_processor|Dpth|M5|Mux11~0_combout\,
	combout => \main_processor|Dpth|ALU|Mux11~0_combout\);

-- Location: LCCOMB_X49_Y36_N10
\main_processor|Dpth|ALU|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux11~1_combout\ = (\main_processor|C1|ALU_op\(2) & ((\main_processor|Dpth|ALU|Mux11~0_combout\ & ((\main_processor|Dpth|M4|Out2[21]~21_combout\))) # (!\main_processor|Dpth|ALU|Mux11~0_combout\ & 
-- (\main_processor|Dpth|M4|Out2[19]~19_combout\)))) # (!\main_processor|C1|ALU_op\(2) & (((\main_processor|Dpth|ALU|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[19]~19_combout\,
	datab => \main_processor|Dpth|M4|Out2[21]~21_combout\,
	datac => \main_processor|C1|ALU_op\(2),
	datad => \main_processor|Dpth|ALU|Mux11~0_combout\,
	combout => \main_processor|Dpth|ALU|Mux11~1_combout\);

-- Location: LCCOMB_X48_Y38_N10
\main_processor|Dpth|ALU|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux11~2_combout\ = (\main_processor|Dpth|ALU|Mux11~1_combout\ & (((\main_processor|Dpth|ALU|Mux23~0_combout\ & \main_processor|Dpth|ALU|Add0~40_combout\)) # (!\main_processor|C1|ALU_op\(1)))) # 
-- (!\main_processor|Dpth|ALU|Mux11~1_combout\ & (((\main_processor|Dpth|ALU|Mux23~0_combout\ & \main_processor|Dpth|ALU|Add0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux11~1_combout\,
	datab => \main_processor|C1|ALU_op\(1),
	datac => \main_processor|Dpth|ALU|Mux23~0_combout\,
	datad => \main_processor|Dpth|ALU|Add0~40_combout\,
	combout => \main_processor|Dpth|ALU|Mux11~2_combout\);

-- Location: LCCOMB_X48_Y38_N26
\main_processor|Dpth|ALU|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux11~3_combout\ = (\main_processor|Dpth|ALU|Mux11~2_combout\) # ((\main_processor|Dpth|ALU|Mux23~1_combout\ & \main_processor|Dpth|ALU|Add1~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux23~1_combout\,
	datab => \main_processor|Dpth|ALU|Add1~40_combout\,
	datad => \main_processor|Dpth|ALU|Mux11~2_combout\,
	combout => \main_processor|Dpth|ALU|Mux11~3_combout\);

-- Location: LCCOMB_X52_Y38_N8
\main_processor|Dpth|M2|Out2[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M2|Out2[20]~20_combout\ = (!\main_processor|C1|A_Mux~combout\ & ((\main_processor|Dpth|M6|Mux11~2_combout\) # ((\main_processor|Dpth|M6|Mux31~3_combout\ & \main_processor|Dpth|ALU|Mux11~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M6|Mux31~3_combout\,
	datab => \main_processor|C1|A_Mux~combout\,
	datac => \main_processor|Dpth|ALU|Mux11~3_combout\,
	datad => \main_processor|Dpth|M6|Mux11~2_combout\,
	combout => \main_processor|Dpth|M2|Out2[20]~20_combout\);

-- Location: FF_X53_Y36_N19
\main_processor|Dpth|A|Q32[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[20]~20_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_A~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_A~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|A|Q32\(20));

-- Location: LCCOMB_X53_Y36_N18
\main_processor|Dpth|M4|Out2[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M4|Out2[20]~20_combout\ = (\main_processor|C1|IM_MUX1~combout\ & ((\main_processor|Dpth|IR|Q32\(4)))) # (!\main_processor|C1|IM_MUX1~combout\ & (\main_processor|Dpth|A|Q32\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|C1|IM_MUX1~combout\,
	datac => \main_processor|Dpth|A|Q32\(20),
	datad => \main_processor|Dpth|IR|Q32\(4),
	combout => \main_processor|Dpth|M4|Out2[20]~20_combout\);

-- Location: LCCOMB_X49_Y36_N18
\main_processor|Dpth|ALU|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux12~1_combout\ = (\main_processor|C1|ALU_op\(0) & ((\main_processor|Dpth|M4|Out2[20]~20_combout\) # ((!\main_processor|C1|ALU_op\(2))))) # (!\main_processor|C1|ALU_op\(0) & (((\main_processor|C1|ALU_op\(2) & 
-- \main_processor|Dpth|M4|Out2[18]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[20]~20_combout\,
	datab => \main_processor|C1|ALU_op\(0),
	datac => \main_processor|C1|ALU_op\(2),
	datad => \main_processor|Dpth|M4|Out2[18]~18_combout\,
	combout => \main_processor|Dpth|ALU|Mux12~1_combout\);

-- Location: LCCOMB_X49_Y36_N12
\main_processor|Dpth|ALU|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux12~2_combout\ = (\main_processor|C1|ALU_op\(2) & (((\main_processor|Dpth|ALU|Mux12~1_combout\)))) # (!\main_processor|C1|ALU_op\(2) & ((\main_processor|Dpth|ALU|Mux12~0_combout\ & ((\main_processor|Dpth|M5|Mux12~0_combout\) # 
-- (\main_processor|Dpth|ALU|Mux12~1_combout\))) # (!\main_processor|Dpth|ALU|Mux12~0_combout\ & (\main_processor|Dpth|M5|Mux12~0_combout\ & \main_processor|Dpth|ALU|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(2),
	datab => \main_processor|Dpth|ALU|Mux12~0_combout\,
	datac => \main_processor|Dpth|M5|Mux12~0_combout\,
	datad => \main_processor|Dpth|ALU|Mux12~1_combout\,
	combout => \main_processor|Dpth|ALU|Mux12~2_combout\);

-- Location: LCCOMB_X49_Y38_N14
\main_processor|Dpth|ALU|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux12~3_combout\ = (\main_processor|Dpth|ALU|Mux12~2_combout\ & (((\main_processor|Dpth|ALU|Mux23~0_combout\ & \main_processor|Dpth|ALU|Add0~38_combout\)) # (!\main_processor|C1|ALU_op\(1)))) # 
-- (!\main_processor|Dpth|ALU|Mux12~2_combout\ & (((\main_processor|Dpth|ALU|Mux23~0_combout\ & \main_processor|Dpth|ALU|Add0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux12~2_combout\,
	datab => \main_processor|C1|ALU_op\(1),
	datac => \main_processor|Dpth|ALU|Mux23~0_combout\,
	datad => \main_processor|Dpth|ALU|Add0~38_combout\,
	combout => \main_processor|Dpth|ALU|Mux12~3_combout\);

-- Location: LCCOMB_X49_Y38_N8
\main_processor|Dpth|ALU|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux12~4_combout\ = (\main_processor|Dpth|ALU|Mux12~3_combout\) # ((\main_processor|Dpth|ALU|Mux23~1_combout\ & \main_processor|Dpth|ALU|Add1~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux23~1_combout\,
	datac => \main_processor|Dpth|ALU|Mux12~3_combout\,
	datad => \main_processor|Dpth|ALU|Add1~38_combout\,
	combout => \main_processor|Dpth|ALU|Mux12~4_combout\);

-- Location: LCCOMB_X49_Y38_N6
\main_processor|Dpth|M2|Out2[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M2|Out2[19]~19_combout\ = (!\main_processor|C1|A_Mux~combout\ & ((\main_processor|Dpth|M6|Mux12~2_combout\) # ((\main_processor|Dpth|M6|Mux31~3_combout\ & \main_processor|Dpth|ALU|Mux12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|A_Mux~combout\,
	datab => \main_processor|Dpth|M6|Mux31~3_combout\,
	datac => \main_processor|Dpth|ALU|Mux12~4_combout\,
	datad => \main_processor|Dpth|M6|Mux12~2_combout\,
	combout => \main_processor|Dpth|M2|Out2[19]~19_combout\);

-- Location: FF_X53_Y36_N13
\main_processor|Dpth|A|Q32[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[19]~19_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_A~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_A~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|A|Q32\(19));

-- Location: LCCOMB_X53_Y36_N6
\main_processor|Dpth|M4|Out2[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M4|Out2[19]~19_combout\ = (\main_processor|C1|IM_MUX1~combout\ & (\main_processor|Dpth|IR|Q32\(3))) # (!\main_processor|C1|IM_MUX1~combout\ & ((\main_processor|Dpth|A|Q32\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(3),
	datac => \main_processor|C1|IM_MUX1~combout\,
	datad => \main_processor|Dpth|A|Q32\(19),
	combout => \main_processor|Dpth|M4|Out2[19]~19_combout\);

-- Location: LCCOMB_X49_Y35_N0
\main_processor|Dpth|ALU|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux13~1_combout\ = (\main_processor|C1|ALU_op\(2) & ((\main_processor|Dpth|ALU|Mux13~0_combout\ & (\main_processor|Dpth|M4|Out2[19]~19_combout\)) # (!\main_processor|Dpth|ALU|Mux13~0_combout\ & 
-- ((\main_processor|Dpth|M4|Out2[17]~17_combout\))))) # (!\main_processor|C1|ALU_op\(2) & (\main_processor|Dpth|ALU|Mux13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(2),
	datab => \main_processor|Dpth|ALU|Mux13~0_combout\,
	datac => \main_processor|Dpth|M4|Out2[19]~19_combout\,
	datad => \main_processor|Dpth|M4|Out2[17]~17_combout\,
	combout => \main_processor|Dpth|ALU|Mux13~1_combout\);

-- Location: LCCOMB_X50_Y35_N20
\main_processor|Dpth|ALU|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux13~2_combout\ = (\main_processor|Dpth|ALU|Mux13~1_combout\ & (((\main_processor|Dpth|ALU|Mux23~0_combout\ & \main_processor|Dpth|ALU|Add0~36_combout\)) # (!\main_processor|C1|ALU_op\(1)))) # 
-- (!\main_processor|Dpth|ALU|Mux13~1_combout\ & (((\main_processor|Dpth|ALU|Mux23~0_combout\ & \main_processor|Dpth|ALU|Add0~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux13~1_combout\,
	datab => \main_processor|C1|ALU_op\(1),
	datac => \main_processor|Dpth|ALU|Mux23~0_combout\,
	datad => \main_processor|Dpth|ALU|Add0~36_combout\,
	combout => \main_processor|Dpth|ALU|Mux13~2_combout\);

-- Location: LCCOMB_X50_Y35_N26
\main_processor|Dpth|ALU|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux13~3_combout\ = (\main_processor|Dpth|ALU|Mux13~2_combout\) # ((\main_processor|Dpth|ALU|Mux23~1_combout\ & \main_processor|Dpth|ALU|Add1~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux23~1_combout\,
	datac => \main_processor|Dpth|ALU|Add1~36_combout\,
	datad => \main_processor|Dpth|ALU|Mux13~2_combout\,
	combout => \main_processor|Dpth|ALU|Mux13~3_combout\);

-- Location: LCCOMB_X50_Y35_N10
\main_processor|Dpth|M2|Out2[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M2|Out2[18]~18_combout\ = (!\main_processor|C1|A_Mux~combout\ & ((\main_processor|Dpth|M6|Mux13~2_combout\) # ((\main_processor|Dpth|M6|Mux31~3_combout\ & \main_processor|Dpth|ALU|Mux13~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M6|Mux31~3_combout\,
	datab => \main_processor|C1|A_Mux~combout\,
	datac => \main_processor|Dpth|ALU|Mux13~3_combout\,
	datad => \main_processor|Dpth|M6|Mux13~2_combout\,
	combout => \main_processor|Dpth|M2|Out2[18]~18_combout\);

-- Location: FF_X50_Y35_N3
\main_processor|Dpth|A|Q32[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[18]~18_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_A~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_A~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|A|Q32\(18));

-- Location: LCCOMB_X50_Y35_N2
\main_processor|Dpth|M4|Out2[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M4|Out2[18]~18_combout\ = (\main_processor|C1|IM_MUX1~combout\ & ((\main_processor|Dpth|IR|Q32\(2)))) # (!\main_processor|C1|IM_MUX1~combout\ & (\main_processor|Dpth|A|Q32\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|IM_MUX1~combout\,
	datac => \main_processor|Dpth|A|Q32\(18),
	datad => \main_processor|Dpth|IR|Q32\(2),
	combout => \main_processor|Dpth|M4|Out2[18]~18_combout\);

-- Location: LCCOMB_X49_Y35_N24
\main_processor|Dpth|ALU|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux14~1_combout\ = (\main_processor|C1|ALU_op\(0) & (((\main_processor|Dpth|M4|Out2[18]~18_combout\) # (!\main_processor|C1|ALU_op\(2))))) # (!\main_processor|C1|ALU_op\(0) & (\main_processor|Dpth|M4|Out2[16]~16_combout\ & 
-- (\main_processor|C1|ALU_op\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[16]~16_combout\,
	datab => \main_processor|C1|ALU_op\(0),
	datac => \main_processor|C1|ALU_op\(2),
	datad => \main_processor|Dpth|M4|Out2[18]~18_combout\,
	combout => \main_processor|Dpth|ALU|Mux14~1_combout\);

-- Location: LCCOMB_X50_Y35_N30
\main_processor|Dpth|ALU|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux14~2_combout\ = (\main_processor|Dpth|M5|Mux14~0_combout\ & ((\main_processor|Dpth|ALU|Mux14~1_combout\) # ((!\main_processor|C1|ALU_op\(2) & \main_processor|Dpth|ALU|Mux14~0_combout\)))) # 
-- (!\main_processor|Dpth|M5|Mux14~0_combout\ & (\main_processor|Dpth|ALU|Mux14~1_combout\ & ((\main_processor|C1|ALU_op\(2)) # (\main_processor|Dpth|ALU|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux14~0_combout\,
	datab => \main_processor|C1|ALU_op\(2),
	datac => \main_processor|Dpth|ALU|Mux14~0_combout\,
	datad => \main_processor|Dpth|ALU|Mux14~1_combout\,
	combout => \main_processor|Dpth|ALU|Mux14~2_combout\);

-- Location: LCCOMB_X50_Y35_N28
\main_processor|Dpth|ALU|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux14~3_combout\ = (\main_processor|Dpth|ALU|Mux14~2_combout\ & (((\main_processor|Dpth|ALU|Mux23~0_combout\ & \main_processor|Dpth|ALU|Add0~34_combout\)) # (!\main_processor|C1|ALU_op\(1)))) # 
-- (!\main_processor|Dpth|ALU|Mux14~2_combout\ & (((\main_processor|Dpth|ALU|Mux23~0_combout\ & \main_processor|Dpth|ALU|Add0~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux14~2_combout\,
	datab => \main_processor|C1|ALU_op\(1),
	datac => \main_processor|Dpth|ALU|Mux23~0_combout\,
	datad => \main_processor|Dpth|ALU|Add0~34_combout\,
	combout => \main_processor|Dpth|ALU|Mux14~3_combout\);

-- Location: LCCOMB_X50_Y35_N22
\main_processor|Dpth|ALU|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux14~4_combout\ = (\main_processor|Dpth|ALU|Mux14~3_combout\) # ((\main_processor|Dpth|ALU|Mux23~1_combout\ & \main_processor|Dpth|ALU|Add1~34_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux23~1_combout\,
	datac => \main_processor|Dpth|ALU|Add1~34_combout\,
	datad => \main_processor|Dpth|ALU|Mux14~3_combout\,
	combout => \main_processor|Dpth|ALU|Mux14~4_combout\);

-- Location: LCCOMB_X50_Y35_N12
\main_processor|Dpth|M2|Out2[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M2|Out2[17]~17_combout\ = (!\main_processor|C1|A_Mux~combout\ & ((\main_processor|Dpth|M6|Mux14~2_combout\) # ((\main_processor|Dpth|M6|Mux31~3_combout\ & \main_processor|Dpth|ALU|Mux14~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M6|Mux31~3_combout\,
	datab => \main_processor|C1|A_Mux~combout\,
	datac => \main_processor|Dpth|ALU|Mux14~4_combout\,
	datad => \main_processor|Dpth|M6|Mux14~2_combout\,
	combout => \main_processor|Dpth|M2|Out2[17]~17_combout\);

-- Location: FF_X50_Y35_N1
\main_processor|Dpth|A|Q32[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[17]~17_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_A~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_A~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|A|Q32\(17));

-- Location: LCCOMB_X50_Y35_N24
\main_processor|Dpth|M4|Out2[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M4|Out2[17]~17_combout\ = (\main_processor|C1|IM_MUX1~combout\ & ((\main_processor|Dpth|IR|Q32\(1)))) # (!\main_processor|C1|IM_MUX1~combout\ & (\main_processor|Dpth|A|Q32\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|A|Q32\(17),
	datac => \main_processor|C1|IM_MUX1~combout\,
	datad => \main_processor|Dpth|IR|Q32\(1),
	combout => \main_processor|Dpth|M4|Out2[17]~17_combout\);

-- Location: LCCOMB_X55_Y38_N26
\main_processor|Dpth|ALU|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux15~0_combout\ = (\main_processor|Dpth|M4|Out2[16]~16_combout\ & ((\main_processor|C1|ALU_op\(0)) # ((!\main_processor|C1|ALU_op\(2) & \main_processor|Dpth|M5|Mux15~0_combout\)))) # (!\main_processor|Dpth|M4|Out2[16]~16_combout\ 
-- & (\main_processor|C1|ALU_op\(0) & ((\main_processor|C1|ALU_op\(2)) # (\main_processor|Dpth|M5|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[16]~16_combout\,
	datab => \main_processor|C1|ALU_op\(0),
	datac => \main_processor|C1|ALU_op\(2),
	datad => \main_processor|Dpth|M5|Mux15~0_combout\,
	combout => \main_processor|Dpth|ALU|Mux15~0_combout\);

-- Location: LCCOMB_X54_Y38_N0
\main_processor|Dpth|ALU|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux15~1_combout\ = (\main_processor|C1|ALU_op\(2) & ((\main_processor|Dpth|ALU|Mux15~0_combout\ & ((\main_processor|Dpth|M4|Out2[17]~17_combout\))) # (!\main_processor|Dpth|ALU|Mux15~0_combout\ & 
-- (\main_processor|Dpth|M4|Out2[15]~15_combout\)))) # (!\main_processor|C1|ALU_op\(2) & (((\main_processor|Dpth|ALU|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(2),
	datab => \main_processor|Dpth|M4|Out2[15]~15_combout\,
	datac => \main_processor|Dpth|M4|Out2[17]~17_combout\,
	datad => \main_processor|Dpth|ALU|Mux15~0_combout\,
	combout => \main_processor|Dpth|ALU|Mux15~1_combout\);

-- Location: LCCOMB_X54_Y38_N10
\main_processor|Dpth|ALU|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux15~2_combout\ = (\main_processor|C1|ALU_op\(1) & (\main_processor|Dpth|ALU|Mux23~0_combout\ & (\main_processor|Dpth|ALU|Add0~32_combout\))) # (!\main_processor|C1|ALU_op\(1) & ((\main_processor|Dpth|ALU|Mux15~1_combout\) # 
-- ((\main_processor|Dpth|ALU|Mux23~0_combout\ & \main_processor|Dpth|ALU|Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(1),
	datab => \main_processor|Dpth|ALU|Mux23~0_combout\,
	datac => \main_processor|Dpth|ALU|Add0~32_combout\,
	datad => \main_processor|Dpth|ALU|Mux15~1_combout\,
	combout => \main_processor|Dpth|ALU|Mux15~2_combout\);

-- Location: LCCOMB_X54_Y38_N4
\main_processor|Dpth|ALU|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux15~3_combout\ = (\main_processor|Dpth|ALU|Mux15~2_combout\) # ((\main_processor|Dpth|ALU|Mux23~1_combout\ & \main_processor|Dpth|ALU|Add1~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux23~1_combout\,
	datac => \main_processor|Dpth|ALU|Add1~32_combout\,
	datad => \main_processor|Dpth|ALU|Mux15~2_combout\,
	combout => \main_processor|Dpth|ALU|Mux15~3_combout\);

-- Location: LCCOMB_X54_Y38_N22
\main_processor|Dpth|M2|Out2[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M2|Out2[16]~16_combout\ = (!\main_processor|C1|A_Mux~combout\ & ((\main_processor|Dpth|M6|Mux15~2_combout\) # ((\main_processor|Dpth|M6|Mux31~3_combout\ & \main_processor|Dpth|ALU|Mux15~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M6|Mux31~3_combout\,
	datab => \main_processor|Dpth|ALU|Mux15~3_combout\,
	datac => \main_processor|C1|A_Mux~combout\,
	datad => \main_processor|Dpth|M6|Mux15~2_combout\,
	combout => \main_processor|Dpth|M2|Out2[16]~16_combout\);

-- Location: FF_X54_Y38_N3
\main_processor|Dpth|A|Q32[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[16]~16_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_A~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_A~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|A|Q32\(16));

-- Location: LCCOMB_X54_Y38_N2
\main_processor|Dpth|M4|Out2[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M4|Out2[16]~16_combout\ = (\main_processor|C1|IM_MUX1~combout\ & (\main_processor|Dpth|IR|Q32\(0))) # (!\main_processor|C1|IM_MUX1~combout\ & ((\main_processor|Dpth|A|Q32\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(0),
	datac => \main_processor|Dpth|A|Q32\(16),
	datad => \main_processor|C1|IM_MUX1~combout\,
	combout => \main_processor|Dpth|M4|Out2[16]~16_combout\);

-- Location: LCCOMB_X54_Y38_N14
\main_processor|Dpth|ALU|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux16~1_combout\ = (\main_processor|C1|ALU_op\(0) & (((\main_processor|Dpth|M4|Out2[16]~16_combout\) # (!\main_processor|C1|ALU_op\(2))))) # (!\main_processor|C1|ALU_op\(0) & (\main_processor|Dpth|M4|Out2[14]~14_combout\ & 
-- ((\main_processor|C1|ALU_op\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[14]~14_combout\,
	datab => \main_processor|Dpth|M4|Out2[16]~16_combout\,
	datac => \main_processor|C1|ALU_op\(0),
	datad => \main_processor|C1|ALU_op\(2),
	combout => \main_processor|Dpth|ALU|Mux16~1_combout\);

-- Location: LCCOMB_X54_Y38_N28
\main_processor|Dpth|ALU|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux16~2_combout\ = (\main_processor|C1|ALU_op\(2) & (((\main_processor|Dpth|ALU|Mux16~1_combout\)))) # (!\main_processor|C1|ALU_op\(2) & ((\main_processor|Dpth|ALU|Mux16~0_combout\) # ((\main_processor|Dpth|M4|Out2[15]~15_combout\ 
-- & \main_processor|Dpth|ALU|Mux16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux16~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[15]~15_combout\,
	datac => \main_processor|Dpth|ALU|Mux16~1_combout\,
	datad => \main_processor|C1|ALU_op\(2),
	combout => \main_processor|Dpth|ALU|Mux16~2_combout\);

-- Location: LCCOMB_X54_Y38_N18
\main_processor|Dpth|ALU|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux16~3_combout\ = (\main_processor|Dpth|ALU|Add0~30_combout\ & ((\main_processor|Dpth|ALU|Mux23~0_combout\) # ((\main_processor|Dpth|ALU|Mux16~2_combout\ & !\main_processor|C1|ALU_op\(1))))) # 
-- (!\main_processor|Dpth|ALU|Add0~30_combout\ & (\main_processor|Dpth|ALU|Mux16~2_combout\ & (!\main_processor|C1|ALU_op\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Add0~30_combout\,
	datab => \main_processor|Dpth|ALU|Mux16~2_combout\,
	datac => \main_processor|C1|ALU_op\(1),
	datad => \main_processor|Dpth|ALU|Mux23~0_combout\,
	combout => \main_processor|Dpth|ALU|Mux16~3_combout\);

-- Location: LCCOMB_X54_Y38_N16
\main_processor|Dpth|ALU|Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux16~4_combout\ = (\main_processor|Dpth|ALU|Mux16~3_combout\) # ((\main_processor|Dpth|ALU|Mux23~1_combout\ & \main_processor|Dpth|ALU|Add1~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux23~1_combout\,
	datac => \main_processor|Dpth|ALU|Add1~30_combout\,
	datad => \main_processor|Dpth|ALU|Mux16~3_combout\,
	combout => \main_processor|Dpth|ALU|Mux16~4_combout\);

-- Location: LCCOMB_X55_Y36_N26
\main_processor|Dpth|D1|data_out~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|D1|data_out~15_combout\ = (!\main_processor|C1|wen~1_combout\ & (\main_processor|C1|present_state.state_2~q\ & (\main_processor|C1|Mux23~0_combout\ & \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|wen~1_combout\,
	datab => \main_processor|C1|present_state.state_2~q\,
	datac => \main_processor|C1|Mux23~0_combout\,
	datad => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a15\,
	combout => \main_processor|Dpth|D1|data_out~15_combout\);

-- Location: FF_X55_Y36_N27
\main_processor|Dpth|D1|data_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|D1|data_out~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|D1|data_out\(15));

-- Location: LCCOMB_X54_Y38_N24
\main_processor|Dpth|M6|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux16~2_combout\ = (\main_processor|C1|DATA_Mux\(1) & (\main_processor|C1|DATA_Mux\(0))) # (!\main_processor|C1|DATA_Mux\(1) & ((\main_processor|C1|DATA_Mux\(0) & ((\main_processor|Dpth|D1|data_out\(15)))) # 
-- (!\main_processor|C1|DATA_Mux\(0) & (\main_memory|altsyncram_component|auto_generated|q_a\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_memory|altsyncram_component|auto_generated|q_a\(15),
	datad => \main_processor|Dpth|D1|data_out\(15),
	combout => \main_processor|Dpth|M6|Mux16~2_combout\);

-- Location: LCCOMB_X54_Y38_N12
\main_processor|Dpth|M6|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux16~3_combout\ = (\main_processor|Dpth|M6|Mux16~2_combout\) # ((\main_processor|C1|DATA_Mux\(1) & (\main_processor|Dpth|ALU|Mux16~4_combout\ & !\main_processor|C1|DATA_Mux\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|Dpth|ALU|Mux16~4_combout\,
	datac => \main_processor|C1|DATA_Mux\(0),
	datad => \main_processor|Dpth|M6|Mux16~2_combout\,
	combout => \main_processor|Dpth|M6|Mux16~3_combout\);

-- Location: FF_X53_Y38_N15
\main_processor|Dpth|IR|Q32[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M6|Mux16~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ALT_INV_ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|IR|Q32\(15));

-- Location: LCCOMB_X54_Y38_N8
\main_processor|Dpth|M2|Out2[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M2|Out2[15]~15_combout\ = (\main_processor|C1|A_Mux~combout\ & (\main_processor|Dpth|IR|Q32\(15))) # (!\main_processor|C1|A_Mux~combout\ & ((\main_processor|Dpth|M6|Mux16~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|A_Mux~combout\,
	datac => \main_processor|Dpth|IR|Q32\(15),
	datad => \main_processor|Dpth|M6|Mux16~3_combout\,
	combout => \main_processor|Dpth|M2|Out2[15]~15_combout\);

-- Location: FF_X54_Y38_N21
\main_processor|Dpth|A|Q32[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[15]~15_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_A~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_A~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|A|Q32\(15));

-- Location: LCCOMB_X52_Y36_N24
\main_processor|Dpth|M1|Out2[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M1|Out2[15]~15_combout\ = (\main_processor|C1|REG_Mux~combout\ & ((\main_processor|Dpth|B|Q32\(15)))) # (!\main_processor|C1|REG_Mux~combout\ & (\main_processor|Dpth|A|Q32\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|A|Q32\(15),
	datab => \main_processor|Dpth|B|Q32\(15),
	datad => \main_processor|C1|REG_Mux~combout\,
	combout => \main_processor|Dpth|M1|Out2[15]~15_combout\);

-- Location: LCCOMB_X49_Y38_N10
\main_processor|Dpth|D1|data_out~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|D1|data_out~13_combout\ = (\main_processor|C1|Mux23~0_combout\ & (!\main_processor|C1|wen~1_combout\ & (\main_processor|C1|present_state.state_2~q\ & \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|Mux23~0_combout\,
	datab => \main_processor|C1|wen~1_combout\,
	datac => \main_processor|C1|present_state.state_2~q\,
	datad => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a13\,
	combout => \main_processor|Dpth|D1|data_out~13_combout\);

-- Location: FF_X49_Y38_N11
\main_processor|Dpth|D1|data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|D1|data_out~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|D1|data_out\(13));

-- Location: LCCOMB_X49_Y38_N12
\main_processor|Dpth|M6|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux18~2_combout\ = (\main_processor|C1|DATA_Mux\(1) & (\main_processor|C1|DATA_Mux\(0))) # (!\main_processor|C1|DATA_Mux\(1) & ((\main_processor|C1|DATA_Mux\(0) & ((\main_processor|Dpth|D1|data_out\(13)))) # 
-- (!\main_processor|C1|DATA_Mux\(0) & (\main_memory|altsyncram_component|auto_generated|q_a\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_memory|altsyncram_component|auto_generated|q_a\(13),
	datad => \main_processor|Dpth|D1|data_out\(13),
	combout => \main_processor|Dpth|M6|Mux18~2_combout\);

-- Location: LCCOMB_X49_Y38_N16
\main_processor|Dpth|M6|Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux18~3_combout\ = (\main_processor|Dpth|M6|Mux18~2_combout\) # ((\main_processor|C1|DATA_Mux\(1) & (!\main_processor|C1|DATA_Mux\(0) & \main_processor|Dpth|ALU|Mux18~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_processor|Dpth|ALU|Mux18~4_combout\,
	datad => \main_processor|Dpth|M6|Mux18~2_combout\,
	combout => \main_processor|Dpth|M6|Mux18~3_combout\);

-- Location: LCCOMB_X53_Y40_N18
\main_processor|Dpth|D1|data_out~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|D1|data_out~10_combout\ = (!\main_processor|C1|wen~1_combout\ & (\main_processor|C1|Mux23~0_combout\ & (\main_processor|C1|present_state.state_2~q\ & \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|wen~1_combout\,
	datab => \main_processor|C1|Mux23~0_combout\,
	datac => \main_processor|C1|present_state.state_2~q\,
	datad => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a10\,
	combout => \main_processor|Dpth|D1|data_out~10_combout\);

-- Location: FF_X53_Y40_N19
\main_processor|Dpth|D1|data_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|D1|data_out~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|D1|data_out\(10));

-- Location: LCCOMB_X52_Y40_N0
\main_processor|Dpth|M6|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux21~2_combout\ = (\main_processor|C1|DATA_Mux\(1) & (\main_processor|C1|DATA_Mux\(0))) # (!\main_processor|C1|DATA_Mux\(1) & ((\main_processor|C1|DATA_Mux\(0) & ((\main_processor|Dpth|D1|data_out\(10)))) # 
-- (!\main_processor|C1|DATA_Mux\(0) & (\main_memory|altsyncram_component|auto_generated|q_a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_memory|altsyncram_component|auto_generated|q_a\(10),
	datad => \main_processor|Dpth|D1|data_out\(10),
	combout => \main_processor|Dpth|M6|Mux21~2_combout\);

-- Location: LCCOMB_X52_Y40_N12
\main_processor|Dpth|M6|Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux21~3_combout\ = (\main_processor|Dpth|M6|Mux21~2_combout\) # ((\main_processor|C1|DATA_Mux\(1) & (!\main_processor|C1|DATA_Mux\(0) & \main_processor|Dpth|ALU|Mux21~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_processor|Dpth|ALU|Mux21~3_combout\,
	datad => \main_processor|Dpth|M6|Mux21~2_combout\,
	combout => \main_processor|Dpth|M6|Mux21~3_combout\);

-- Location: LCCOMB_X54_Y39_N14
\main_processor|Dpth|IR|Q32[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|IR|Q32[10]~feeder_combout\ = \main_processor|Dpth|M6|Mux21~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_processor|Dpth|M6|Mux21~3_combout\,
	combout => \main_processor|Dpth|IR|Q32[10]~feeder_combout\);

-- Location: FF_X54_Y39_N15
\main_processor|Dpth|IR|Q32[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|IR|Q32[10]~feeder_combout\,
	ena => \main_processor|C1|ALT_INV_ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|IR|Q32\(10));

-- Location: LCCOMB_X52_Y40_N30
\main_processor|Dpth|M2|Out2[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M2|Out2[10]~10_combout\ = (\main_processor|C1|A_Mux~combout\ & (\main_processor|Dpth|IR|Q32\(10))) # (!\main_processor|C1|A_Mux~combout\ & ((\main_processor|Dpth|M6|Mux21~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(10),
	datac => \main_processor|C1|A_Mux~combout\,
	datad => \main_processor|Dpth|M6|Mux21~3_combout\,
	combout => \main_processor|Dpth|M2|Out2[10]~10_combout\);

-- Location: LCCOMB_X52_Y40_N18
\main_processor|Dpth|A|Q32[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|A|Q32[10]~feeder_combout\ = \main_processor|Dpth|M2|Out2[10]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|Dpth|M2|Out2[10]~10_combout\,
	combout => \main_processor|Dpth|A|Q32[10]~feeder_combout\);

-- Location: FF_X52_Y40_N19
\main_processor|Dpth|A|Q32[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|A|Q32[10]~feeder_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_A~3_combout\,
	ena => \main_processor|C1|ld_A~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|A|Q32\(10));

-- Location: LCCOMB_X52_Y40_N16
\main_processor|Dpth|M4|Out2[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M4|Out2[10]~10_combout\ = (!\main_processor|C1|IM_MUX1~combout\ & \main_processor|Dpth|A|Q32\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|C1|IM_MUX1~combout\,
	datad => \main_processor|Dpth|A|Q32\(10),
	combout => \main_processor|Dpth|M4|Out2[10]~10_combout\);

-- Location: LCCOMB_X52_Y40_N14
\main_processor|Dpth|ALU|Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux22~3_combout\ = (\main_processor|C1|ALU_op\(2) & ((\main_processor|C1|ALU_op\(0) & (\main_processor|Dpth|M4|Out2[10]~10_combout\)) # (!\main_processor|C1|ALU_op\(0) & ((\main_processor|Dpth|M4|Out2[8]~8_combout\))))) # 
-- (!\main_processor|C1|ALU_op\(2) & (((\main_processor|C1|ALU_op\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[10]~10_combout\,
	datab => \main_processor|C1|ALU_op\(2),
	datac => \main_processor|C1|ALU_op\(0),
	datad => \main_processor|Dpth|M4|Out2[8]~8_combout\,
	combout => \main_processor|Dpth|ALU|Mux22~3_combout\);

-- Location: LCCOMB_X52_Y40_N8
\main_processor|Dpth|ALU|Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux22~4_combout\ = (\main_processor|C1|ALU_op\(2) & (((\main_processor|Dpth|ALU|Mux22~3_combout\)))) # (!\main_processor|C1|ALU_op\(2) & ((\main_processor|Dpth|ALU|Mux22~2_combout\) # ((\main_processor|Dpth|ALU|Mux22~3_combout\ & 
-- \main_processor|Dpth|M4|Out2[9]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux22~2_combout\,
	datab => \main_processor|C1|ALU_op\(2),
	datac => \main_processor|Dpth|ALU|Mux22~3_combout\,
	datad => \main_processor|Dpth|M4|Out2[9]~9_combout\,
	combout => \main_processor|Dpth|ALU|Mux22~4_combout\);

-- Location: LCCOMB_X52_Y39_N26
\main_processor|Dpth|ALU|Mux22~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux22~5_combout\ = (\main_processor|C1|ALU_op\(1) & (\main_processor|Dpth|ALU|Add0~18_combout\ & ((\main_processor|Dpth|ALU|Mux23~0_combout\)))) # (!\main_processor|C1|ALU_op\(1) & ((\main_processor|Dpth|ALU|Mux22~4_combout\) # 
-- ((\main_processor|Dpth|ALU|Add0~18_combout\ & \main_processor|Dpth|ALU|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(1),
	datab => \main_processor|Dpth|ALU|Add0~18_combout\,
	datac => \main_processor|Dpth|ALU|Mux22~4_combout\,
	datad => \main_processor|Dpth|ALU|Mux23~0_combout\,
	combout => \main_processor|Dpth|ALU|Mux22~5_combout\);

-- Location: LCCOMB_X53_Y40_N16
\main_processor|Dpth|D1|data_out~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|D1|data_out~9_combout\ = (!\main_processor|C1|wen~1_combout\ & (\main_processor|C1|Mux23~0_combout\ & (\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a9\ & \main_processor|C1|present_state.state_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|wen~1_combout\,
	datab => \main_processor|C1|Mux23~0_combout\,
	datac => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a9\,
	datad => \main_processor|C1|present_state.state_2~q\,
	combout => \main_processor|Dpth|D1|data_out~9_combout\);

-- Location: FF_X53_Y40_N17
\main_processor|Dpth|D1|data_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|D1|data_out~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|D1|data_out\(9));

-- Location: LCCOMB_X52_Y40_N6
\main_processor|Dpth|M6|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux22~0_combout\ = (\main_processor|C1|DATA_Mux\(1) & (\main_processor|C1|DATA_Mux\(0))) # (!\main_processor|C1|DATA_Mux\(1) & ((\main_processor|C1|DATA_Mux\(0) & ((\main_processor|Dpth|D1|data_out\(9)))) # 
-- (!\main_processor|C1|DATA_Mux\(0) & (\main_memory|altsyncram_component|auto_generated|q_a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_memory|altsyncram_component|auto_generated|q_a\(9),
	datad => \main_processor|Dpth|D1|data_out\(9),
	combout => \main_processor|Dpth|M6|Mux22~0_combout\);

-- Location: LCCOMB_X52_Y40_N2
\main_processor|Dpth|M6|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux22~1_combout\ = (\main_processor|Dpth|M6|Mux22~0_combout\) # ((\main_processor|Dpth|M6|Mux31~3_combout\ & ((\main_processor|Dpth|ALU|Mux22~6_combout\) # (\main_processor|Dpth|ALU|Mux22~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux22~6_combout\,
	datab => \main_processor|Dpth|M6|Mux31~3_combout\,
	datac => \main_processor|Dpth|ALU|Mux22~5_combout\,
	datad => \main_processor|Dpth|M6|Mux22~0_combout\,
	combout => \main_processor|Dpth|M6|Mux22~1_combout\);

-- Location: LCCOMB_X52_Y38_N10
\main_processor|Dpth|IR|Q32[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|IR|Q32[9]~feeder_combout\ = \main_processor|Dpth|M6|Mux22~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_processor|Dpth|M6|Mux22~1_combout\,
	combout => \main_processor|Dpth|IR|Q32[9]~feeder_combout\);

-- Location: FF_X52_Y38_N11
\main_processor|Dpth|IR|Q32[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|IR|Q32[9]~feeder_combout\,
	ena => \main_processor|C1|ALT_INV_ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|IR|Q32\(9));

-- Location: LCCOMB_X52_Y40_N4
\main_processor|Dpth|M2|Out2[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M2|Out2[9]~9_combout\ = (\main_processor|C1|A_Mux~combout\ & (\main_processor|Dpth|IR|Q32\(9))) # (!\main_processor|C1|A_Mux~combout\ & ((\main_processor|Dpth|M6|Mux22~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(9),
	datac => \main_processor|C1|A_Mux~combout\,
	datad => \main_processor|Dpth|M6|Mux22~1_combout\,
	combout => \main_processor|Dpth|M2|Out2[9]~9_combout\);

-- Location: FF_X52_Y40_N25
\main_processor|Dpth|A|Q32[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[9]~9_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_A~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_A~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|A|Q32\(9));

-- Location: LCCOMB_X52_Y40_N28
\main_processor|Dpth|M4|Out2[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M4|Out2[9]~9_combout\ = (!\main_processor|C1|IM_MUX1~combout\ & \main_processor|Dpth|A|Q32\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|C1|IM_MUX1~combout\,
	datad => \main_processor|Dpth|A|Q32\(9),
	combout => \main_processor|Dpth|M4|Out2[9]~9_combout\);

-- Location: LCCOMB_X53_Y40_N28
\main_processor|Dpth|ALU|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux23~2_combout\ = (\main_processor|C1|ALU_op\(0) & ((\main_processor|Dpth|M5|Mux23~0_combout\) # ((\main_processor|C1|ALU_op\(2)) # (\main_processor|Dpth|M4|Out2[8]~8_combout\)))) # (!\main_processor|C1|ALU_op\(0) & 
-- (\main_processor|Dpth|M5|Mux23~0_combout\ & (!\main_processor|C1|ALU_op\(2) & \main_processor|Dpth|M4|Out2[8]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(0),
	datab => \main_processor|Dpth|M5|Mux23~0_combout\,
	datac => \main_processor|C1|ALU_op\(2),
	datad => \main_processor|Dpth|M4|Out2[8]~8_combout\,
	combout => \main_processor|Dpth|ALU|Mux23~2_combout\);

-- Location: LCCOMB_X53_Y40_N2
\main_processor|Dpth|ALU|Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux23~3_combout\ = (\main_processor|C1|ALU_op\(2) & ((\main_processor|Dpth|ALU|Mux23~2_combout\ & (\main_processor|Dpth|M4|Out2[9]~9_combout\)) # (!\main_processor|Dpth|ALU|Mux23~2_combout\ & 
-- ((\main_processor|Dpth|M4|Out2[7]~7_combout\))))) # (!\main_processor|C1|ALU_op\(2) & (((\main_processor|Dpth|ALU|Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[9]~9_combout\,
	datab => \main_processor|Dpth|M4|Out2[7]~7_combout\,
	datac => \main_processor|C1|ALU_op\(2),
	datad => \main_processor|Dpth|ALU|Mux23~2_combout\,
	combout => \main_processor|Dpth|ALU|Mux23~3_combout\);

-- Location: LCCOMB_X52_Y39_N10
\main_processor|Dpth|ALU|Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux23~4_combout\ = (\main_processor|C1|ALU_op\(1) & (((\main_processor|Dpth|ALU|Add0~16_combout\ & \main_processor|Dpth|ALU|Mux23~0_combout\)))) # (!\main_processor|C1|ALU_op\(1) & ((\main_processor|Dpth|ALU|Mux23~3_combout\) # 
-- ((\main_processor|Dpth|ALU|Add0~16_combout\ & \main_processor|Dpth|ALU|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(1),
	datab => \main_processor|Dpth|ALU|Mux23~3_combout\,
	datac => \main_processor|Dpth|ALU|Add0~16_combout\,
	datad => \main_processor|Dpth|ALU|Mux23~0_combout\,
	combout => \main_processor|Dpth|ALU|Mux23~4_combout\);

-- Location: LCCOMB_X52_Y39_N8
\main_processor|Dpth|ALU|Mux23~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux23~5_combout\ = (\main_processor|Dpth|ALU|Mux23~4_combout\) # ((\main_processor|Dpth|ALU|Mux23~1_combout\ & \main_processor|Dpth|ALU|Add1~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|ALU|Mux23~1_combout\,
	datac => \main_processor|Dpth|ALU|Add1~16_combout\,
	datad => \main_processor|Dpth|ALU|Mux23~4_combout\,
	combout => \main_processor|Dpth|ALU|Mux23~5_combout\);

-- Location: LCCOMB_X52_Y39_N6
\main_processor|Dpth|D1|data_out~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|D1|data_out~8_combout\ = (\main_processor|C1|present_state.state_2~q\ & (!\main_processor|C1|wen~1_combout\ & (\main_processor|C1|Mux23~0_combout\ & \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|present_state.state_2~q\,
	datab => \main_processor|C1|wen~1_combout\,
	datac => \main_processor|C1|Mux23~0_combout\,
	datad => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a8\,
	combout => \main_processor|Dpth|D1|data_out~8_combout\);

-- Location: FF_X53_Y39_N3
\main_processor|Dpth|D1|data_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|D1|data_out~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|D1|data_out\(8));

-- Location: LCCOMB_X52_Y39_N0
\main_processor|Dpth|M6|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux23~2_combout\ = (\main_processor|C1|DATA_Mux\(1) & (\main_processor|C1|DATA_Mux\(0))) # (!\main_processor|C1|DATA_Mux\(1) & ((\main_processor|C1|DATA_Mux\(0) & ((\main_processor|Dpth|D1|data_out\(8)))) # 
-- (!\main_processor|C1|DATA_Mux\(0) & (\main_memory|altsyncram_component|auto_generated|q_a\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_memory|altsyncram_component|auto_generated|q_a\(8),
	datad => \main_processor|Dpth|D1|data_out\(8),
	combout => \main_processor|Dpth|M6|Mux23~2_combout\);

-- Location: LCCOMB_X52_Y39_N30
\main_processor|Dpth|M6|Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux23~3_combout\ = (\main_processor|Dpth|M6|Mux23~2_combout\) # ((\main_processor|C1|DATA_Mux\(1) & (!\main_processor|C1|DATA_Mux\(0) & \main_processor|Dpth|ALU|Mux23~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_processor|Dpth|ALU|Mux23~5_combout\,
	datad => \main_processor|Dpth|M6|Mux23~2_combout\,
	combout => \main_processor|Dpth|M6|Mux23~3_combout\);

-- Location: LCCOMB_X53_Y35_N22
\main_processor|Dpth|D1|data_out~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|D1|data_out~12_combout\ = (\main_processor|C1|present_state.state_2~q\ & (!\main_processor|C1|wen~1_combout\ & (\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a12\ & \main_processor|C1|Mux23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|present_state.state_2~q\,
	datab => \main_processor|C1|wen~1_combout\,
	datac => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a12\,
	datad => \main_processor|C1|Mux23~0_combout\,
	combout => \main_processor|Dpth|D1|data_out~12_combout\);

-- Location: FF_X53_Y35_N23
\main_processor|Dpth|D1|data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|D1|data_out~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|D1|data_out\(12));

-- Location: LCCOMB_X52_Y35_N18
\main_processor|Dpth|M6|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux19~2_combout\ = (\main_processor|C1|DATA_Mux\(0) & ((\main_processor|C1|DATA_Mux\(1)) # ((\main_processor|Dpth|D1|data_out\(12))))) # (!\main_processor|C1|DATA_Mux\(0) & (!\main_processor|C1|DATA_Mux\(1) & 
-- (\main_memory|altsyncram_component|auto_generated|q_a\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(0),
	datab => \main_processor|C1|DATA_Mux\(1),
	datac => \main_memory|altsyncram_component|auto_generated|q_a\(12),
	datad => \main_processor|Dpth|D1|data_out\(12),
	combout => \main_processor|Dpth|M6|Mux19~2_combout\);

-- Location: LCCOMB_X52_Y35_N6
\main_processor|Dpth|M6|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux19~3_combout\ = (\main_processor|Dpth|M6|Mux19~2_combout\) # ((!\main_processor|C1|DATA_Mux\(0) & (\main_processor|C1|DATA_Mux\(1) & \main_processor|Dpth|ALU|Mux19~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(0),
	datab => \main_processor|C1|DATA_Mux\(1),
	datac => \main_processor|Dpth|ALU|Mux19~3_combout\,
	datad => \main_processor|Dpth|M6|Mux19~2_combout\,
	combout => \main_processor|Dpth|M6|Mux19~3_combout\);

-- Location: LCCOMB_X54_Y39_N26
\main_processor|Dpth|IR|Q32[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|IR|Q32[12]~feeder_combout\ = \main_processor|Dpth|M6|Mux19~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_processor|Dpth|M6|Mux19~3_combout\,
	combout => \main_processor|Dpth|IR|Q32[12]~feeder_combout\);

-- Location: FF_X54_Y39_N27
\main_processor|Dpth|IR|Q32[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|IR|Q32[12]~feeder_combout\,
	ena => \main_processor|C1|ALT_INV_ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|IR|Q32\(12));

-- Location: LCCOMB_X54_Y39_N16
\main_processor|Dpth|M5|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M5|Mux19~0_combout\ = (\main_processor|C1|IM_MUX2\(1) & (((\main_processor|C1|IM_MUX2\(0))))) # (!\main_processor|C1|IM_MUX2\(1) & ((\main_processor|C1|IM_MUX2\(0) & (\main_processor|Dpth|IR|Q32\(12))) # 
-- (!\main_processor|C1|IM_MUX2\(0) & ((\main_processor|Dpth|B|Q32\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|IM_MUX2\(1),
	datab => \main_processor|Dpth|IR|Q32\(12),
	datac => \main_processor|C1|IM_MUX2\(0),
	datad => \main_processor|Dpth|B|Q32\(12),
	combout => \main_processor|Dpth|M5|Mux19~0_combout\);

-- Location: LCCOMB_X55_Y38_N18
\main_processor|Dpth|ALU|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux19~0_combout\ = (\main_processor|C1|ALU_op\(2) & (((\main_processor|C1|ALU_op\(0))))) # (!\main_processor|C1|ALU_op\(2) & ((\main_processor|Dpth|M5|Mux19~0_combout\ & ((\main_processor|Dpth|M4|Out2[12]~12_combout\) # 
-- (\main_processor|C1|ALU_op\(0)))) # (!\main_processor|Dpth|M5|Mux19~0_combout\ & (\main_processor|Dpth|M4|Out2[12]~12_combout\ & \main_processor|C1|ALU_op\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(2),
	datab => \main_processor|Dpth|M5|Mux19~0_combout\,
	datac => \main_processor|Dpth|M4|Out2[12]~12_combout\,
	datad => \main_processor|C1|ALU_op\(0),
	combout => \main_processor|Dpth|ALU|Mux19~0_combout\);

-- Location: LCCOMB_X55_Y38_N24
\main_processor|Dpth|ALU|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux19~1_combout\ = (\main_processor|C1|ALU_op\(2) & ((\main_processor|Dpth|ALU|Mux19~0_combout\ & ((\main_processor|Dpth|M4|Out2[13]~13_combout\))) # (!\main_processor|Dpth|ALU|Mux19~0_combout\ & 
-- (\main_processor|Dpth|M4|Out2[11]~11_combout\)))) # (!\main_processor|C1|ALU_op\(2) & (((\main_processor|Dpth|ALU|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(2),
	datab => \main_processor|Dpth|M4|Out2[11]~11_combout\,
	datac => \main_processor|Dpth|M4|Out2[13]~13_combout\,
	datad => \main_processor|Dpth|ALU|Mux19~0_combout\,
	combout => \main_processor|Dpth|ALU|Mux19~1_combout\);

-- Location: LCCOMB_X55_Y38_N6
\main_processor|Dpth|ALU|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux19~2_combout\ = (\main_processor|C1|ALU_op\(1) & (((\main_processor|Dpth|ALU|Mux23~0_combout\ & \main_processor|Dpth|ALU|Add0~24_combout\)))) # (!\main_processor|C1|ALU_op\(1) & ((\main_processor|Dpth|ALU|Mux19~1_combout\) # 
-- ((\main_processor|Dpth|ALU|Mux23~0_combout\ & \main_processor|Dpth|ALU|Add0~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(1),
	datab => \main_processor|Dpth|ALU|Mux19~1_combout\,
	datac => \main_processor|Dpth|ALU|Mux23~0_combout\,
	datad => \main_processor|Dpth|ALU|Add0~24_combout\,
	combout => \main_processor|Dpth|ALU|Mux19~2_combout\);

-- Location: LCCOMB_X55_Y38_N4
\main_processor|Dpth|ALU|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux19~3_combout\ = (\main_processor|Dpth|ALU|Mux19~2_combout\) # ((\main_processor|Dpth|ALU|Mux23~1_combout\ & \main_processor|Dpth|ALU|Add1~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|ALU|Mux23~1_combout\,
	datac => \main_processor|Dpth|ALU|Add1~24_combout\,
	datad => \main_processor|Dpth|ALU|Mux19~2_combout\,
	combout => \main_processor|Dpth|ALU|Mux19~3_combout\);

-- Location: LCCOMB_X49_Y38_N24
\main_processor|Dpth|ALU|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Equal0~7_combout\ = (!\main_processor|Dpth|ALU|Mux19~3_combout\ & (!\main_processor|Dpth|ALU|Mux18~4_combout\ & (!\main_processor|Dpth|ALU|Mux20~4_combout\ & !\main_processor|Dpth|ALU|Mux21~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux19~3_combout\,
	datab => \main_processor|Dpth|ALU|Mux18~4_combout\,
	datac => \main_processor|Dpth|ALU|Mux20~4_combout\,
	datad => \main_processor|Dpth|ALU|Mux21~3_combout\,
	combout => \main_processor|Dpth|ALU|Equal0~7_combout\);

-- Location: LCCOMB_X49_Y38_N26
\main_processor|Dpth|ALU|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Equal0~8_combout\ = (!\main_processor|Dpth|ALU|Mux17~3_combout\ & (!\main_processor|Dpth|ALU|Mux16~4_combout\ & (!\main_processor|Dpth|ALU|Mux15~3_combout\ & !\main_processor|Dpth|ALU|Mux14~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux17~3_combout\,
	datab => \main_processor|Dpth|ALU|Mux16~4_combout\,
	datac => \main_processor|Dpth|ALU|Mux15~3_combout\,
	datad => \main_processor|Dpth|ALU|Mux14~4_combout\,
	combout => \main_processor|Dpth|ALU|Equal0~8_combout\);

-- Location: LCCOMB_X49_Y38_N20
\main_processor|Dpth|ALU|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Equal0~9_combout\ = (!\main_processor|Dpth|ALU|Mux11~3_combout\ & (!\main_processor|Dpth|ALU|Mux10~4_combout\ & (!\main_processor|Dpth|ALU|Mux12~4_combout\ & !\main_processor|Dpth|ALU|Mux13~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux11~3_combout\,
	datab => \main_processor|Dpth|ALU|Mux10~4_combout\,
	datac => \main_processor|Dpth|ALU|Mux12~4_combout\,
	datad => \main_processor|Dpth|ALU|Mux13~3_combout\,
	combout => \main_processor|Dpth|ALU|Equal0~9_combout\);

-- Location: LCCOMB_X49_Y38_N22
\main_processor|Dpth|ALU|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Equal0~10_combout\ = (!\main_processor|Dpth|ALU|Mux1~3_combout\ & (\main_processor|Dpth|ALU|Equal0~7_combout\ & (\main_processor|Dpth|ALU|Equal0~8_combout\ & \main_processor|Dpth|ALU|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux1~3_combout\,
	datab => \main_processor|Dpth|ALU|Equal0~7_combout\,
	datac => \main_processor|Dpth|ALU|Equal0~8_combout\,
	datad => \main_processor|Dpth|ALU|Equal0~9_combout\,
	combout => \main_processor|Dpth|ALU|Equal0~10_combout\);

-- Location: LCCOMB_X53_Y35_N10
\main_processor|Dpth|ALU|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Equal0~1_combout\ = (!\main_processor|Dpth|ALU|Mux31~3_combout\ & !\main_processor|Dpth|ALU|Mux30~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|ALU|Mux31~3_combout\,
	datad => \main_processor|Dpth|ALU|Mux30~10_combout\,
	combout => \main_processor|Dpth|ALU|Equal0~1_combout\);

-- Location: LCCOMB_X50_Y37_N26
\main_processor|Dpth|M4|Out2[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M4|Out2[31]~31_combout\ = (\main_processor|C1|IM_MUX1~combout\ & ((\main_processor|Dpth|IR|Q32\(15)))) # (!\main_processor|C1|IM_MUX1~combout\ & (\main_processor|Dpth|A|Q32\(31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|C1|IM_MUX1~combout\,
	datac => \main_processor|Dpth|A|Q32\(31),
	datad => \main_processor|Dpth|IR|Q32\(15),
	combout => \main_processor|Dpth|M4|Out2[31]~31_combout\);

-- Location: LCCOMB_X47_Y37_N26
\main_processor|Dpth|M5|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M5|Mux0~0_combout\ = (\main_processor|C1|IM_MUX2\(0) & ((\main_processor|C1|IM_MUX2\(1)))) # (!\main_processor|C1|IM_MUX2\(0) & (\main_processor|Dpth|B|Q32\(31) & !\main_processor|C1|IM_MUX2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|B|Q32\(31),
	datac => \main_processor|C1|IM_MUX2\(0),
	datad => \main_processor|C1|IM_MUX2\(1),
	combout => \main_processor|Dpth|M5|Mux0~0_combout\);

-- Location: LCCOMB_X53_Y36_N30
\main_processor|Dpth|M5|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M5|Mux1~0_combout\ = (\main_processor|C1|IM_MUX2\(0) & ((\main_processor|C1|IM_MUX2\(1)))) # (!\main_processor|C1|IM_MUX2\(0) & (\main_processor|Dpth|B|Q32\(30) & !\main_processor|C1|IM_MUX2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|IM_MUX2\(0),
	datab => \main_processor|Dpth|B|Q32\(30),
	datad => \main_processor|C1|IM_MUX2\(1),
	combout => \main_processor|Dpth|M5|Mux1~0_combout\);

-- Location: LCCOMB_X50_Y37_N18
\main_processor|Dpth|M5|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M5|Mux2~0_combout\ = (\main_processor|C1|IM_MUX2\(1) & ((\main_processor|C1|IM_MUX2\(0)))) # (!\main_processor|C1|IM_MUX2\(1) & (\main_processor|Dpth|B|Q32\(29) & !\main_processor|C1|IM_MUX2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|C1|IM_MUX2\(1),
	datac => \main_processor|Dpth|B|Q32\(29),
	datad => \main_processor|C1|IM_MUX2\(0),
	combout => \main_processor|Dpth|M5|Mux2~0_combout\);

-- Location: LCCOMB_X50_Y37_N10
\main_processor|Dpth|ALU|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add1~58_combout\ = (\main_processor|Dpth|M4|Out2[29]~29_combout\ & ((\main_processor|Dpth|M5|Mux2~0_combout\ & (!\main_processor|Dpth|ALU|Add1~57\)) # (!\main_processor|Dpth|M5|Mux2~0_combout\ & (\main_processor|Dpth|ALU|Add1~57\ 
-- & VCC)))) # (!\main_processor|Dpth|M4|Out2[29]~29_combout\ & ((\main_processor|Dpth|M5|Mux2~0_combout\ & ((\main_processor|Dpth|ALU|Add1~57\) # (GND))) # (!\main_processor|Dpth|M5|Mux2~0_combout\ & (!\main_processor|Dpth|ALU|Add1~57\))))
-- \main_processor|Dpth|ALU|Add1~59\ = CARRY((\main_processor|Dpth|M4|Out2[29]~29_combout\ & (\main_processor|Dpth|M5|Mux2~0_combout\ & !\main_processor|Dpth|ALU|Add1~57\)) # (!\main_processor|Dpth|M4|Out2[29]~29_combout\ & 
-- ((\main_processor|Dpth|M5|Mux2~0_combout\) # (!\main_processor|Dpth|ALU|Add1~57\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[29]~29_combout\,
	datab => \main_processor|Dpth|M5|Mux2~0_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add1~57\,
	combout => \main_processor|Dpth|ALU|Add1~58_combout\,
	cout => \main_processor|Dpth|ALU|Add1~59\);

-- Location: LCCOMB_X50_Y37_N12
\main_processor|Dpth|ALU|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add1~60_combout\ = ((\main_processor|Dpth|M4|Out2[30]~30_combout\ $ (\main_processor|Dpth|M5|Mux1~0_combout\ $ (\main_processor|Dpth|ALU|Add1~59\)))) # (GND)
-- \main_processor|Dpth|ALU|Add1~61\ = CARRY((\main_processor|Dpth|M4|Out2[30]~30_combout\ & ((!\main_processor|Dpth|ALU|Add1~59\) # (!\main_processor|Dpth|M5|Mux1~0_combout\))) # (!\main_processor|Dpth|M4|Out2[30]~30_combout\ & 
-- (!\main_processor|Dpth|M5|Mux1~0_combout\ & !\main_processor|Dpth|ALU|Add1~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[30]~30_combout\,
	datab => \main_processor|Dpth|M5|Mux1~0_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add1~59\,
	combout => \main_processor|Dpth|ALU|Add1~60_combout\,
	cout => \main_processor|Dpth|ALU|Add1~61\);

-- Location: LCCOMB_X50_Y37_N14
\main_processor|Dpth|ALU|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add1~62_combout\ = (\main_processor|Dpth|M4|Out2[31]~31_combout\ & ((\main_processor|Dpth|M5|Mux0~0_combout\ & (!\main_processor|Dpth|ALU|Add1~61\)) # (!\main_processor|Dpth|M5|Mux0~0_combout\ & (\main_processor|Dpth|ALU|Add1~61\ 
-- & VCC)))) # (!\main_processor|Dpth|M4|Out2[31]~31_combout\ & ((\main_processor|Dpth|M5|Mux0~0_combout\ & ((\main_processor|Dpth|ALU|Add1~61\) # (GND))) # (!\main_processor|Dpth|M5|Mux0~0_combout\ & (!\main_processor|Dpth|ALU|Add1~61\))))
-- \main_processor|Dpth|ALU|Add1~63\ = CARRY((\main_processor|Dpth|M4|Out2[31]~31_combout\ & (\main_processor|Dpth|M5|Mux0~0_combout\ & !\main_processor|Dpth|ALU|Add1~61\)) # (!\main_processor|Dpth|M4|Out2[31]~31_combout\ & 
-- ((\main_processor|Dpth|M5|Mux0~0_combout\) # (!\main_processor|Dpth|ALU|Add1~61\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[31]~31_combout\,
	datab => \main_processor|Dpth|M5|Mux0~0_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add1~61\,
	combout => \main_processor|Dpth|ALU|Add1~62_combout\,
	cout => \main_processor|Dpth|ALU|Add1~63\);

-- Location: LCCOMB_X53_Y37_N10
\main_processor|Dpth|ALU|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add0~58_combout\ = (\main_processor|Dpth|M5|Mux2~0_combout\ & ((\main_processor|Dpth|M4|Out2[29]~29_combout\ & (\main_processor|Dpth|ALU|Add0~57\ & VCC)) # (!\main_processor|Dpth|M4|Out2[29]~29_combout\ & 
-- (!\main_processor|Dpth|ALU|Add0~57\)))) # (!\main_processor|Dpth|M5|Mux2~0_combout\ & ((\main_processor|Dpth|M4|Out2[29]~29_combout\ & (!\main_processor|Dpth|ALU|Add0~57\)) # (!\main_processor|Dpth|M4|Out2[29]~29_combout\ & 
-- ((\main_processor|Dpth|ALU|Add0~57\) # (GND)))))
-- \main_processor|Dpth|ALU|Add0~59\ = CARRY((\main_processor|Dpth|M5|Mux2~0_combout\ & (!\main_processor|Dpth|M4|Out2[29]~29_combout\ & !\main_processor|Dpth|ALU|Add0~57\)) # (!\main_processor|Dpth|M5|Mux2~0_combout\ & ((!\main_processor|Dpth|ALU|Add0~57\) 
-- # (!\main_processor|Dpth|M4|Out2[29]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux2~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[29]~29_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add0~57\,
	combout => \main_processor|Dpth|ALU|Add0~58_combout\,
	cout => \main_processor|Dpth|ALU|Add0~59\);

-- Location: LCCOMB_X53_Y37_N12
\main_processor|Dpth|ALU|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add0~60_combout\ = ((\main_processor|Dpth|M5|Mux1~0_combout\ $ (\main_processor|Dpth|M4|Out2[30]~30_combout\ $ (!\main_processor|Dpth|ALU|Add0~59\)))) # (GND)
-- \main_processor|Dpth|ALU|Add0~61\ = CARRY((\main_processor|Dpth|M5|Mux1~0_combout\ & ((\main_processor|Dpth|M4|Out2[30]~30_combout\) # (!\main_processor|Dpth|ALU|Add0~59\))) # (!\main_processor|Dpth|M5|Mux1~0_combout\ & 
-- (\main_processor|Dpth|M4|Out2[30]~30_combout\ & !\main_processor|Dpth|ALU|Add0~59\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux1~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[30]~30_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add0~59\,
	combout => \main_processor|Dpth|ALU|Add0~60_combout\,
	cout => \main_processor|Dpth|ALU|Add0~61\);

-- Location: LCCOMB_X53_Y37_N14
\main_processor|Dpth|ALU|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add0~62_combout\ = (\main_processor|Dpth|M4|Out2[31]~31_combout\ & ((\main_processor|Dpth|M5|Mux0~0_combout\ & (\main_processor|Dpth|ALU|Add0~61\ & VCC)) # (!\main_processor|Dpth|M5|Mux0~0_combout\ & 
-- (!\main_processor|Dpth|ALU|Add0~61\)))) # (!\main_processor|Dpth|M4|Out2[31]~31_combout\ & ((\main_processor|Dpth|M5|Mux0~0_combout\ & (!\main_processor|Dpth|ALU|Add0~61\)) # (!\main_processor|Dpth|M5|Mux0~0_combout\ & ((\main_processor|Dpth|ALU|Add0~61\) 
-- # (GND)))))
-- \main_processor|Dpth|ALU|Add0~63\ = CARRY((\main_processor|Dpth|M4|Out2[31]~31_combout\ & (!\main_processor|Dpth|M5|Mux0~0_combout\ & !\main_processor|Dpth|ALU|Add0~61\)) # (!\main_processor|Dpth|M4|Out2[31]~31_combout\ & 
-- ((!\main_processor|Dpth|ALU|Add0~61\) # (!\main_processor|Dpth|M5|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[31]~31_combout\,
	datab => \main_processor|Dpth|M5|Mux0~0_combout\,
	datad => VCC,
	cin => \main_processor|Dpth|ALU|Add0~61\,
	combout => \main_processor|Dpth|ALU|Add0~62_combout\,
	cout => \main_processor|Dpth|ALU|Add0~63\);

-- Location: LCCOMB_X50_Y37_N30
\main_processor|Dpth|ALU|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux0~3_combout\ = (\main_processor|Dpth|ALU|Mux23~0_combout\ & ((\main_processor|Dpth|ALU|Add0~62_combout\) # ((\main_processor|Dpth|ALU|Mux23~1_combout\ & \main_processor|Dpth|ALU|Add1~62_combout\)))) # 
-- (!\main_processor|Dpth|ALU|Mux23~0_combout\ & (\main_processor|Dpth|ALU|Mux23~1_combout\ & (\main_processor|Dpth|ALU|Add1~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux23~0_combout\,
	datab => \main_processor|Dpth|ALU|Mux23~1_combout\,
	datac => \main_processor|Dpth|ALU|Add1~62_combout\,
	datad => \main_processor|Dpth|ALU|Add0~62_combout\,
	combout => \main_processor|Dpth|ALU|Mux0~3_combout\);

-- Location: LCCOMB_X50_Y37_N22
\main_processor|Dpth|ALU|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Equal0~2_combout\ = (\main_processor|Dpth|ALU|Equal0~1_combout\ & (!\main_processor|Dpth|ALU|Mux4~4_combout\ & (!\main_processor|Dpth|ALU|Mux0~3_combout\ & !\main_processor|Dpth|ALU|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Equal0~1_combout\,
	datab => \main_processor|Dpth|ALU|Mux4~4_combout\,
	datac => \main_processor|Dpth|ALU|Mux0~3_combout\,
	datad => \main_processor|Dpth|ALU|Mux0~2_combout\,
	combout => \main_processor|Dpth|ALU|Equal0~2_combout\);

-- Location: LCCOMB_X52_Y34_N8
\main_processor|Dpth|ALU|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Equal0~0_combout\ = (!\main_processor|Dpth|ALU|Mux8~4_combout\ & (!\main_processor|Dpth|ALU|Mux6~4_combout\ & (!\main_processor|Dpth|ALU|Mux9~3_combout\ & !\main_processor|Dpth|ALU|Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux8~4_combout\,
	datab => \main_processor|Dpth|ALU|Mux6~4_combout\,
	datac => \main_processor|Dpth|ALU|Mux9~3_combout\,
	datad => \main_processor|Dpth|ALU|Mux7~3_combout\,
	combout => \main_processor|Dpth|ALU|Equal0~0_combout\);

-- Location: LCCOMB_X52_Y39_N24
\main_processor|Dpth|ALU|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Equal0~4_combout\ = (!\main_processor|Dpth|ALU|Mux22~5_combout\ & (!\main_processor|Dpth|ALU|Mux23~5_combout\ & ((!\main_processor|Dpth|ALU|Add1~18_combout\) # (!\main_processor|Dpth|ALU|Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux22~5_combout\,
	datab => \main_processor|Dpth|ALU|Mux23~1_combout\,
	datac => \main_processor|Dpth|ALU|Mux23~5_combout\,
	datad => \main_processor|Dpth|ALU|Add1~18_combout\,
	combout => \main_processor|Dpth|ALU|Equal0~4_combout\);

-- Location: LCCOMB_X49_Y39_N24
\main_processor|Dpth|ALU|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Equal0~3_combout\ = (!\main_processor|Dpth|ALU|Mux29~10_combout\ & (!\main_processor|Dpth|ALU|Mux28~10_combout\ & (!\main_processor|Dpth|ALU|Mux27~10_combout\ & !\main_processor|Dpth|ALU|Mux26~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux29~10_combout\,
	datab => \main_processor|Dpth|ALU|Mux28~10_combout\,
	datac => \main_processor|Dpth|ALU|Mux27~10_combout\,
	datad => \main_processor|Dpth|ALU|Mux26~10_combout\,
	combout => \main_processor|Dpth|ALU|Equal0~3_combout\);

-- Location: LCCOMB_X49_Y39_N22
\main_processor|Dpth|ALU|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Equal0~5_combout\ = (\main_processor|Dpth|ALU|Equal0~4_combout\ & (!\main_processor|Dpth|ALU|Mux24~10_combout\ & (!\main_processor|Dpth|ALU|Mux25~10_combout\ & \main_processor|Dpth|ALU|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Equal0~4_combout\,
	datab => \main_processor|Dpth|ALU|Mux24~10_combout\,
	datac => \main_processor|Dpth|ALU|Mux25~10_combout\,
	datad => \main_processor|Dpth|ALU|Equal0~3_combout\,
	combout => \main_processor|Dpth|ALU|Equal0~5_combout\);

-- Location: LCCOMB_X49_Y39_N8
\main_processor|Dpth|ALU|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Equal0~6_combout\ = (\main_processor|Dpth|ALU|Equal0~5_combout\ & (!\main_processor|Dpth|ALU|Mux5~3_combout\ & (!\main_processor|Dpth|ALU|Mux3~3_combout\ & !\main_processor|Dpth|ALU|Mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Equal0~5_combout\,
	datab => \main_processor|Dpth|ALU|Mux5~3_combout\,
	datac => \main_processor|Dpth|ALU|Mux3~3_combout\,
	datad => \main_processor|Dpth|ALU|Mux2~4_combout\,
	combout => \main_processor|Dpth|ALU|Equal0~6_combout\);

-- Location: LCCOMB_X49_Y38_N0
\main_processor|Dpth|ALU|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Equal0~11_combout\ = (\main_processor|Dpth|ALU|Equal0~10_combout\ & (\main_processor|Dpth|ALU|Equal0~2_combout\ & (\main_processor|Dpth|ALU|Equal0~0_combout\ & \main_processor|Dpth|ALU|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Equal0~10_combout\,
	datab => \main_processor|Dpth|ALU|Equal0~2_combout\,
	datac => \main_processor|Dpth|ALU|Equal0~0_combout\,
	datad => \main_processor|Dpth|ALU|Equal0~6_combout\,
	combout => \main_processor|Dpth|ALU|Equal0~11_combout\);

-- Location: LCCOMB_X54_Y37_N20
\main_processor|C1|clr_A~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|clr_A~0_combout\ = (\main_processor|R1|Enable_PD~q\ & (\main_processor|Dpth|IR|Q32\(30) & (!\main_processor|Dpth|IR|Q32\(31) & \main_processor|C1|present_state.state_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|R1|Enable_PD~q\,
	datab => \main_processor|Dpth|IR|Q32\(30),
	datac => \main_processor|Dpth|IR|Q32\(31),
	datad => \main_processor|C1|present_state.state_2~q\,
	combout => \main_processor|C1|clr_A~0_combout\);

-- Location: LCCOMB_X55_Y37_N22
\main_processor|C1|clr_Z~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|clr_Z~0_combout\ = (\main_processor|Dpth|IR|Q32\(27) & (!\main_processor|Dpth|IR|Q32\(26) & (!\main_processor|Dpth|IR|Q32\(25) & !\main_processor|Dpth|IR|Q32\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(27),
	datab => \main_processor|Dpth|IR|Q32\(26),
	datac => \main_processor|Dpth|IR|Q32\(25),
	datad => \main_processor|Dpth|IR|Q32\(24),
	combout => \main_processor|C1|clr_Z~0_combout\);

-- Location: LCCOMB_X55_Y37_N24
\main_processor|C1|clr_Z~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|clr_Z~1_combout\ = (\main_processor|C1|clr_A~0_combout\ & (\main_processor|Dpth|IR|Q32\(29) & (\main_processor|C1|clr_Z~0_combout\ & \main_processor|Dpth|IR|Q32\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|clr_A~0_combout\,
	datab => \main_processor|Dpth|IR|Q32\(29),
	datac => \main_processor|C1|clr_Z~0_combout\,
	datad => \main_processor|Dpth|IR|Q32\(28),
	combout => \main_processor|C1|clr_Z~1_combout\);

-- Location: LCCOMB_X55_Y37_N28
\main_processor|C1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|Mux6~0_combout\ = (\main_processor|Dpth|IR|Q32\(25) & (\main_processor|Dpth|IR|Q32\(26) $ (((\main_processor|Dpth|IR|Q32\(27)))))) # (!\main_processor|Dpth|IR|Q32\(25) & ((\main_processor|Dpth|IR|Q32\(27)) # 
-- ((\main_processor|Dpth|IR|Q32\(26) & \main_processor|Dpth|IR|Q32\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(25),
	datab => \main_processor|Dpth|IR|Q32\(26),
	datac => \main_processor|Dpth|IR|Q32\(24),
	datad => \main_processor|Dpth|IR|Q32\(27),
	combout => \main_processor|C1|Mux6~0_combout\);

-- Location: LCCOMB_X54_Y37_N16
\main_processor|C1|ld_C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|ld_C~0_combout\ = (\main_processor|C1|clr_A~0_combout\ & ((\main_processor|Dpth|IR|Q32\(28) & (!\main_processor|C1|Mux6~0_combout\ & \main_processor|Dpth|IR|Q32\(29))) # (!\main_processor|Dpth|IR|Q32\(28) & 
-- ((!\main_processor|Dpth|IR|Q32\(29))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(28),
	datab => \main_processor|C1|Mux6~0_combout\,
	datac => \main_processor|Dpth|IR|Q32\(29),
	datad => \main_processor|C1|clr_A~0_combout\,
	combout => \main_processor|C1|ld_C~0_combout\);

-- Location: FF_X49_Y38_N1
\main_processor|Dpth|Z|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|ALU|Equal0~11_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_Z~1_combout\,
	ena => \main_processor|C1|ld_C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|Z|Q~q\);

-- Location: LCCOMB_X54_Y34_N16
\main_processor|Dpth|ProgCount|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|process_0~2_combout\ = (\main_processor|Dpth|ProgCount|process_0~0_combout\ & ((\main_processor|Dpth|IR|Q32\(28) & (!\main_processor|Dpth|IR|Q32\(29))) # (!\main_processor|Dpth|IR|Q32\(28) & (\main_processor|Dpth|IR|Q32\(29) 
-- & \main_processor|Dpth|Z|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(28),
	datab => \main_processor|Dpth|ProgCount|process_0~0_combout\,
	datac => \main_processor|Dpth|IR|Q32\(29),
	datad => \main_processor|Dpth|Z|Q~q\,
	combout => \main_processor|Dpth|ProgCount|process_0~2_combout\);

-- Location: LCCOMB_X54_Y34_N10
\main_processor|Dpth|ProgCount|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|process_0~3_combout\ = (!\main_processor|Dpth|IR|Q32\(28) & (\main_processor|Dpth|IR|Q32\(31) & (!\main_processor|Dpth|IR|Q32\(29) & !\main_processor|Dpth|IR|Q32\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(28),
	datab => \main_processor|Dpth|IR|Q32\(31),
	datac => \main_processor|Dpth|IR|Q32\(29),
	datad => \main_processor|Dpth|IR|Q32\(30),
	combout => \main_processor|Dpth|ProgCount|process_0~3_combout\);

-- Location: LCCOMB_X54_Y34_N28
\main_processor|Dpth|ProgCount|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|process_0~4_combout\ = (\main_processor|C1|present_state.state_2~q\ & ((\main_processor|Dpth|ProgCount|process_0~2_combout\) # ((!\main_processor|Dpth|Z|Q~q\ & \main_processor|Dpth|ProgCount|process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|present_state.state_2~q\,
	datab => \main_processor|Dpth|ProgCount|process_0~2_combout\,
	datac => \main_processor|Dpth|Z|Q~q\,
	datad => \main_processor|Dpth|ProgCount|process_0~3_combout\,
	combout => \main_processor|Dpth|ProgCount|process_0~4_combout\);

-- Location: LCCOMB_X53_Y29_N30
\main_processor|Dpth|ProgCount|q~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q~32_combout\ = ((!\main_processor|Dpth|ProgCount|process_0~4_combout\ & !\main_processor|C1|present_state.state_1~q\)) # (!\main_processor|R1|Enable_PD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|process_0~4_combout\,
	datab => \main_processor|C1|present_state.state_1~q\,
	datad => \main_processor|R1|Enable_PD~q\,
	combout => \main_processor|Dpth|ProgCount|q~32_combout\);

-- Location: FF_X53_Y29_N15
\main_processor|Dpth|ProgCount|q[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|ProgCount|q[1]~1_combout\,
	asdata => \main_processor|Dpth|ProgCount|q[1]~reg0_q\,
	sclr => \main_processor|R1|Clr_PC~q\,
	sload => \main_processor|Dpth|ProgCount|q~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|ProgCount|q[1]~reg0_q\);

-- Location: LCCOMB_X49_Y37_N18
\main_processor|Dpth|D1|data_out~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|D1|data_out~26_combout\ = (\main_processor|C1|Mux23~0_combout\ & (\main_processor|C1|present_state.state_2~q\ & (\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a26\ & !\main_processor|C1|wen~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|Mux23~0_combout\,
	datab => \main_processor|C1|present_state.state_2~q\,
	datac => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a26\,
	datad => \main_processor|C1|wen~1_combout\,
	combout => \main_processor|Dpth|D1|data_out~26_combout\);

-- Location: FF_X49_Y37_N19
\main_processor|Dpth|D1|data_out[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|D1|data_out~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|D1|data_out\(26));

-- Location: LCCOMB_X49_Y37_N28
\main_processor|Dpth|M6|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux5~2_combout\ = (\main_processor|C1|DATA_Mux\(0) & ((\main_processor|C1|DATA_Mux\(1)) # ((\main_processor|Dpth|D1|data_out\(26))))) # (!\main_processor|C1|DATA_Mux\(0) & (!\main_processor|C1|DATA_Mux\(1) & 
-- (\main_memory|altsyncram_component|auto_generated|q_a\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(0),
	datab => \main_processor|C1|DATA_Mux\(1),
	datac => \main_memory|altsyncram_component|auto_generated|q_a\(26),
	datad => \main_processor|Dpth|D1|data_out\(26),
	combout => \main_processor|Dpth|M6|Mux5~2_combout\);

-- Location: LCCOMB_X49_Y37_N22
\main_processor|Dpth|M2|Out2[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M2|Out2[26]~26_combout\ = (!\main_processor|C1|A_Mux~combout\ & ((\main_processor|Dpth|M6|Mux5~2_combout\) # ((\main_processor|Dpth|ALU|Mux5~3_combout\ & \main_processor|Dpth|M6|Mux31~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|A_Mux~combout\,
	datab => \main_processor|Dpth|ALU|Mux5~3_combout\,
	datac => \main_processor|Dpth|M6|Mux31~3_combout\,
	datad => \main_processor|Dpth|M6|Mux5~2_combout\,
	combout => \main_processor|Dpth|M2|Out2[26]~26_combout\);

-- Location: LCCOMB_X47_Y37_N8
\main_processor|Dpth|B|Q32[26]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|B|Q32[26]~feeder_combout\ = \main_processor|Dpth|M2|Out2[26]~26_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_processor|Dpth|M2|Out2[26]~26_combout\,
	combout => \main_processor|Dpth|B|Q32[26]~feeder_combout\);

-- Location: FF_X47_Y37_N9
\main_processor|Dpth|B|Q32[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|B|Q32[26]~feeder_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_B~1_combout\,
	ena => \main_processor|C1|ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|B|Q32\(26));

-- Location: LCCOMB_X47_Y37_N28
\main_processor|Dpth|M5|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M5|Mux5~0_combout\ = (\main_processor|C1|IM_MUX2\(0) & ((\main_processor|C1|IM_MUX2\(1)))) # (!\main_processor|C1|IM_MUX2\(0) & (\main_processor|Dpth|B|Q32\(26) & !\main_processor|C1|IM_MUX2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|B|Q32\(26),
	datac => \main_processor|C1|IM_MUX2\(0),
	datad => \main_processor|C1|IM_MUX2\(1),
	combout => \main_processor|Dpth|M5|Mux5~0_combout\);

-- Location: LCCOMB_X49_Y37_N26
\main_processor|Dpth|ALU|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux5~0_combout\ = (\main_processor|C1|ALU_op\(0) & ((\main_processor|Dpth|M4|Out2[26]~26_combout\) # ((\main_processor|C1|ALU_op\(2)) # (\main_processor|Dpth|M5|Mux5~0_combout\)))) # (!\main_processor|C1|ALU_op\(0) & 
-- (\main_processor|Dpth|M4|Out2[26]~26_combout\ & (!\main_processor|C1|ALU_op\(2) & \main_processor|Dpth|M5|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(0),
	datab => \main_processor|Dpth|M4|Out2[26]~26_combout\,
	datac => \main_processor|C1|ALU_op\(2),
	datad => \main_processor|Dpth|M5|Mux5~0_combout\,
	combout => \main_processor|Dpth|ALU|Mux5~0_combout\);

-- Location: LCCOMB_X49_Y37_N8
\main_processor|Dpth|ALU|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux5~1_combout\ = (\main_processor|Dpth|ALU|Mux5~0_combout\ & (((\main_processor|Dpth|M4|Out2[27]~27_combout\) # (!\main_processor|C1|ALU_op\(2))))) # (!\main_processor|Dpth|ALU|Mux5~0_combout\ & 
-- (\main_processor|Dpth|M4|Out2[25]~25_combout\ & (\main_processor|C1|ALU_op\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux5~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[25]~25_combout\,
	datac => \main_processor|C1|ALU_op\(2),
	datad => \main_processor|Dpth|M4|Out2[27]~27_combout\,
	combout => \main_processor|Dpth|ALU|Mux5~1_combout\);

-- Location: LCCOMB_X49_Y37_N14
\main_processor|Dpth|ALU|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux5~2_combout\ = (\main_processor|C1|ALU_op\(1) & (\main_processor|Dpth|ALU|Mux23~0_combout\ & ((\main_processor|Dpth|ALU|Add0~52_combout\)))) # (!\main_processor|C1|ALU_op\(1) & ((\main_processor|Dpth|ALU|Mux5~1_combout\) # 
-- ((\main_processor|Dpth|ALU|Mux23~0_combout\ & \main_processor|Dpth|ALU|Add0~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(1),
	datab => \main_processor|Dpth|ALU|Mux23~0_combout\,
	datac => \main_processor|Dpth|ALU|Mux5~1_combout\,
	datad => \main_processor|Dpth|ALU|Add0~52_combout\,
	combout => \main_processor|Dpth|ALU|Mux5~2_combout\);

-- Location: LCCOMB_X49_Y37_N4
\main_processor|Dpth|ALU|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux5~3_combout\ = (\main_processor|Dpth|ALU|Mux5~2_combout\) # ((\main_processor|Dpth|ALU|Add1~52_combout\ & \main_processor|Dpth|ALU|Mux23~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Add1~52_combout\,
	datab => \main_processor|Dpth|ALU|Mux23~1_combout\,
	datac => \main_processor|Dpth|ALU|Mux5~2_combout\,
	combout => \main_processor|Dpth|ALU|Mux5~3_combout\);

-- Location: LCCOMB_X49_Y37_N10
\main_processor|Dpth|M6|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux5~3_combout\ = (\main_processor|Dpth|M6|Mux5~2_combout\) # ((!\main_processor|C1|DATA_Mux\(0) & (\main_processor|C1|DATA_Mux\(1) & \main_processor|Dpth|ALU|Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(0),
	datab => \main_processor|C1|DATA_Mux\(1),
	datac => \main_processor|Dpth|ALU|Mux5~3_combout\,
	datad => \main_processor|Dpth|M6|Mux5~2_combout\,
	combout => \main_processor|Dpth|M6|Mux5~3_combout\);

-- Location: FF_X54_Y37_N23
\main_processor|Dpth|IR|Q32[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M6|Mux5~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ALT_INV_ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|IR|Q32\(26));

-- Location: LCCOMB_X58_Y37_N4
\main_processor|C1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|Mux3~0_combout\ = (\main_processor|Dpth|IR|Q32\(24) & (!\main_processor|Dpth|IR|Q32\(27) & ((\main_processor|Dpth|IR|Q32\(26))))) # (!\main_processor|Dpth|IR|Q32\(24) & (\main_processor|Dpth|IR|Q32\(27) $ 
-- (((\main_processor|Dpth|IR|Q32\(25) & \main_processor|Dpth|IR|Q32\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(27),
	datab => \main_processor|Dpth|IR|Q32\(25),
	datac => \main_processor|Dpth|IR|Q32\(24),
	datad => \main_processor|Dpth|IR|Q32\(26),
	combout => \main_processor|C1|Mux3~0_combout\);

-- Location: LCCOMB_X54_Y34_N26
\main_processor|C1|ld_A~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|ld_A~1_combout\ = (\main_processor|Dpth|ProgCount|process_0~0_combout\ & (((\main_processor|Dpth|IR|Q32\(28) & !\main_processor|C1|Mux3~0_combout\)) # (!\main_processor|Dpth|IR|Q32\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(28),
	datab => \main_processor|Dpth|ProgCount|process_0~0_combout\,
	datac => \main_processor|Dpth|IR|Q32\(29),
	datad => \main_processor|C1|Mux3~0_combout\,
	combout => \main_processor|C1|ld_A~1_combout\);

-- Location: LCCOMB_X54_Y34_N12
\main_processor|C1|ld_A~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|ld_A~0_combout\ = (!\main_processor|Dpth|IR|Q32\(30) & (!\main_processor|Dpth|IR|Q32\(29) & (\main_processor|Dpth|IR|Q32\(28) & \main_processor|Dpth|IR|Q32\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(30),
	datab => \main_processor|Dpth|IR|Q32\(29),
	datac => \main_processor|Dpth|IR|Q32\(28),
	datad => \main_processor|Dpth|IR|Q32\(31),
	combout => \main_processor|C1|ld_A~0_combout\);

-- Location: LCCOMB_X54_Y34_N8
\main_processor|C1|ld_A~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|ld_A~2_combout\ = (\main_processor|C1|present_state.state_2~q\ & ((\main_processor|C1|ld_A~1_combout\) # (\main_processor|C1|ld_A~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|C1|present_state.state_2~q\,
	datac => \main_processor|C1|ld_A~1_combout\,
	datad => \main_processor|C1|ld_A~0_combout\,
	combout => \main_processor|C1|ld_A~2_combout\);

-- Location: LCCOMB_X54_Y34_N18
\main_processor|C1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|Mux0~0_combout\ = (\main_processor|Dpth|IR|Q32\(29)) # ((\main_processor|Dpth|IR|Q32\(30)) # (\main_processor|Dpth|IR|Q32\(28) $ (\main_processor|Dpth|IR|Q32\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(28),
	datab => \main_processor|Dpth|IR|Q32\(31),
	datac => \main_processor|Dpth|IR|Q32\(29),
	datad => \main_processor|Dpth|IR|Q32\(30),
	combout => \main_processor|C1|Mux0~0_combout\);

-- Location: LCCOMB_X53_Y34_N24
\main_processor|C1|ld_A~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|ld_A~3_combout\ = (\main_processor|R1|Enable_PD~q\ & ((\main_processor|C1|ld_A~2_combout\) # ((\main_processor|C1|present_state.state_1~q\ & !\main_processor|C1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ld_A~2_combout\,
	datab => \main_processor|C1|present_state.state_1~q\,
	datac => \main_processor|R1|Enable_PD~q\,
	datad => \main_processor|C1|Mux0~0_combout\,
	combout => \main_processor|C1|ld_A~3_combout\);

-- Location: FF_X52_Y36_N17
\main_processor|Dpth|A|Q32[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[7]~7_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_A~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_A~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|A|Q32\(7));

-- Location: LCCOMB_X52_Y40_N10
\main_processor|Dpth|ALU|Mux25~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux25~11_combout\ = (!\main_processor|C1|IM_MUX1~combout\ & ((\main_processor|C1|ALU_op\(0) & (\main_processor|Dpth|A|Q32\(7))) # (!\main_processor|C1|ALU_op\(0) & ((\main_processor|Dpth|A|Q32\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(0),
	datab => \main_processor|Dpth|A|Q32\(7),
	datac => \main_processor|C1|IM_MUX1~combout\,
	datad => \main_processor|Dpth|A|Q32\(5),
	combout => \main_processor|Dpth|ALU|Mux25~11_combout\);

-- Location: LCCOMB_X52_Y39_N18
\main_processor|Dpth|ALU|Mux25~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux25~8_combout\ = (\main_processor|C1|ALU_op\(1) & ((\main_processor|C1|ALU_op\(2) & ((\main_processor|Dpth|ALU|Add1~12_combout\))) # (!\main_processor|C1|ALU_op\(2) & (\main_processor|Dpth|ALU|Add0~12_combout\)))) # 
-- (!\main_processor|C1|ALU_op\(1) & (\main_processor|C1|ALU_op\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(1),
	datab => \main_processor|C1|ALU_op\(2),
	datac => \main_processor|Dpth|ALU|Add0~12_combout\,
	datad => \main_processor|Dpth|ALU|Add1~12_combout\,
	combout => \main_processor|Dpth|ALU|Mux25~8_combout\);

-- Location: LCCOMB_X52_Y39_N2
\main_processor|Dpth|ALU|Mux25~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux25~10_combout\ = (\main_processor|C1|ALU_op\(1) & (!\main_processor|Dpth|ALU|Mux25~9_combout\ & ((\main_processor|Dpth|ALU|Mux25~8_combout\)))) # (!\main_processor|C1|ALU_op\(1) & ((\main_processor|Dpth|ALU|Mux25~8_combout\ & 
-- ((\main_processor|Dpth|ALU|Mux25~11_combout\))) # (!\main_processor|Dpth|ALU|Mux25~8_combout\ & (\main_processor|Dpth|ALU|Mux25~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(1),
	datab => \main_processor|Dpth|ALU|Mux25~9_combout\,
	datac => \main_processor|Dpth|ALU|Mux25~11_combout\,
	datad => \main_processor|Dpth|ALU|Mux25~8_combout\,
	combout => \main_processor|Dpth|ALU|Mux25~10_combout\);

-- Location: LCCOMB_X54_Y39_N12
\main_processor|Dpth|D1|data_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|D1|data_out~6_combout\ = (\main_processor|C1|present_state.state_2~q\ & (!\main_processor|C1|wen~1_combout\ & (\main_processor|C1|Mux23~0_combout\ & \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|present_state.state_2~q\,
	datab => \main_processor|C1|wen~1_combout\,
	datac => \main_processor|C1|Mux23~0_combout\,
	datad => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a6\,
	combout => \main_processor|Dpth|D1|data_out~6_combout\);

-- Location: FF_X54_Y39_N13
\main_processor|Dpth|D1|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|D1|data_out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|D1|data_out\(6));

-- Location: LCCOMB_X52_Y39_N12
\main_processor|Dpth|M6|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux25~2_combout\ = (\main_processor|C1|DATA_Mux\(1) & (\main_processor|C1|DATA_Mux\(0))) # (!\main_processor|C1|DATA_Mux\(1) & ((\main_processor|C1|DATA_Mux\(0) & ((\main_processor|Dpth|D1|data_out\(6)))) # 
-- (!\main_processor|C1|DATA_Mux\(0) & (\main_memory|altsyncram_component|auto_generated|q_a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_memory|altsyncram_component|auto_generated|q_a\(6),
	datad => \main_processor|Dpth|D1|data_out\(6),
	combout => \main_processor|Dpth|M6|Mux25~2_combout\);

-- Location: LCCOMB_X52_Y39_N28
\main_processor|Dpth|M6|Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux25~3_combout\ = (\main_processor|Dpth|M6|Mux25~2_combout\) # ((\main_processor|C1|DATA_Mux\(1) & (!\main_processor|C1|DATA_Mux\(0) & \main_processor|Dpth|ALU|Mux25~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_processor|Dpth|ALU|Mux25~10_combout\,
	datad => \main_processor|Dpth|M6|Mux25~2_combout\,
	combout => \main_processor|Dpth|M6|Mux25~3_combout\);

-- Location: LCCOMB_X54_Y39_N20
\main_processor|Dpth|IR|Q32[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|IR|Q32[6]~feeder_combout\ = \main_processor|Dpth|M6|Mux25~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|Dpth|M6|Mux25~3_combout\,
	combout => \main_processor|Dpth|IR|Q32[6]~feeder_combout\);

-- Location: FF_X54_Y39_N21
\main_processor|Dpth|IR|Q32[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|IR|Q32[6]~feeder_combout\,
	ena => \main_processor|C1|ALT_INV_ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|IR|Q32\(6));

-- Location: LCCOMB_X52_Y39_N4
\main_processor|Dpth|M2|Out2[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M2|Out2[6]~6_combout\ = (\main_processor|C1|A_Mux~combout\ & (\main_processor|Dpth|IR|Q32\(6))) # (!\main_processor|C1|A_Mux~combout\ & ((\main_processor|Dpth|M6|Mux25~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|A_Mux~combout\,
	datac => \main_processor|Dpth|IR|Q32\(6),
	datad => \main_processor|Dpth|M6|Mux25~3_combout\,
	combout => \main_processor|Dpth|M2|Out2[6]~6_combout\);

-- Location: FF_X52_Y39_N21
\main_processor|Dpth|A|Q32[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[6]~6_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_A~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_A~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|A|Q32\(6));

-- Location: LCCOMB_X49_Y39_N28
\main_processor|Dpth|ALU|Mux26~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux26~11_combout\ = (!\main_processor|C1|IM_MUX1~combout\ & ((\main_processor|C1|ALU_op\(0) & (\main_processor|Dpth|A|Q32\(6))) # (!\main_processor|C1|ALU_op\(0) & ((\main_processor|Dpth|A|Q32\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|A|Q32\(6),
	datab => \main_processor|C1|IM_MUX1~combout\,
	datac => \main_processor|C1|ALU_op\(0),
	datad => \main_processor|Dpth|A|Q32\(4),
	combout => \main_processor|Dpth|ALU|Mux26~11_combout\);

-- Location: LCCOMB_X50_Y39_N10
\main_processor|Dpth|ALU|Mux26~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux26~9_combout\ = (\main_processor|Dpth|M5|Mux26~0_combout\ & ((\main_processor|C1|ALU_op\(0)) # ((!\main_processor|C1|ALU_op\(1) & \main_processor|Dpth|M4|Out2[5]~5_combout\)))) # (!\main_processor|Dpth|M5|Mux26~0_combout\ & 
-- (\main_processor|C1|ALU_op\(0) & ((\main_processor|C1|ALU_op\(1)) # (\main_processor|Dpth|M4|Out2[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux26~0_combout\,
	datab => \main_processor|C1|ALU_op\(0),
	datac => \main_processor|C1|ALU_op\(1),
	datad => \main_processor|Dpth|M4|Out2[5]~5_combout\,
	combout => \main_processor|Dpth|ALU|Mux26~9_combout\);

-- Location: LCCOMB_X49_Y39_N2
\main_processor|Dpth|ALU|Mux26~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux26~8_combout\ = (\main_processor|C1|ALU_op\(2) & ((\main_processor|Dpth|ALU|Add1~10_combout\) # ((!\main_processor|C1|ALU_op\(1))))) # (!\main_processor|C1|ALU_op\(2) & (((\main_processor|C1|ALU_op\(1) & 
-- \main_processor|Dpth|ALU|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(2),
	datab => \main_processor|Dpth|ALU|Add1~10_combout\,
	datac => \main_processor|C1|ALU_op\(1),
	datad => \main_processor|Dpth|ALU|Add0~10_combout\,
	combout => \main_processor|Dpth|ALU|Mux26~8_combout\);

-- Location: LCCOMB_X49_Y39_N16
\main_processor|Dpth|ALU|Mux26~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux26~10_combout\ = (\main_processor|C1|ALU_op\(1) & (((!\main_processor|Dpth|ALU|Mux26~9_combout\ & \main_processor|Dpth|ALU|Mux26~8_combout\)))) # (!\main_processor|C1|ALU_op\(1) & ((\main_processor|Dpth|ALU|Mux26~8_combout\ & 
-- (\main_processor|Dpth|ALU|Mux26~11_combout\)) # (!\main_processor|Dpth|ALU|Mux26~8_combout\ & ((\main_processor|Dpth|ALU|Mux26~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(1),
	datab => \main_processor|Dpth|ALU|Mux26~11_combout\,
	datac => \main_processor|Dpth|ALU|Mux26~9_combout\,
	datad => \main_processor|Dpth|ALU|Mux26~8_combout\,
	combout => \main_processor|Dpth|ALU|Mux26~10_combout\);

-- Location: LCCOMB_X50_Y36_N12
\main_processor|Dpth|D1|data_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|D1|data_out~5_combout\ = (!\main_processor|C1|wen~1_combout\ & (\main_processor|C1|present_state.state_2~q\ & (\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a5\ & \main_processor|C1|Mux23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|wen~1_combout\,
	datab => \main_processor|C1|present_state.state_2~q\,
	datac => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a5\,
	datad => \main_processor|C1|Mux23~0_combout\,
	combout => \main_processor|Dpth|D1|data_out~5_combout\);

-- Location: FF_X50_Y36_N13
\main_processor|Dpth|D1|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|D1|data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|D1|data_out\(5));

-- Location: LCCOMB_X52_Y36_N20
\main_processor|Dpth|M6|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux26~2_combout\ = (\main_processor|C1|DATA_Mux\(1) & (\main_processor|C1|DATA_Mux\(0))) # (!\main_processor|C1|DATA_Mux\(1) & ((\main_processor|C1|DATA_Mux\(0) & ((\main_processor|Dpth|D1|data_out\(5)))) # 
-- (!\main_processor|C1|DATA_Mux\(0) & (\main_memory|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_memory|altsyncram_component|auto_generated|q_a\(5),
	datad => \main_processor|Dpth|D1|data_out\(5),
	combout => \main_processor|Dpth|M6|Mux26~2_combout\);

-- Location: LCCOMB_X52_Y36_N0
\main_processor|Dpth|M6|Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux26~3_combout\ = (\main_processor|Dpth|M6|Mux26~2_combout\) # ((\main_processor|C1|DATA_Mux\(1) & (!\main_processor|C1|DATA_Mux\(0) & \main_processor|Dpth|ALU|Mux26~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_processor|Dpth|ALU|Mux26~10_combout\,
	datad => \main_processor|Dpth|M6|Mux26~2_combout\,
	combout => \main_processor|Dpth|M6|Mux26~3_combout\);

-- Location: LCCOMB_X54_Y39_N6
\main_processor|Dpth|IR|Q32[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|IR|Q32[5]~feeder_combout\ = \main_processor|Dpth|M6|Mux26~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_processor|Dpth|M6|Mux26~3_combout\,
	combout => \main_processor|Dpth|IR|Q32[5]~feeder_combout\);

-- Location: FF_X54_Y39_N7
\main_processor|Dpth|IR|Q32[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|IR|Q32[5]~feeder_combout\,
	ena => \main_processor|C1|ALT_INV_ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|IR|Q32\(5));

-- Location: LCCOMB_X52_Y36_N30
\main_processor|Dpth|M2|Out2[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M2|Out2[5]~5_combout\ = (\main_processor|C1|A_Mux~combout\ & (\main_processor|Dpth|IR|Q32\(5))) # (!\main_processor|C1|A_Mux~combout\ & ((\main_processor|Dpth|M6|Mux26~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|IR|Q32\(5),
	datac => \main_processor|C1|A_Mux~combout\,
	datad => \main_processor|Dpth|M6|Mux26~3_combout\,
	combout => \main_processor|Dpth|M2|Out2[5]~5_combout\);

-- Location: FF_X52_Y36_N11
\main_processor|Dpth|A|Q32[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[5]~5_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_A~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_A~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|A|Q32\(5));

-- Location: LCCOMB_X56_Y36_N24
\main_processor|Dpth|ALU|Mux27~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux27~11_combout\ = (!\main_processor|C1|IM_MUX1~combout\ & ((\main_processor|C1|ALU_op\(0) & ((\main_processor|Dpth|A|Q32\(5)))) # (!\main_processor|C1|ALU_op\(0) & (\main_processor|Dpth|A|Q32\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|A|Q32\(3),
	datab => \main_processor|C1|IM_MUX1~combout\,
	datac => \main_processor|C1|ALU_op\(0),
	datad => \main_processor|Dpth|A|Q32\(5),
	combout => \main_processor|Dpth|ALU|Mux27~11_combout\);

-- Location: LCCOMB_X53_Y39_N14
\main_processor|Dpth|ALU|Mux27~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux27~8_combout\ = (\main_processor|C1|ALU_op\(1) & ((\main_processor|C1|ALU_op\(2) & (\main_processor|Dpth|ALU|Add1~8_combout\)) # (!\main_processor|C1|ALU_op\(2) & ((\main_processor|Dpth|ALU|Add0~8_combout\))))) # 
-- (!\main_processor|C1|ALU_op\(1) & (\main_processor|C1|ALU_op\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(1),
	datab => \main_processor|C1|ALU_op\(2),
	datac => \main_processor|Dpth|ALU|Add1~8_combout\,
	datad => \main_processor|Dpth|ALU|Add0~8_combout\,
	combout => \main_processor|Dpth|ALU|Mux27~8_combout\);

-- Location: LCCOMB_X50_Y39_N12
\main_processor|Dpth|ALU|Mux27~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux27~9_combout\ = (\main_processor|Dpth|M4|Out2[4]~4_combout\ & ((\main_processor|C1|ALU_op\(0)) # ((\main_processor|Dpth|M5|Mux27~0_combout\ & !\main_processor|C1|ALU_op\(1))))) # (!\main_processor|Dpth|M4|Out2[4]~4_combout\ & 
-- (\main_processor|C1|ALU_op\(0) & ((\main_processor|Dpth|M5|Mux27~0_combout\) # (\main_processor|C1|ALU_op\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[4]~4_combout\,
	datab => \main_processor|Dpth|M5|Mux27~0_combout\,
	datac => \main_processor|C1|ALU_op\(1),
	datad => \main_processor|C1|ALU_op\(0),
	combout => \main_processor|Dpth|ALU|Mux27~9_combout\);

-- Location: LCCOMB_X53_Y39_N0
\main_processor|Dpth|ALU|Mux27~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux27~10_combout\ = (\main_processor|C1|ALU_op\(1) & (((\main_processor|Dpth|ALU|Mux27~8_combout\ & !\main_processor|Dpth|ALU|Mux27~9_combout\)))) # (!\main_processor|C1|ALU_op\(1) & ((\main_processor|Dpth|ALU|Mux27~8_combout\ & 
-- (\main_processor|Dpth|ALU|Mux27~11_combout\)) # (!\main_processor|Dpth|ALU|Mux27~8_combout\ & ((\main_processor|Dpth|ALU|Mux27~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(1),
	datab => \main_processor|Dpth|ALU|Mux27~11_combout\,
	datac => \main_processor|Dpth|ALU|Mux27~8_combout\,
	datad => \main_processor|Dpth|ALU|Mux27~9_combout\,
	combout => \main_processor|Dpth|ALU|Mux27~10_combout\);

-- Location: LCCOMB_X50_Y36_N28
\main_processor|Dpth|D1|data_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|D1|data_out~4_combout\ = (\main_processor|C1|Mux23~0_combout\ & (\main_processor|C1|present_state.state_2~q\ & (!\main_processor|C1|wen~1_combout\ & \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|Mux23~0_combout\,
	datab => \main_processor|C1|present_state.state_2~q\,
	datac => \main_processor|C1|wen~1_combout\,
	datad => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a4\,
	combout => \main_processor|Dpth|D1|data_out~4_combout\);

-- Location: FF_X50_Y36_N29
\main_processor|Dpth|D1|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|D1|data_out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|D1|data_out\(4));

-- Location: LCCOMB_X50_Y36_N6
\main_processor|Dpth|M6|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux27~2_combout\ = (\main_processor|C1|DATA_Mux\(0) & ((\main_processor|C1|DATA_Mux\(1)) # ((\main_processor|Dpth|D1|data_out\(4))))) # (!\main_processor|C1|DATA_Mux\(0) & (!\main_processor|C1|DATA_Mux\(1) & 
-- (\main_memory|altsyncram_component|auto_generated|q_a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(0),
	datab => \main_processor|C1|DATA_Mux\(1),
	datac => \main_memory|altsyncram_component|auto_generated|q_a\(4),
	datad => \main_processor|Dpth|D1|data_out\(4),
	combout => \main_processor|Dpth|M6|Mux27~2_combout\);

-- Location: LCCOMB_X50_Y36_N26
\main_processor|Dpth|M6|Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux27~3_combout\ = (\main_processor|Dpth|M6|Mux27~2_combout\) # ((!\main_processor|C1|DATA_Mux\(0) & (\main_processor|C1|DATA_Mux\(1) & \main_processor|Dpth|ALU|Mux27~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(0),
	datab => \main_processor|C1|DATA_Mux\(1),
	datac => \main_processor|Dpth|ALU|Mux27~10_combout\,
	datad => \main_processor|Dpth|M6|Mux27~2_combout\,
	combout => \main_processor|Dpth|M6|Mux27~3_combout\);

-- Location: LCCOMB_X54_Y39_N24
\main_processor|Dpth|IR|Q32[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|IR|Q32[4]~feeder_combout\ = \main_processor|Dpth|M6|Mux27~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_processor|Dpth|M6|Mux27~3_combout\,
	combout => \main_processor|Dpth|IR|Q32[4]~feeder_combout\);

-- Location: FF_X54_Y39_N25
\main_processor|Dpth|IR|Q32[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|IR|Q32[4]~feeder_combout\,
	ena => \main_processor|C1|ALT_INV_ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|IR|Q32\(4));

-- Location: LCCOMB_X50_Y39_N14
\main_processor|Dpth|M2|Out2[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M2|Out2[4]~4_combout\ = (\main_processor|C1|A_Mux~combout\ & (\main_processor|Dpth|IR|Q32\(4))) # (!\main_processor|C1|A_Mux~combout\ & ((\main_processor|Dpth|M6|Mux27~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|C1|A_Mux~combout\,
	datac => \main_processor|Dpth|IR|Q32\(4),
	datad => \main_processor|Dpth|M6|Mux27~3_combout\,
	combout => \main_processor|Dpth|M2|Out2[4]~4_combout\);

-- Location: FF_X50_Y39_N7
\main_processor|Dpth|A|Q32[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[4]~4_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_A~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_A~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|A|Q32\(4));

-- Location: LCCOMB_X49_Y39_N14
\main_processor|Dpth|ALU|Mux28~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux28~11_combout\ = (!\main_processor|C1|IM_MUX1~combout\ & ((\main_processor|C1|ALU_op\(0) & (\main_processor|Dpth|A|Q32\(4))) # (!\main_processor|C1|ALU_op\(0) & ((\main_processor|Dpth|A|Q32\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|A|Q32\(4),
	datab => \main_processor|Dpth|A|Q32\(2),
	datac => \main_processor|C1|ALU_op\(0),
	datad => \main_processor|C1|IM_MUX1~combout\,
	combout => \main_processor|Dpth|ALU|Mux28~11_combout\);

-- Location: LCCOMB_X53_Y39_N8
\main_processor|Dpth|ALU|Mux28~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux28~8_combout\ = (\main_processor|C1|ALU_op\(1) & ((\main_processor|C1|ALU_op\(2) & ((\main_processor|Dpth|ALU|Add1~6_combout\))) # (!\main_processor|C1|ALU_op\(2) & (\main_processor|Dpth|ALU|Add0~6_combout\)))) # 
-- (!\main_processor|C1|ALU_op\(1) & (\main_processor|C1|ALU_op\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(1),
	datab => \main_processor|C1|ALU_op\(2),
	datac => \main_processor|Dpth|ALU|Add0~6_combout\,
	datad => \main_processor|Dpth|ALU|Add1~6_combout\,
	combout => \main_processor|Dpth|ALU|Mux28~8_combout\);

-- Location: LCCOMB_X50_Y39_N2
\main_processor|Dpth|ALU|Mux28~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux28~9_combout\ = (\main_processor|C1|ALU_op\(1) & (((\main_processor|C1|ALU_op\(0))))) # (!\main_processor|C1|ALU_op\(1) & ((\main_processor|Dpth|M4|Out2[3]~3_combout\ & ((\main_processor|Dpth|M5|Mux28~0_combout\) # 
-- (\main_processor|C1|ALU_op\(0)))) # (!\main_processor|Dpth|M4|Out2[3]~3_combout\ & (\main_processor|Dpth|M5|Mux28~0_combout\ & \main_processor|C1|ALU_op\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(1),
	datab => \main_processor|Dpth|M4|Out2[3]~3_combout\,
	datac => \main_processor|Dpth|M5|Mux28~0_combout\,
	datad => \main_processor|C1|ALU_op\(0),
	combout => \main_processor|Dpth|ALU|Mux28~9_combout\);

-- Location: LCCOMB_X49_Y39_N4
\main_processor|Dpth|ALU|Mux28~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux28~10_combout\ = (\main_processor|C1|ALU_op\(1) & (((\main_processor|Dpth|ALU|Mux28~8_combout\ & !\main_processor|Dpth|ALU|Mux28~9_combout\)))) # (!\main_processor|C1|ALU_op\(1) & ((\main_processor|Dpth|ALU|Mux28~8_combout\ & 
-- (\main_processor|Dpth|ALU|Mux28~11_combout\)) # (!\main_processor|Dpth|ALU|Mux28~8_combout\ & ((\main_processor|Dpth|ALU|Mux28~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(1),
	datab => \main_processor|Dpth|ALU|Mux28~11_combout\,
	datac => \main_processor|Dpth|ALU|Mux28~8_combout\,
	datad => \main_processor|Dpth|ALU|Mux28~9_combout\,
	combout => \main_processor|Dpth|ALU|Mux28~10_combout\);

-- Location: LCCOMB_X50_Y36_N8
\main_processor|Dpth|D1|data_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|D1|data_out~3_combout\ = (\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a3\ & (\main_processor|C1|present_state.state_2~q\ & (!\main_processor|C1|wen~1_combout\ & \main_processor|C1|Mux23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a3\,
	datab => \main_processor|C1|present_state.state_2~q\,
	datac => \main_processor|C1|wen~1_combout\,
	datad => \main_processor|C1|Mux23~0_combout\,
	combout => \main_processor|Dpth|D1|data_out~3_combout\);

-- Location: FF_X50_Y36_N9
\main_processor|Dpth|D1|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|D1|data_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|D1|data_out\(3));

-- Location: LCCOMB_X50_Y36_N10
\main_processor|Dpth|M6|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux28~2_combout\ = (\main_processor|C1|DATA_Mux\(0) & ((\main_processor|C1|DATA_Mux\(1)) # ((\main_processor|Dpth|D1|data_out\(3))))) # (!\main_processor|C1|DATA_Mux\(0) & (!\main_processor|C1|DATA_Mux\(1) & 
-- ((\main_memory|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(0),
	datab => \main_processor|C1|DATA_Mux\(1),
	datac => \main_processor|Dpth|D1|data_out\(3),
	datad => \main_memory|altsyncram_component|auto_generated|q_a\(3),
	combout => \main_processor|Dpth|M6|Mux28~2_combout\);

-- Location: LCCOMB_X50_Y36_N0
\main_processor|Dpth|M6|Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux28~3_combout\ = (\main_processor|Dpth|M6|Mux28~2_combout\) # ((!\main_processor|C1|DATA_Mux\(0) & (\main_processor|C1|DATA_Mux\(1) & \main_processor|Dpth|ALU|Mux28~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(0),
	datab => \main_processor|C1|DATA_Mux\(1),
	datac => \main_processor|Dpth|ALU|Mux28~10_combout\,
	datad => \main_processor|Dpth|M6|Mux28~2_combout\,
	combout => \main_processor|Dpth|M6|Mux28~3_combout\);

-- Location: FF_X53_Y36_N31
\main_processor|Dpth|IR|Q32[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M6|Mux28~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ALT_INV_ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|IR|Q32\(3));

-- Location: LCCOMB_X52_Y36_N4
\main_processor|Dpth|M2|Out2[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M2|Out2[3]~3_combout\ = (\main_processor|C1|A_Mux~combout\ & (\main_processor|Dpth|IR|Q32\(3))) # (!\main_processor|C1|A_Mux~combout\ & ((\main_processor|Dpth|M6|Mux28~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(3),
	datac => \main_processor|C1|A_Mux~combout\,
	datad => \main_processor|Dpth|M6|Mux28~3_combout\,
	combout => \main_processor|Dpth|M2|Out2[3]~3_combout\);

-- Location: FF_X52_Y36_N29
\main_processor|Dpth|A|Q32[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[3]~3_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_A~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_A~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|A|Q32\(3));

-- Location: LCCOMB_X54_Y36_N6
\main_processor|Dpth|ALU|Mux29~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux29~11_combout\ = (!\main_processor|C1|IM_MUX1~combout\ & ((\main_processor|C1|ALU_op\(0) & (\main_processor|Dpth|A|Q32\(3))) # (!\main_processor|C1|ALU_op\(0) & ((\main_processor|Dpth|A|Q32\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|IM_MUX1~combout\,
	datab => \main_processor|Dpth|A|Q32\(3),
	datac => \main_processor|Dpth|A|Q32\(1),
	datad => \main_processor|C1|ALU_op\(0),
	combout => \main_processor|Dpth|ALU|Mux29~11_combout\);

-- Location: LCCOMB_X50_Y39_N0
\main_processor|Dpth|ALU|Mux29~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux29~9_combout\ = (\main_processor|Dpth|M5|Mux29~0_combout\ & ((\main_processor|C1|ALU_op\(0)) # ((!\main_processor|C1|ALU_op\(1) & \main_processor|Dpth|M4|Out2[2]~2_combout\)))) # (!\main_processor|Dpth|M5|Mux29~0_combout\ & 
-- (\main_processor|C1|ALU_op\(0) & ((\main_processor|C1|ALU_op\(1)) # (\main_processor|Dpth|M4|Out2[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux29~0_combout\,
	datab => \main_processor|C1|ALU_op\(1),
	datac => \main_processor|Dpth|M4|Out2[2]~2_combout\,
	datad => \main_processor|C1|ALU_op\(0),
	combout => \main_processor|Dpth|ALU|Mux29~9_combout\);

-- Location: LCCOMB_X53_Y39_N4
\main_processor|Dpth|ALU|Mux29~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux29~8_combout\ = (\main_processor|C1|ALU_op\(1) & ((\main_processor|C1|ALU_op\(2) & (\main_processor|Dpth|ALU|Add1~4_combout\)) # (!\main_processor|C1|ALU_op\(2) & ((\main_processor|Dpth|ALU|Add0~4_combout\))))) # 
-- (!\main_processor|C1|ALU_op\(1) & (\main_processor|C1|ALU_op\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(1),
	datab => \main_processor|C1|ALU_op\(2),
	datac => \main_processor|Dpth|ALU|Add1~4_combout\,
	datad => \main_processor|Dpth|ALU|Add0~4_combout\,
	combout => \main_processor|Dpth|ALU|Mux29~8_combout\);

-- Location: LCCOMB_X53_Y39_N6
\main_processor|Dpth|ALU|Mux29~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux29~10_combout\ = (\main_processor|Dpth|ALU|Mux29~8_combout\ & ((\main_processor|C1|ALU_op\(1) & ((!\main_processor|Dpth|ALU|Mux29~9_combout\))) # (!\main_processor|C1|ALU_op\(1) & (\main_processor|Dpth|ALU|Mux29~11_combout\)))) 
-- # (!\main_processor|Dpth|ALU|Mux29~8_combout\ & (((\main_processor|Dpth|ALU|Mux29~9_combout\ & !\main_processor|C1|ALU_op\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux29~11_combout\,
	datab => \main_processor|Dpth|ALU|Mux29~9_combout\,
	datac => \main_processor|Dpth|ALU|Mux29~8_combout\,
	datad => \main_processor|C1|ALU_op\(1),
	combout => \main_processor|Dpth|ALU|Mux29~10_combout\);

-- Location: LCCOMB_X50_Y36_N4
\main_processor|Dpth|D1|data_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|D1|data_out~2_combout\ = (!\main_processor|C1|wen~1_combout\ & (\main_processor|C1|present_state.state_2~q\ & (\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a2\ & \main_processor|C1|Mux23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|wen~1_combout\,
	datab => \main_processor|C1|present_state.state_2~q\,
	datac => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a2\,
	datad => \main_processor|C1|Mux23~0_combout\,
	combout => \main_processor|Dpth|D1|data_out~2_combout\);

-- Location: FF_X50_Y36_N5
\main_processor|Dpth|D1|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|D1|data_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|D1|data_out\(2));

-- Location: LCCOMB_X50_Y36_N2
\main_processor|Dpth|M6|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux29~2_combout\ = (\main_processor|C1|DATA_Mux\(0) & ((\main_processor|C1|DATA_Mux\(1)) # ((\main_processor|Dpth|D1|data_out\(2))))) # (!\main_processor|C1|DATA_Mux\(0) & (!\main_processor|C1|DATA_Mux\(1) & 
-- ((\main_memory|altsyncram_component|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(0),
	datab => \main_processor|C1|DATA_Mux\(1),
	datac => \main_processor|Dpth|D1|data_out\(2),
	datad => \main_memory|altsyncram_component|auto_generated|q_a\(2),
	combout => \main_processor|Dpth|M6|Mux29~2_combout\);

-- Location: LCCOMB_X50_Y36_N22
\main_processor|Dpth|M6|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux29~3_combout\ = (\main_processor|Dpth|M6|Mux29~2_combout\) # ((!\main_processor|C1|DATA_Mux\(0) & (\main_processor|C1|DATA_Mux\(1) & \main_processor|Dpth|ALU|Mux29~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(0),
	datab => \main_processor|C1|DATA_Mux\(1),
	datac => \main_processor|Dpth|ALU|Mux29~10_combout\,
	datad => \main_processor|Dpth|M6|Mux29~2_combout\,
	combout => \main_processor|Dpth|M6|Mux29~3_combout\);

-- Location: FF_X53_Y39_N11
\main_processor|Dpth|IR|Q32[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M6|Mux29~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ALT_INV_ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|IR|Q32\(2));

-- Location: LCCOMB_X50_Y39_N8
\main_processor|Dpth|M2|Out2[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M2|Out2[2]~2_combout\ = (\main_processor|C1|A_Mux~combout\ & (\main_processor|Dpth|IR|Q32\(2))) # (!\main_processor|C1|A_Mux~combout\ & ((\main_processor|Dpth|M6|Mux29~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|C1|A_Mux~combout\,
	datac => \main_processor|Dpth|IR|Q32\(2),
	datad => \main_processor|Dpth|M6|Mux29~3_combout\,
	combout => \main_processor|Dpth|M2|Out2[2]~2_combout\);

-- Location: FF_X50_Y39_N5
\main_processor|Dpth|A|Q32[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[2]~2_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_A~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_A~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|A|Q32\(2));

-- Location: LCCOMB_X52_Y35_N22
\main_processor|Dpth|ALU|Mux30~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux30~11_combout\ = (!\main_processor|C1|IM_MUX1~combout\ & ((\main_processor|C1|ALU_op\(0) & (\main_processor|Dpth|A|Q32\(2))) # (!\main_processor|C1|ALU_op\(0) & ((\main_processor|Dpth|A|Q32\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|A|Q32\(2),
	datab => \main_processor|Dpth|A|Q32\(0),
	datac => \main_processor|C1|ALU_op\(0),
	datad => \main_processor|C1|IM_MUX1~combout\,
	combout => \main_processor|Dpth|ALU|Mux30~11_combout\);

-- Location: LCCOMB_X53_Y35_N28
\main_processor|Dpth|ALU|Mux30~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux30~8_combout\ = (\main_processor|C1|ALU_op\(1) & ((\main_processor|C1|ALU_op\(2) & ((\main_processor|Dpth|ALU|Add1~2_combout\))) # (!\main_processor|C1|ALU_op\(2) & (\main_processor|Dpth|ALU|Add0~2_combout\)))) # 
-- (!\main_processor|C1|ALU_op\(1) & (\main_processor|C1|ALU_op\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(1),
	datab => \main_processor|C1|ALU_op\(2),
	datac => \main_processor|Dpth|ALU|Add0~2_combout\,
	datad => \main_processor|Dpth|ALU|Add1~2_combout\,
	combout => \main_processor|Dpth|ALU|Mux30~8_combout\);

-- Location: LCCOMB_X53_Y35_N0
\main_processor|Dpth|ALU|Mux30~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux30~10_combout\ = (\main_processor|C1|ALU_op\(1) & (!\main_processor|Dpth|ALU|Mux30~9_combout\ & ((\main_processor|Dpth|ALU|Mux30~8_combout\)))) # (!\main_processor|C1|ALU_op\(1) & ((\main_processor|Dpth|ALU|Mux30~8_combout\ & 
-- ((\main_processor|Dpth|ALU|Mux30~11_combout\))) # (!\main_processor|Dpth|ALU|Mux30~8_combout\ & (\main_processor|Dpth|ALU|Mux30~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux30~9_combout\,
	datab => \main_processor|Dpth|ALU|Mux30~11_combout\,
	datac => \main_processor|C1|ALU_op\(1),
	datad => \main_processor|Dpth|ALU|Mux30~8_combout\,
	combout => \main_processor|Dpth|ALU|Mux30~10_combout\);

-- Location: LCCOMB_X55_Y36_N30
\main_processor|Dpth|D1|data_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|D1|data_out~1_combout\ = (!\main_processor|C1|wen~1_combout\ & (\main_processor|C1|present_state.state_2~q\ & (\main_processor|C1|Mux23~0_combout\ & \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|wen~1_combout\,
	datab => \main_processor|C1|present_state.state_2~q\,
	datac => \main_processor|C1|Mux23~0_combout\,
	datad => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a1\,
	combout => \main_processor|Dpth|D1|data_out~1_combout\);

-- Location: FF_X55_Y36_N31
\main_processor|Dpth|D1|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|D1|data_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|D1|data_out\(1));

-- Location: LCCOMB_X54_Y36_N24
\main_processor|Dpth|M6|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux30~2_combout\ = (\main_processor|C1|DATA_Mux\(1) & (\main_processor|C1|DATA_Mux\(0))) # (!\main_processor|C1|DATA_Mux\(1) & ((\main_processor|C1|DATA_Mux\(0) & (\main_processor|Dpth|D1|data_out\(1))) # 
-- (!\main_processor|C1|DATA_Mux\(0) & ((\main_memory|altsyncram_component|auto_generated|q_a\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_processor|Dpth|D1|data_out\(1),
	datad => \main_memory|altsyncram_component|auto_generated|q_a\(1),
	combout => \main_processor|Dpth|M6|Mux30~2_combout\);

-- Location: LCCOMB_X54_Y36_N10
\main_processor|Dpth|M6|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux30~3_combout\ = (\main_processor|Dpth|M6|Mux30~2_combout\) # ((!\main_processor|C1|DATA_Mux\(0) & (\main_processor|C1|DATA_Mux\(1) & \main_processor|Dpth|ALU|Mux30~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(0),
	datab => \main_processor|C1|DATA_Mux\(1),
	datac => \main_processor|Dpth|ALU|Mux30~10_combout\,
	datad => \main_processor|Dpth|M6|Mux30~2_combout\,
	combout => \main_processor|Dpth|M6|Mux30~3_combout\);

-- Location: FF_X53_Y35_N9
\main_processor|Dpth|IR|Q32[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M6|Mux30~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ALT_INV_ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|IR|Q32\(1));

-- Location: LCCOMB_X54_Y36_N8
\main_processor|Dpth|M2|Out2[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M2|Out2[1]~1_combout\ = (\main_processor|C1|A_Mux~combout\ & (\main_processor|Dpth|IR|Q32\(1))) # (!\main_processor|C1|A_Mux~combout\ & ((\main_processor|Dpth|M6|Mux30~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(1),
	datab => \main_processor|C1|A_Mux~combout\,
	datad => \main_processor|Dpth|M6|Mux30~3_combout\,
	combout => \main_processor|Dpth|M2|Out2[1]~1_combout\);

-- Location: FF_X54_Y36_N7
\main_processor|Dpth|A|Q32[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[1]~1_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_A~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_A~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|A|Q32\(1));

-- Location: LCCOMB_X54_Y36_N2
\main_processor|Dpth|M4|Out2[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M4|Out2[1]~1_combout\ = (\main_processor|Dpth|A|Q32\(1) & !\main_processor|C1|IM_MUX1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|A|Q32\(1),
	datad => \main_processor|C1|IM_MUX1~combout\,
	combout => \main_processor|Dpth|M4|Out2[1]~1_combout\);

-- Location: LCCOMB_X53_Y35_N12
\main_processor|Dpth|ALU|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux31~1_combout\ = (\main_processor|C1|ALU_op\(0) & ((\main_processor|C1|ALU_op\(2) & (\main_processor|Dpth|M4|Out2[1]~1_combout\)) # (!\main_processor|C1|ALU_op\(2) & ((\main_processor|Dpth|M4|Out2[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(0),
	datab => \main_processor|C1|ALU_op\(2),
	datac => \main_processor|Dpth|M4|Out2[1]~1_combout\,
	datad => \main_processor|Dpth|M4|Out2[0]~0_combout\,
	combout => \main_processor|Dpth|ALU|Mux31~1_combout\);

-- Location: LCCOMB_X53_Y35_N14
\main_processor|Dpth|ALU|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux31~2_combout\ = (\main_processor|Dpth|M5|Mux31~0_combout\ & (!\main_processor|C1|ALU_op\(2) & ((\main_processor|C1|ALU_op\(0)) # (\main_processor|Dpth|M4|Out2[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(0),
	datab => \main_processor|Dpth|M5|Mux31~0_combout\,
	datac => \main_processor|C1|ALU_op\(2),
	datad => \main_processor|Dpth|M4|Out2[0]~0_combout\,
	combout => \main_processor|Dpth|ALU|Mux31~2_combout\);

-- Location: LCCOMB_X53_Y35_N6
\main_processor|Dpth|ALU|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux31~0_combout\ = (\main_processor|Dpth|ALU|Mux23~0_combout\ & ((\main_processor|Dpth|ALU|Add0~0_combout\) # ((\main_processor|Dpth|ALU|Mux23~1_combout\ & \main_processor|Dpth|ALU|Add1~0_combout\)))) # 
-- (!\main_processor|Dpth|ALU|Mux23~0_combout\ & (\main_processor|Dpth|ALU|Mux23~1_combout\ & ((\main_processor|Dpth|ALU|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux23~0_combout\,
	datab => \main_processor|Dpth|ALU|Mux23~1_combout\,
	datac => \main_processor|Dpth|ALU|Add0~0_combout\,
	datad => \main_processor|Dpth|ALU|Add1~0_combout\,
	combout => \main_processor|Dpth|ALU|Mux31~0_combout\);

-- Location: LCCOMB_X53_Y35_N24
\main_processor|Dpth|ALU|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux31~3_combout\ = (\main_processor|Dpth|ALU|Mux31~0_combout\) # ((!\main_processor|C1|ALU_op\(1) & ((\main_processor|Dpth|ALU|Mux31~1_combout\) # (\main_processor|Dpth|ALU|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux31~1_combout\,
	datab => \main_processor|C1|ALU_op\(1),
	datac => \main_processor|Dpth|ALU|Mux31~2_combout\,
	datad => \main_processor|Dpth|ALU|Mux31~0_combout\,
	combout => \main_processor|Dpth|ALU|Mux31~3_combout\);

-- Location: LCCOMB_X55_Y36_N0
\main_processor|Dpth|D1|data_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|D1|data_out~0_combout\ = (!\main_processor|C1|wen~1_combout\ & (\main_processor|C1|present_state.state_2~q\ & (\main_processor|C1|Mux23~0_combout\ & \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|wen~1_combout\,
	datab => \main_processor|C1|present_state.state_2~q\,
	datac => \main_processor|C1|Mux23~0_combout\,
	datad => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	combout => \main_processor|Dpth|D1|data_out~0_combout\);

-- Location: FF_X55_Y36_N1
\main_processor|Dpth|D1|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|D1|data_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|D1|data_out\(0));

-- Location: LCCOMB_X54_Y36_N18
\main_processor|Dpth|M6|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux31~2_combout\ = (\main_processor|C1|DATA_Mux\(0) & ((\main_processor|Dpth|D1|data_out\(0)) # ((\main_processor|C1|DATA_Mux\(1))))) # (!\main_processor|C1|DATA_Mux\(0) & (((\main_memory|altsyncram_component|auto_generated|q_a\(0) 
-- & !\main_processor|C1|DATA_Mux\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(0),
	datab => \main_processor|Dpth|D1|data_out\(0),
	datac => \main_memory|altsyncram_component|auto_generated|q_a\(0),
	datad => \main_processor|C1|DATA_Mux\(1),
	combout => \main_processor|Dpth|M6|Mux31~2_combout\);

-- Location: LCCOMB_X54_Y36_N20
\main_processor|Dpth|M6|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux31~4_combout\ = (\main_processor|Dpth|M6|Mux31~2_combout\) # ((\main_processor|C1|DATA_Mux\(1) & (!\main_processor|C1|DATA_Mux\(0) & \main_processor|Dpth|ALU|Mux31~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_processor|Dpth|ALU|Mux31~3_combout\,
	datad => \main_processor|Dpth|M6|Mux31~2_combout\,
	combout => \main_processor|Dpth|M6|Mux31~4_combout\);

-- Location: FF_X53_Y39_N13
\main_processor|Dpth|IR|Q32[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M6|Mux31~4_combout\,
	sload => VCC,
	ena => \main_processor|C1|ALT_INV_ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|IR|Q32\(0));

-- Location: LCCOMB_X53_Y29_N24
\main_processor|Dpth|ProgCount|q[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q[0]~0_combout\ = (\main_processor|Dpth|ProgCount|process_0~1_combout\ & (\main_processor|Dpth|ProgCount|Add0~0_combout\)) # (!\main_processor|Dpth|ProgCount|process_0~1_combout\ & ((\main_processor|Dpth|IR|Q32\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|Add0~0_combout\,
	datab => \main_processor|Dpth|ProgCount|process_0~1_combout\,
	datad => \main_processor|Dpth|IR|Q32\(0),
	combout => \main_processor|Dpth|ProgCount|q[0]~0_combout\);

-- Location: FF_X53_Y29_N25
\main_processor|Dpth|ProgCount|q[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|ProgCount|q[0]~0_combout\,
	asdata => \main_processor|Dpth|ProgCount|q[0]~reg0_q\,
	sclr => \main_processor|R1|Clr_PC~q\,
	sload => \main_processor|Dpth|ProgCount|q~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|ProgCount|q[0]~reg0_q\);

-- Location: LCCOMB_X48_Y37_N16
\main_processor|Dpth|D1|data_out~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|D1|data_out~28_combout\ = (\main_processor|C1|present_state.state_2~q\ & (!\main_processor|C1|wen~1_combout\ & (\main_processor|C1|Mux23~0_combout\ & \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a28\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|present_state.state_2~q\,
	datab => \main_processor|C1|wen~1_combout\,
	datac => \main_processor|C1|Mux23~0_combout\,
	datad => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a28\,
	combout => \main_processor|Dpth|D1|data_out~28_combout\);

-- Location: FF_X48_Y37_N17
\main_processor|Dpth|D1|data_out[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|D1|data_out~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|D1|data_out\(28));

-- Location: LCCOMB_X48_Y37_N30
\main_processor|Dpth|M6|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux3~2_combout\ = (\main_processor|C1|DATA_Mux\(1) & (\main_processor|C1|DATA_Mux\(0))) # (!\main_processor|C1|DATA_Mux\(1) & ((\main_processor|C1|DATA_Mux\(0) & ((\main_processor|Dpth|D1|data_out\(28)))) # 
-- (!\main_processor|C1|DATA_Mux\(0) & (\main_memory|altsyncram_component|auto_generated|q_a\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_memory|altsyncram_component|auto_generated|q_a\(28),
	datad => \main_processor|Dpth|D1|data_out\(28),
	combout => \main_processor|Dpth|M6|Mux3~2_combout\);

-- Location: LCCOMB_X48_Y37_N18
\main_processor|Dpth|M6|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux3~3_combout\ = (\main_processor|Dpth|M6|Mux3~2_combout\) # ((\main_processor|C1|DATA_Mux\(1) & (!\main_processor|C1|DATA_Mux\(0) & \main_processor|Dpth|ALU|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_processor|Dpth|M6|Mux3~2_combout\,
	datad => \main_processor|Dpth|ALU|Mux3~3_combout\,
	combout => \main_processor|Dpth|M6|Mux3~3_combout\);

-- Location: FF_X54_Y37_N19
\main_processor|Dpth|IR|Q32[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M6|Mux3~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ALT_INV_ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|IR|Q32\(28));

-- Location: LCCOMB_X54_Y37_N2
\main_processor|C1|clr_A~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|clr_A~1_combout\ = (\main_processor|Dpth|IR|Q32\(26) & (!\main_processor|Dpth|IR|Q32\(27) & \main_processor|Dpth|IR|Q32\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(26),
	datac => \main_processor|Dpth|IR|Q32\(27),
	datad => \main_processor|Dpth|IR|Q32\(24),
	combout => \main_processor|C1|clr_A~1_combout\);

-- Location: LCCOMB_X54_Y37_N12
\main_processor|C1|clr_A~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|clr_A~2_combout\ = (\main_processor|Dpth|IR|Q32\(29) & (\main_processor|Dpth|IR|Q32\(28) & (\main_processor|C1|clr_A~0_combout\ & \main_processor|C1|clr_A~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(29),
	datab => \main_processor|Dpth|IR|Q32\(28),
	datac => \main_processor|C1|clr_A~0_combout\,
	datad => \main_processor|C1|clr_A~1_combout\,
	combout => \main_processor|C1|clr_A~2_combout\);

-- Location: LCCOMB_X54_Y37_N10
\main_processor|C1|clr_A~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|clr_A~3_combout\ = (\main_processor|C1|clr_A~2_combout\ & !\main_processor|Dpth|IR|Q32\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|clr_A~2_combout\,
	datad => \main_processor|Dpth|IR|Q32\(25),
	combout => \main_processor|C1|clr_A~3_combout\);

-- Location: FF_X52_Y35_N13
\main_processor|Dpth|A|Q32[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[14]~14_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_A~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_A~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|A|Q32\(14));

-- Location: LCCOMB_X52_Y35_N12
\main_processor|Dpth|M4|Out2[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M4|Out2[14]~14_combout\ = (\main_processor|Dpth|A|Q32\(14) & !\main_processor|C1|IM_MUX1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|Dpth|A|Q32\(14),
	datad => \main_processor|C1|IM_MUX1~combout\,
	combout => \main_processor|Dpth|M4|Out2[14]~14_combout\);

-- Location: LCCOMB_X53_Y35_N16
\main_processor|Dpth|ALU|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux17~0_combout\ = (\main_processor|C1|ALU_op\(0) & ((\main_processor|C1|ALU_op\(2)) # ((\main_processor|Dpth|M5|Mux17~0_combout\) # (\main_processor|Dpth|M4|Out2[14]~14_combout\)))) # (!\main_processor|C1|ALU_op\(0) & 
-- (!\main_processor|C1|ALU_op\(2) & (\main_processor|Dpth|M5|Mux17~0_combout\ & \main_processor|Dpth|M4|Out2[14]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(0),
	datab => \main_processor|C1|ALU_op\(2),
	datac => \main_processor|Dpth|M5|Mux17~0_combout\,
	datad => \main_processor|Dpth|M4|Out2[14]~14_combout\,
	combout => \main_processor|Dpth|ALU|Mux17~0_combout\);

-- Location: LCCOMB_X53_Y35_N26
\main_processor|Dpth|ALU|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux17~1_combout\ = (\main_processor|C1|ALU_op\(2) & ((\main_processor|Dpth|ALU|Mux17~0_combout\ & ((\main_processor|Dpth|M4|Out2[15]~15_combout\))) # (!\main_processor|Dpth|ALU|Mux17~0_combout\ & 
-- (\main_processor|Dpth|M4|Out2[13]~13_combout\)))) # (!\main_processor|C1|ALU_op\(2) & (((\main_processor|Dpth|ALU|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[13]~13_combout\,
	datab => \main_processor|C1|ALU_op\(2),
	datac => \main_processor|Dpth|M4|Out2[15]~15_combout\,
	datad => \main_processor|Dpth|ALU|Mux17~0_combout\,
	combout => \main_processor|Dpth|ALU|Mux17~1_combout\);

-- Location: LCCOMB_X52_Y35_N10
\main_processor|Dpth|ALU|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux17~2_combout\ = (\main_processor|C1|ALU_op\(1) & (\main_processor|Dpth|ALU|Mux23~0_combout\ & (\main_processor|Dpth|ALU|Add0~28_combout\))) # (!\main_processor|C1|ALU_op\(1) & ((\main_processor|Dpth|ALU|Mux17~1_combout\) # 
-- ((\main_processor|Dpth|ALU|Mux23~0_combout\ & \main_processor|Dpth|ALU|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(1),
	datab => \main_processor|Dpth|ALU|Mux23~0_combout\,
	datac => \main_processor|Dpth|ALU|Add0~28_combout\,
	datad => \main_processor|Dpth|ALU|Mux17~1_combout\,
	combout => \main_processor|Dpth|ALU|Mux17~2_combout\);

-- Location: LCCOMB_X52_Y35_N8
\main_processor|Dpth|ALU|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux17~3_combout\ = (\main_processor|Dpth|ALU|Mux17~2_combout\) # ((\main_processor|Dpth|ALU|Mux23~1_combout\ & \main_processor|Dpth|ALU|Add1~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux23~1_combout\,
	datac => \main_processor|Dpth|ALU|Add1~28_combout\,
	datad => \main_processor|Dpth|ALU|Mux17~2_combout\,
	combout => \main_processor|Dpth|ALU|Mux17~3_combout\);

-- Location: LCCOMB_X53_Y35_N18
\main_processor|Dpth|D1|data_out~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|D1|data_out~14_combout\ = (\main_processor|C1|present_state.state_2~q\ & (!\main_processor|C1|wen~1_combout\ & (\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a14\ & \main_processor|C1|Mux23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|present_state.state_2~q\,
	datab => \main_processor|C1|wen~1_combout\,
	datac => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a14\,
	datad => \main_processor|C1|Mux23~0_combout\,
	combout => \main_processor|Dpth|D1|data_out~14_combout\);

-- Location: FF_X53_Y35_N19
\main_processor|Dpth|D1|data_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|D1|data_out~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|D1|data_out\(14));

-- Location: LCCOMB_X52_Y35_N16
\main_processor|Dpth|M6|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux17~2_combout\ = (\main_processor|C1|DATA_Mux\(0) & ((\main_processor|C1|DATA_Mux\(1)) # ((\main_processor|Dpth|D1|data_out\(14))))) # (!\main_processor|C1|DATA_Mux\(0) & (!\main_processor|C1|DATA_Mux\(1) & 
-- (\main_memory|altsyncram_component|auto_generated|q_a\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(0),
	datab => \main_processor|C1|DATA_Mux\(1),
	datac => \main_memory|altsyncram_component|auto_generated|q_a\(14),
	datad => \main_processor|Dpth|D1|data_out\(14),
	combout => \main_processor|Dpth|M6|Mux17~2_combout\);

-- Location: LCCOMB_X52_Y35_N0
\main_processor|Dpth|M6|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux17~3_combout\ = (\main_processor|Dpth|M6|Mux17~2_combout\) # ((!\main_processor|C1|DATA_Mux\(0) & (\main_processor|C1|DATA_Mux\(1) & \main_processor|Dpth|ALU|Mux17~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(0),
	datab => \main_processor|C1|DATA_Mux\(1),
	datac => \main_processor|Dpth|ALU|Mux17~3_combout\,
	datad => \main_processor|Dpth|M6|Mux17~2_combout\,
	combout => \main_processor|Dpth|M6|Mux17~3_combout\);

-- Location: FF_X53_Y36_N23
\main_processor|Dpth|IR|Q32[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M6|Mux17~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ALT_INV_ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|IR|Q32\(14));

-- Location: LCCOMB_X53_Y36_N8
\main_processor|Dpth|M4|Out2[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M4|Out2[30]~30_combout\ = (\main_processor|C1|IM_MUX1~combout\ & (\main_processor|Dpth|IR|Q32\(14))) # (!\main_processor|C1|IM_MUX1~combout\ & ((\main_processor|Dpth|A|Q32\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(14),
	datac => \main_processor|C1|IM_MUX1~combout\,
	datad => \main_processor|Dpth|A|Q32\(30),
	combout => \main_processor|Dpth|M4|Out2[30]~30_combout\);

-- Location: LCCOMB_X53_Y35_N20
\main_processor|Dpth|ALU|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux1~0_combout\ = (\main_processor|Dpth|M5|Mux1~0_combout\ & ((\main_processor|C1|ALU_op\(0)) # ((\main_processor|Dpth|M4|Out2[30]~30_combout\ & !\main_processor|C1|ALU_op\(2))))) # (!\main_processor|Dpth|M5|Mux1~0_combout\ & 
-- (\main_processor|C1|ALU_op\(0) & ((\main_processor|Dpth|M4|Out2[30]~30_combout\) # (\main_processor|C1|ALU_op\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M5|Mux1~0_combout\,
	datab => \main_processor|Dpth|M4|Out2[30]~30_combout\,
	datac => \main_processor|C1|ALU_op\(2),
	datad => \main_processor|C1|ALU_op\(0),
	combout => \main_processor|Dpth|ALU|Mux1~0_combout\);

-- Location: LCCOMB_X53_Y37_N20
\main_processor|Dpth|ALU|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux1~1_combout\ = (\main_processor|C1|ALU_op\(2) & ((\main_processor|Dpth|ALU|Mux1~0_combout\ & (\main_processor|Dpth|M4|Out2[31]~31_combout\)) # (!\main_processor|Dpth|ALU|Mux1~0_combout\ & 
-- ((\main_processor|Dpth|M4|Out2[29]~29_combout\))))) # (!\main_processor|C1|ALU_op\(2) & (((\main_processor|Dpth|ALU|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[31]~31_combout\,
	datab => \main_processor|C1|ALU_op\(2),
	datac => \main_processor|Dpth|M4|Out2[29]~29_combout\,
	datad => \main_processor|Dpth|ALU|Mux1~0_combout\,
	combout => \main_processor|Dpth|ALU|Mux1~1_combout\);

-- Location: LCCOMB_X53_Y37_N18
\main_processor|Dpth|ALU|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux1~2_combout\ = (\main_processor|C1|ALU_op\(1) & (((\main_processor|Dpth|ALU|Mux23~0_combout\ & \main_processor|Dpth|ALU|Add0~60_combout\)))) # (!\main_processor|C1|ALU_op\(1) & ((\main_processor|Dpth|ALU|Mux1~1_combout\) # 
-- ((\main_processor|Dpth|ALU|Mux23~0_combout\ & \main_processor|Dpth|ALU|Add0~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(1),
	datab => \main_processor|Dpth|ALU|Mux1~1_combout\,
	datac => \main_processor|Dpth|ALU|Mux23~0_combout\,
	datad => \main_processor|Dpth|ALU|Add0~60_combout\,
	combout => \main_processor|Dpth|ALU|Mux1~2_combout\);

-- Location: LCCOMB_X52_Y37_N4
\main_processor|Dpth|ALU|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux1~3_combout\ = (\main_processor|Dpth|ALU|Mux1~2_combout\) # ((\main_processor|Dpth|ALU|Mux23~1_combout\ & \main_processor|Dpth|ALU|Add1~60_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|ALU|Mux23~1_combout\,
	datac => \main_processor|Dpth|ALU|Add1~60_combout\,
	datad => \main_processor|Dpth|ALU|Mux1~2_combout\,
	combout => \main_processor|Dpth|ALU|Mux1~3_combout\);

-- Location: LCCOMB_X52_Y37_N6
\main_processor|Dpth|M6|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux1~3_combout\ = (\main_processor|Dpth|M6|Mux1~2_combout\) # ((\main_processor|C1|DATA_Mux\(1) & (!\main_processor|C1|DATA_Mux\(0) & \main_processor|Dpth|ALU|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_processor|Dpth|ALU|Mux1~3_combout\,
	datad => \main_processor|Dpth|M6|Mux1~2_combout\,
	combout => \main_processor|Dpth|M6|Mux1~3_combout\);

-- Location: FF_X54_Y37_N5
\main_processor|Dpth|IR|Q32[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M6|Mux1~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ALT_INV_ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|IR|Q32\(30));

-- Location: LCCOMB_X54_Y34_N0
\main_processor|C1|wen~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|wen~1_combout\ = (!\main_processor|Dpth|IR|Q32\(30) & (\main_processor|C1|present_state.state_1~q\ & (\main_processor|Dpth|IR|Q32\(29) & !\main_processor|Dpth|IR|Q32\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(30),
	datab => \main_processor|C1|present_state.state_1~q\,
	datac => \main_processor|Dpth|IR|Q32\(29),
	datad => \main_processor|Dpth|IR|Q32\(31),
	combout => \main_processor|C1|wen~1_combout\);

-- Location: LCCOMB_X52_Y37_N8
\main_processor|Dpth|D1|data_out~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|D1|data_out~25_combout\ = (!\main_processor|C1|wen~1_combout\ & (\main_processor|C1|present_state.state_2~q\ & (\main_processor|C1|Mux23~0_combout\ & \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|wen~1_combout\,
	datab => \main_processor|C1|present_state.state_2~q\,
	datac => \main_processor|C1|Mux23~0_combout\,
	datad => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a25\,
	combout => \main_processor|Dpth|D1|data_out~25_combout\);

-- Location: FF_X52_Y37_N9
\main_processor|Dpth|D1|data_out[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|D1|data_out~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|D1|data_out\(25));

-- Location: LCCOMB_X52_Y37_N18
\main_processor|Dpth|M6|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux6~2_combout\ = (\main_processor|C1|DATA_Mux\(1) & (\main_processor|C1|DATA_Mux\(0))) # (!\main_processor|C1|DATA_Mux\(1) & ((\main_processor|C1|DATA_Mux\(0) & (\main_processor|Dpth|D1|data_out\(25))) # 
-- (!\main_processor|C1|DATA_Mux\(0) & ((\main_memory|altsyncram_component|auto_generated|q_a\(25))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_processor|Dpth|D1|data_out\(25),
	datad => \main_memory|altsyncram_component|auto_generated|q_a\(25),
	combout => \main_processor|Dpth|M6|Mux6~2_combout\);

-- Location: LCCOMB_X52_Y37_N20
\main_processor|Dpth|M2|Out2[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M2|Out2[25]~25_combout\ = (!\main_processor|C1|A_Mux~combout\ & ((\main_processor|Dpth|M6|Mux6~2_combout\) # ((\main_processor|Dpth|M6|Mux31~3_combout\ & \main_processor|Dpth|ALU|Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M6|Mux31~3_combout\,
	datab => \main_processor|C1|A_Mux~combout\,
	datac => \main_processor|Dpth|ALU|Mux6~4_combout\,
	datad => \main_processor|Dpth|M6|Mux6~2_combout\,
	combout => \main_processor|Dpth|M2|Out2[25]~25_combout\);

-- Location: FF_X53_Y37_N31
\main_processor|Dpth|B|Q32[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[25]~25_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_B~1_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|B|Q32\(25));

-- Location: LCCOMB_X53_Y37_N30
\main_processor|Dpth|M5|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M5|Mux6~0_combout\ = (\main_processor|C1|IM_MUX2\(0) & ((\main_processor|C1|IM_MUX2\(1)))) # (!\main_processor|C1|IM_MUX2\(0) & (\main_processor|Dpth|B|Q32\(25) & !\main_processor|C1|IM_MUX2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|C1|IM_MUX2\(0),
	datac => \main_processor|Dpth|B|Q32\(25),
	datad => \main_processor|C1|IM_MUX2\(1),
	combout => \main_processor|Dpth|M5|Mux6~0_combout\);

-- Location: LCCOMB_X53_Y34_N8
\main_processor|Dpth|ALU|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux6~0_combout\ = (\main_processor|C1|IM_MUX1~combout\ & (\main_processor|Dpth|IR|Q32\(9))) # (!\main_processor|C1|IM_MUX1~combout\ & ((\main_processor|Dpth|A|Q32\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(9),
	datab => \main_processor|Dpth|A|Q32\(25),
	datad => \main_processor|C1|IM_MUX1~combout\,
	combout => \main_processor|Dpth|ALU|Mux6~0_combout\);

-- Location: LCCOMB_X52_Y37_N16
\main_processor|Dpth|ALU|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux6~1_combout\ = (\main_processor|C1|ALU_op\(0) & (((\main_processor|Dpth|M4|Out2[26]~26_combout\) # (!\main_processor|C1|ALU_op\(2))))) # (!\main_processor|C1|ALU_op\(0) & (\main_processor|Dpth|M4|Out2[24]~24_combout\ & 
-- (\main_processor|C1|ALU_op\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(0),
	datab => \main_processor|Dpth|M4|Out2[24]~24_combout\,
	datac => \main_processor|C1|ALU_op\(2),
	datad => \main_processor|Dpth|M4|Out2[26]~26_combout\,
	combout => \main_processor|Dpth|ALU|Mux6~1_combout\);

-- Location: LCCOMB_X52_Y37_N10
\main_processor|Dpth|ALU|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux6~2_combout\ = (\main_processor|C1|ALU_op\(2) & (((\main_processor|Dpth|ALU|Mux6~1_combout\)))) # (!\main_processor|C1|ALU_op\(2) & ((\main_processor|Dpth|M5|Mux6~0_combout\ & ((\main_processor|Dpth|ALU|Mux6~0_combout\) # 
-- (\main_processor|Dpth|ALU|Mux6~1_combout\))) # (!\main_processor|Dpth|M5|Mux6~0_combout\ & (\main_processor|Dpth|ALU|Mux6~0_combout\ & \main_processor|Dpth|ALU|Mux6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(2),
	datab => \main_processor|Dpth|M5|Mux6~0_combout\,
	datac => \main_processor|Dpth|ALU|Mux6~0_combout\,
	datad => \main_processor|Dpth|ALU|Mux6~1_combout\,
	combout => \main_processor|Dpth|ALU|Mux6~2_combout\);

-- Location: LCCOMB_X52_Y37_N12
\main_processor|Dpth|ALU|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux6~3_combout\ = (\main_processor|Dpth|ALU|Mux6~2_combout\ & (((\main_processor|Dpth|ALU|Mux23~0_combout\ & \main_processor|Dpth|ALU|Add0~50_combout\)) # (!\main_processor|C1|ALU_op\(1)))) # 
-- (!\main_processor|Dpth|ALU|Mux6~2_combout\ & (\main_processor|Dpth|ALU|Mux23~0_combout\ & ((\main_processor|Dpth|ALU|Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux6~2_combout\,
	datab => \main_processor|Dpth|ALU|Mux23~0_combout\,
	datac => \main_processor|C1|ALU_op\(1),
	datad => \main_processor|Dpth|ALU|Add0~50_combout\,
	combout => \main_processor|Dpth|ALU|Mux6~3_combout\);

-- Location: LCCOMB_X52_Y37_N14
\main_processor|Dpth|ALU|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux6~4_combout\ = (\main_processor|Dpth|ALU|Mux6~3_combout\) # ((\main_processor|Dpth|ALU|Mux23~1_combout\ & \main_processor|Dpth|ALU|Add1~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|ALU|Mux23~1_combout\,
	datac => \main_processor|Dpth|ALU|Add1~50_combout\,
	datad => \main_processor|Dpth|ALU|Mux6~3_combout\,
	combout => \main_processor|Dpth|ALU|Mux6~4_combout\);

-- Location: LCCOMB_X52_Y37_N24
\main_processor|Dpth|M6|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux6~3_combout\ = (\main_processor|Dpth|M6|Mux6~2_combout\) # ((\main_processor|C1|DATA_Mux\(1) & (!\main_processor|C1|DATA_Mux\(0) & \main_processor|Dpth|ALU|Mux6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_processor|Dpth|ALU|Mux6~4_combout\,
	datad => \main_processor|Dpth|M6|Mux6~2_combout\,
	combout => \main_processor|Dpth|M6|Mux6~3_combout\);

-- Location: FF_X55_Y37_N23
\main_processor|Dpth|IR|Q32[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M6|Mux6~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ALT_INV_ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|IR|Q32\(25));

-- Location: LCCOMB_X54_Y37_N30
\main_processor|C1|ALU_op~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|ALU_op~2_combout\ = (\main_processor|Dpth|IR|Q32\(29) & ((\main_processor|Dpth|IR|Q32\(25) & ((\main_processor|Dpth|IR|Q32\(26)) # (!\main_processor|Dpth|IR|Q32\(24)))) # (!\main_processor|Dpth|IR|Q32\(25) & 
-- (\main_processor|Dpth|IR|Q32\(26) & !\main_processor|Dpth|IR|Q32\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(29),
	datab => \main_processor|Dpth|IR|Q32\(25),
	datac => \main_processor|Dpth|IR|Q32\(26),
	datad => \main_processor|Dpth|IR|Q32\(24),
	combout => \main_processor|C1|ALU_op~2_combout\);

-- Location: LCCOMB_X54_Y37_N0
\main_processor|C1|ALU_op[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|ALU_op\(2) = (GLOBAL(\main_processor|R1|Enable_PD~clkctrl_outclk\) & (\main_processor|C1|ALU_op~2_combout\)) # (!GLOBAL(\main_processor|R1|Enable_PD~clkctrl_outclk\) & ((\main_processor|C1|ALU_op\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op~2_combout\,
	datab => \main_processor|C1|ALU_op\(2),
	datad => \main_processor|R1|Enable_PD~clkctrl_outclk\,
	combout => \main_processor|C1|ALU_op\(2));

-- Location: LCCOMB_X48_Y37_N4
\main_processor|Dpth|ALU|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux2~0_combout\ = (\main_processor|C1|IM_MUX1~combout\ & (\main_processor|Dpth|IR|Q32\(13))) # (!\main_processor|C1|IM_MUX1~combout\ & ((\main_processor|Dpth|A|Q32\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|IR|Q32\(13),
	datac => \main_processor|Dpth|A|Q32\(29),
	datad => \main_processor|C1|IM_MUX1~combout\,
	combout => \main_processor|Dpth|ALU|Mux2~0_combout\);

-- Location: LCCOMB_X48_Y37_N2
\main_processor|Dpth|ALU|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux2~1_combout\ = (\main_processor|C1|ALU_op\(0) & (((\main_processor|Dpth|M4|Out2[30]~30_combout\)) # (!\main_processor|C1|ALU_op\(2)))) # (!\main_processor|C1|ALU_op\(0) & (\main_processor|C1|ALU_op\(2) & 
-- ((\main_processor|Dpth|M4|Out2[28]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(0),
	datab => \main_processor|C1|ALU_op\(2),
	datac => \main_processor|Dpth|M4|Out2[30]~30_combout\,
	datad => \main_processor|Dpth|M4|Out2[28]~28_combout\,
	combout => \main_processor|Dpth|ALU|Mux2~1_combout\);

-- Location: LCCOMB_X48_Y37_N12
\main_processor|Dpth|ALU|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux2~2_combout\ = (\main_processor|C1|ALU_op\(2) & (((\main_processor|Dpth|ALU|Mux2~1_combout\)))) # (!\main_processor|C1|ALU_op\(2) & ((\main_processor|Dpth|ALU|Mux2~0_combout\ & ((\main_processor|Dpth|M5|Mux2~0_combout\) # 
-- (\main_processor|Dpth|ALU|Mux2~1_combout\))) # (!\main_processor|Dpth|ALU|Mux2~0_combout\ & (\main_processor|Dpth|M5|Mux2~0_combout\ & \main_processor|Dpth|ALU|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(2),
	datab => \main_processor|Dpth|ALU|Mux2~0_combout\,
	datac => \main_processor|Dpth|M5|Mux2~0_combout\,
	datad => \main_processor|Dpth|ALU|Mux2~1_combout\,
	combout => \main_processor|Dpth|ALU|Mux2~2_combout\);

-- Location: LCCOMB_X53_Y37_N26
\main_processor|Dpth|ALU|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux2~3_combout\ = (\main_processor|Dpth|ALU|Mux2~2_combout\ & (((\main_processor|Dpth|ALU|Mux23~0_combout\ & \main_processor|Dpth|ALU|Add0~58_combout\)) # (!\main_processor|C1|ALU_op\(1)))) # 
-- (!\main_processor|Dpth|ALU|Mux2~2_combout\ & (((\main_processor|Dpth|ALU|Mux23~0_combout\ & \main_processor|Dpth|ALU|Add0~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux2~2_combout\,
	datab => \main_processor|C1|ALU_op\(1),
	datac => \main_processor|Dpth|ALU|Mux23~0_combout\,
	datad => \main_processor|Dpth|ALU|Add0~58_combout\,
	combout => \main_processor|Dpth|ALU|Mux2~3_combout\);

-- Location: LCCOMB_X55_Y37_N26
\main_processor|Dpth|ALU|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux2~4_combout\ = (\main_processor|Dpth|ALU|Mux2~3_combout\) # ((\main_processor|Dpth|ALU|Mux23~1_combout\ & \main_processor|Dpth|ALU|Add1~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux23~1_combout\,
	datac => \main_processor|Dpth|ALU|Mux2~3_combout\,
	datad => \main_processor|Dpth|ALU|Add1~58_combout\,
	combout => \main_processor|Dpth|ALU|Mux2~4_combout\);

-- Location: LCCOMB_X55_Y37_N8
\main_processor|Dpth|M6|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux2~3_combout\ = (\main_processor|Dpth|M6|Mux2~2_combout\) # ((\main_processor|C1|DATA_Mux\(1) & (!\main_processor|C1|DATA_Mux\(0) & \main_processor|Dpth|ALU|Mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_processor|Dpth|ALU|Mux2~4_combout\,
	datad => \main_processor|Dpth|M6|Mux2~2_combout\,
	combout => \main_processor|Dpth|M6|Mux2~3_combout\);

-- Location: FF_X55_Y37_N21
\main_processor|Dpth|IR|Q32[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M6|Mux2~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ALT_INV_ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|IR|Q32\(29));

-- Location: LCCOMB_X54_Y37_N22
\main_processor|C1|clr_B~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|clr_B~0_combout\ = (!\main_processor|Dpth|IR|Q32\(27) & (!\main_processor|Dpth|IR|Q32\(24) & (\main_processor|Dpth|IR|Q32\(26) & \main_processor|Dpth|IR|Q32\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(27),
	datab => \main_processor|Dpth|IR|Q32\(24),
	datac => \main_processor|Dpth|IR|Q32\(26),
	datad => \main_processor|Dpth|IR|Q32\(25),
	combout => \main_processor|C1|clr_B~0_combout\);

-- Location: LCCOMB_X54_Y37_N24
\main_processor|C1|clr_B~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|clr_B~1_combout\ = (\main_processor|C1|clr_A~0_combout\ & ((\main_processor|Dpth|IR|Q32\(29) & (\main_processor|Dpth|IR|Q32\(28) & \main_processor|C1|clr_B~0_combout\)) # (!\main_processor|Dpth|IR|Q32\(29) & 
-- (!\main_processor|Dpth|IR|Q32\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(29),
	datab => \main_processor|Dpth|IR|Q32\(28),
	datac => \main_processor|C1|clr_B~0_combout\,
	datad => \main_processor|C1|clr_A~0_combout\,
	combout => \main_processor|C1|clr_B~1_combout\);

-- Location: FF_X52_Y36_N3
\main_processor|Dpth|B|Q32[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[7]~7_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_B~1_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_B~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|B|Q32\(7));

-- Location: LCCOMB_X53_Y36_N26
\main_processor|Dpth|M5|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M5|Mux24~0_combout\ = (\main_processor|C1|IM_MUX2\(1) & (((\main_processor|C1|IM_MUX2\(0))))) # (!\main_processor|C1|IM_MUX2\(1) & ((\main_processor|C1|IM_MUX2\(0) & ((\main_processor|Dpth|IR|Q32\(7)))) # 
-- (!\main_processor|C1|IM_MUX2\(0) & (\main_processor|Dpth|B|Q32\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|B|Q32\(7),
	datab => \main_processor|Dpth|IR|Q32\(7),
	datac => \main_processor|C1|IM_MUX2\(1),
	datad => \main_processor|C1|IM_MUX2\(0),
	combout => \main_processor|Dpth|M5|Mux24~0_combout\);

-- Location: LCCOMB_X49_Y39_N12
\main_processor|Dpth|ALU|Mux24~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux24~9_combout\ = (\main_processor|C1|ALU_op\(1) & (\main_processor|C1|ALU_op\(0))) # (!\main_processor|C1|ALU_op\(1) & ((\main_processor|C1|ALU_op\(0) & ((\main_processor|Dpth|M5|Mux24~0_combout\) # 
-- (\main_processor|Dpth|M4|Out2[7]~7_combout\))) # (!\main_processor|C1|ALU_op\(0) & (\main_processor|Dpth|M5|Mux24~0_combout\ & \main_processor|Dpth|M4|Out2[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(1),
	datab => \main_processor|C1|ALU_op\(0),
	datac => \main_processor|Dpth|M5|Mux24~0_combout\,
	datad => \main_processor|Dpth|M4|Out2[7]~7_combout\,
	combout => \main_processor|Dpth|ALU|Mux24~9_combout\);

-- Location: LCCOMB_X49_Y39_N26
\main_processor|Dpth|ALU|Mux24~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux24~11_combout\ = (!\main_processor|C1|IM_MUX1~combout\ & ((\main_processor|C1|ALU_op\(0) & (\main_processor|Dpth|A|Q32\(8))) # (!\main_processor|C1|ALU_op\(0) & ((\main_processor|Dpth|A|Q32\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|A|Q32\(8),
	datab => \main_processor|C1|ALU_op\(0),
	datac => \main_processor|Dpth|A|Q32\(6),
	datad => \main_processor|C1|IM_MUX1~combout\,
	combout => \main_processor|Dpth|ALU|Mux24~11_combout\);

-- Location: LCCOMB_X49_Y39_N6
\main_processor|Dpth|ALU|Mux24~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux24~8_combout\ = (\main_processor|C1|ALU_op\(1) & ((\main_processor|C1|ALU_op\(2) & (\main_processor|Dpth|ALU|Add1~14_combout\)) # (!\main_processor|C1|ALU_op\(2) & ((\main_processor|Dpth|ALU|Add0~14_combout\))))) # 
-- (!\main_processor|C1|ALU_op\(1) & (\main_processor|C1|ALU_op\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(1),
	datab => \main_processor|C1|ALU_op\(2),
	datac => \main_processor|Dpth|ALU|Add1~14_combout\,
	datad => \main_processor|Dpth|ALU|Add0~14_combout\,
	combout => \main_processor|Dpth|ALU|Mux24~8_combout\);

-- Location: LCCOMB_X49_Y39_N18
\main_processor|Dpth|ALU|Mux24~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux24~10_combout\ = (\main_processor|C1|ALU_op\(1) & (!\main_processor|Dpth|ALU|Mux24~9_combout\ & ((\main_processor|Dpth|ALU|Mux24~8_combout\)))) # (!\main_processor|C1|ALU_op\(1) & ((\main_processor|Dpth|ALU|Mux24~8_combout\ & 
-- ((\main_processor|Dpth|ALU|Mux24~11_combout\))) # (!\main_processor|Dpth|ALU|Mux24~8_combout\ & (\main_processor|Dpth|ALU|Mux24~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux24~9_combout\,
	datab => \main_processor|C1|ALU_op\(1),
	datac => \main_processor|Dpth|ALU|Mux24~11_combout\,
	datad => \main_processor|Dpth|ALU|Mux24~8_combout\,
	combout => \main_processor|Dpth|ALU|Mux24~10_combout\);

-- Location: LCCOMB_X50_Y36_N30
\main_processor|Dpth|D1|data_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|D1|data_out~7_combout\ = (!\main_processor|C1|wen~1_combout\ & (\main_processor|C1|present_state.state_2~q\ & (\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a7\ & \main_processor|C1|Mux23~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|wen~1_combout\,
	datab => \main_processor|C1|present_state.state_2~q\,
	datac => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a7\,
	datad => \main_processor|C1|Mux23~0_combout\,
	combout => \main_processor|Dpth|D1|data_out~7_combout\);

-- Location: FF_X50_Y36_N31
\main_processor|Dpth|D1|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|D1|data_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|D1|data_out\(7));

-- Location: LCCOMB_X50_Y36_N24
\main_processor|Dpth|M6|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux24~2_combout\ = (\main_processor|C1|DATA_Mux\(0) & ((\main_processor|C1|DATA_Mux\(1)) # ((\main_processor|Dpth|D1|data_out\(7))))) # (!\main_processor|C1|DATA_Mux\(0) & (!\main_processor|C1|DATA_Mux\(1) & 
-- ((\main_memory|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(0),
	datab => \main_processor|C1|DATA_Mux\(1),
	datac => \main_processor|Dpth|D1|data_out\(7),
	datad => \main_memory|altsyncram_component|auto_generated|q_a\(7),
	combout => \main_processor|Dpth|M6|Mux24~2_combout\);

-- Location: LCCOMB_X52_Y36_N6
\main_processor|Dpth|M6|Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux24~3_combout\ = (\main_processor|Dpth|M6|Mux24~2_combout\) # ((\main_processor|C1|DATA_Mux\(1) & (!\main_processor|C1|DATA_Mux\(0) & \main_processor|Dpth|ALU|Mux24~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_processor|Dpth|ALU|Mux24~10_combout\,
	datad => \main_processor|Dpth|M6|Mux24~2_combout\,
	combout => \main_processor|Dpth|M6|Mux24~3_combout\);

-- Location: FF_X53_Y36_N1
\main_processor|Dpth|IR|Q32[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M6|Mux24~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ALT_INV_ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|IR|Q32\(7));

-- Location: LCCOMB_X53_Y34_N10
\main_processor|Dpth|M4|Out2[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M4|Out2[23]~23_combout\ = (\main_processor|C1|IM_MUX1~combout\ & (\main_processor|Dpth|IR|Q32\(7))) # (!\main_processor|C1|IM_MUX1~combout\ & ((\main_processor|Dpth|A|Q32\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|IR|Q32\(7),
	datac => \main_processor|Dpth|A|Q32\(23),
	datad => \main_processor|C1|IM_MUX1~combout\,
	combout => \main_processor|Dpth|M4|Out2[23]~23_combout\);

-- Location: LCCOMB_X53_Y34_N16
\main_processor|Dpth|ALU|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux7~0_combout\ = (\main_processor|C1|ALU_op\(0) & ((\main_processor|Dpth|M4|Out2[24]~24_combout\) # ((\main_processor|C1|ALU_op\(2)) # (\main_processor|Dpth|M5|Mux7~0_combout\)))) # (!\main_processor|C1|ALU_op\(0) & 
-- (\main_processor|Dpth|M4|Out2[24]~24_combout\ & (!\main_processor|C1|ALU_op\(2) & \main_processor|Dpth|M5|Mux7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(0),
	datab => \main_processor|Dpth|M4|Out2[24]~24_combout\,
	datac => \main_processor|C1|ALU_op\(2),
	datad => \main_processor|Dpth|M5|Mux7~0_combout\,
	combout => \main_processor|Dpth|ALU|Mux7~0_combout\);

-- Location: LCCOMB_X53_Y34_N26
\main_processor|Dpth|ALU|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux7~1_combout\ = (\main_processor|C1|ALU_op\(2) & ((\main_processor|Dpth|ALU|Mux7~0_combout\ & ((\main_processor|Dpth|M4|Out2[25]~25_combout\))) # (!\main_processor|Dpth|ALU|Mux7~0_combout\ & 
-- (\main_processor|Dpth|M4|Out2[23]~23_combout\)))) # (!\main_processor|C1|ALU_op\(2) & (((\main_processor|Dpth|ALU|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M4|Out2[23]~23_combout\,
	datab => \main_processor|Dpth|M4|Out2[25]~25_combout\,
	datac => \main_processor|C1|ALU_op\(2),
	datad => \main_processor|Dpth|ALU|Mux7~0_combout\,
	combout => \main_processor|Dpth|ALU|Mux7~1_combout\);

-- Location: LCCOMB_X53_Y37_N24
\main_processor|Dpth|ALU|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux7~2_combout\ = (\main_processor|C1|ALU_op\(1) & (((\main_processor|Dpth|ALU|Mux23~0_combout\ & \main_processor|Dpth|ALU|Add0~48_combout\)))) # (!\main_processor|C1|ALU_op\(1) & ((\main_processor|Dpth|ALU|Mux7~1_combout\) # 
-- ((\main_processor|Dpth|ALU|Mux23~0_combout\ & \main_processor|Dpth|ALU|Add0~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(1),
	datab => \main_processor|Dpth|ALU|Mux7~1_combout\,
	datac => \main_processor|Dpth|ALU|Mux23~0_combout\,
	datad => \main_processor|Dpth|ALU|Add0~48_combout\,
	combout => \main_processor|Dpth|ALU|Mux7~2_combout\);

-- Location: LCCOMB_X56_Y37_N8
\main_processor|Dpth|ALU|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux7~3_combout\ = (\main_processor|Dpth|ALU|Mux7~2_combout\) # ((\main_processor|Dpth|ALU|Mux23~1_combout\ & \main_processor|Dpth|ALU|Add1~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|ALU|Mux23~1_combout\,
	datac => \main_processor|Dpth|ALU|Mux7~2_combout\,
	datad => \main_processor|Dpth|ALU|Add1~48_combout\,
	combout => \main_processor|Dpth|ALU|Mux7~3_combout\);

-- Location: LCCOMB_X56_Y37_N12
\main_processor|Dpth|M6|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux7~3_combout\ = (\main_processor|Dpth|M6|Mux7~2_combout\) # ((\main_processor|C1|DATA_Mux\(1) & (!\main_processor|C1|DATA_Mux\(0) & \main_processor|Dpth|ALU|Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_processor|Dpth|ALU|Mux7~3_combout\,
	datad => \main_processor|Dpth|M6|Mux7~2_combout\,
	combout => \main_processor|Dpth|M6|Mux7~3_combout\);

-- Location: FF_X55_Y37_N29
\main_processor|Dpth|IR|Q32[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M6|Mux7~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ALT_INV_ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|IR|Q32\(24));

-- Location: LCCOMB_X55_Y37_N2
\main_processor|C1|ALU_op~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|ALU_op~1_combout\ = (\main_processor|Dpth|IR|Q32\(24) & (\main_processor|Dpth|IR|Q32\(29) & \main_processor|Dpth|IR|Q32\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(24),
	datab => \main_processor|Dpth|IR|Q32\(29),
	datad => \main_processor|Dpth|IR|Q32\(26),
	combout => \main_processor|C1|ALU_op~1_combout\);

-- Location: LCCOMB_X55_Y37_N14
\main_processor|C1|ALU_op[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|ALU_op\(0) = (GLOBAL(\main_processor|R1|Enable_PD~clkctrl_outclk\) & ((\main_processor|C1|ALU_op~1_combout\))) # (!GLOBAL(\main_processor|R1|Enable_PD~clkctrl_outclk\) & (\main_processor|C1|ALU_op\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|C1|ALU_op\(0),
	datac => \main_processor|C1|ALU_op~1_combout\,
	datad => \main_processor|R1|Enable_PD~clkctrl_outclk\,
	combout => \main_processor|C1|ALU_op\(0));

-- Location: LCCOMB_X55_Y38_N14
\main_processor|Dpth|ALU|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux23~1_combout\ = (!\main_processor|C1|ALU_op\(0) & (\main_processor|C1|ALU_op\(2) & \main_processor|C1|ALU_op\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(0),
	datab => \main_processor|C1|ALU_op\(2),
	datad => \main_processor|C1|ALU_op\(1),
	combout => \main_processor|Dpth|ALU|Mux23~1_combout\);

-- Location: LCCOMB_X55_Y38_N30
\main_processor|Dpth|ALU|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux20~1_combout\ = (\main_processor|C1|ALU_op\(2) & ((\main_processor|C1|ALU_op\(0) & (\main_processor|Dpth|M4|Out2[12]~12_combout\)) # (!\main_processor|C1|ALU_op\(0) & ((\main_processor|Dpth|M4|Out2[10]~10_combout\))))) # 
-- (!\main_processor|C1|ALU_op\(2) & (\main_processor|C1|ALU_op\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(2),
	datab => \main_processor|C1|ALU_op\(0),
	datac => \main_processor|Dpth|M4|Out2[12]~12_combout\,
	datad => \main_processor|Dpth|M4|Out2[10]~10_combout\,
	combout => \main_processor|Dpth|ALU|Mux20~1_combout\);

-- Location: LCCOMB_X55_Y38_N16
\main_processor|Dpth|ALU|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux20~0_combout\ = (\main_processor|Dpth|M5|Mux20~0_combout\ & ((\main_processor|C1|ALU_op\(0)) # ((\main_processor|Dpth|A|Q32\(11) & !\main_processor|C1|IM_MUX1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|A|Q32\(11),
	datab => \main_processor|C1|IM_MUX1~combout\,
	datac => \main_processor|Dpth|M5|Mux20~0_combout\,
	datad => \main_processor|C1|ALU_op\(0),
	combout => \main_processor|Dpth|ALU|Mux20~0_combout\);

-- Location: LCCOMB_X55_Y38_N0
\main_processor|Dpth|ALU|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux20~2_combout\ = (\main_processor|C1|ALU_op\(2) & (((\main_processor|Dpth|ALU|Mux20~1_combout\)))) # (!\main_processor|C1|ALU_op\(2) & ((\main_processor|Dpth|ALU|Mux20~0_combout\) # ((\main_processor|Dpth|M4|Out2[11]~11_combout\ 
-- & \main_processor|Dpth|ALU|Mux20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(2),
	datab => \main_processor|Dpth|M4|Out2[11]~11_combout\,
	datac => \main_processor|Dpth|ALU|Mux20~1_combout\,
	datad => \main_processor|Dpth|ALU|Mux20~0_combout\,
	combout => \main_processor|Dpth|ALU|Mux20~2_combout\);

-- Location: LCCOMB_X55_Y38_N22
\main_processor|Dpth|ALU|Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux20~3_combout\ = (\main_processor|C1|ALU_op\(1) & (\main_processor|Dpth|ALU|Add0~22_combout\ & (\main_processor|Dpth|ALU|Mux23~0_combout\))) # (!\main_processor|C1|ALU_op\(1) & ((\main_processor|Dpth|ALU|Mux20~2_combout\) # 
-- ((\main_processor|Dpth|ALU|Add0~22_combout\ & \main_processor|Dpth|ALU|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(1),
	datab => \main_processor|Dpth|ALU|Add0~22_combout\,
	datac => \main_processor|Dpth|ALU|Mux23~0_combout\,
	datad => \main_processor|Dpth|ALU|Mux20~2_combout\,
	combout => \main_processor|Dpth|ALU|Mux20~3_combout\);

-- Location: LCCOMB_X55_Y38_N20
\main_processor|Dpth|ALU|Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux20~4_combout\ = (\main_processor|Dpth|ALU|Mux20~3_combout\) # ((\main_processor|Dpth|ALU|Mux23~1_combout\ & \main_processor|Dpth|ALU|Add1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|ALU|Mux23~1_combout\,
	datac => \main_processor|Dpth|ALU|Mux20~3_combout\,
	datad => \main_processor|Dpth|ALU|Add1~22_combout\,
	combout => \main_processor|Dpth|ALU|Mux20~4_combout\);

-- Location: LCCOMB_X55_Y36_N24
\main_processor|Dpth|D1|data_out~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|D1|data_out~11_combout\ = (!\main_processor|C1|wen~1_combout\ & (\main_processor|C1|Mux23~0_combout\ & (\main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a11\ & \main_processor|C1|present_state.state_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|wen~1_combout\,
	datab => \main_processor|C1|Mux23~0_combout\,
	datac => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a11\,
	datad => \main_processor|C1|present_state.state_2~q\,
	combout => \main_processor|Dpth|D1|data_out~11_combout\);

-- Location: FF_X55_Y36_N25
\main_processor|Dpth|D1|data_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|D1|data_out~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|D1|data_out\(11));

-- Location: LCCOMB_X55_Y38_N10
\main_processor|Dpth|M6|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux20~2_combout\ = (\main_processor|C1|DATA_Mux\(0) & ((\main_processor|C1|DATA_Mux\(1)) # ((\main_processor|Dpth|D1|data_out\(11))))) # (!\main_processor|C1|DATA_Mux\(0) & (!\main_processor|C1|DATA_Mux\(1) & 
-- (\main_memory|altsyncram_component|auto_generated|q_a\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(0),
	datab => \main_processor|C1|DATA_Mux\(1),
	datac => \main_memory|altsyncram_component|auto_generated|q_a\(11),
	datad => \main_processor|Dpth|D1|data_out\(11),
	combout => \main_processor|Dpth|M6|Mux20~2_combout\);

-- Location: LCCOMB_X55_Y38_N2
\main_processor|Dpth|M6|Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux20~3_combout\ = (\main_processor|Dpth|M6|Mux20~2_combout\) # ((\main_processor|C1|DATA_Mux\(1) & (\main_processor|Dpth|ALU|Mux20~4_combout\ & !\main_processor|C1|DATA_Mux\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|Dpth|ALU|Mux20~4_combout\,
	datac => \main_processor|C1|DATA_Mux\(0),
	datad => \main_processor|Dpth|M6|Mux20~2_combout\,
	combout => \main_processor|Dpth|M6|Mux20~3_combout\);

-- Location: LCCOMB_X54_Y39_N28
\main_processor|Dpth|IR|Q32[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|IR|Q32[11]~feeder_combout\ = \main_processor|Dpth|M6|Mux20~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_processor|Dpth|M6|Mux20~3_combout\,
	combout => \main_processor|Dpth|IR|Q32[11]~feeder_combout\);

-- Location: FF_X54_Y39_N29
\main_processor|Dpth|IR|Q32[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|IR|Q32[11]~feeder_combout\,
	ena => \main_processor|C1|ALT_INV_ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|IR|Q32\(11));

-- Location: LCCOMB_X49_Y37_N2
\main_processor|Dpth|M4|Out2[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M4|Out2[27]~27_combout\ = (\main_processor|C1|IM_MUX1~combout\ & (\main_processor|Dpth|IR|Q32\(11))) # (!\main_processor|C1|IM_MUX1~combout\ & ((\main_processor|Dpth|A|Q32\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(11),
	datac => \main_processor|Dpth|A|Q32\(27),
	datad => \main_processor|C1|IM_MUX1~combout\,
	combout => \main_processor|Dpth|M4|Out2[27]~27_combout\);

-- Location: LCCOMB_X49_Y37_N30
\main_processor|Dpth|ALU|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux4~1_combout\ = (\main_processor|C1|ALU_op\(0) & (((\main_processor|Dpth|M4|Out2[28]~28_combout\) # (!\main_processor|C1|ALU_op\(2))))) # (!\main_processor|C1|ALU_op\(0) & (\main_processor|Dpth|M4|Out2[26]~26_combout\ & 
-- (\main_processor|C1|ALU_op\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(0),
	datab => \main_processor|Dpth|M4|Out2[26]~26_combout\,
	datac => \main_processor|C1|ALU_op\(2),
	datad => \main_processor|Dpth|M4|Out2[28]~28_combout\,
	combout => \main_processor|Dpth|ALU|Mux4~1_combout\);

-- Location: LCCOMB_X49_Y37_N0
\main_processor|Dpth|ALU|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux4~0_combout\ = (\main_processor|C1|IM_MUX1~combout\ & (\main_processor|Dpth|IR|Q32\(11))) # (!\main_processor|C1|IM_MUX1~combout\ & ((\main_processor|Dpth|A|Q32\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(11),
	datab => \main_processor|Dpth|A|Q32\(27),
	datad => \main_processor|C1|IM_MUX1~combout\,
	combout => \main_processor|Dpth|ALU|Mux4~0_combout\);

-- Location: LCCOMB_X49_Y37_N12
\main_processor|Dpth|ALU|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux4~2_combout\ = (\main_processor|C1|ALU_op\(2) & (((\main_processor|Dpth|ALU|Mux4~1_combout\)))) # (!\main_processor|C1|ALU_op\(2) & ((\main_processor|Dpth|M5|Mux4~0_combout\ & ((\main_processor|Dpth|ALU|Mux4~1_combout\) # 
-- (\main_processor|Dpth|ALU|Mux4~0_combout\))) # (!\main_processor|Dpth|M5|Mux4~0_combout\ & (\main_processor|Dpth|ALU|Mux4~1_combout\ & \main_processor|Dpth|ALU|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(2),
	datab => \main_processor|Dpth|M5|Mux4~0_combout\,
	datac => \main_processor|Dpth|ALU|Mux4~1_combout\,
	datad => \main_processor|Dpth|ALU|Mux4~0_combout\,
	combout => \main_processor|Dpth|ALU|Mux4~2_combout\);

-- Location: LCCOMB_X53_Y37_N28
\main_processor|Dpth|ALU|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux4~3_combout\ = (\main_processor|C1|ALU_op\(1) & (((\main_processor|Dpth|ALU|Mux23~0_combout\ & \main_processor|Dpth|ALU|Add0~54_combout\)))) # (!\main_processor|C1|ALU_op\(1) & ((\main_processor|Dpth|ALU|Mux4~2_combout\) # 
-- ((\main_processor|Dpth|ALU|Mux23~0_combout\ & \main_processor|Dpth|ALU|Add0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(1),
	datab => \main_processor|Dpth|ALU|Mux4~2_combout\,
	datac => \main_processor|Dpth|ALU|Mux23~0_combout\,
	datad => \main_processor|Dpth|ALU|Add0~54_combout\,
	combout => \main_processor|Dpth|ALU|Mux4~3_combout\);

-- Location: LCCOMB_X54_Y37_N4
\main_processor|Dpth|ALU|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux4~4_combout\ = (\main_processor|Dpth|ALU|Mux4~3_combout\) # ((\main_processor|Dpth|ALU|Add1~54_combout\ & \main_processor|Dpth|ALU|Mux23~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Add1~54_combout\,
	datab => \main_processor|Dpth|ALU|Mux23~1_combout\,
	datad => \main_processor|Dpth|ALU|Mux4~3_combout\,
	combout => \main_processor|Dpth|ALU|Mux4~4_combout\);

-- Location: LCCOMB_X54_Y37_N8
\main_processor|Dpth|M6|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux4~3_combout\ = (\main_processor|Dpth|M6|Mux4~2_combout\) # ((\main_processor|C1|DATA_Mux\(1) & (!\main_processor|C1|DATA_Mux\(0) & \main_processor|Dpth|ALU|Mux4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_processor|Dpth|ALU|Mux4~4_combout\,
	datad => \main_processor|Dpth|M6|Mux4~2_combout\,
	combout => \main_processor|Dpth|M6|Mux4~3_combout\);

-- Location: FF_X54_Y37_N1
\main_processor|Dpth|IR|Q32[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M6|Mux4~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ALT_INV_ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|IR|Q32\(27));

-- Location: LCCOMB_X55_Y37_N12
\main_processor|C1|ALU_op~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|ALU_op~0_combout\ = ((\main_processor|Dpth|IR|Q32\(27) & (!\main_processor|Dpth|IR|Q32\(24) & \main_processor|Dpth|IR|Q32\(26))) # (!\main_processor|Dpth|IR|Q32\(27) & ((!\main_processor|Dpth|IR|Q32\(26))))) # 
-- (!\main_processor|Dpth|IR|Q32\(29))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(27),
	datab => \main_processor|Dpth|IR|Q32\(29),
	datac => \main_processor|Dpth|IR|Q32\(24),
	datad => \main_processor|Dpth|IR|Q32\(26),
	combout => \main_processor|C1|ALU_op~0_combout\);

-- Location: LCCOMB_X55_Y37_N0
\main_processor|C1|ALU_op[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|ALU_op\(1) = (GLOBAL(\main_processor|R1|Enable_PD~clkctrl_outclk\) & ((\main_processor|C1|ALU_op~0_combout\))) # (!GLOBAL(\main_processor|R1|Enable_PD~clkctrl_outclk\) & (\main_processor|C1|ALU_op\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|C1|ALU_op\(1),
	datac => \main_processor|C1|ALU_op~0_combout\,
	datad => \main_processor|R1|Enable_PD~clkctrl_outclk\,
	combout => \main_processor|C1|ALU_op\(1));

-- Location: LCCOMB_X47_Y37_N24
\main_processor|Dpth|ALU|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux0~0_combout\ = (!\main_processor|C1|ALU_op\(2) & ((\main_processor|C1|ALU_op\(0) & ((\main_processor|Dpth|M5|Mux0~0_combout\) # (\main_processor|Dpth|M4|Out2[31]~31_combout\))) # (!\main_processor|C1|ALU_op\(0) & 
-- (\main_processor|Dpth|M5|Mux0~0_combout\ & \main_processor|Dpth|M4|Out2[31]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(0),
	datab => \main_processor|C1|ALU_op\(2),
	datac => \main_processor|Dpth|M5|Mux0~0_combout\,
	datad => \main_processor|Dpth|M4|Out2[31]~31_combout\,
	combout => \main_processor|Dpth|ALU|Mux0~0_combout\);

-- Location: LCCOMB_X53_Y36_N22
\main_processor|Dpth|ALU|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux0~1_combout\ = (!\main_processor|C1|ALU_op\(0) & ((\main_processor|C1|IM_MUX1~combout\ & (\main_processor|Dpth|IR|Q32\(14))) # (!\main_processor|C1|IM_MUX1~combout\ & ((\main_processor|Dpth|A|Q32\(30))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(0),
	datab => \main_processor|C1|IM_MUX1~combout\,
	datac => \main_processor|Dpth|IR|Q32\(14),
	datad => \main_processor|Dpth|A|Q32\(30),
	combout => \main_processor|Dpth|ALU|Mux0~1_combout\);

-- Location: LCCOMB_X49_Y37_N20
\main_processor|Dpth|ALU|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux0~2_combout\ = (!\main_processor|C1|ALU_op\(1) & ((\main_processor|Dpth|ALU|Mux0~0_combout\) # ((\main_processor|C1|ALU_op\(2) & \main_processor|Dpth|ALU|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|ALU_op\(1),
	datab => \main_processor|Dpth|ALU|Mux0~0_combout\,
	datac => \main_processor|C1|ALU_op\(2),
	datad => \main_processor|Dpth|ALU|Mux0~1_combout\,
	combout => \main_processor|Dpth|ALU|Mux0~2_combout\);

-- Location: LCCOMB_X49_Y37_N6
\main_processor|Dpth|D1|data_out~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|D1|data_out~31_combout\ = (!\main_processor|C1|wen~1_combout\ & (\main_processor|C1|present_state.state_2~q\ & (\main_processor|C1|Mux23~0_combout\ & \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|wen~1_combout\,
	datab => \main_processor|C1|present_state.state_2~q\,
	datac => \main_processor|C1|Mux23~0_combout\,
	datad => \main_processor|Dpth|D1|mem_rtl_0|auto_generated|ram_block1a31\,
	combout => \main_processor|Dpth|D1|data_out~31_combout\);

-- Location: FF_X49_Y37_N7
\main_processor|Dpth|D1|data_out[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_memClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|D1|data_out~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|D1|data_out\(31));

-- Location: LCCOMB_X50_Y37_N24
\main_processor|Dpth|M6|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux0~0_combout\ = (\main_processor|C1|DATA_Mux\(1) & (\main_processor|C1|DATA_Mux\(0))) # (!\main_processor|C1|DATA_Mux\(1) & ((\main_processor|C1|DATA_Mux\(0) & (\main_processor|Dpth|D1|data_out\(31))) # 
-- (!\main_processor|C1|DATA_Mux\(0) & ((\main_memory|altsyncram_component|auto_generated|q_a\(31))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|DATA_Mux\(1),
	datab => \main_processor|C1|DATA_Mux\(0),
	datac => \main_processor|Dpth|D1|data_out\(31),
	datad => \main_memory|altsyncram_component|auto_generated|q_a\(31),
	combout => \main_processor|Dpth|M6|Mux0~0_combout\);

-- Location: LCCOMB_X50_Y37_N28
\main_processor|Dpth|M6|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M6|Mux0~1_combout\ = (\main_processor|Dpth|M6|Mux0~0_combout\) # ((\main_processor|Dpth|M6|Mux31~3_combout\ & ((\main_processor|Dpth|ALU|Mux0~2_combout\) # (\main_processor|Dpth|ALU|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|M6|Mux31~3_combout\,
	datab => \main_processor|Dpth|ALU|Mux0~2_combout\,
	datac => \main_processor|Dpth|ALU|Mux0~3_combout\,
	datad => \main_processor|Dpth|M6|Mux0~0_combout\,
	combout => \main_processor|Dpth|M6|Mux0~1_combout\);

-- Location: FF_X54_Y37_N15
\main_processor|Dpth|IR|Q32[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M6|Mux0~1_combout\,
	sload => VCC,
	ena => \main_processor|C1|ALT_INV_ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|IR|Q32\(31));

-- Location: LCCOMB_X54_Y35_N16
\main_processor|C1|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|Selector3~0_combout\ = (\main_processor|Dpth|IR|Q32\(31)) # (\main_processor|C1|present_state.state_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(31),
	datac => \main_processor|C1|present_state.state_2~q\,
	combout => \main_processor|C1|Selector3~0_combout\);

-- Location: LCCOMB_X54_Y35_N18
\main_processor|C1|A_Mux\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|A_Mux~combout\ = (GLOBAL(\main_processor|R1|Enable_PD~clkctrl_outclk\) & (!\main_processor|C1|Selector3~0_combout\)) # (!GLOBAL(\main_processor|R1|Enable_PD~clkctrl_outclk\) & ((\main_processor|C1|A_Mux~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|C1|Selector3~0_combout\,
	datac => \main_processor|R1|Enable_PD~clkctrl_outclk\,
	datad => \main_processor|C1|A_Mux~combout\,
	combout => \main_processor|C1|A_Mux~combout\);

-- Location: LCCOMB_X54_Y36_N26
\main_processor|Dpth|M2|Out2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|M2|Out2[0]~0_combout\ = (\main_processor|C1|A_Mux~combout\ & (\main_processor|Dpth|IR|Q32\(0))) # (!\main_processor|C1|A_Mux~combout\ & ((\main_processor|Dpth|M6|Mux31~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|C1|A_Mux~combout\,
	datac => \main_processor|Dpth|IR|Q32\(0),
	datad => \main_processor|Dpth|M6|Mux31~4_combout\,
	combout => \main_processor|Dpth|M2|Out2[0]~0_combout\);

-- Location: FF_X54_Y36_N29
\main_processor|Dpth|A|Q32[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M2|Out2[0]~0_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_A~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ld_A~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|A|Q32\(0));

-- Location: LCCOMB_X55_Y37_N10
\main_processor|Dpth|ALU|Mux32~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux32~4_combout\ = (\main_processor|C1|ALU_op\(0) & (\main_processor|Dpth|A|Q32\(0) & (!\main_processor|C1|IM_MUX1~combout\))) # (!\main_processor|C1|ALU_op\(0) & (((\main_processor|Dpth|M4|Out2[31]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|A|Q32\(0),
	datab => \main_processor|C1|IM_MUX1~combout\,
	datac => \main_processor|Dpth|M4|Out2[31]~31_combout\,
	datad => \main_processor|C1|ALU_op\(0),
	combout => \main_processor|Dpth|ALU|Mux32~4_combout\);

-- Location: LCCOMB_X53_Y37_N16
\main_processor|Dpth|ALU|Add0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add0~64_combout\ = !\main_processor|Dpth|ALU|Add0~63\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \main_processor|Dpth|ALU|Add0~63\,
	combout => \main_processor|Dpth|ALU|Add0~64_combout\);

-- Location: LCCOMB_X50_Y37_N16
\main_processor|Dpth|ALU|Add1~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Add1~64_combout\ = !\main_processor|Dpth|ALU|Add1~63\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \main_processor|Dpth|ALU|Add1~63\,
	combout => \main_processor|Dpth|ALU|Add1~64_combout\);

-- Location: LCCOMB_X54_Y37_N6
\main_processor|Dpth|ALU|Mux32~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux32~2_combout\ = (\main_processor|Dpth|ALU|Mux23~1_combout\ & ((\main_processor|Dpth|ALU|Add1~64_combout\) # ((\main_processor|Dpth|ALU|Mux23~0_combout\ & \main_processor|Dpth|ALU|Add0~64_combout\)))) # 
-- (!\main_processor|Dpth|ALU|Mux23~1_combout\ & (\main_processor|Dpth|ALU|Mux23~0_combout\ & (\main_processor|Dpth|ALU|Add0~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux23~1_combout\,
	datab => \main_processor|Dpth|ALU|Mux23~0_combout\,
	datac => \main_processor|Dpth|ALU|Add0~64_combout\,
	datad => \main_processor|Dpth|ALU|Add1~64_combout\,
	combout => \main_processor|Dpth|ALU|Mux32~2_combout\);

-- Location: LCCOMB_X54_Y37_N28
\main_processor|Dpth|ALU|Mux32~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ALU|Mux32~3_combout\ = (\main_processor|Dpth|ALU|Mux32~2_combout\) # ((\main_processor|Dpth|ALU|Mux32~4_combout\ & (\main_processor|C1|ALU_op\(2) & !\main_processor|C1|ALU_op\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ALU|Mux32~4_combout\,
	datab => \main_processor|C1|ALU_op\(2),
	datac => \main_processor|C1|ALU_op\(1),
	datad => \main_processor|Dpth|ALU|Mux32~2_combout\,
	combout => \main_processor|Dpth|ALU|Mux32~3_combout\);

-- Location: LCCOMB_X54_Y37_N14
\main_processor|C1|clr_C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|clr_C~0_combout\ = (\main_processor|C1|clr_A~2_combout\ & \main_processor|Dpth|IR|Q32\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|C1|clr_A~2_combout\,
	datad => \main_processor|Dpth|IR|Q32\(25),
	combout => \main_processor|C1|clr_C~0_combout\);

-- Location: FF_X54_Y37_N29
\main_processor|Dpth|C|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|ALU|Mux32~3_combout\,
	clrn => \main_processor|C1|ALT_INV_clr_C~0_combout\,
	ena => \main_processor|C1|ld_C~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|C|Q~q\);

-- Location: FF_X53_Y38_N7
\main_processor|Dpth|IR|Q32[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M6|Mux15~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ALT_INV_ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|IR|Q32\(16));

-- Location: LCCOMB_X49_Y35_N20
\main_processor|Dpth|IR|Q32[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|IR|Q32[17]~feeder_combout\ = \main_processor|Dpth|M6|Mux14~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|Dpth|M6|Mux14~3_combout\,
	combout => \main_processor|Dpth|IR|Q32[17]~feeder_combout\);

-- Location: FF_X49_Y35_N21
\main_processor|Dpth|IR|Q32[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|IR|Q32[17]~feeder_combout\,
	ena => \main_processor|C1|ALT_INV_ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|IR|Q32\(17));

-- Location: LCCOMB_X49_Y35_N30
\main_processor|Dpth|IR|Q32[18]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|IR|Q32[18]~feeder_combout\ = \main_processor|Dpth|M6|Mux13~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|Dpth|M6|Mux13~3_combout\,
	combout => \main_processor|Dpth|IR|Q32[18]~feeder_combout\);

-- Location: FF_X49_Y35_N31
\main_processor|Dpth|IR|Q32[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|IR|Q32[18]~feeder_combout\,
	ena => \main_processor|C1|ALT_INV_ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|IR|Q32\(18));

-- Location: LCCOMB_X48_Y38_N4
\main_processor|Dpth|IR|Q32[19]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|IR|Q32[19]~feeder_combout\ = \main_processor|Dpth|M6|Mux12~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_processor|Dpth|M6|Mux12~3_combout\,
	combout => \main_processor|Dpth|IR|Q32[19]~feeder_combout\);

-- Location: FF_X48_Y38_N5
\main_processor|Dpth|IR|Q32[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|IR|Q32[19]~feeder_combout\,
	ena => \main_processor|C1|ALT_INV_ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|IR|Q32\(19));

-- Location: FF_X48_Y38_N27
\main_processor|Dpth|IR|Q32[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M6|Mux11~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ALT_INV_ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|IR|Q32\(20));

-- Location: FF_X48_Y38_N1
\main_processor|Dpth|IR|Q32[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M6|Mux10~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ALT_INV_ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|IR|Q32\(21));

-- Location: FF_X52_Y37_N29
\main_processor|Dpth|IR|Q32[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	asdata => \main_processor|Dpth|M6|Mux9~3_combout\,
	sload => VCC,
	ena => \main_processor|C1|ALT_INV_ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|IR|Q32\(22));

-- Location: LCCOMB_X52_Y34_N24
\main_processor|Dpth|IR|Q32[23]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|IR|Q32[23]~feeder_combout\ = \main_processor|Dpth|M6|Mux8~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|Dpth|M6|Mux8~3_combout\,
	combout => \main_processor|Dpth|IR|Q32[23]~feeder_combout\);

-- Location: FF_X52_Y34_N25
\main_processor|Dpth|IR|Q32[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|IR|Q32[23]~feeder_combout\,
	ena => \main_processor|C1|ALT_INV_ld_IR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|IR|Q32\(23));

-- Location: LCCOMB_X54_Y29_N12
\main_processor|Dpth|ProgCount|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|Add0~12_combout\ = (\main_processor|Dpth|ProgCount|q[6]~reg0_q\ & (\main_processor|Dpth|ProgCount|Add0~11\ $ (GND))) # (!\main_processor|Dpth|ProgCount|q[6]~reg0_q\ & (!\main_processor|Dpth|ProgCount|Add0~11\ & VCC))
-- \main_processor|Dpth|ProgCount|Add0~13\ = CARRY((\main_processor|Dpth|ProgCount|q[6]~reg0_q\ & !\main_processor|Dpth|ProgCount|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|q[6]~reg0_q\,
	datad => VCC,
	cin => \main_processor|Dpth|ProgCount|Add0~11\,
	combout => \main_processor|Dpth|ProgCount|Add0~12_combout\,
	cout => \main_processor|Dpth|ProgCount|Add0~13\);

-- Location: LCCOMB_X53_Y29_N16
\main_processor|Dpth|ProgCount|q[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q[6]~6_combout\ = (\main_processor|Dpth|ProgCount|process_0~1_combout\ & ((\main_processor|Dpth|ProgCount|Add0~12_combout\))) # (!\main_processor|Dpth|ProgCount|process_0~1_combout\ & (\main_processor|Dpth|IR|Q32\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(6),
	datab => \main_processor|Dpth|ProgCount|Add0~12_combout\,
	datad => \main_processor|Dpth|ProgCount|process_0~1_combout\,
	combout => \main_processor|Dpth|ProgCount|q[6]~6_combout\);

-- Location: FF_X53_Y29_N17
\main_processor|Dpth|ProgCount|q[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|ProgCount|q[6]~6_combout\,
	asdata => \main_processor|Dpth|ProgCount|q[6]~reg0_q\,
	sclr => \main_processor|R1|Clr_PC~q\,
	sload => \main_processor|Dpth|ProgCount|q~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|ProgCount|q[6]~reg0_q\);

-- Location: LCCOMB_X54_Y29_N14
\main_processor|Dpth|ProgCount|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|Add0~14_combout\ = (\main_processor|Dpth|ProgCount|q[7]~reg0_q\ & (!\main_processor|Dpth|ProgCount|Add0~13\)) # (!\main_processor|Dpth|ProgCount|q[7]~reg0_q\ & ((\main_processor|Dpth|ProgCount|Add0~13\) # (GND)))
-- \main_processor|Dpth|ProgCount|Add0~15\ = CARRY((!\main_processor|Dpth|ProgCount|Add0~13\) # (!\main_processor|Dpth|ProgCount|q[7]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|ProgCount|q[7]~reg0_q\,
	datad => VCC,
	cin => \main_processor|Dpth|ProgCount|Add0~13\,
	combout => \main_processor|Dpth|ProgCount|Add0~14_combout\,
	cout => \main_processor|Dpth|ProgCount|Add0~15\);

-- Location: LCCOMB_X53_Y29_N18
\main_processor|Dpth|ProgCount|q[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q[7]~7_combout\ = (\main_processor|Dpth|ProgCount|process_0~1_combout\ & (\main_processor|Dpth|ProgCount|Add0~14_combout\)) # (!\main_processor|Dpth|ProgCount|process_0~1_combout\ & ((\main_processor|Dpth|IR|Q32\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|Add0~14_combout\,
	datab => \main_processor|Dpth|IR|Q32\(7),
	datad => \main_processor|Dpth|ProgCount|process_0~1_combout\,
	combout => \main_processor|Dpth|ProgCount|q[7]~7_combout\);

-- Location: FF_X53_Y29_N19
\main_processor|Dpth|ProgCount|q[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|ProgCount|q[7]~7_combout\,
	asdata => \main_processor|Dpth|ProgCount|q[7]~reg0_q\,
	sclr => \main_processor|R1|Clr_PC~q\,
	sload => \main_processor|Dpth|ProgCount|q~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|ProgCount|q[7]~reg0_q\);

-- Location: LCCOMB_X54_Y29_N16
\main_processor|Dpth|ProgCount|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|Add0~16_combout\ = (\main_processor|Dpth|ProgCount|q[8]~reg0_q\ & (\main_processor|Dpth|ProgCount|Add0~15\ $ (GND))) # (!\main_processor|Dpth|ProgCount|q[8]~reg0_q\ & (!\main_processor|Dpth|ProgCount|Add0~15\ & VCC))
-- \main_processor|Dpth|ProgCount|Add0~17\ = CARRY((\main_processor|Dpth|ProgCount|q[8]~reg0_q\ & !\main_processor|Dpth|ProgCount|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|q[8]~reg0_q\,
	datad => VCC,
	cin => \main_processor|Dpth|ProgCount|Add0~15\,
	combout => \main_processor|Dpth|ProgCount|Add0~16_combout\,
	cout => \main_processor|Dpth|ProgCount|Add0~17\);

-- Location: LCCOMB_X53_Y29_N12
\main_processor|Dpth|ProgCount|q[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q[8]~8_combout\ = (\main_processor|Dpth|ProgCount|process_0~1_combout\ & ((\main_processor|Dpth|ProgCount|Add0~16_combout\))) # (!\main_processor|Dpth|ProgCount|process_0~1_combout\ & (\main_processor|Dpth|IR|Q32\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(8),
	datab => \main_processor|Dpth|ProgCount|process_0~1_combout\,
	datad => \main_processor|Dpth|ProgCount|Add0~16_combout\,
	combout => \main_processor|Dpth|ProgCount|q[8]~8_combout\);

-- Location: FF_X53_Y29_N13
\main_processor|Dpth|ProgCount|q[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|ProgCount|q[8]~8_combout\,
	asdata => \main_processor|Dpth|ProgCount|q[8]~reg0_q\,
	sclr => \main_processor|R1|Clr_PC~q\,
	sload => \main_processor|Dpth|ProgCount|q~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|ProgCount|q[8]~reg0_q\);

-- Location: LCCOMB_X54_Y29_N18
\main_processor|Dpth|ProgCount|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|Add0~18_combout\ = (\main_processor|Dpth|ProgCount|q[9]~reg0_q\ & (!\main_processor|Dpth|ProgCount|Add0~17\)) # (!\main_processor|Dpth|ProgCount|q[9]~reg0_q\ & ((\main_processor|Dpth|ProgCount|Add0~17\) # (GND)))
-- \main_processor|Dpth|ProgCount|Add0~19\ = CARRY((!\main_processor|Dpth|ProgCount|Add0~17\) # (!\main_processor|Dpth|ProgCount|q[9]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|q[9]~reg0_q\,
	datad => VCC,
	cin => \main_processor|Dpth|ProgCount|Add0~17\,
	combout => \main_processor|Dpth|ProgCount|Add0~18_combout\,
	cout => \main_processor|Dpth|ProgCount|Add0~19\);

-- Location: LCCOMB_X53_Y29_N10
\main_processor|Dpth|ProgCount|q[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q[9]~9_combout\ = (\main_processor|Dpth|ProgCount|process_0~1_combout\ & (\main_processor|Dpth|ProgCount|Add0~18_combout\)) # (!\main_processor|Dpth|ProgCount|process_0~1_combout\ & ((\main_processor|Dpth|IR|Q32\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|Add0~18_combout\,
	datab => \main_processor|Dpth|IR|Q32\(9),
	datad => \main_processor|Dpth|ProgCount|process_0~1_combout\,
	combout => \main_processor|Dpth|ProgCount|q[9]~9_combout\);

-- Location: FF_X53_Y29_N11
\main_processor|Dpth|ProgCount|q[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|ProgCount|q[9]~9_combout\,
	asdata => \main_processor|Dpth|ProgCount|q[9]~reg0_q\,
	sclr => \main_processor|R1|Clr_PC~q\,
	sload => \main_processor|Dpth|ProgCount|q~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|ProgCount|q[9]~reg0_q\);

-- Location: LCCOMB_X54_Y29_N20
\main_processor|Dpth|ProgCount|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|Add0~20_combout\ = (\main_processor|Dpth|ProgCount|q[10]~reg0_q\ & (\main_processor|Dpth|ProgCount|Add0~19\ $ (GND))) # (!\main_processor|Dpth|ProgCount|q[10]~reg0_q\ & (!\main_processor|Dpth|ProgCount|Add0~19\ & VCC))
-- \main_processor|Dpth|ProgCount|Add0~21\ = CARRY((\main_processor|Dpth|ProgCount|q[10]~reg0_q\ & !\main_processor|Dpth|ProgCount|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|ProgCount|q[10]~reg0_q\,
	datad => VCC,
	cin => \main_processor|Dpth|ProgCount|Add0~19\,
	combout => \main_processor|Dpth|ProgCount|Add0~20_combout\,
	cout => \main_processor|Dpth|ProgCount|Add0~21\);

-- Location: LCCOMB_X53_Y29_N20
\main_processor|Dpth|ProgCount|q[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q[10]~10_combout\ = (\main_processor|Dpth|ProgCount|process_0~1_combout\ & (\main_processor|Dpth|ProgCount|Add0~20_combout\)) # (!\main_processor|Dpth|ProgCount|process_0~1_combout\ & ((\main_processor|Dpth|IR|Q32\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|Add0~20_combout\,
	datab => \main_processor|Dpth|ProgCount|process_0~1_combout\,
	datad => \main_processor|Dpth|IR|Q32\(10),
	combout => \main_processor|Dpth|ProgCount|q[10]~10_combout\);

-- Location: FF_X53_Y29_N21
\main_processor|Dpth|ProgCount|q[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|ProgCount|q[10]~10_combout\,
	asdata => \main_processor|Dpth|ProgCount|q[10]~reg0_q\,
	sclr => \main_processor|R1|Clr_PC~q\,
	sload => \main_processor|Dpth|ProgCount|q~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|ProgCount|q[10]~reg0_q\);

-- Location: LCCOMB_X54_Y29_N22
\main_processor|Dpth|ProgCount|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|Add0~22_combout\ = (\main_processor|Dpth|ProgCount|q[11]~reg0_q\ & (!\main_processor|Dpth|ProgCount|Add0~21\)) # (!\main_processor|Dpth|ProgCount|q[11]~reg0_q\ & ((\main_processor|Dpth|ProgCount|Add0~21\) # (GND)))
-- \main_processor|Dpth|ProgCount|Add0~23\ = CARRY((!\main_processor|Dpth|ProgCount|Add0~21\) # (!\main_processor|Dpth|ProgCount|q[11]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|q[11]~reg0_q\,
	datad => VCC,
	cin => \main_processor|Dpth|ProgCount|Add0~21\,
	combout => \main_processor|Dpth|ProgCount|Add0~22_combout\,
	cout => \main_processor|Dpth|ProgCount|Add0~23\);

-- Location: LCCOMB_X53_Y29_N26
\main_processor|Dpth|ProgCount|q[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q[11]~11_combout\ = (\main_processor|Dpth|ProgCount|process_0~1_combout\ & ((\main_processor|Dpth|ProgCount|Add0~22_combout\))) # (!\main_processor|Dpth|ProgCount|process_0~1_combout\ & (\main_processor|Dpth|IR|Q32\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(11),
	datab => \main_processor|Dpth|ProgCount|process_0~1_combout\,
	datad => \main_processor|Dpth|ProgCount|Add0~22_combout\,
	combout => \main_processor|Dpth|ProgCount|q[11]~11_combout\);

-- Location: FF_X53_Y29_N27
\main_processor|Dpth|ProgCount|q[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|ProgCount|q[11]~11_combout\,
	asdata => \main_processor|Dpth|ProgCount|q[11]~reg0_q\,
	sclr => \main_processor|R1|Clr_PC~q\,
	sload => \main_processor|Dpth|ProgCount|q~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|ProgCount|q[11]~reg0_q\);

-- Location: LCCOMB_X54_Y29_N24
\main_processor|Dpth|ProgCount|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|Add0~24_combout\ = (\main_processor|Dpth|ProgCount|q[12]~reg0_q\ & (\main_processor|Dpth|ProgCount|Add0~23\ $ (GND))) # (!\main_processor|Dpth|ProgCount|q[12]~reg0_q\ & (!\main_processor|Dpth|ProgCount|Add0~23\ & VCC))
-- \main_processor|Dpth|ProgCount|Add0~25\ = CARRY((\main_processor|Dpth|ProgCount|q[12]~reg0_q\ & !\main_processor|Dpth|ProgCount|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|q[12]~reg0_q\,
	datad => VCC,
	cin => \main_processor|Dpth|ProgCount|Add0~23\,
	combout => \main_processor|Dpth|ProgCount|Add0~24_combout\,
	cout => \main_processor|Dpth|ProgCount|Add0~25\);

-- Location: LCCOMB_X52_Y29_N24
\main_processor|Dpth|ProgCount|q[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q[12]~12_combout\ = (\main_processor|Dpth|ProgCount|process_0~1_combout\ & ((\main_processor|Dpth|ProgCount|Add0~24_combout\))) # (!\main_processor|Dpth|ProgCount|process_0~1_combout\ & (\main_processor|Dpth|IR|Q32\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(12),
	datab => \main_processor|Dpth|ProgCount|Add0~24_combout\,
	datad => \main_processor|Dpth|ProgCount|process_0~1_combout\,
	combout => \main_processor|Dpth|ProgCount|q[12]~12_combout\);

-- Location: FF_X52_Y29_N25
\main_processor|Dpth|ProgCount|q[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|ProgCount|q[12]~12_combout\,
	asdata => \main_processor|Dpth|ProgCount|q[12]~reg0_q\,
	sclr => \main_processor|R1|Clr_PC~q\,
	sload => \main_processor|Dpth|ProgCount|q~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|ProgCount|q[12]~reg0_q\);

-- Location: LCCOMB_X54_Y29_N26
\main_processor|Dpth|ProgCount|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|Add0~26_combout\ = (\main_processor|Dpth|ProgCount|q[13]~reg0_q\ & (!\main_processor|Dpth|ProgCount|Add0~25\)) # (!\main_processor|Dpth|ProgCount|q[13]~reg0_q\ & ((\main_processor|Dpth|ProgCount|Add0~25\) # (GND)))
-- \main_processor|Dpth|ProgCount|Add0~27\ = CARRY((!\main_processor|Dpth|ProgCount|Add0~25\) # (!\main_processor|Dpth|ProgCount|q[13]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|ProgCount|q[13]~reg0_q\,
	datad => VCC,
	cin => \main_processor|Dpth|ProgCount|Add0~25\,
	combout => \main_processor|Dpth|ProgCount|Add0~26_combout\,
	cout => \main_processor|Dpth|ProgCount|Add0~27\);

-- Location: LCCOMB_X52_Y29_N6
\main_processor|Dpth|ProgCount|q[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q[13]~13_combout\ = (\main_processor|Dpth|ProgCount|process_0~1_combout\ & ((\main_processor|Dpth|ProgCount|Add0~26_combout\))) # (!\main_processor|Dpth|ProgCount|process_0~1_combout\ & (\main_processor|Dpth|IR|Q32\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(13),
	datab => \main_processor|Dpth|ProgCount|Add0~26_combout\,
	datad => \main_processor|Dpth|ProgCount|process_0~1_combout\,
	combout => \main_processor|Dpth|ProgCount|q[13]~13_combout\);

-- Location: FF_X52_Y29_N7
\main_processor|Dpth|ProgCount|q[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|ProgCount|q[13]~13_combout\,
	asdata => \main_processor|Dpth|ProgCount|q[13]~reg0_q\,
	sclr => \main_processor|R1|Clr_PC~q\,
	sload => \main_processor|Dpth|ProgCount|q~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|ProgCount|q[13]~reg0_q\);

-- Location: LCCOMB_X54_Y29_N28
\main_processor|Dpth|ProgCount|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|Add0~28_combout\ = (\main_processor|Dpth|ProgCount|q[14]~reg0_q\ & (\main_processor|Dpth|ProgCount|Add0~27\ $ (GND))) # (!\main_processor|Dpth|ProgCount|q[14]~reg0_q\ & (!\main_processor|Dpth|ProgCount|Add0~27\ & VCC))
-- \main_processor|Dpth|ProgCount|Add0~29\ = CARRY((\main_processor|Dpth|ProgCount|q[14]~reg0_q\ & !\main_processor|Dpth|ProgCount|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|q[14]~reg0_q\,
	datad => VCC,
	cin => \main_processor|Dpth|ProgCount|Add0~27\,
	combout => \main_processor|Dpth|ProgCount|Add0~28_combout\,
	cout => \main_processor|Dpth|ProgCount|Add0~29\);

-- Location: LCCOMB_X52_Y29_N8
\main_processor|Dpth|ProgCount|q[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q[14]~14_combout\ = (\main_processor|Dpth|ProgCount|process_0~1_combout\ & (\main_processor|Dpth|ProgCount|Add0~28_combout\)) # (!\main_processor|Dpth|ProgCount|process_0~1_combout\ & ((\main_processor|Dpth|IR|Q32\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|Add0~28_combout\,
	datab => \main_processor|Dpth|IR|Q32\(14),
	datad => \main_processor|Dpth|ProgCount|process_0~1_combout\,
	combout => \main_processor|Dpth|ProgCount|q[14]~14_combout\);

-- Location: FF_X52_Y29_N9
\main_processor|Dpth|ProgCount|q[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|ProgCount|q[14]~14_combout\,
	asdata => \main_processor|Dpth|ProgCount|q[14]~reg0_q\,
	sclr => \main_processor|R1|Clr_PC~q\,
	sload => \main_processor|Dpth|ProgCount|q~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|ProgCount|q[14]~reg0_q\);

-- Location: LCCOMB_X54_Y29_N30
\main_processor|Dpth|ProgCount|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|Add0~30_combout\ = (\main_processor|Dpth|ProgCount|q[15]~reg0_q\ & (!\main_processor|Dpth|ProgCount|Add0~29\)) # (!\main_processor|Dpth|ProgCount|q[15]~reg0_q\ & ((\main_processor|Dpth|ProgCount|Add0~29\) # (GND)))
-- \main_processor|Dpth|ProgCount|Add0~31\ = CARRY((!\main_processor|Dpth|ProgCount|Add0~29\) # (!\main_processor|Dpth|ProgCount|q[15]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|ProgCount|q[15]~reg0_q\,
	datad => VCC,
	cin => \main_processor|Dpth|ProgCount|Add0~29\,
	combout => \main_processor|Dpth|ProgCount|Add0~30_combout\,
	cout => \main_processor|Dpth|ProgCount|Add0~31\);

-- Location: LCCOMB_X52_Y29_N14
\main_processor|Dpth|ProgCount|q[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q[15]~15_combout\ = (\main_processor|Dpth|ProgCount|process_0~1_combout\ & ((\main_processor|Dpth|ProgCount|Add0~30_combout\))) # (!\main_processor|Dpth|ProgCount|process_0~1_combout\ & (\main_processor|Dpth|IR|Q32\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|IR|Q32\(15),
	datab => \main_processor|Dpth|ProgCount|Add0~30_combout\,
	datad => \main_processor|Dpth|ProgCount|process_0~1_combout\,
	combout => \main_processor|Dpth|ProgCount|q[15]~15_combout\);

-- Location: FF_X52_Y29_N15
\main_processor|Dpth|ProgCount|q[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|ProgCount|q[15]~15_combout\,
	asdata => \main_processor|Dpth|ProgCount|q[15]~reg0_q\,
	sclr => \main_processor|R1|Clr_PC~q\,
	sload => \main_processor|Dpth|ProgCount|q~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|ProgCount|q[15]~reg0_q\);

-- Location: LCCOMB_X54_Y28_N0
\main_processor|Dpth|ProgCount|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|Add0~32_combout\ = (\main_processor|Dpth|ProgCount|q[16]~reg0_q\ & (\main_processor|Dpth|ProgCount|Add0~31\ $ (GND))) # (!\main_processor|Dpth|ProgCount|q[16]~reg0_q\ & (!\main_processor|Dpth|ProgCount|Add0~31\ & VCC))
-- \main_processor|Dpth|ProgCount|Add0~33\ = CARRY((\main_processor|Dpth|ProgCount|q[16]~reg0_q\ & !\main_processor|Dpth|ProgCount|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|ProgCount|q[16]~reg0_q\,
	datad => VCC,
	cin => \main_processor|Dpth|ProgCount|Add0~31\,
	combout => \main_processor|Dpth|ProgCount|Add0~32_combout\,
	cout => \main_processor|Dpth|ProgCount|Add0~33\);

-- Location: LCCOMB_X55_Y28_N0
\main_processor|Dpth|ProgCount|q~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q~33_combout\ = (\main_processor|Dpth|ProgCount|q[16]~reg0_q\ & !\main_processor|Dpth|ProgCount|process_0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|ProgCount|q[16]~reg0_q\,
	datac => \main_processor|Dpth|ProgCount|process_0~4_combout\,
	combout => \main_processor|Dpth|ProgCount|q~33_combout\);

-- Location: LCCOMB_X55_Y28_N8
\main_processor|Dpth|ProgCount|q[16]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q[16]~16_combout\ = (\main_processor|C1|present_state.state_1~q\ & (\main_processor|Dpth|ProgCount|Add0~32_combout\)) # (!\main_processor|C1|present_state.state_1~q\ & ((\main_processor|Dpth|ProgCount|q~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|Add0~32_combout\,
	datab => \main_processor|C1|present_state.state_1~q\,
	datad => \main_processor|Dpth|ProgCount|q~33_combout\,
	combout => \main_processor|Dpth|ProgCount|q[16]~16_combout\);

-- Location: FF_X55_Y28_N9
\main_processor|Dpth|ProgCount|q[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|ProgCount|q[16]~16_combout\,
	asdata => \main_processor|Dpth|ProgCount|q[16]~reg0_q\,
	sclr => \main_processor|R1|Clr_PC~q\,
	sload => \main_processor|R1|ALT_INV_Enable_PD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|ProgCount|q[16]~reg0_q\);

-- Location: LCCOMB_X54_Y28_N2
\main_processor|Dpth|ProgCount|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|Add0~34_combout\ = (\main_processor|Dpth|ProgCount|q[17]~reg0_q\ & (!\main_processor|Dpth|ProgCount|Add0~33\)) # (!\main_processor|Dpth|ProgCount|q[17]~reg0_q\ & ((\main_processor|Dpth|ProgCount|Add0~33\) # (GND)))
-- \main_processor|Dpth|ProgCount|Add0~35\ = CARRY((!\main_processor|Dpth|ProgCount|Add0~33\) # (!\main_processor|Dpth|ProgCount|q[17]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|q[17]~reg0_q\,
	datad => VCC,
	cin => \main_processor|Dpth|ProgCount|Add0~33\,
	combout => \main_processor|Dpth|ProgCount|Add0~34_combout\,
	cout => \main_processor|Dpth|ProgCount|Add0~35\);

-- Location: LCCOMB_X55_Y28_N10
\main_processor|Dpth|ProgCount|q~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q~34_combout\ = (!\main_processor|Dpth|ProgCount|process_0~4_combout\ & \main_processor|Dpth|ProgCount|q[17]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|Dpth|ProgCount|process_0~4_combout\,
	datad => \main_processor|Dpth|ProgCount|q[17]~reg0_q\,
	combout => \main_processor|Dpth|ProgCount|q~34_combout\);

-- Location: LCCOMB_X55_Y28_N2
\main_processor|Dpth|ProgCount|q[17]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q[17]~17_combout\ = (\main_processor|C1|present_state.state_1~q\ & (\main_processor|Dpth|ProgCount|Add0~34_combout\)) # (!\main_processor|C1|present_state.state_1~q\ & ((\main_processor|Dpth|ProgCount|q~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|Add0~34_combout\,
	datab => \main_processor|C1|present_state.state_1~q\,
	datad => \main_processor|Dpth|ProgCount|q~34_combout\,
	combout => \main_processor|Dpth|ProgCount|q[17]~17_combout\);

-- Location: FF_X55_Y28_N3
\main_processor|Dpth|ProgCount|q[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|ProgCount|q[17]~17_combout\,
	asdata => \main_processor|Dpth|ProgCount|q[17]~reg0_q\,
	sclr => \main_processor|R1|Clr_PC~q\,
	sload => \main_processor|R1|ALT_INV_Enable_PD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|ProgCount|q[17]~reg0_q\);

-- Location: LCCOMB_X55_Y28_N12
\main_processor|Dpth|ProgCount|q~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q~35_combout\ = (!\main_processor|Dpth|ProgCount|process_0~4_combout\ & \main_processor|Dpth|ProgCount|q[18]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|Dpth|ProgCount|process_0~4_combout\,
	datad => \main_processor|Dpth|ProgCount|q[18]~reg0_q\,
	combout => \main_processor|Dpth|ProgCount|q~35_combout\);

-- Location: LCCOMB_X54_Y28_N4
\main_processor|Dpth|ProgCount|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|Add0~36_combout\ = (\main_processor|Dpth|ProgCount|q[18]~reg0_q\ & (\main_processor|Dpth|ProgCount|Add0~35\ $ (GND))) # (!\main_processor|Dpth|ProgCount|q[18]~reg0_q\ & (!\main_processor|Dpth|ProgCount|Add0~35\ & VCC))
-- \main_processor|Dpth|ProgCount|Add0~37\ = CARRY((\main_processor|Dpth|ProgCount|q[18]~reg0_q\ & !\main_processor|Dpth|ProgCount|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|ProgCount|q[18]~reg0_q\,
	datad => VCC,
	cin => \main_processor|Dpth|ProgCount|Add0~35\,
	combout => \main_processor|Dpth|ProgCount|Add0~36_combout\,
	cout => \main_processor|Dpth|ProgCount|Add0~37\);

-- Location: LCCOMB_X55_Y28_N24
\main_processor|Dpth|ProgCount|q[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q[18]~18_combout\ = (\main_processor|C1|present_state.state_1~q\ & ((\main_processor|Dpth|ProgCount|Add0~36_combout\))) # (!\main_processor|C1|present_state.state_1~q\ & (\main_processor|Dpth|ProgCount|q~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|q~35_combout\,
	datab => \main_processor|Dpth|ProgCount|Add0~36_combout\,
	datad => \main_processor|C1|present_state.state_1~q\,
	combout => \main_processor|Dpth|ProgCount|q[18]~18_combout\);

-- Location: FF_X55_Y28_N25
\main_processor|Dpth|ProgCount|q[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|ProgCount|q[18]~18_combout\,
	asdata => \main_processor|Dpth|ProgCount|q[18]~reg0_q\,
	sclr => \main_processor|R1|Clr_PC~q\,
	sload => \main_processor|R1|ALT_INV_Enable_PD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|ProgCount|q[18]~reg0_q\);

-- Location: LCCOMB_X55_Y28_N26
\main_processor|Dpth|ProgCount|q~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q~36_combout\ = (\main_processor|Dpth|ProgCount|q[19]~reg0_q\ & !\main_processor|Dpth|ProgCount|process_0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|ProgCount|q[19]~reg0_q\,
	datac => \main_processor|Dpth|ProgCount|process_0~4_combout\,
	combout => \main_processor|Dpth|ProgCount|q~36_combout\);

-- Location: LCCOMB_X54_Y28_N6
\main_processor|Dpth|ProgCount|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|Add0~38_combout\ = (\main_processor|Dpth|ProgCount|q[19]~reg0_q\ & (!\main_processor|Dpth|ProgCount|Add0~37\)) # (!\main_processor|Dpth|ProgCount|q[19]~reg0_q\ & ((\main_processor|Dpth|ProgCount|Add0~37\) # (GND)))
-- \main_processor|Dpth|ProgCount|Add0~39\ = CARRY((!\main_processor|Dpth|ProgCount|Add0~37\) # (!\main_processor|Dpth|ProgCount|q[19]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|ProgCount|q[19]~reg0_q\,
	datad => VCC,
	cin => \main_processor|Dpth|ProgCount|Add0~37\,
	combout => \main_processor|Dpth|ProgCount|Add0~38_combout\,
	cout => \main_processor|Dpth|ProgCount|Add0~39\);

-- Location: LCCOMB_X55_Y28_N14
\main_processor|Dpth|ProgCount|q[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q[19]~19_combout\ = (\main_processor|C1|present_state.state_1~q\ & ((\main_processor|Dpth|ProgCount|Add0~38_combout\))) # (!\main_processor|C1|present_state.state_1~q\ & (\main_processor|Dpth|ProgCount|q~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|q~36_combout\,
	datab => \main_processor|Dpth|ProgCount|Add0~38_combout\,
	datad => \main_processor|C1|present_state.state_1~q\,
	combout => \main_processor|Dpth|ProgCount|q[19]~19_combout\);

-- Location: FF_X55_Y28_N15
\main_processor|Dpth|ProgCount|q[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|ProgCount|q[19]~19_combout\,
	asdata => \main_processor|Dpth|ProgCount|q[19]~reg0_q\,
	sclr => \main_processor|R1|Clr_PC~q\,
	sload => \main_processor|R1|ALT_INV_Enable_PD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|ProgCount|q[19]~reg0_q\);

-- Location: LCCOMB_X54_Y28_N8
\main_processor|Dpth|ProgCount|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|Add0~40_combout\ = (\main_processor|Dpth|ProgCount|q[20]~reg0_q\ & (\main_processor|Dpth|ProgCount|Add0~39\ $ (GND))) # (!\main_processor|Dpth|ProgCount|q[20]~reg0_q\ & (!\main_processor|Dpth|ProgCount|Add0~39\ & VCC))
-- \main_processor|Dpth|ProgCount|Add0~41\ = CARRY((\main_processor|Dpth|ProgCount|q[20]~reg0_q\ & !\main_processor|Dpth|ProgCount|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|q[20]~reg0_q\,
	datad => VCC,
	cin => \main_processor|Dpth|ProgCount|Add0~39\,
	combout => \main_processor|Dpth|ProgCount|Add0~40_combout\,
	cout => \main_processor|Dpth|ProgCount|Add0~41\);

-- Location: LCCOMB_X55_Y28_N28
\main_processor|Dpth|ProgCount|q~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q~37_combout\ = (!\main_processor|Dpth|ProgCount|process_0~4_combout\ & \main_processor|Dpth|ProgCount|q[20]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|Dpth|ProgCount|process_0~4_combout\,
	datad => \main_processor|Dpth|ProgCount|q[20]~reg0_q\,
	combout => \main_processor|Dpth|ProgCount|q~37_combout\);

-- Location: LCCOMB_X55_Y28_N20
\main_processor|Dpth|ProgCount|q[20]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q[20]~20_combout\ = (\main_processor|C1|present_state.state_1~q\ & (\main_processor|Dpth|ProgCount|Add0~40_combout\)) # (!\main_processor|C1|present_state.state_1~q\ & ((\main_processor|Dpth|ProgCount|q~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|Add0~40_combout\,
	datab => \main_processor|C1|present_state.state_1~q\,
	datad => \main_processor|Dpth|ProgCount|q~37_combout\,
	combout => \main_processor|Dpth|ProgCount|q[20]~20_combout\);

-- Location: FF_X55_Y28_N21
\main_processor|Dpth|ProgCount|q[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|ProgCount|q[20]~20_combout\,
	asdata => \main_processor|Dpth|ProgCount|q[20]~reg0_q\,
	sclr => \main_processor|R1|Clr_PC~q\,
	sload => \main_processor|R1|ALT_INV_Enable_PD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|ProgCount|q[20]~reg0_q\);

-- Location: LCCOMB_X55_Y28_N30
\main_processor|Dpth|ProgCount|q~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q~38_combout\ = (\main_processor|Dpth|ProgCount|q[21]~reg0_q\ & !\main_processor|Dpth|ProgCount|process_0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|ProgCount|q[21]~reg0_q\,
	datac => \main_processor|Dpth|ProgCount|process_0~4_combout\,
	combout => \main_processor|Dpth|ProgCount|q~38_combout\);

-- Location: LCCOMB_X54_Y28_N10
\main_processor|Dpth|ProgCount|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|Add0~42_combout\ = (\main_processor|Dpth|ProgCount|q[21]~reg0_q\ & (!\main_processor|Dpth|ProgCount|Add0~41\)) # (!\main_processor|Dpth|ProgCount|q[21]~reg0_q\ & ((\main_processor|Dpth|ProgCount|Add0~41\) # (GND)))
-- \main_processor|Dpth|ProgCount|Add0~43\ = CARRY((!\main_processor|Dpth|ProgCount|Add0~41\) # (!\main_processor|Dpth|ProgCount|q[21]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|q[21]~reg0_q\,
	datad => VCC,
	cin => \main_processor|Dpth|ProgCount|Add0~41\,
	combout => \main_processor|Dpth|ProgCount|Add0~42_combout\,
	cout => \main_processor|Dpth|ProgCount|Add0~43\);

-- Location: LCCOMB_X55_Y28_N6
\main_processor|Dpth|ProgCount|q[21]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q[21]~21_combout\ = (\main_processor|C1|present_state.state_1~q\ & ((\main_processor|Dpth|ProgCount|Add0~42_combout\))) # (!\main_processor|C1|present_state.state_1~q\ & (\main_processor|Dpth|ProgCount|q~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|q~38_combout\,
	datab => \main_processor|C1|present_state.state_1~q\,
	datad => \main_processor|Dpth|ProgCount|Add0~42_combout\,
	combout => \main_processor|Dpth|ProgCount|q[21]~21_combout\);

-- Location: FF_X55_Y28_N7
\main_processor|Dpth|ProgCount|q[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|ProgCount|q[21]~21_combout\,
	asdata => \main_processor|Dpth|ProgCount|q[21]~reg0_q\,
	sclr => \main_processor|R1|Clr_PC~q\,
	sload => \main_processor|R1|ALT_INV_Enable_PD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|ProgCount|q[21]~reg0_q\);

-- Location: LCCOMB_X54_Y28_N12
\main_processor|Dpth|ProgCount|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|Add0~44_combout\ = (\main_processor|Dpth|ProgCount|q[22]~reg0_q\ & (\main_processor|Dpth|ProgCount|Add0~43\ $ (GND))) # (!\main_processor|Dpth|ProgCount|q[22]~reg0_q\ & (!\main_processor|Dpth|ProgCount|Add0~43\ & VCC))
-- \main_processor|Dpth|ProgCount|Add0~45\ = CARRY((\main_processor|Dpth|ProgCount|q[22]~reg0_q\ & !\main_processor|Dpth|ProgCount|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|q[22]~reg0_q\,
	datad => VCC,
	cin => \main_processor|Dpth|ProgCount|Add0~43\,
	combout => \main_processor|Dpth|ProgCount|Add0~44_combout\,
	cout => \main_processor|Dpth|ProgCount|Add0~45\);

-- Location: LCCOMB_X55_Y28_N16
\main_processor|Dpth|ProgCount|q~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q~39_combout\ = (\main_processor|Dpth|ProgCount|q[22]~reg0_q\ & !\main_processor|Dpth|ProgCount|process_0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|ProgCount|q[22]~reg0_q\,
	datac => \main_processor|Dpth|ProgCount|process_0~4_combout\,
	combout => \main_processor|Dpth|ProgCount|q~39_combout\);

-- Location: LCCOMB_X55_Y28_N4
\main_processor|Dpth|ProgCount|q[22]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q[22]~22_combout\ = (\main_processor|C1|present_state.state_1~q\ & (\main_processor|Dpth|ProgCount|Add0~44_combout\)) # (!\main_processor|C1|present_state.state_1~q\ & ((\main_processor|Dpth|ProgCount|q~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|Add0~44_combout\,
	datab => \main_processor|C1|present_state.state_1~q\,
	datad => \main_processor|Dpth|ProgCount|q~39_combout\,
	combout => \main_processor|Dpth|ProgCount|q[22]~22_combout\);

-- Location: FF_X55_Y28_N5
\main_processor|Dpth|ProgCount|q[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|ProgCount|q[22]~22_combout\,
	asdata => \main_processor|Dpth|ProgCount|q[22]~reg0_q\,
	sclr => \main_processor|R1|Clr_PC~q\,
	sload => \main_processor|R1|ALT_INV_Enable_PD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|ProgCount|q[22]~reg0_q\);

-- Location: LCCOMB_X54_Y28_N14
\main_processor|Dpth|ProgCount|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|Add0~46_combout\ = (\main_processor|Dpth|ProgCount|q[23]~reg0_q\ & (!\main_processor|Dpth|ProgCount|Add0~45\)) # (!\main_processor|Dpth|ProgCount|q[23]~reg0_q\ & ((\main_processor|Dpth|ProgCount|Add0~45\) # (GND)))
-- \main_processor|Dpth|ProgCount|Add0~47\ = CARRY((!\main_processor|Dpth|ProgCount|Add0~45\) # (!\main_processor|Dpth|ProgCount|q[23]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|ProgCount|q[23]~reg0_q\,
	datad => VCC,
	cin => \main_processor|Dpth|ProgCount|Add0~45\,
	combout => \main_processor|Dpth|ProgCount|Add0~46_combout\,
	cout => \main_processor|Dpth|ProgCount|Add0~47\);

-- Location: LCCOMB_X53_Y28_N16
\main_processor|Dpth|ProgCount|q~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q~40_combout\ = (\main_processor|Dpth|ProgCount|q[23]~reg0_q\ & !\main_processor|Dpth|ProgCount|process_0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|Dpth|ProgCount|q[23]~reg0_q\,
	datad => \main_processor|Dpth|ProgCount|process_0~4_combout\,
	combout => \main_processor|Dpth|ProgCount|q~40_combout\);

-- Location: LCCOMB_X53_Y28_N4
\main_processor|Dpth|ProgCount|q[23]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q[23]~23_combout\ = (\main_processor|C1|present_state.state_1~q\ & (\main_processor|Dpth|ProgCount|Add0~46_combout\)) # (!\main_processor|C1|present_state.state_1~q\ & ((\main_processor|Dpth|ProgCount|q~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|present_state.state_1~q\,
	datab => \main_processor|Dpth|ProgCount|Add0~46_combout\,
	datad => \main_processor|Dpth|ProgCount|q~40_combout\,
	combout => \main_processor|Dpth|ProgCount|q[23]~23_combout\);

-- Location: FF_X53_Y28_N5
\main_processor|Dpth|ProgCount|q[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|ProgCount|q[23]~23_combout\,
	asdata => \main_processor|Dpth|ProgCount|q[23]~reg0_q\,
	sclr => \main_processor|R1|Clr_PC~q\,
	sload => \main_processor|R1|ALT_INV_Enable_PD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|ProgCount|q[23]~reg0_q\);

-- Location: LCCOMB_X53_Y28_N18
\main_processor|Dpth|ProgCount|q~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q~41_combout\ = (\main_processor|Dpth|ProgCount|q[24]~reg0_q\ & !\main_processor|Dpth|ProgCount|process_0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|q[24]~reg0_q\,
	datad => \main_processor|Dpth|ProgCount|process_0~4_combout\,
	combout => \main_processor|Dpth|ProgCount|q~41_combout\);

-- Location: LCCOMB_X54_Y28_N16
\main_processor|Dpth|ProgCount|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|Add0~48_combout\ = (\main_processor|Dpth|ProgCount|q[24]~reg0_q\ & (\main_processor|Dpth|ProgCount|Add0~47\ $ (GND))) # (!\main_processor|Dpth|ProgCount|q[24]~reg0_q\ & (!\main_processor|Dpth|ProgCount|Add0~47\ & VCC))
-- \main_processor|Dpth|ProgCount|Add0~49\ = CARRY((\main_processor|Dpth|ProgCount|q[24]~reg0_q\ & !\main_processor|Dpth|ProgCount|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|ProgCount|q[24]~reg0_q\,
	datad => VCC,
	cin => \main_processor|Dpth|ProgCount|Add0~47\,
	combout => \main_processor|Dpth|ProgCount|Add0~48_combout\,
	cout => \main_processor|Dpth|ProgCount|Add0~49\);

-- Location: LCCOMB_X53_Y28_N6
\main_processor|Dpth|ProgCount|q[24]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q[24]~24_combout\ = (\main_processor|C1|present_state.state_1~q\ & ((\main_processor|Dpth|ProgCount|Add0~48_combout\))) # (!\main_processor|C1|present_state.state_1~q\ & (\main_processor|Dpth|ProgCount|q~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|present_state.state_1~q\,
	datab => \main_processor|Dpth|ProgCount|q~41_combout\,
	datad => \main_processor|Dpth|ProgCount|Add0~48_combout\,
	combout => \main_processor|Dpth|ProgCount|q[24]~24_combout\);

-- Location: FF_X53_Y28_N7
\main_processor|Dpth|ProgCount|q[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|ProgCount|q[24]~24_combout\,
	asdata => \main_processor|Dpth|ProgCount|q[24]~reg0_q\,
	sclr => \main_processor|R1|Clr_PC~q\,
	sload => \main_processor|R1|ALT_INV_Enable_PD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|ProgCount|q[24]~reg0_q\);

-- Location: LCCOMB_X53_Y28_N20
\main_processor|Dpth|ProgCount|q~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q~42_combout\ = (\main_processor|Dpth|ProgCount|q[25]~reg0_q\ & !\main_processor|Dpth|ProgCount|process_0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|q[25]~reg0_q\,
	datad => \main_processor|Dpth|ProgCount|process_0~4_combout\,
	combout => \main_processor|Dpth|ProgCount|q~42_combout\);

-- Location: LCCOMB_X54_Y28_N18
\main_processor|Dpth|ProgCount|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|Add0~50_combout\ = (\main_processor|Dpth|ProgCount|q[25]~reg0_q\ & (!\main_processor|Dpth|ProgCount|Add0~49\)) # (!\main_processor|Dpth|ProgCount|q[25]~reg0_q\ & ((\main_processor|Dpth|ProgCount|Add0~49\) # (GND)))
-- \main_processor|Dpth|ProgCount|Add0~51\ = CARRY((!\main_processor|Dpth|ProgCount|Add0~49\) # (!\main_processor|Dpth|ProgCount|q[25]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|q[25]~reg0_q\,
	datad => VCC,
	cin => \main_processor|Dpth|ProgCount|Add0~49\,
	combout => \main_processor|Dpth|ProgCount|Add0~50_combout\,
	cout => \main_processor|Dpth|ProgCount|Add0~51\);

-- Location: LCCOMB_X53_Y28_N12
\main_processor|Dpth|ProgCount|q[25]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q[25]~25_combout\ = (\main_processor|C1|present_state.state_1~q\ & ((\main_processor|Dpth|ProgCount|Add0~50_combout\))) # (!\main_processor|C1|present_state.state_1~q\ & (\main_processor|Dpth|ProgCount|q~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|present_state.state_1~q\,
	datab => \main_processor|Dpth|ProgCount|q~42_combout\,
	datad => \main_processor|Dpth|ProgCount|Add0~50_combout\,
	combout => \main_processor|Dpth|ProgCount|q[25]~25_combout\);

-- Location: FF_X53_Y28_N13
\main_processor|Dpth|ProgCount|q[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|ProgCount|q[25]~25_combout\,
	asdata => \main_processor|Dpth|ProgCount|q[25]~reg0_q\,
	sclr => \main_processor|R1|Clr_PC~q\,
	sload => \main_processor|R1|ALT_INV_Enable_PD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|ProgCount|q[25]~reg0_q\);

-- Location: LCCOMB_X54_Y28_N20
\main_processor|Dpth|ProgCount|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|Add0~52_combout\ = (\main_processor|Dpth|ProgCount|q[26]~reg0_q\ & (\main_processor|Dpth|ProgCount|Add0~51\ $ (GND))) # (!\main_processor|Dpth|ProgCount|q[26]~reg0_q\ & (!\main_processor|Dpth|ProgCount|Add0~51\ & VCC))
-- \main_processor|Dpth|ProgCount|Add0~53\ = CARRY((\main_processor|Dpth|ProgCount|q[26]~reg0_q\ & !\main_processor|Dpth|ProgCount|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|q[26]~reg0_q\,
	datad => VCC,
	cin => \main_processor|Dpth|ProgCount|Add0~51\,
	combout => \main_processor|Dpth|ProgCount|Add0~52_combout\,
	cout => \main_processor|Dpth|ProgCount|Add0~53\);

-- Location: LCCOMB_X53_Y28_N2
\main_processor|Dpth|ProgCount|q~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q~43_combout\ = (\main_processor|Dpth|ProgCount|q[26]~reg0_q\ & !\main_processor|Dpth|ProgCount|process_0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|Dpth|ProgCount|q[26]~reg0_q\,
	datad => \main_processor|Dpth|ProgCount|process_0~4_combout\,
	combout => \main_processor|Dpth|ProgCount|q~43_combout\);

-- Location: LCCOMB_X53_Y28_N26
\main_processor|Dpth|ProgCount|q[26]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q[26]~26_combout\ = (\main_processor|C1|present_state.state_1~q\ & (\main_processor|Dpth|ProgCount|Add0~52_combout\)) # (!\main_processor|C1|present_state.state_1~q\ & ((\main_processor|Dpth|ProgCount|q~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|Add0~52_combout\,
	datab => \main_processor|Dpth|ProgCount|q~43_combout\,
	datad => \main_processor|C1|present_state.state_1~q\,
	combout => \main_processor|Dpth|ProgCount|q[26]~26_combout\);

-- Location: FF_X53_Y28_N27
\main_processor|Dpth|ProgCount|q[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|ProgCount|q[26]~26_combout\,
	asdata => \main_processor|Dpth|ProgCount|q[26]~reg0_q\,
	sclr => \main_processor|R1|Clr_PC~q\,
	sload => \main_processor|R1|ALT_INV_Enable_PD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|ProgCount|q[26]~reg0_q\);

-- Location: LCCOMB_X53_Y28_N28
\main_processor|Dpth|ProgCount|q~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q~44_combout\ = (\main_processor|Dpth|ProgCount|q[27]~reg0_q\ & !\main_processor|Dpth|ProgCount|process_0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|Dpth|ProgCount|q[27]~reg0_q\,
	datad => \main_processor|Dpth|ProgCount|process_0~4_combout\,
	combout => \main_processor|Dpth|ProgCount|q~44_combout\);

-- Location: LCCOMB_X54_Y28_N22
\main_processor|Dpth|ProgCount|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|Add0~54_combout\ = (\main_processor|Dpth|ProgCount|q[27]~reg0_q\ & (!\main_processor|Dpth|ProgCount|Add0~53\)) # (!\main_processor|Dpth|ProgCount|q[27]~reg0_q\ & ((\main_processor|Dpth|ProgCount|Add0~53\) # (GND)))
-- \main_processor|Dpth|ProgCount|Add0~55\ = CARRY((!\main_processor|Dpth|ProgCount|Add0~53\) # (!\main_processor|Dpth|ProgCount|q[27]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|q[27]~reg0_q\,
	datad => VCC,
	cin => \main_processor|Dpth|ProgCount|Add0~53\,
	combout => \main_processor|Dpth|ProgCount|Add0~54_combout\,
	cout => \main_processor|Dpth|ProgCount|Add0~55\);

-- Location: LCCOMB_X53_Y28_N0
\main_processor|Dpth|ProgCount|q[27]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q[27]~27_combout\ = (\main_processor|C1|present_state.state_1~q\ & ((\main_processor|Dpth|ProgCount|Add0~54_combout\))) # (!\main_processor|C1|present_state.state_1~q\ & (\main_processor|Dpth|ProgCount|q~44_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|present_state.state_1~q\,
	datab => \main_processor|Dpth|ProgCount|q~44_combout\,
	datad => \main_processor|Dpth|ProgCount|Add0~54_combout\,
	combout => \main_processor|Dpth|ProgCount|q[27]~27_combout\);

-- Location: FF_X53_Y28_N1
\main_processor|Dpth|ProgCount|q[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|ProgCount|q[27]~27_combout\,
	asdata => \main_processor|Dpth|ProgCount|q[27]~reg0_q\,
	sclr => \main_processor|R1|Clr_PC~q\,
	sload => \main_processor|R1|ALT_INV_Enable_PD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|ProgCount|q[27]~reg0_q\);

-- Location: LCCOMB_X53_Y28_N30
\main_processor|Dpth|ProgCount|q~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q~45_combout\ = (\main_processor|Dpth|ProgCount|q[28]~reg0_q\ & !\main_processor|Dpth|ProgCount|process_0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|Dpth|ProgCount|q[28]~reg0_q\,
	datad => \main_processor|Dpth|ProgCount|process_0~4_combout\,
	combout => \main_processor|Dpth|ProgCount|q~45_combout\);

-- Location: LCCOMB_X54_Y28_N24
\main_processor|Dpth|ProgCount|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|Add0~56_combout\ = (\main_processor|Dpth|ProgCount|q[28]~reg0_q\ & (\main_processor|Dpth|ProgCount|Add0~55\ $ (GND))) # (!\main_processor|Dpth|ProgCount|q[28]~reg0_q\ & (!\main_processor|Dpth|ProgCount|Add0~55\ & VCC))
-- \main_processor|Dpth|ProgCount|Add0~57\ = CARRY((\main_processor|Dpth|ProgCount|q[28]~reg0_q\ & !\main_processor|Dpth|ProgCount|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|q[28]~reg0_q\,
	datad => VCC,
	cin => \main_processor|Dpth|ProgCount|Add0~55\,
	combout => \main_processor|Dpth|ProgCount|Add0~56_combout\,
	cout => \main_processor|Dpth|ProgCount|Add0~57\);

-- Location: LCCOMB_X53_Y28_N10
\main_processor|Dpth|ProgCount|q[28]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q[28]~28_combout\ = (\main_processor|C1|present_state.state_1~q\ & ((\main_processor|Dpth|ProgCount|Add0~56_combout\))) # (!\main_processor|C1|present_state.state_1~q\ & (\main_processor|Dpth|ProgCount|q~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|q~45_combout\,
	datab => \main_processor|Dpth|ProgCount|Add0~56_combout\,
	datad => \main_processor|C1|present_state.state_1~q\,
	combout => \main_processor|Dpth|ProgCount|q[28]~28_combout\);

-- Location: FF_X53_Y28_N11
\main_processor|Dpth|ProgCount|q[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|ProgCount|q[28]~28_combout\,
	asdata => \main_processor|Dpth|ProgCount|q[28]~reg0_q\,
	sclr => \main_processor|R1|Clr_PC~q\,
	sload => \main_processor|R1|ALT_INV_Enable_PD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|ProgCount|q[28]~reg0_q\);

-- Location: LCCOMB_X53_Y28_N24
\main_processor|Dpth|ProgCount|q~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q~46_combout\ = (\main_processor|Dpth|ProgCount|q[29]~reg0_q\ & !\main_processor|Dpth|ProgCount|process_0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|q[29]~reg0_q\,
	datad => \main_processor|Dpth|ProgCount|process_0~4_combout\,
	combout => \main_processor|Dpth|ProgCount|q~46_combout\);

-- Location: LCCOMB_X54_Y28_N26
\main_processor|Dpth|ProgCount|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|Add0~58_combout\ = (\main_processor|Dpth|ProgCount|q[29]~reg0_q\ & (!\main_processor|Dpth|ProgCount|Add0~57\)) # (!\main_processor|Dpth|ProgCount|q[29]~reg0_q\ & ((\main_processor|Dpth|ProgCount|Add0~57\) # (GND)))
-- \main_processor|Dpth|ProgCount|Add0~59\ = CARRY((!\main_processor|Dpth|ProgCount|Add0~57\) # (!\main_processor|Dpth|ProgCount|q[29]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|q[29]~reg0_q\,
	datad => VCC,
	cin => \main_processor|Dpth|ProgCount|Add0~57\,
	combout => \main_processor|Dpth|ProgCount|Add0~58_combout\,
	cout => \main_processor|Dpth|ProgCount|Add0~59\);

-- Location: LCCOMB_X53_Y28_N8
\main_processor|Dpth|ProgCount|q[29]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q[29]~29_combout\ = (\main_processor|C1|present_state.state_1~q\ & ((\main_processor|Dpth|ProgCount|Add0~58_combout\))) # (!\main_processor|C1|present_state.state_1~q\ & (\main_processor|Dpth|ProgCount|q~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|C1|present_state.state_1~q\,
	datab => \main_processor|Dpth|ProgCount|q~46_combout\,
	datad => \main_processor|Dpth|ProgCount|Add0~58_combout\,
	combout => \main_processor|Dpth|ProgCount|q[29]~29_combout\);

-- Location: FF_X53_Y28_N9
\main_processor|Dpth|ProgCount|q[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|ProgCount|q[29]~29_combout\,
	asdata => \main_processor|Dpth|ProgCount|q[29]~reg0_q\,
	sclr => \main_processor|R1|Clr_PC~q\,
	sload => \main_processor|R1|ALT_INV_Enable_PD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|ProgCount|q[29]~reg0_q\);

-- Location: LCCOMB_X53_Y28_N22
\main_processor|Dpth|ProgCount|q~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q~47_combout\ = (\main_processor|Dpth|ProgCount|q[30]~reg0_q\ & !\main_processor|Dpth|ProgCount|process_0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|Dpth|ProgCount|q[30]~reg0_q\,
	datad => \main_processor|Dpth|ProgCount|process_0~4_combout\,
	combout => \main_processor|Dpth|ProgCount|q~47_combout\);

-- Location: LCCOMB_X54_Y28_N28
\main_processor|Dpth|ProgCount|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|Add0~60_combout\ = (\main_processor|Dpth|ProgCount|q[30]~reg0_q\ & (\main_processor|Dpth|ProgCount|Add0~59\ $ (GND))) # (!\main_processor|Dpth|ProgCount|q[30]~reg0_q\ & (!\main_processor|Dpth|ProgCount|Add0~59\ & VCC))
-- \main_processor|Dpth|ProgCount|Add0~61\ = CARRY((\main_processor|Dpth|ProgCount|q[30]~reg0_q\ & !\main_processor|Dpth|ProgCount|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|q[30]~reg0_q\,
	datad => VCC,
	cin => \main_processor|Dpth|ProgCount|Add0~59\,
	combout => \main_processor|Dpth|ProgCount|Add0~60_combout\,
	cout => \main_processor|Dpth|ProgCount|Add0~61\);

-- Location: LCCOMB_X53_Y28_N14
\main_processor|Dpth|ProgCount|q[30]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q[30]~30_combout\ = (\main_processor|C1|present_state.state_1~q\ & ((\main_processor|Dpth|ProgCount|Add0~60_combout\))) # (!\main_processor|C1|present_state.state_1~q\ & (\main_processor|Dpth|ProgCount|q~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|q~47_combout\,
	datab => \main_processor|Dpth|ProgCount|Add0~60_combout\,
	datad => \main_processor|C1|present_state.state_1~q\,
	combout => \main_processor|Dpth|ProgCount|q[30]~30_combout\);

-- Location: FF_X53_Y28_N15
\main_processor|Dpth|ProgCount|q[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|ProgCount|q[30]~30_combout\,
	asdata => \main_processor|Dpth|ProgCount|q[30]~reg0_q\,
	sclr => \main_processor|R1|Clr_PC~q\,
	sload => \main_processor|R1|ALT_INV_Enable_PD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|ProgCount|q[30]~reg0_q\);

-- Location: LCCOMB_X55_Y28_N22
\main_processor|Dpth|ProgCount|q~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q~48_combout\ = (!\main_processor|Dpth|ProgCount|process_0~4_combout\ & \main_processor|Dpth|ProgCount|q[31]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|Dpth|ProgCount|process_0~4_combout\,
	datad => \main_processor|Dpth|ProgCount|q[31]~reg0_q\,
	combout => \main_processor|Dpth|ProgCount|q~48_combout\);

-- Location: LCCOMB_X54_Y28_N30
\main_processor|Dpth|ProgCount|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|Add0~62_combout\ = \main_processor|Dpth|ProgCount|Add0~61\ $ (\main_processor|Dpth|ProgCount|q[31]~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \main_processor|Dpth|ProgCount|q[31]~reg0_q\,
	cin => \main_processor|Dpth|ProgCount|Add0~61\,
	combout => \main_processor|Dpth|ProgCount|Add0~62_combout\);

-- Location: LCCOMB_X55_Y28_N18
\main_processor|Dpth|ProgCount|q[31]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|Dpth|ProgCount|q[31]~31_combout\ = (\main_processor|C1|present_state.state_1~q\ & ((\main_processor|Dpth|ProgCount|Add0~62_combout\))) # (!\main_processor|C1|present_state.state_1~q\ & (\main_processor|Dpth|ProgCount|q~48_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \main_processor|Dpth|ProgCount|q~48_combout\,
	datab => \main_processor|C1|present_state.state_1~q\,
	datad => \main_processor|Dpth|ProgCount|Add0~62_combout\,
	combout => \main_processor|Dpth|ProgCount|q[31]~31_combout\);

-- Location: FF_X55_Y28_N19
\main_processor|Dpth|ProgCount|q[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|Dpth|ProgCount|q[31]~31_combout\,
	asdata => \main_processor|Dpth|ProgCount|q[31]~reg0_q\,
	sclr => \main_processor|R1|Clr_PC~q\,
	sload => \main_processor|R1|ALT_INV_Enable_PD~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|Dpth|ProgCount|q[31]~reg0_q\);

-- Location: LCCOMB_X56_Y35_N8
\main_processor|C1|T[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|T[0]~0_combout\ = !\main_processor|C1|present_state.state_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_processor|C1|present_state.state_2~q\,
	combout => \main_processor|C1|T[0]~0_combout\);

-- Location: FF_X56_Y35_N9
\main_processor|C1|T[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|C1|T[0]~0_combout\,
	clrn => \main_processor|R1|Enable_PD~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|C1|T\(0));

-- Location: LCCOMB_X54_Y35_N24
\main_processor|C1|T[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|T[1]~1_combout\ = !\main_processor|C1|present_state.state_0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \main_processor|C1|present_state.state_0~q\,
	combout => \main_processor|C1|T[1]~1_combout\);

-- Location: FF_X54_Y35_N25
\main_processor|C1|T[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|C1|T[1]~1_combout\,
	clrn => \main_processor|R1|Enable_PD~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|C1|T\(1));

-- Location: LCCOMB_X54_Y35_N30
\main_processor|C1|T[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|T[2]~feeder_combout\ = \main_processor|C1|present_state.state_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \main_processor|C1|present_state.state_1~q\,
	combout => \main_processor|C1|T[2]~feeder_combout\);

-- Location: FF_X54_Y35_N31
\main_processor|C1|T[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cpuClk~inputclkctrl_outclk\,
	d => \main_processor|C1|T[2]~feeder_combout\,
	clrn => \main_processor|R1|Enable_PD~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \main_processor|C1|T\(2));

-- Location: LCCOMB_X53_Y40_N8
\main_processor|C1|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \main_processor|C1|Selector11~0_combout\ = (\main_processor|C1|wen~1_combout\) # ((\main_processor|C1|present_state.state_2~q\ & \main_processor|C1|Mux23~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \main_processor|C1|wen~1_combout\,
	datac => \main_processor|C1|present_state.state_2~q\,
	datad => \main_processor|C1|Mux23~0_combout\,
	combout => \main_processor|C1|Selector11~0_combout\);

ww_outA(0) <= \outA[0]~output_o\;

ww_outA(1) <= \outA[1]~output_o\;

ww_outA(2) <= \outA[2]~output_o\;

ww_outA(3) <= \outA[3]~output_o\;

ww_outA(4) <= \outA[4]~output_o\;

ww_outA(5) <= \outA[5]~output_o\;

ww_outA(6) <= \outA[6]~output_o\;

ww_outA(7) <= \outA[7]~output_o\;

ww_outA(8) <= \outA[8]~output_o\;

ww_outA(9) <= \outA[9]~output_o\;

ww_outA(10) <= \outA[10]~output_o\;

ww_outA(11) <= \outA[11]~output_o\;

ww_outA(12) <= \outA[12]~output_o\;

ww_outA(13) <= \outA[13]~output_o\;

ww_outA(14) <= \outA[14]~output_o\;

ww_outA(15) <= \outA[15]~output_o\;

ww_outA(16) <= \outA[16]~output_o\;

ww_outA(17) <= \outA[17]~output_o\;

ww_outA(18) <= \outA[18]~output_o\;

ww_outA(19) <= \outA[19]~output_o\;

ww_outA(20) <= \outA[20]~output_o\;

ww_outA(21) <= \outA[21]~output_o\;

ww_outA(22) <= \outA[22]~output_o\;

ww_outA(23) <= \outA[23]~output_o\;

ww_outA(24) <= \outA[24]~output_o\;

ww_outA(25) <= \outA[25]~output_o\;

ww_outA(26) <= \outA[26]~output_o\;

ww_outA(27) <= \outA[27]~output_o\;

ww_outA(28) <= \outA[28]~output_o\;

ww_outA(29) <= \outA[29]~output_o\;

ww_outA(30) <= \outA[30]~output_o\;

ww_outA(31) <= \outA[31]~output_o\;

ww_outB(0) <= \outB[0]~output_o\;

ww_outB(1) <= \outB[1]~output_o\;

ww_outB(2) <= \outB[2]~output_o\;

ww_outB(3) <= \outB[3]~output_o\;

ww_outB(4) <= \outB[4]~output_o\;

ww_outB(5) <= \outB[5]~output_o\;

ww_outB(6) <= \outB[6]~output_o\;

ww_outB(7) <= \outB[7]~output_o\;

ww_outB(8) <= \outB[8]~output_o\;

ww_outB(9) <= \outB[9]~output_o\;

ww_outB(10) <= \outB[10]~output_o\;

ww_outB(11) <= \outB[11]~output_o\;

ww_outB(12) <= \outB[12]~output_o\;

ww_outB(13) <= \outB[13]~output_o\;

ww_outB(14) <= \outB[14]~output_o\;

ww_outB(15) <= \outB[15]~output_o\;

ww_outB(16) <= \outB[16]~output_o\;

ww_outB(17) <= \outB[17]~output_o\;

ww_outB(18) <= \outB[18]~output_o\;

ww_outB(19) <= \outB[19]~output_o\;

ww_outB(20) <= \outB[20]~output_o\;

ww_outB(21) <= \outB[21]~output_o\;

ww_outB(22) <= \outB[22]~output_o\;

ww_outB(23) <= \outB[23]~output_o\;

ww_outB(24) <= \outB[24]~output_o\;

ww_outB(25) <= \outB[25]~output_o\;

ww_outB(26) <= \outB[26]~output_o\;

ww_outB(27) <= \outB[27]~output_o\;

ww_outB(28) <= \outB[28]~output_o\;

ww_outB(29) <= \outB[29]~output_o\;

ww_outB(30) <= \outB[30]~output_o\;

ww_outB(31) <= \outB[31]~output_o\;

ww_outC <= \outC~output_o\;

ww_outZ <= \outZ~output_o\;

ww_outIR(0) <= \outIR[0]~output_o\;

ww_outIR(1) <= \outIR[1]~output_o\;

ww_outIR(2) <= \outIR[2]~output_o\;

ww_outIR(3) <= \outIR[3]~output_o\;

ww_outIR(4) <= \outIR[4]~output_o\;

ww_outIR(5) <= \outIR[5]~output_o\;

ww_outIR(6) <= \outIR[6]~output_o\;

ww_outIR(7) <= \outIR[7]~output_o\;

ww_outIR(8) <= \outIR[8]~output_o\;

ww_outIR(9) <= \outIR[9]~output_o\;

ww_outIR(10) <= \outIR[10]~output_o\;

ww_outIR(11) <= \outIR[11]~output_o\;

ww_outIR(12) <= \outIR[12]~output_o\;

ww_outIR(13) <= \outIR[13]~output_o\;

ww_outIR(14) <= \outIR[14]~output_o\;

ww_outIR(15) <= \outIR[15]~output_o\;

ww_outIR(16) <= \outIR[16]~output_o\;

ww_outIR(17) <= \outIR[17]~output_o\;

ww_outIR(18) <= \outIR[18]~output_o\;

ww_outIR(19) <= \outIR[19]~output_o\;

ww_outIR(20) <= \outIR[20]~output_o\;

ww_outIR(21) <= \outIR[21]~output_o\;

ww_outIR(22) <= \outIR[22]~output_o\;

ww_outIR(23) <= \outIR[23]~output_o\;

ww_outIR(24) <= \outIR[24]~output_o\;

ww_outIR(25) <= \outIR[25]~output_o\;

ww_outIR(26) <= \outIR[26]~output_o\;

ww_outIR(27) <= \outIR[27]~output_o\;

ww_outIR(28) <= \outIR[28]~output_o\;

ww_outIR(29) <= \outIR[29]~output_o\;

ww_outIR(30) <= \outIR[30]~output_o\;

ww_outIR(31) <= \outIR[31]~output_o\;

ww_outPC(0) <= \outPC[0]~output_o\;

ww_outPC(1) <= \outPC[1]~output_o\;

ww_outPC(2) <= \outPC[2]~output_o\;

ww_outPC(3) <= \outPC[3]~output_o\;

ww_outPC(4) <= \outPC[4]~output_o\;

ww_outPC(5) <= \outPC[5]~output_o\;

ww_outPC(6) <= \outPC[6]~output_o\;

ww_outPC(7) <= \outPC[7]~output_o\;

ww_outPC(8) <= \outPC[8]~output_o\;

ww_outPC(9) <= \outPC[9]~output_o\;

ww_outPC(10) <= \outPC[10]~output_o\;

ww_outPC(11) <= \outPC[11]~output_o\;

ww_outPC(12) <= \outPC[12]~output_o\;

ww_outPC(13) <= \outPC[13]~output_o\;

ww_outPC(14) <= \outPC[14]~output_o\;

ww_outPC(15) <= \outPC[15]~output_o\;

ww_outPC(16) <= \outPC[16]~output_o\;

ww_outPC(17) <= \outPC[17]~output_o\;

ww_outPC(18) <= \outPC[18]~output_o\;

ww_outPC(19) <= \outPC[19]~output_o\;

ww_outPC(20) <= \outPC[20]~output_o\;

ww_outPC(21) <= \outPC[21]~output_o\;

ww_outPC(22) <= \outPC[22]~output_o\;

ww_outPC(23) <= \outPC[23]~output_o\;

ww_outPC(24) <= \outPC[24]~output_o\;

ww_outPC(25) <= \outPC[25]~output_o\;

ww_outPC(26) <= \outPC[26]~output_o\;

ww_outPC(27) <= \outPC[27]~output_o\;

ww_outPC(28) <= \outPC[28]~output_o\;

ww_outPC(29) <= \outPC[29]~output_o\;

ww_outPC(30) <= \outPC[30]~output_o\;

ww_outPC(31) <= \outPC[31]~output_o\;

ww_addrOut(0) <= \addrOut[0]~output_o\;

ww_addrOut(1) <= \addrOut[1]~output_o\;

ww_addrOut(2) <= \addrOut[2]~output_o\;

ww_addrOut(3) <= \addrOut[3]~output_o\;

ww_addrOut(4) <= \addrOut[4]~output_o\;

ww_addrOut(5) <= \addrOut[5]~output_o\;

ww_wEn <= \wEn~output_o\;

ww_memDataOut(0) <= \memDataOut[0]~output_o\;

ww_memDataOut(1) <= \memDataOut[1]~output_o\;

ww_memDataOut(2) <= \memDataOut[2]~output_o\;

ww_memDataOut(3) <= \memDataOut[3]~output_o\;

ww_memDataOut(4) <= \memDataOut[4]~output_o\;

ww_memDataOut(5) <= \memDataOut[5]~output_o\;

ww_memDataOut(6) <= \memDataOut[6]~output_o\;

ww_memDataOut(7) <= \memDataOut[7]~output_o\;

ww_memDataOut(8) <= \memDataOut[8]~output_o\;

ww_memDataOut(9) <= \memDataOut[9]~output_o\;

ww_memDataOut(10) <= \memDataOut[10]~output_o\;

ww_memDataOut(11) <= \memDataOut[11]~output_o\;

ww_memDataOut(12) <= \memDataOut[12]~output_o\;

ww_memDataOut(13) <= \memDataOut[13]~output_o\;

ww_memDataOut(14) <= \memDataOut[14]~output_o\;

ww_memDataOut(15) <= \memDataOut[15]~output_o\;

ww_memDataOut(16) <= \memDataOut[16]~output_o\;

ww_memDataOut(17) <= \memDataOut[17]~output_o\;

ww_memDataOut(18) <= \memDataOut[18]~output_o\;

ww_memDataOut(19) <= \memDataOut[19]~output_o\;

ww_memDataOut(20) <= \memDataOut[20]~output_o\;

ww_memDataOut(21) <= \memDataOut[21]~output_o\;

ww_memDataOut(22) <= \memDataOut[22]~output_o\;

ww_memDataOut(23) <= \memDataOut[23]~output_o\;

ww_memDataOut(24) <= \memDataOut[24]~output_o\;

ww_memDataOut(25) <= \memDataOut[25]~output_o\;

ww_memDataOut(26) <= \memDataOut[26]~output_o\;

ww_memDataOut(27) <= \memDataOut[27]~output_o\;

ww_memDataOut(28) <= \memDataOut[28]~output_o\;

ww_memDataOut(29) <= \memDataOut[29]~output_o\;

ww_memDataOut(30) <= \memDataOut[30]~output_o\;

ww_memDataOut(31) <= \memDataOut[31]~output_o\;

ww_memDataIn(0) <= \memDataIn[0]~output_o\;

ww_memDataIn(1) <= \memDataIn[1]~output_o\;

ww_memDataIn(2) <= \memDataIn[2]~output_o\;

ww_memDataIn(3) <= \memDataIn[3]~output_o\;

ww_memDataIn(4) <= \memDataIn[4]~output_o\;

ww_memDataIn(5) <= \memDataIn[5]~output_o\;

ww_memDataIn(6) <= \memDataIn[6]~output_o\;

ww_memDataIn(7) <= \memDataIn[7]~output_o\;

ww_memDataIn(8) <= \memDataIn[8]~output_o\;

ww_memDataIn(9) <= \memDataIn[9]~output_o\;

ww_memDataIn(10) <= \memDataIn[10]~output_o\;

ww_memDataIn(11) <= \memDataIn[11]~output_o\;

ww_memDataIn(12) <= \memDataIn[12]~output_o\;

ww_memDataIn(13) <= \memDataIn[13]~output_o\;

ww_memDataIn(14) <= \memDataIn[14]~output_o\;

ww_memDataIn(15) <= \memDataIn[15]~output_o\;

ww_memDataIn(16) <= \memDataIn[16]~output_o\;

ww_memDataIn(17) <= \memDataIn[17]~output_o\;

ww_memDataIn(18) <= \memDataIn[18]~output_o\;

ww_memDataIn(19) <= \memDataIn[19]~output_o\;

ww_memDataIn(20) <= \memDataIn[20]~output_o\;

ww_memDataIn(21) <= \memDataIn[21]~output_o\;

ww_memDataIn(22) <= \memDataIn[22]~output_o\;

ww_memDataIn(23) <= \memDataIn[23]~output_o\;

ww_memDataIn(24) <= \memDataIn[24]~output_o\;

ww_memDataIn(25) <= \memDataIn[25]~output_o\;

ww_memDataIn(26) <= \memDataIn[26]~output_o\;

ww_memDataIn(27) <= \memDataIn[27]~output_o\;

ww_memDataIn(28) <= \memDataIn[28]~output_o\;

ww_memDataIn(29) <= \memDataIn[29]~output_o\;

ww_memDataIn(30) <= \memDataIn[30]~output_o\;

ww_memDataIn(31) <= \memDataIn[31]~output_o\;

ww_T_Info(0) <= \T_Info[0]~output_o\;

ww_T_Info(1) <= \T_Info[1]~output_o\;

ww_T_Info(2) <= \T_Info[2]~output_o\;

ww_wen_mem <= \wen_mem~output_o\;

ww_en_mem <= \en_mem~output_o\;
END structure;


