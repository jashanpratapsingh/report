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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/06/2026 18:38:55"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CPU_TEST_Sim
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CPU_TEST_Sim_vhd_vec_tst IS
END CPU_TEST_Sim_vhd_vec_tst;
ARCHITECTURE CPU_TEST_Sim_arch OF CPU_TEST_Sim_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL addrOut : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL cpuClk : STD_LOGIC;
SIGNAL en_mem : STD_LOGIC;
SIGNAL memClk : STD_LOGIC;
SIGNAL memDataIn : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL memDataOut : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL outA : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL outB : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL outC : STD_LOGIC;
SIGNAL outIR : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL outPC : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL outZ : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
SIGNAL T_Info : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL wEn : STD_LOGIC;
SIGNAL wen_mem : STD_LOGIC;
COMPONENT CPU_TEST_Sim
	PORT (
	addrOut : BUFFER STD_LOGIC_VECTOR(5 DOWNTO 0);
	cpuClk : IN STD_LOGIC;
	en_mem : BUFFER STD_LOGIC;
	memClk : IN STD_LOGIC;
	memDataIn : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	memDataOut : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	outA : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	outB : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	outC : BUFFER STD_LOGIC;
	outIR : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	outPC : BUFFER STD_LOGIC_VECTOR(31 DOWNTO 0);
	outZ : BUFFER STD_LOGIC;
	rst : IN STD_LOGIC;
	T_Info : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	wEn : BUFFER STD_LOGIC;
	wen_mem : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CPU_TEST_Sim
	PORT MAP (
-- list connections between master ports and signals
	addrOut => addrOut,
	cpuClk => cpuClk,
	en_mem => en_mem,
	memClk => memClk,
	memDataIn => memDataIn,
	memDataOut => memDataOut,
	outA => outA,
	outB => outB,
	outC => outC,
	outIR => outIR,
	outPC => outPC,
	outZ => outZ,
	rst => rst,
	T_Info => T_Info,
	wEn => wEn,
	wen_mem => wen_mem
	);

-- cpuClk
t_prcs_cpuClk: PROCESS
BEGIN
LOOP
	cpuClk <= '0';
	WAIT FOR 20000 ps;
	cpuClk <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_cpuClk;

-- memClk
t_prcs_memClk: PROCESS
BEGIN
LOOP
	memClk <= '0';
	WAIT FOR 10000 ps;
	memClk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 2000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_memClk;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '1';
	WAIT FOR 40000 ps;
	rst <= '0';
	WAIT FOR 1560000 ps;
	rst <= '1';
	WAIT FOR 40000 ps;
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;
END CPU_TEST_Sim_arch;
