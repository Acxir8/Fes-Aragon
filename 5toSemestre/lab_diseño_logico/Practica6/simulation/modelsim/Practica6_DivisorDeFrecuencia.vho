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

-- DATE "10/21/2023 22:12:17"

-- 
-- Device: Altera EPM240T100C4 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	DIV IS
    PORT (
	clk : IN std_logic;
	periodo : OUT std_logic
	);
END DIV;

-- Design Ports Information
-- periodo	=>  Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- clk	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF DIV IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_periodo : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \c[0]~7\ : std_logic;
SIGNAL \c[0]~7COUT1_18\ : std_logic;
SIGNAL \c[1]~9\ : std_logic;
SIGNAL \c[1]~9COUT1_20\ : std_logic;
SIGNAL \c[2]~11\ : std_logic;
SIGNAL \c[2]~11COUT1_22\ : std_logic;
SIGNAL \c[3]~5\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \c[4]~3\ : std_logic;
SIGNAL \c[4]~3COUT1_24\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL c : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_LessThan1~1_combout\ : std_logic;

BEGIN

ww_clk <= clk;
periodo <= ww_periodo;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_LessThan1~1_combout\ <= NOT \LessThan1~1_combout\;

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LC_X7_Y2_N1
\c[0]\ : maxii_lcell
-- Equation(s):
-- c(0) = DFFEAS(((!c(0))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~1_combout\, )
-- \c[0]~7\ = CARRY(((c(0))))
-- \c[0]~7COUT1_18\ = CARRY(((c(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => c(0),
	aclr => GND,
	sclr => \LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(0),
	cout0 => \c[0]~7\,
	cout1 => \c[0]~7COUT1_18\);

-- Location: LC_X7_Y2_N2
\c[1]\ : maxii_lcell
-- Equation(s):
-- c(1) = DFFEAS((c(1) $ ((\c[0]~7\))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~1_combout\, )
-- \c[1]~9\ = CARRY(((!\c[0]~7\) # (!c(1))))
-- \c[1]~9COUT1_20\ = CARRY(((!\c[0]~7COUT1_18\) # (!c(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => c(1),
	aclr => GND,
	sclr => \LessThan0~1_combout\,
	cin0 => \c[0]~7\,
	cin1 => \c[0]~7COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(1),
	cout0 => \c[1]~9\,
	cout1 => \c[1]~9COUT1_20\);

-- Location: LC_X7_Y2_N3
\c[2]\ : maxii_lcell
-- Equation(s):
-- c(2) = DFFEAS(c(2) $ ((((!\c[1]~9\)))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~1_combout\, )
-- \c[2]~11\ = CARRY((c(2) & ((!\c[1]~9\))))
-- \c[2]~11COUT1_22\ = CARRY((c(2) & ((!\c[1]~9COUT1_20\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => c(2),
	aclr => GND,
	sclr => \LessThan0~1_combout\,
	cin0 => \c[1]~9\,
	cin1 => \c[1]~9COUT1_20\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(2),
	cout0 => \c[2]~11\,
	cout1 => \c[2]~11COUT1_22\);

-- Location: LC_X7_Y2_N4
\c[3]\ : maxii_lcell
-- Equation(s):
-- c(3) = DFFEAS(c(3) $ ((((\c[2]~11\)))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~1_combout\, )
-- \c[3]~5\ = CARRY(((!\c[2]~11COUT1_22\)) # (!c(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => c(3),
	aclr => GND,
	sclr => \LessThan0~1_combout\,
	cin0 => \c[2]~11\,
	cin1 => \c[2]~11COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(3),
	cout => \c[3]~5\);

-- Location: LC_X7_Y2_N5
\c[4]\ : maxii_lcell
-- Equation(s):
-- c(4) = DFFEAS(c(4) $ ((((!\c[3]~5\)))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~1_combout\, )
-- \c[4]~3\ = CARRY((c(4) & ((!\c[3]~5\))))
-- \c[4]~3COUT1_24\ = CARRY((c(4) & ((!\c[3]~5\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => c(4),
	aclr => GND,
	sclr => \LessThan0~1_combout\,
	cin => \c[3]~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(4),
	cout0 => \c[4]~3\,
	cout1 => \c[4]~3COUT1_24\);

-- Location: LC_X7_Y2_N7
\LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \LessThan0~0_combout\ = ((!c(1) & ((!c(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => c(1),
	datad => c(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~0_combout\);

-- Location: LC_X7_Y2_N8
\LessThan0~1\ : maxii_lcell
-- Equation(s):
-- \LessThan0~1_combout\ = (c(5) & (c(4) & ((c(3)) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "80c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => c(3),
	datab => c(5),
	datac => c(4),
	datad => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~1_combout\);

-- Location: LC_X7_Y2_N6
\c[5]\ : maxii_lcell
-- Equation(s):
-- c(5) = DFFEAS(c(5) $ (((((!\c[3]~5\ & \c[4]~3\) # (\c[3]~5\ & \c[4]~3COUT1_24\))))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~1_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => c(5),
	aclr => GND,
	sclr => \LessThan0~1_combout\,
	cin => \c[3]~5\,
	cin0 => \c[4]~3\,
	cin1 => \c[4]~3COUT1_24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(5));

-- Location: LC_X7_Y2_N9
\LessThan1~0\ : maxii_lcell
-- Equation(s):
-- \LessThan1~0_combout\ = (c(2)) # (((c(1)) # (c(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => c(2),
	datac => c(1),
	datad => c(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan1~0_combout\);

-- Location: LC_X7_Y2_N0
\LessThan1~1\ : maxii_lcell
-- Equation(s):
-- \LessThan1~1_combout\ = (c(5)) # ((c(3) & (c(4) & \LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => c(5),
	datab => c(3),
	datac => c(4),
	datad => \LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan1~1_combout\);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\periodo~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_LessThan1~1_combout\,
	oe => VCC,
	padio => ww_periodo);
END structure;


