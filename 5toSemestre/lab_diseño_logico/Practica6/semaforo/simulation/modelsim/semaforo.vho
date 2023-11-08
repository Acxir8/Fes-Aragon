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

-- DATE "11/07/2023 20:55:23"

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

ENTITY 	semaforo IS
    PORT (
	clk : IN std_logic;
	semaforoRojo : OUT std_logic;
	semaforoAmarillo : OUT std_logic;
	semaforoVerde : OUT std_logic
	);
END semaforo;

-- Design Ports Information
-- semaforoRojo	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- semaforoAmarillo	=>  Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- semaforoVerde	=>  Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- clk	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF semaforo IS
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
SIGNAL ww_semaforoRojo : std_logic;
SIGNAL ww_semaforoAmarillo : std_logic;
SIGNAL ww_semaforoVerde : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \c[0]~5\ : std_logic;
SIGNAL \c[0]~5COUT1_18\ : std_logic;
SIGNAL \c[1]~7\ : std_logic;
SIGNAL \c[1]~7COUT1_20\ : std_logic;
SIGNAL \c[2]~1\ : std_logic;
SIGNAL \c[2]~1COUT1_22\ : std_logic;
SIGNAL \c[3]~11\ : std_logic;
SIGNAL \c[4]~3\ : std_logic;
SIGNAL \c[4]~3COUT1_24\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \always1~0_combout\ : std_logic;
SIGNAL \always1~1_combout\ : std_logic;
SIGNAL \semaforoRojo~reg0_regout\ : std_logic;
SIGNAL \semaforoAmarillo~reg0_regout\ : std_logic;
SIGNAL \semaforoVerde~reg0_regout\ : std_logic;
SIGNAL c : std_logic_vector(5 DOWNTO 0);

BEGIN

ww_clk <= clk;
semaforoRojo <= ww_semaforoRojo;
semaforoAmarillo <= ww_semaforoAmarillo;
semaforoVerde <= ww_semaforoVerde;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

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

-- Location: LC_X5_Y2_N1
\c[0]\ : maxii_lcell
-- Equation(s):
-- c(0) = DFFEAS(((!c(0))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~1_combout\, )
-- \c[0]~5\ = CARRY(((c(0))))
-- \c[0]~5COUT1_18\ = CARRY(((c(0))))

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
	cout0 => \c[0]~5\,
	cout1 => \c[0]~5COUT1_18\);

-- Location: LC_X5_Y2_N2
\c[1]\ : maxii_lcell
-- Equation(s):
-- c(1) = DFFEAS((c(1) $ ((\c[0]~5\))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~1_combout\, )
-- \c[1]~7\ = CARRY(((!\c[0]~5\) # (!c(1))))
-- \c[1]~7COUT1_20\ = CARRY(((!\c[0]~5COUT1_18\) # (!c(1))))

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
	cin0 => \c[0]~5\,
	cin1 => \c[0]~5COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(1),
	cout0 => \c[1]~7\,
	cout1 => \c[1]~7COUT1_20\);

-- Location: LC_X5_Y2_N3
\c[2]\ : maxii_lcell
-- Equation(s):
-- c(2) = DFFEAS(c(2) $ ((((!\c[1]~7\)))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~1_combout\, )
-- \c[2]~1\ = CARRY((c(2) & ((!\c[1]~7\))))
-- \c[2]~1COUT1_22\ = CARRY((c(2) & ((!\c[1]~7COUT1_20\))))

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
	cin0 => \c[1]~7\,
	cin1 => \c[1]~7COUT1_20\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(2),
	cout0 => \c[2]~1\,
	cout1 => \c[2]~1COUT1_22\);

-- Location: LC_X5_Y2_N4
\c[3]\ : maxii_lcell
-- Equation(s):
-- c(3) = DFFEAS((c(3) $ ((\c[2]~1\))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~1_combout\, )
-- \c[3]~11\ = CARRY(((!\c[2]~1COUT1_22\) # (!c(3))))

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
	datab => c(3),
	aclr => GND,
	sclr => \LessThan0~1_combout\,
	cin0 => \c[2]~1\,
	cin1 => \c[2]~1COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(3),
	cout => \c[3]~11\);

-- Location: LC_X5_Y2_N5
\c[4]\ : maxii_lcell
-- Equation(s):
-- c(4) = DFFEAS(c(4) $ ((((!\c[3]~11\)))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~1_combout\, )
-- \c[4]~3\ = CARRY((c(4) & ((!\c[3]~11\))))
-- \c[4]~3COUT1_24\ = CARRY((c(4) & ((!\c[3]~11\))))

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
	cin => \c[3]~11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(4),
	cout0 => \c[4]~3\,
	cout1 => \c[4]~3COUT1_24\);

-- Location: LC_X5_Y2_N6
\c[5]\ : maxii_lcell
-- Equation(s):
-- c(5) = DFFEAS(c(5) $ (((((!\c[3]~11\ & \c[4]~3\) # (\c[3]~11\ & \c[4]~3COUT1_24\))))), GLOBAL(\clk~combout\), VCC, , , , , \LessThan0~1_combout\, )

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
	cin => \c[3]~11\,
	cin0 => \c[4]~3\,
	cin1 => \c[4]~3COUT1_24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => c(5));

-- Location: LC_X5_Y2_N9
\LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \LessThan0~0_combout\ = (((!c(3) & !c(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => c(3),
	datad => c(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~0_combout\);

-- Location: LC_X5_Y2_N0
\LessThan0~1\ : maxii_lcell
-- Equation(s):
-- \LessThan0~1_combout\ = (c(4) & (c(5) & ((c(1)) # (!\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "80a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => c(4),
	datab => c(1),
	datac => c(5),
	datad => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~1_combout\);

-- Location: LC_X5_Y2_N7
\LessThan2~0\ : maxii_lcell
-- Equation(s):
-- \LessThan2~0_combout\ = (c(2) & (c(4) & ((c(0)) # (c(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => c(2),
	datab => c(0),
	datac => c(4),
	datad => c(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~0_combout\);

-- Location: LC_X4_Y2_N6
\LessThan2~1\ : maxii_lcell
-- Equation(s):
-- \LessThan2~1_combout\ = (c(5)) # ((\LessThan2~0_combout\) # ((c(3) & c(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => c(3),
	datab => c(4),
	datac => c(5),
	datad => \LessThan2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~1_combout\);

-- Location: LC_X5_Y2_N8
\always1~0\ : maxii_lcell
-- Equation(s):
-- \always1~0_combout\ = (c(2) & (c(1) & (c(5) & c(0))))

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
	dataa => c(2),
	datab => c(1),
	datac => c(5),
	datad => c(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always1~0_combout\);

-- Location: LC_X4_Y2_N7
\always1~1\ : maxii_lcell
-- Equation(s):
-- \always1~1_combout\ = (\always1~0_combout\) # ((c(5) & ((c(3)) # (c(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffe0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => c(3),
	datab => c(4),
	datac => c(5),
	datad => \always1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always1~1_combout\);

-- Location: LC_X4_Y2_N8
\semaforoRojo~reg0\ : maxii_lcell
-- Equation(s):
-- \semaforoRojo~reg0_regout\ = DFFEAS((((\LessThan2~1_combout\ & \always1~1_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \LessThan2~1_combout\,
	datad => \always1~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \semaforoRojo~reg0_regout\);

-- Location: LC_X4_Y2_N2
\semaforoAmarillo~reg0\ : maxii_lcell
-- Equation(s):
-- \semaforoAmarillo~reg0_regout\ = DFFEAS((((!\always1~1_combout\ & \LessThan2~1_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \always1~1_combout\,
	datad => \LessThan2~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \semaforoAmarillo~reg0_regout\);

-- Location: LC_X4_Y2_N5
\semaforoVerde~reg0\ : maxii_lcell
-- Equation(s):
-- \semaforoVerde~reg0_regout\ = DFFEAS((((!\LessThan2~1_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \LessThan2~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \semaforoVerde~reg0_regout\);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\semaforoRojo~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \semaforoRojo~reg0_regout\,
	oe => VCC,
	padio => ww_semaforoRojo);

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\semaforoAmarillo~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \semaforoAmarillo~reg0_regout\,
	oe => VCC,
	padio => ww_semaforoAmarillo);

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\semaforoVerde~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \semaforoVerde~reg0_regout\,
	oe => VCC,
	padio => ww_semaforoVerde);
END structure;


