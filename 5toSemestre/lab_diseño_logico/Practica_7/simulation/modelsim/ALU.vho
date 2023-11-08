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

-- DATE "10/02/2023 21:46:57"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	ALU IS
    PORT (
	X : IN std_logic_vector(3 DOWNTO 0);
	Y : IN std_logic_vector(3 DOWNTO 0);
	enable : IN std_logic;
	op : IN std_logic_vector(1 DOWNTO 0);
	z : OUT std_logic_vector(5 DOWNTO 0)
	);
END ALU;

-- Design Ports Information
-- z[0]	=>  Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- z[1]	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- z[2]	=>  Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- z[3]	=>  Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- z[4]	=>  Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- z[5]	=>  Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- X[0]	=>  Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op[1]	=>  Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- op[0]	=>  Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- enable	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[1]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[2]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[3]	=>  Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_enable : std_logic;
SIGNAL ww_op : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_z : std_logic_vector(5 DOWNTO 0);
SIGNAL \tmp~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \enable~combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~2COUT1_31\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \tmp~1_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~2COUT1_31\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~2COUT1_31\ : std_logic;
SIGNAL \Add2~5_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~7COUT1_33\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~7COUT1_33\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \tmp~2_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~7COUT1_33\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Add1~12\ : std_logic;
SIGNAL \Add1~12COUT1_35\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_35\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \tmp~3_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Add2~12\ : std_logic;
SIGNAL \Add2~12COUT1_35\ : std_logic;
SIGNAL \Add2~15_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~17COUT1_37\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~17COUT1_37\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~17COUT1_37\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \op~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \Y~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \X~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_X <= X;
ww_Y <= Y;
ww_enable <= enable;
ww_op <= op;
z <= ww_z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_X(0),
	combout => \X~combout\(0));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Y(0),
	combout => \Y~combout\(0));

-- Location: LC_X4_Y2_N8
\tmp~0\ : maxii_lcell
-- Equation(s):
-- \tmp~0_combout\ = ((\X~combout\(0)) # ((\Y~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(0),
	datac => \Y~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tmp~0_combout\);

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_op(1),
	combout => \op~combout\(1));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\op[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_op(0),
	combout => \op~combout\(0));

-- Location: LC_X4_Y2_N0
\Add1~0\ : maxii_lcell
-- Equation(s):
-- \Add1~0_combout\ = \Y~combout\(0) $ ((\X~combout\(0)))
-- \Add1~2\ = CARRY(((\X~combout\(0))) # (!\Y~combout\(0)))
-- \Add1~2COUT1_31\ = CARRY(((\X~combout\(0))) # (!\Y~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66dd",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(0),
	datab => \X~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~0_combout\,
	cout0 => \Add1~2\,
	cout1 => \Add1~2COUT1_31\);

-- Location: LC_X3_Y2_N0
\Add0~0\ : maxii_lcell
-- Equation(s):
-- \Add0~0_combout\ = \Y~combout\(0) $ ((\X~combout\(0)))
-- \Add0~2\ = CARRY((\Y~combout\(0) & (\X~combout\(0))))
-- \Add0~2COUT1_31\ = CARRY((\Y~combout\(0) & (\X~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(0),
	datab => \X~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout0 => \Add0~2\,
	cout1 => \Add0~2COUT1_31\);

-- Location: LC_X4_Y2_N6
\Mux5~0\ : maxii_lcell
-- Equation(s):
-- \Mux5~0_combout\ = (\op~combout\(0) & ((\op~combout\(1)) # ((\Add1~0_combout\)))) # (!\op~combout\(0) & (!\op~combout\(1) & ((\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(0),
	datab => \op~combout\(1),
	datac => \Add1~0_combout\,
	datad => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~0_combout\);

-- Location: LC_X6_Y2_N0
\Add2~0\ : maxii_lcell
-- Equation(s):
-- \Add2~0_combout\ = \Y~combout\(0) $ ((!\X~combout\(0)))
-- \Add2~2\ = CARRY((!\Y~combout\(0) & (\X~combout\(0))))
-- \Add2~2COUT1_31\ = CARRY((!\Y~combout\(0) & (\X~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9944",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(0),
	datab => \X~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~0_combout\,
	cout0 => \Add2~2\,
	cout1 => \Add2~2COUT1_31\);

-- Location: LC_X4_Y2_N7
\Mux5~1\ : maxii_lcell
-- Equation(s):
-- \Mux5~1_combout\ = (\op~combout\(1) & ((\Mux5~0_combout\ & ((\Add2~0_combout\))) # (!\Mux5~0_combout\ & (\tmp~0_combout\)))) # (!\op~combout\(1) & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f838",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tmp~0_combout\,
	datab => \op~combout\(1),
	datac => \Mux5~0_combout\,
	datad => \Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~1_combout\);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\enable~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_enable,
	combout => \enable~combout\);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Y(1),
	combout => \Y~combout\(1));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_X(1),
	combout => \X~combout\(1));

-- Location: LC_X4_Y2_N1
\Add1~5\ : maxii_lcell
-- Equation(s):
-- \Add1~5_combout\ = \Y~combout\(1) $ (\X~combout\(1) $ ((!\Add1~2\)))
-- \Add1~7\ = CARRY((\Y~combout\(1) & ((!\Add1~2\) # (!\X~combout\(1)))) # (!\Y~combout\(1) & (!\X~combout\(1) & !\Add1~2\)))
-- \Add1~7COUT1_33\ = CARRY((\Y~combout\(1) & ((!\Add1~2COUT1_31\) # (!\X~combout\(1)))) # (!\Y~combout\(1) & (!\X~combout\(1) & !\Add1~2COUT1_31\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(1),
	datab => \X~combout\(1),
	cin0 => \Add1~2\,
	cin1 => \Add1~2COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~5_combout\,
	cout0 => \Add1~7\,
	cout1 => \Add1~7COUT1_33\);

-- Location: LC_X3_Y2_N6
\tmp~1\ : maxii_lcell
-- Equation(s):
-- \tmp~1_combout\ = ((\Y~combout\(1)) # ((\X~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Y~combout\(1),
	datad => \X~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tmp~1_combout\);

-- Location: LC_X3_Y2_N1
\Add0~5\ : maxii_lcell
-- Equation(s):
-- \Add0~5_combout\ = \Y~combout\(1) $ (\X~combout\(1) $ ((\Add0~2\)))
-- \Add0~7\ = CARRY((\Y~combout\(1) & (!\X~combout\(1) & !\Add0~2\)) # (!\Y~combout\(1) & ((!\Add0~2\) # (!\X~combout\(1)))))
-- \Add0~7COUT1_33\ = CARRY((\Y~combout\(1) & (!\X~combout\(1) & !\Add0~2COUT1_31\)) # (!\Y~combout\(1) & ((!\Add0~2COUT1_31\) # (!\X~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(1),
	datab => \X~combout\(1),
	cin0 => \Add0~2\,
	cin1 => \Add0~2COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout0 => \Add0~7\,
	cout1 => \Add0~7COUT1_33\);

-- Location: LC_X3_Y2_N9
\Mux4~0\ : maxii_lcell
-- Equation(s):
-- \Mux4~0_combout\ = (\op~combout\(1) & ((\tmp~1_combout\) # ((\op~combout\(0))))) # (!\op~combout\(1) & (((!\op~combout\(0) & \Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cbc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \tmp~1_combout\,
	datab => \op~combout\(1),
	datac => \op~combout\(0),
	datad => \Add0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

-- Location: LC_X6_Y2_N1
\Add2~5\ : maxii_lcell
-- Equation(s):
-- \Add2~5_combout\ = \X~combout\(1) $ (\Y~combout\(1) $ ((!\Add2~2\)))
-- \Add2~7\ = CARRY((\X~combout\(1) & (\Y~combout\(1) & !\Add2~2\)) # (!\X~combout\(1) & ((\Y~combout\(1)) # (!\Add2~2\))))
-- \Add2~7COUT1_33\ = CARRY((\X~combout\(1) & (\Y~combout\(1) & !\Add2~2COUT1_31\)) # (!\X~combout\(1) & ((\Y~combout\(1)) # (!\Add2~2COUT1_31\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(1),
	datab => \Y~combout\(1),
	cin0 => \Add2~2\,
	cin1 => \Add2~2COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~5_combout\,
	cout0 => \Add2~7\,
	cout1 => \Add2~7COUT1_33\);

-- Location: LC_X3_Y2_N5
\Mux4~1\ : maxii_lcell
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & (((\Add2~5_combout\) # (!\op~combout\(0))))) # (!\Mux4~0_combout\ & (\Add1~5_combout\ & (\op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec2c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~5_combout\,
	datab => \Mux4~0_combout\,
	datac => \op~combout\(0),
	datad => \Add2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~1_combout\);

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Y(2),
	combout => \Y~combout\(2));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_X(2),
	combout => \X~combout\(2));

-- Location: LC_X3_Y2_N2
\Add0~10\ : maxii_lcell
-- Equation(s):
-- \Add0~10_combout\ = \Y~combout\(2) $ (\X~combout\(2) $ ((!\Add0~7\)))
-- \Add0~12\ = CARRY((\Y~combout\(2) & ((\X~combout\(2)) # (!\Add0~7\))) # (!\Y~combout\(2) & (\X~combout\(2) & !\Add0~7\)))
-- \Add0~12COUT1_35\ = CARRY((\Y~combout\(2) & ((\X~combout\(2)) # (!\Add0~7COUT1_33\))) # (!\Y~combout\(2) & (\X~combout\(2) & !\Add0~7COUT1_33\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(2),
	datab => \X~combout\(2),
	cin0 => \Add0~7\,
	cin1 => \Add0~7COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_35\);

-- Location: LC_X4_Y2_N2
\Add1~10\ : maxii_lcell
-- Equation(s):
-- \Add1~10_combout\ = \Y~combout\(2) $ (\X~combout\(2) $ ((\Add1~7\)))
-- \Add1~12\ = CARRY((\Y~combout\(2) & (\X~combout\(2) & !\Add1~7\)) # (!\Y~combout\(2) & ((\X~combout\(2)) # (!\Add1~7\))))
-- \Add1~12COUT1_35\ = CARRY((\Y~combout\(2) & (\X~combout\(2) & !\Add1~7COUT1_33\)) # (!\Y~combout\(2) & ((\X~combout\(2)) # (!\Add1~7COUT1_33\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(2),
	datab => \X~combout\(2),
	cin0 => \Add1~7\,
	cin1 => \Add1~7COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~10_combout\,
	cout0 => \Add1~12\,
	cout1 => \Add1~12COUT1_35\);

-- Location: LC_X4_Y2_N9
\Mux3~0\ : maxii_lcell
-- Equation(s):
-- \Mux3~0_combout\ = (\op~combout\(0) & (((\op~combout\(1)) # (\Add1~10_combout\)))) # (!\op~combout\(0) & (\Add0~10_combout\ & (!\op~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aea4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(0),
	datab => \Add0~10_combout\,
	datac => \op~combout\(1),
	datad => \Add1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~0_combout\);

-- Location: LC_X6_Y2_N7
\tmp~2\ : maxii_lcell
-- Equation(s):
-- \tmp~2_combout\ = (((\Y~combout\(2)) # (\X~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Y~combout\(2),
	datad => \X~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tmp~2_combout\);

-- Location: LC_X6_Y2_N2
\Add2~10\ : maxii_lcell
-- Equation(s):
-- \Add2~10_combout\ = \Y~combout\(2) $ (\X~combout\(2) $ ((\Add2~7\)))
-- \Add2~12\ = CARRY((\Y~combout\(2) & (\X~combout\(2) & !\Add2~7\)) # (!\Y~combout\(2) & ((\X~combout\(2)) # (!\Add2~7\))))
-- \Add2~12COUT1_35\ = CARRY((\Y~combout\(2) & (\X~combout\(2) & !\Add2~7COUT1_33\)) # (!\Y~combout\(2) & ((\X~combout\(2)) # (!\Add2~7COUT1_33\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(2),
	datab => \X~combout\(2),
	cin0 => \Add2~7\,
	cin1 => \Add2~7COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~10_combout\,
	cout0 => \Add2~12\,
	cout1 => \Add2~12COUT1_35\);

-- Location: LC_X6_Y2_N8
\Mux3~1\ : maxii_lcell
-- Equation(s):
-- \Mux3~1_combout\ = (\op~combout\(1) & ((\Mux3~0_combout\ & ((\Add2~10_combout\))) # (!\Mux3~0_combout\ & (\tmp~2_combout\)))) # (!\op~combout\(1) & (\Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(1),
	datab => \Mux3~0_combout\,
	datac => \tmp~2_combout\,
	datad => \Add2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~1_combout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Y(3),
	combout => \Y~combout\(3));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_X(3),
	combout => \X~combout\(3));

-- Location: LC_X4_Y2_N3
\Add1~15\ : maxii_lcell
-- Equation(s):
-- \Add1~15_combout\ = \Y~combout\(3) $ (\X~combout\(3) $ ((!\Add1~12\)))
-- \Add1~17\ = CARRY((\Y~combout\(3) & ((!\Add1~12\) # (!\X~combout\(3)))) # (!\Y~combout\(3) & (!\X~combout\(3) & !\Add1~12\)))
-- \Add1~17COUT1_37\ = CARRY((\Y~combout\(3) & ((!\Add1~12COUT1_35\) # (!\X~combout\(3)))) # (!\Y~combout\(3) & (!\X~combout\(3) & !\Add1~12COUT1_35\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(3),
	datab => \X~combout\(3),
	cin0 => \Add1~12\,
	cin1 => \Add1~12COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~15_combout\,
	cout0 => \Add1~17\,
	cout1 => \Add1~17COUT1_37\);

-- Location: LC_X3_Y2_N3
\Add0~15\ : maxii_lcell
-- Equation(s):
-- \Add0~15_combout\ = \X~combout\(3) $ (\Y~combout\(3) $ ((\Add0~12\)))
-- \Add0~17\ = CARRY((\X~combout\(3) & (!\Y~combout\(3) & !\Add0~12\)) # (!\X~combout\(3) & ((!\Add0~12\) # (!\Y~combout\(3)))))
-- \Add0~17COUT1_37\ = CARRY((\X~combout\(3) & (!\Y~combout\(3) & !\Add0~12COUT1_35\)) # (!\X~combout\(3) & ((!\Add0~12COUT1_35\) # (!\Y~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(3),
	datab => \Y~combout\(3),
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout0 => \Add0~17\,
	cout1 => \Add0~17COUT1_37\);

-- Location: LC_X3_Y2_N8
\tmp~3\ : maxii_lcell
-- Equation(s):
-- \tmp~3_combout\ = ((\Y~combout\(3)) # ((\X~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Y~combout\(3),
	datac => \X~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \tmp~3_combout\);

-- Location: LC_X3_Y2_N7
\Mux2~0\ : maxii_lcell
-- Equation(s):
-- \Mux2~0_combout\ = (\op~combout\(1) & (((\op~combout\(0)) # (\tmp~3_combout\)))) # (!\op~combout\(1) & (\Add0~15_combout\ & (!\op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cec2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~15_combout\,
	datab => \op~combout\(1),
	datac => \op~combout\(0),
	datad => \tmp~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~0_combout\);

-- Location: LC_X6_Y2_N3
\Add2~15\ : maxii_lcell
-- Equation(s):
-- \Add2~15_combout\ = \Y~combout\(3) $ (\X~combout\(3) $ ((!\Add2~12\)))
-- \Add2~17\ = CARRY((\Y~combout\(3) & ((!\Add2~12\) # (!\X~combout\(3)))) # (!\Y~combout\(3) & (!\X~combout\(3) & !\Add2~12\)))
-- \Add2~17COUT1_37\ = CARRY((\Y~combout\(3) & ((!\Add2~12COUT1_35\) # (!\X~combout\(3)))) # (!\Y~combout\(3) & (!\X~combout\(3) & !\Add2~12COUT1_35\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(3),
	datab => \X~combout\(3),
	cin0 => \Add2~12\,
	cin1 => \Add2~12COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~15_combout\,
	cout0 => \Add2~17\,
	cout1 => \Add2~17COUT1_37\);

-- Location: LC_X4_Y2_N5
\Mux2~1\ : maxii_lcell
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & (((\Add2~15_combout\) # (!\op~combout\(0))))) # (!\Mux2~0_combout\ & (\Add1~15_combout\ & (\op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec2c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~15_combout\,
	datab => \Mux2~0_combout\,
	datac => \op~combout\(0),
	datad => \Add2~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~1_combout\);

-- Location: LC_X3_Y2_N4
\Add0~20\ : maxii_lcell
-- Equation(s):
-- \Add0~20_combout\ = (((!\Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Add0~17\,
	cin1 => \Add0~17COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\);

-- Location: LC_X4_Y2_N4
\Add1~20\ : maxii_lcell
-- Equation(s):
-- \Add1~20_combout\ = (((\Add1~17\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Add1~17\,
	cin1 => \Add1~17COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~20_combout\);

-- Location: LC_X6_Y2_N9
\Mux1~0\ : maxii_lcell
-- Equation(s):
-- \Mux1~0_combout\ = ((\op~combout\(0) & ((\Add1~20_combout\))) # (!\op~combout\(0) & (\Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datac => \op~combout\(0),
	datad => \Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0_combout\);

-- Location: LC_X6_Y2_N4
\Add2~20\ : maxii_lcell
-- Equation(s):
-- \Add2~20_combout\ = (((\Add2~17\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Add2~17\,
	cin1 => \Add2~17COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~20_combout\);

-- Location: LC_X6_Y2_N5
\Mux1~1\ : maxii_lcell
-- Equation(s):
-- \Mux1~1_combout\ = (\op~combout\(1) & (((\Add2~20_combout\ & \op~combout\(0))))) # (!\op~combout\(1) & (\Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e444",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(1),
	datab => \Mux1~0_combout\,
	datac => \Add2~20_combout\,
	datad => \op~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~1_combout\);

-- Location: LC_X6_Y2_N6
\Mux0~0\ : maxii_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (\op~combout\(0) & ((\op~combout\(1) & ((\Add2~20_combout\))) # (!\op~combout\(1) & (\Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \op~combout\(1),
	datab => \Add1~20_combout\,
	datac => \Add2~20_combout\,
	datad => \op~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\z[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux5~1_combout\,
	oe => \enable~combout\,
	padio => ww_z(0));

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\z[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux4~1_combout\,
	oe => \enable~combout\,
	padio => ww_z(1));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\z[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux3~1_combout\,
	oe => \enable~combout\,
	padio => ww_z(2));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\z[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux2~1_combout\,
	oe => \enable~combout\,
	padio => ww_z(3));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\z[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux1~1_combout\,
	oe => \enable~combout\,
	padio => ww_z(4));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\z[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux0~0_combout\,
	oe => \enable~combout\,
	padio => ww_z(5));
END structure;


