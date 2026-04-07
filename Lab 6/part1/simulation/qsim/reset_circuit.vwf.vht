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
-- Generated on "04/06/2026 17:39:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          reset_circuit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY reset_circuit_vhd_vec_tst IS
END reset_circuit_vhd_vec_tst;
ARCHITECTURE reset_circuit_arch OF reset_circuit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clk : STD_LOGIC;
SIGNAL Clr_PC : STD_LOGIC;
SIGNAL Enable_PD : STD_LOGIC;
SIGNAL Reset : STD_LOGIC;
COMPONENT reset_circuit
	PORT (
	Clk : IN STD_LOGIC;
	Clr_PC : BUFFER STD_LOGIC;
	Enable_PD : BUFFER STD_LOGIC;
	Reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : reset_circuit
	PORT MAP (
-- list connections between master ports and signals
	Clk => Clk,
	Clr_PC => Clr_PC,
	Enable_PD => Enable_PD,
	Reset => Reset
	);

-- Clk
t_prcs_Clk: PROCESS
BEGIN
LOOP
	Clk <= '0';
	WAIT FOR 20000 ps;
	Clk <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clk;

-- Reset
t_prcs_Reset: PROCESS
BEGIN
	Reset <= '0';
	WAIT FOR 90000 ps;
	Reset <= '1';
	WAIT FOR 20000 ps;
	Reset <= '0';
	WAIT FOR 250000 ps;
	Reset <= '1';
	WAIT FOR 30000 ps;
	Reset <= '0';
	WAIT FOR 300000 ps;
	Reset <= '1';
	WAIT FOR 100000 ps;
	Reset <= '0';
WAIT;
END PROCESS t_prcs_Reset;
END reset_circuit_arch;
