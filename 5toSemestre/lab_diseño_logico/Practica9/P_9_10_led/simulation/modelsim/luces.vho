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

-- DATE "11/12/2023 23:29:02"

-- 
-- Device: Altera EPM1270T144C3 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	luces IS
    PORT (
	clk : IN std_logic;
	counter : INOUT std_logic_vector(2 DOWNTO 0);
	leds : OUT std_logic_vector(9 DOWNTO 0)
	);
END luces;

-- Design Ports Information
-- leds[0]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- leds[1]	=>  Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- leds[2]	=>  Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- leds[3]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- leds[4]	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- leds[5]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- leds[6]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- leds[7]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- leds[8]	=>  Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- leds[9]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- counter[0]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- counter[1]	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- counter[2]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- clk	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF luces IS
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
SIGNAL ww_leds : std_logic_vector(9 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~2COUT1_146\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_148\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~17COUT1_150\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~22COUT1_152\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_154\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~37COUT1_156\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~42COUT1_158\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~47COUT1_160\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~52COUT1_162\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~62COUT1_164\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~67COUT1_166\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~72COUT1_168\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~77COUT1_170\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~87COUT1_172\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~92\ : std_logic;
SIGNAL \Add0~92COUT1_174\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~97COUT1_176\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~102COUT1_178\ : std_logic;
SIGNAL \Add0~105_combout\ : std_logic;
SIGNAL \Add0~107\ : std_logic;
SIGNAL \Add0~110_combout\ : std_logic;
SIGNAL \Add0~112\ : std_logic;
SIGNAL \Add0~112COUT1_180\ : std_logic;
SIGNAL \Add0~115_combout\ : std_logic;
SIGNAL \Add0~117\ : std_logic;
SIGNAL \Add0~117COUT1_182\ : std_logic;
SIGNAL \Add0~120_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \counter[0]~reg0_regout\ : std_logic;
SIGNAL \counter[1]~reg0_regout\ : std_logic;
SIGNAL \counter[2]~reg0_regout\ : std_logic;
SIGNAL tmp : std_logic_vector(9 DOWNTO 0);
SIGNAL count : std_logic_vector(24 DOWNTO 0);

BEGIN

ww_clk <= clk;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LC_X16_Y6_N4
\count[24]\ : maxii_lcell
-- Equation(s):
-- count(24) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~120_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~120_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(24));

-- Location: LC_X12_Y6_N3
\Add0~0\ : maxii_lcell
-- Equation(s):
-- \Add0~0_combout\ = ((!count(0)))
-- \Add0~2\ = CARRY(((count(0))))
-- \Add0~2COUT1_146\ = CARRY(((count(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout0 => \Add0~2\,
	cout1 => \Add0~2COUT1_146\);

-- Location: LC_X15_Y6_N9
\count[0]\ : maxii_lcell
-- Equation(s):
-- count(0) = DFFEAS((((\Add0~0_combout\ & !\Equal0~7_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~0_combout\,
	datad => \Equal0~7_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(0));

-- Location: LC_X12_Y6_N4
\Add0~5\ : maxii_lcell
-- Equation(s):
-- \Add0~5_combout\ = (count(1) $ ((\Add0~2\)))
-- \Add0~7\ = CARRY(((!\Add0~2COUT1_146\) # (!count(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(1),
	cin0 => \Add0~2\,
	cin1 => \Add0~2COUT1_146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout => \Add0~7\);

-- Location: LC_X11_Y6_N7
\count[1]\ : maxii_lcell
-- Equation(s):
-- count(1) = DFFEAS((((\Add0~5_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~5_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(1));

-- Location: LC_X12_Y6_N5
\Add0~10\ : maxii_lcell
-- Equation(s):
-- \Add0~10_combout\ = (count(2) $ ((!\Add0~7\)))
-- \Add0~12\ = CARRY(((count(2) & !\Add0~7\)))
-- \Add0~12COUT1_148\ = CARRY(((count(2) & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(2),
	cin => \Add0~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_148\);

-- Location: LC_X11_Y6_N2
\count[2]\ : maxii_lcell
-- Equation(s):
-- count(2) = DFFEAS((((\Add0~10_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(2));

-- Location: LC_X12_Y6_N6
\Add0~15\ : maxii_lcell
-- Equation(s):
-- \Add0~15_combout\ = (count(3) $ (((!\Add0~7\ & \Add0~12\) # (\Add0~7\ & \Add0~12COUT1_148\))))
-- \Add0~17\ = CARRY(((!\Add0~12\) # (!count(3))))
-- \Add0~17COUT1_150\ = CARRY(((!\Add0~12COUT1_148\) # (!count(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	cin => \Add0~7\,
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_148\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout0 => \Add0~17\,
	cout1 => \Add0~17COUT1_150\);

-- Location: LC_X12_Y6_N2
\count[3]\ : maxii_lcell
-- Equation(s):
-- count(3) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~15_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~15_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(3));

-- Location: LC_X12_Y6_N7
\Add0~20\ : maxii_lcell
-- Equation(s):
-- \Add0~20_combout\ = (count(4) $ ((!(!\Add0~7\ & \Add0~17\) # (\Add0~7\ & \Add0~17COUT1_150\))))
-- \Add0~22\ = CARRY(((count(4) & !\Add0~17\)))
-- \Add0~22COUT1_152\ = CARRY(((count(4) & !\Add0~17COUT1_150\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	cin => \Add0~7\,
	cin0 => \Add0~17\,
	cin1 => \Add0~17COUT1_150\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout0 => \Add0~22\,
	cout1 => \Add0~22COUT1_152\);

-- Location: LC_X12_Y6_N1
\count[4]\ : maxii_lcell
-- Equation(s):
-- count(4) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~20_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~20_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(4));

-- Location: LC_X12_Y6_N8
\Add0~25\ : maxii_lcell
-- Equation(s):
-- \Add0~25_combout\ = (count(5) $ (((!\Add0~7\ & \Add0~22\) # (\Add0~7\ & \Add0~22COUT1_152\))))
-- \Add0~27\ = CARRY(((!\Add0~22\) # (!count(5))))
-- \Add0~27COUT1_154\ = CARRY(((!\Add0~22COUT1_152\) # (!count(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	cin => \Add0~7\,
	cin0 => \Add0~22\,
	cin1 => \Add0~22COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_154\);

-- Location: LC_X11_Y6_N4
\count[5]\ : maxii_lcell
-- Equation(s):
-- count(5) = DFFEAS((((\Add0~25_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~25_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(5));

-- Location: LC_X12_Y6_N9
\Add0~30\ : maxii_lcell
-- Equation(s):
-- \Add0~30_combout\ = (count(6) $ ((!(!\Add0~7\ & \Add0~27\) # (\Add0~7\ & \Add0~27COUT1_154\))))
-- \Add0~32\ = CARRY(((count(6) & !\Add0~27COUT1_154\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	cin => \Add0~7\,
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout => \Add0~32\);

-- Location: LC_X12_Y6_N0
\count[6]\ : maxii_lcell
-- Equation(s):
-- count(6) = DFFEAS((((\Add0~30_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~30_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(6));

-- Location: LC_X13_Y6_N0
\Add0~35\ : maxii_lcell
-- Equation(s):
-- \Add0~35_combout\ = (count(7) $ ((\Add0~32\)))
-- \Add0~37\ = CARRY(((!\Add0~32\) # (!count(7))))
-- \Add0~37COUT1_156\ = CARRY(((!\Add0~32\) # (!count(7))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	cin => \Add0~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout0 => \Add0~37\,
	cout1 => \Add0~37COUT1_156\);

-- Location: LC_X16_Y6_N2
\count[7]\ : maxii_lcell
-- Equation(s):
-- count(7) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~35_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~35_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(7));

-- Location: LC_X13_Y6_N1
\Add0~40\ : maxii_lcell
-- Equation(s):
-- \Add0~40_combout\ = (count(8) $ ((!(!\Add0~32\ & \Add0~37\) # (\Add0~32\ & \Add0~37COUT1_156\))))
-- \Add0~42\ = CARRY(((count(8) & !\Add0~37\)))
-- \Add0~42COUT1_158\ = CARRY(((count(8) & !\Add0~37COUT1_156\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	cin => \Add0~32\,
	cin0 => \Add0~37\,
	cin1 => \Add0~37COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout0 => \Add0~42\,
	cout1 => \Add0~42COUT1_158\);

-- Location: LC_X13_Y5_N2
\count[8]\ : maxii_lcell
-- Equation(s):
-- count(8) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~40_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~40_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(8));

-- Location: LC_X13_Y6_N2
\Add0~45\ : maxii_lcell
-- Equation(s):
-- \Add0~45_combout\ = (count(9) $ (((!\Add0~32\ & \Add0~42\) # (\Add0~32\ & \Add0~42COUT1_158\))))
-- \Add0~47\ = CARRY(((!\Add0~42\) # (!count(9))))
-- \Add0~47COUT1_160\ = CARRY(((!\Add0~42COUT1_158\) # (!count(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	cin => \Add0~32\,
	cin0 => \Add0~42\,
	cin1 => \Add0~42COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout0 => \Add0~47\,
	cout1 => \Add0~47COUT1_160\);

-- Location: LC_X16_Y6_N7
\count[9]\ : maxii_lcell
-- Equation(s):
-- count(9) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~45_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~45_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(9));

-- Location: LC_X13_Y6_N3
\Add0~50\ : maxii_lcell
-- Equation(s):
-- \Add0~50_combout\ = (count(10) $ ((!(!\Add0~32\ & \Add0~47\) # (\Add0~32\ & \Add0~47COUT1_160\))))
-- \Add0~52\ = CARRY(((count(10) & !\Add0~47\)))
-- \Add0~52COUT1_162\ = CARRY(((count(10) & !\Add0~47COUT1_160\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(10),
	cin => \Add0~32\,
	cin0 => \Add0~47\,
	cin1 => \Add0~47COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout0 => \Add0~52\,
	cout1 => \Add0~52COUT1_162\);

-- Location: LC_X16_Y6_N5
\count[10]\ : maxii_lcell
-- Equation(s):
-- count(10) = DFFEAS((((\Add0~50_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~50_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(10));

-- Location: LC_X13_Y6_N4
\Add0~55\ : maxii_lcell
-- Equation(s):
-- \Add0~55_combout\ = (count(11) $ (((!\Add0~32\ & \Add0~52\) # (\Add0~32\ & \Add0~52COUT1_162\))))
-- \Add0~57\ = CARRY(((!\Add0~52COUT1_162\) # (!count(11))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(11),
	cin => \Add0~32\,
	cin0 => \Add0~52\,
	cin1 => \Add0~52COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\,
	cout => \Add0~57\);

-- Location: LC_X16_Y6_N8
\count[11]\ : maxii_lcell
-- Equation(s):
-- count(11) = DFFEAS((((\Add0~55_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~55_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(11));

-- Location: LC_X13_Y6_N5
\Add0~60\ : maxii_lcell
-- Equation(s):
-- \Add0~60_combout\ = (count(12) $ ((!\Add0~57\)))
-- \Add0~62\ = CARRY(((count(12) & !\Add0~57\)))
-- \Add0~62COUT1_164\ = CARRY(((count(12) & !\Add0~57\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(12),
	cin => \Add0~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout0 => \Add0~62\,
	cout1 => \Add0~62COUT1_164\);

-- Location: LC_X16_Y6_N9
\count[12]\ : maxii_lcell
-- Equation(s):
-- count(12) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~60_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~60_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(12));

-- Location: LC_X13_Y6_N6
\Add0~65\ : maxii_lcell
-- Equation(s):
-- \Add0~65_combout\ = (count(13) $ (((!\Add0~57\ & \Add0~62\) # (\Add0~57\ & \Add0~62COUT1_164\))))
-- \Add0~67\ = CARRY(((!\Add0~62\) # (!count(13))))
-- \Add0~67COUT1_166\ = CARRY(((!\Add0~62COUT1_164\) # (!count(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(13),
	cin => \Add0~57\,
	cin0 => \Add0~62\,
	cin1 => \Add0~62COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\,
	cout0 => \Add0~67\,
	cout1 => \Add0~67COUT1_166\);

-- Location: LC_X16_Y6_N0
\count[13]\ : maxii_lcell
-- Equation(s):
-- count(13) = DFFEAS((((\Add0~65_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~65_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(13));

-- Location: LC_X13_Y6_N7
\Add0~70\ : maxii_lcell
-- Equation(s):
-- \Add0~70_combout\ = (count(14) $ ((!(!\Add0~57\ & \Add0~67\) # (\Add0~57\ & \Add0~67COUT1_166\))))
-- \Add0~72\ = CARRY(((count(14) & !\Add0~67\)))
-- \Add0~72COUT1_168\ = CARRY(((count(14) & !\Add0~67COUT1_166\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(14),
	cin => \Add0~57\,
	cin0 => \Add0~67\,
	cin1 => \Add0~67COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70_combout\,
	cout0 => \Add0~72\,
	cout1 => \Add0~72COUT1_168\);

-- Location: LC_X13_Y5_N0
\count[14]\ : maxii_lcell
-- Equation(s):
-- count(14) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~70_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~70_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(14));

-- Location: LC_X13_Y6_N8
\Add0~75\ : maxii_lcell
-- Equation(s):
-- \Add0~75_combout\ = (count(15) $ (((!\Add0~57\ & \Add0~72\) # (\Add0~57\ & \Add0~72COUT1_168\))))
-- \Add0~77\ = CARRY(((!\Add0~72\) # (!count(15))))
-- \Add0~77COUT1_170\ = CARRY(((!\Add0~72COUT1_168\) # (!count(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(15),
	cin => \Add0~57\,
	cin0 => \Add0~72\,
	cin1 => \Add0~72COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~75_combout\,
	cout0 => \Add0~77\,
	cout1 => \Add0~77COUT1_170\);

-- Location: LC_X13_Y7_N3
\count[15]\ : maxii_lcell
-- Equation(s):
-- count(15) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~75_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~75_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(15));

-- Location: LC_X13_Y6_N9
\Add0~80\ : maxii_lcell
-- Equation(s):
-- \Add0~80_combout\ = count(16) $ ((((!(!\Add0~57\ & \Add0~77\) # (\Add0~57\ & \Add0~77COUT1_170\)))))
-- \Add0~82\ = CARRY((count(16) & ((!\Add0~77COUT1_170\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(16),
	cin => \Add0~57\,
	cin0 => \Add0~77\,
	cin1 => \Add0~77COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~80_combout\,
	cout => \Add0~82\);

-- Location: LC_X13_Y7_N2
\count[16]\ : maxii_lcell
-- Equation(s):
-- count(16) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~80_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~80_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(16));

-- Location: LC_X14_Y6_N0
\Add0~85\ : maxii_lcell
-- Equation(s):
-- \Add0~85_combout\ = count(17) $ ((((\Add0~82\))))
-- \Add0~87\ = CARRY(((!\Add0~82\)) # (!count(17)))
-- \Add0~87COUT1_172\ = CARRY(((!\Add0~82\)) # (!count(17)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(17),
	cin => \Add0~82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~85_combout\,
	cout0 => \Add0~87\,
	cout1 => \Add0~87COUT1_172\);

-- Location: LC_X16_Y6_N3
\count[17]\ : maxii_lcell
-- Equation(s):
-- count(17) = DFFEAS((((\Add0~85_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~85_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(17));

-- Location: LC_X14_Y6_N1
\Add0~90\ : maxii_lcell
-- Equation(s):
-- \Add0~90_combout\ = (count(18) $ ((!(!\Add0~82\ & \Add0~87\) # (\Add0~82\ & \Add0~87COUT1_172\))))
-- \Add0~92\ = CARRY(((count(18) & !\Add0~87\)))
-- \Add0~92COUT1_174\ = CARRY(((count(18) & !\Add0~87COUT1_172\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(18),
	cin => \Add0~82\,
	cin0 => \Add0~87\,
	cin1 => \Add0~87COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~90_combout\,
	cout0 => \Add0~92\,
	cout1 => \Add0~92COUT1_174\);

-- Location: LC_X16_Y6_N1
\count[18]\ : maxii_lcell
-- Equation(s):
-- count(18) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~90_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~90_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(18));

-- Location: LC_X14_Y6_N2
\Add0~95\ : maxii_lcell
-- Equation(s):
-- \Add0~95_combout\ = (count(19) $ (((!\Add0~82\ & \Add0~92\) # (\Add0~82\ & \Add0~92COUT1_174\))))
-- \Add0~97\ = CARRY(((!\Add0~92\) # (!count(19))))
-- \Add0~97COUT1_176\ = CARRY(((!\Add0~92COUT1_174\) # (!count(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(19),
	cin => \Add0~82\,
	cin0 => \Add0~92\,
	cin1 => \Add0~92COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~95_combout\,
	cout0 => \Add0~97\,
	cout1 => \Add0~97COUT1_176\);

-- Location: LC_X14_Y5_N0
\count[19]\ : maxii_lcell
-- Equation(s):
-- count(19) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~95_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~95_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(19));

-- Location: LC_X14_Y6_N3
\Add0~100\ : maxii_lcell
-- Equation(s):
-- \Add0~100_combout\ = (count(20) $ ((!(!\Add0~82\ & \Add0~97\) # (\Add0~82\ & \Add0~97COUT1_176\))))
-- \Add0~102\ = CARRY(((count(20) & !\Add0~97\)))
-- \Add0~102COUT1_178\ = CARRY(((count(20) & !\Add0~97COUT1_176\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(20),
	cin => \Add0~82\,
	cin0 => \Add0~97\,
	cin1 => \Add0~97COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~100_combout\,
	cout0 => \Add0~102\,
	cout1 => \Add0~102COUT1_178\);

-- Location: LC_X16_Y6_N6
\count[20]\ : maxii_lcell
-- Equation(s):
-- count(20) = DFFEAS((((\Add0~100_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~100_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(20));

-- Location: LC_X14_Y6_N4
\Add0~105\ : maxii_lcell
-- Equation(s):
-- \Add0~105_combout\ = (count(21) $ (((!\Add0~82\ & \Add0~102\) # (\Add0~82\ & \Add0~102COUT1_178\))))
-- \Add0~107\ = CARRY(((!\Add0~102COUT1_178\) # (!count(21))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(21),
	cin => \Add0~82\,
	cin0 => \Add0~102\,
	cin1 => \Add0~102COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~105_combout\,
	cout => \Add0~107\);

-- Location: LC_X14_Y7_N5
\count[21]\ : maxii_lcell
-- Equation(s):
-- count(21) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~105_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~105_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(21));

-- Location: LC_X14_Y6_N5
\Add0~110\ : maxii_lcell
-- Equation(s):
-- \Add0~110_combout\ = count(22) $ ((((!\Add0~107\))))
-- \Add0~112\ = CARRY((count(22) & ((!\Add0~107\))))
-- \Add0~112COUT1_180\ = CARRY((count(22) & ((!\Add0~107\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => count(22),
	cin => \Add0~107\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~110_combout\,
	cout0 => \Add0~112\,
	cout1 => \Add0~112COUT1_180\);

-- Location: LC_X14_Y7_N2
\count[22]\ : maxii_lcell
-- Equation(s):
-- count(22) = DFFEAS((((\Add0~110_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~110_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(22));

-- Location: LC_X14_Y6_N6
\Add0~115\ : maxii_lcell
-- Equation(s):
-- \Add0~115_combout\ = (count(23) $ (((!\Add0~107\ & \Add0~112\) # (\Add0~107\ & \Add0~112COUT1_180\))))
-- \Add0~117\ = CARRY(((!\Add0~112\) # (!count(23))))
-- \Add0~117COUT1_182\ = CARRY(((!\Add0~112COUT1_180\) # (!count(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => count(23),
	cin => \Add0~107\,
	cin0 => \Add0~112\,
	cin1 => \Add0~112COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~115_combout\,
	cout0 => \Add0~117\,
	cout1 => \Add0~117COUT1_182\);

-- Location: LC_X14_Y5_N2
\count[23]\ : maxii_lcell
-- Equation(s):
-- count(23) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add0~115_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~115_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(23));

-- Location: LC_X14_Y6_N7
\Add0~120\ : maxii_lcell
-- Equation(s):
-- \Add0~120_combout\ = (((!\Add0~107\ & \Add0~117\) # (\Add0~107\ & \Add0~117COUT1_182\) $ (!count(24))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => count(24),
	cin => \Add0~107\,
	cin0 => \Add0~117\,
	cin1 => \Add0~117COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~120_combout\);

-- Location: LC_X15_Y6_N0
\Equal0~5\ : maxii_lcell
-- Equation(s):
-- \Equal0~5_combout\ = (!\Add0~80_combout\ & (!\Add0~95_combout\ & (!\Add0~90_combout\ & !\Add0~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~80_combout\,
	datab => \Add0~95_combout\,
	datac => \Add0~90_combout\,
	datad => \Add0~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~5_combout\);

-- Location: LC_X15_Y6_N6
\Equal0~6\ : maxii_lcell
-- Equation(s):
-- \Equal0~6_combout\ = (!\Add0~110_combout\ & (!\Add0~115_combout\ & (!\Add0~100_combout\ & !\Add0~105_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~110_combout\,
	datab => \Add0~115_combout\,
	datac => \Add0~100_combout\,
	datad => \Add0~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~6_combout\);

-- Location: LC_X15_Y6_N5
\Equal0~0\ : maxii_lcell
-- Equation(s):
-- \Equal0~0_combout\ = (\Add0~0_combout\ & (!\Add0~15_combout\ & (!\Add0~5_combout\ & !\Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add0~15_combout\,
	datac => \Add0~5_combout\,
	datad => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0_combout\);

-- Location: LC_X15_Y6_N2
\Equal0~1\ : maxii_lcell
-- Equation(s):
-- \Equal0~1_combout\ = (!\Add0~30_combout\ & (!\Add0~25_combout\ & (!\Add0~20_combout\ & !\Add0~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datab => \Add0~25_combout\,
	datac => \Add0~20_combout\,
	datad => \Add0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1_combout\);

-- Location: LC_X14_Y6_N9
\Equal0~3\ : maxii_lcell
-- Equation(s):
-- \Equal0~3_combout\ = (!\Add0~60_combout\ & (!\Add0~65_combout\ & (!\Add0~75_combout\ & !\Add0~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~60_combout\,
	datab => \Add0~65_combout\,
	datac => \Add0~75_combout\,
	datad => \Add0~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3_combout\);

-- Location: LC_X14_Y6_N8
\Equal0~2\ : maxii_lcell
-- Equation(s):
-- \Equal0~2_combout\ = (!\Add0~40_combout\ & (!\Add0~45_combout\ & (!\Add0~55_combout\ & !\Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~40_combout\,
	datab => \Add0~45_combout\,
	datac => \Add0~55_combout\,
	datad => \Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2_combout\);

-- Location: LC_X15_Y6_N7
\Equal0~4\ : maxii_lcell
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & (\Equal0~3_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~4_combout\);

-- Location: LC_X15_Y6_N8
\Equal0~7\ : maxii_lcell
-- Equation(s):
-- \Equal0~7_combout\ = (!\Add0~120_combout\ & (\Equal0~5_combout\ & (\Equal0~6_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~120_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~7_combout\);

-- Location: LC_X15_Y6_N1
\counter[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \counter[0]~reg0_regout\ = DFFEAS((\counter[0]~reg0_regout\ $ (((\Equal0~7_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \counter[0]~reg0_regout\,
	datad => \Equal0~7_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter[0]~reg0_regout\);

-- Location: LC_X1_Y8_N9
\tmp[0]\ : maxii_lcell
-- Equation(s):
-- tmp(0) = DFFEAS((((\counter[0]~reg0_regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \counter[0]~reg0_regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(0));

-- Location: LC_X1_Y8_N0
\tmp[1]\ : maxii_lcell
-- Equation(s):
-- tmp(1) = DFFEAS((((!\counter[0]~reg0_regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \counter[0]~reg0_regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(1));

-- Location: LC_X1_Y8_N8
\tmp[2]\ : maxii_lcell
-- Equation(s):
-- tmp(2) = DFFEAS((((\counter[0]~reg0_regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \counter[0]~reg0_regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(2));

-- Location: LC_X1_Y8_N2
\tmp[3]\ : maxii_lcell
-- Equation(s):
-- tmp(3) = DFFEAS((((!\counter[0]~reg0_regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \counter[0]~reg0_regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(3));

-- Location: LC_X1_Y8_N1
\tmp[4]\ : maxii_lcell
-- Equation(s):
-- tmp(4) = DFFEAS((((\counter[0]~reg0_regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \counter[0]~reg0_regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(4));

-- Location: LC_X1_Y8_N5
\tmp[5]\ : maxii_lcell
-- Equation(s):
-- tmp(5) = DFFEAS((((!\counter[0]~reg0_regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \counter[0]~reg0_regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(5));

-- Location: LC_X1_Y8_N4
\tmp[6]\ : maxii_lcell
-- Equation(s):
-- tmp(6) = DFFEAS((((\counter[0]~reg0_regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \counter[0]~reg0_regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(6));

-- Location: LC_X1_Y8_N3
\tmp[7]\ : maxii_lcell
-- Equation(s):
-- tmp(7) = DFFEAS((((!\counter[0]~reg0_regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \counter[0]~reg0_regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(7));

-- Location: LC_X1_Y8_N7
\tmp[8]\ : maxii_lcell
-- Equation(s):
-- tmp(8) = DFFEAS((((\counter[0]~reg0_regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \counter[0]~reg0_regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(8));

-- Location: LC_X1_Y8_N6
\tmp[9]\ : maxii_lcell
-- Equation(s):
-- tmp(9) = DFFEAS((((!\counter[0]~reg0_regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \counter[0]~reg0_regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tmp(9));

-- Location: LC_X15_Y6_N4
\counter[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \counter[1]~reg0_regout\ = DFFEAS((\counter[1]~reg0_regout\ $ (((\counter[0]~reg0_regout\ & \Equal0~7_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \counter[0]~reg0_regout\,
	datac => \counter[1]~reg0_regout\,
	datad => \Equal0~7_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter[1]~reg0_regout\);

-- Location: LC_X15_Y6_N3
\counter[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \counter[2]~reg0_regout\ = DFFEAS(\counter[2]~reg0_regout\ $ (((\counter[0]~reg0_regout\ & (\counter[1]~reg0_regout\ & \Equal0~7_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \counter[2]~reg0_regout\,
	datab => \counter[0]~reg0_regout\,
	datac => \counter[1]~reg0_regout\,
	datad => \Equal0~7_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \counter[2]~reg0_regout\);

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => tmp(0),
	oe => VCC,
	padio => ww_leds(0));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => tmp(1),
	oe => VCC,
	padio => ww_leds(1));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => tmp(2),
	oe => VCC,
	padio => ww_leds(2));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => tmp(3),
	oe => VCC,
	padio => ww_leds(3));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => tmp(4),
	oe => VCC,
	padio => ww_leds(4));

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => tmp(5),
	oe => VCC,
	padio => ww_leds(5));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => tmp(6),
	oe => VCC,
	padio => ww_leds(6));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => tmp(7),
	oe => VCC,
	padio => ww_leds(7));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => tmp(8),
	oe => VCC,
	padio => ww_leds(8));

-- Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\leds[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => tmp(9),
	oe => VCC,
	padio => ww_leds(9));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\counter[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \counter[0]~reg0_regout\,
	oe => VCC,
	padio => counter(0));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\counter[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \counter[1]~reg0_regout\,
	oe => VCC,
	padio => counter(1));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\counter[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \counter[2]~reg0_regout\,
	oe => VCC,
	padio => counter(2));
END structure;


