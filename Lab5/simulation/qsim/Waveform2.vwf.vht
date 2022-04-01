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
-- Generated on "03/04/2022 09:45:40"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          counter20Bit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY counter20Bit_vhd_vec_tst IS
END counter20Bit_vhd_vec_tst;
ARCHITECTURE counter20Bit_arch OF counter20Bit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL o : STD_LOGIC_VECTOR(0 TO 19);
SIGNAL rst : STD_LOGIC;
COMPONENT counter20Bit
	PORT (
	clk : IN STD_LOGIC;
	o : OUT STD_LOGIC_VECTOR(0 TO 19);
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : counter20Bit
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	o => o,
	rst => rst
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
	clk <= '0';
	WAIT FOR 60000 ps;
	clk <= '1';
	WAIT FOR 60000 ps;
	clk <= '0';
	WAIT FOR 100000 ps;
	clk <= '1';
	WAIT FOR 100000 ps;
	clk <= '0';
	WAIT FOR 100000 ps;
	clk <= '1';
	WAIT FOR 80000 ps;
	clk <= '0';
	WAIT FOR 140000 ps;
	clk <= '1';
	WAIT FOR 80000 ps;
	clk <= '0';
WAIT;
END PROCESS t_prcs_clk;

-- rst
t_prcs_rst: PROCESS
BEGIN
	rst <= '0';
	WAIT FOR 640000 ps;
	rst <= '1';
	WAIT FOR 80000 ps;
	rst <= '0';
WAIT;
END PROCESS t_prcs_rst;
END counter20Bit_arch;
