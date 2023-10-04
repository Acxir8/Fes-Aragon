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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "09/25/2023 21:49:03"

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

ENTITY 	CarritoMueve IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	ENTRADA : INOUT std_logic_vector(0 TO 3);
	av : OUT std_logic;
	re : OUT std_logic;
	vd : OUT std_logic;
	vi : OUT std_logic;
	al : OUT std_logic
	);
END CarritoMueve;

-- Design Ports Information
-- clk	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- av	=>  Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- re	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vd	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vi	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- al	=>  Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ENTRADA[3]	=>  Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ENTRADA[2]	=>  Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ENTRADA[1]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- ENTRADA[0]	=>  Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA


ARCHITECTURE structure OF CarritoMueve IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_av : std_logic;
SIGNAL ww_re : std_logic;
SIGNAL ww_vd : std_logic;
SIGNAL ww_vi : std_logic;
SIGNAL ww_al : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \ENTRADA[3]~reg0_regout\ : std_logic;
SIGNAL \ENTRADA[2]~reg0_regout\ : std_logic;
SIGNAL \ENTRADA[1]~reg0_regout\ : std_logic;
SIGNAL \ENTRADA[0]~reg0_regout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
av <= ww_av;
re <= ww_re;
vd <= ww_vd;
vi <= ww_vi;
al <= ww_al;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;

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

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LC_X4_Y1_N7
\ENTRADA[3]~reg0\ : maxii_lcell
-- Equation(s):
-- \ENTRADA[3]~reg0_regout\ = DFFEAS((((!\ENTRADA[3]~reg0_regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

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
	datac => \ENTRADA[3]~reg0_regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ENTRADA[3]~reg0_regout\);

-- Location: LC_X4_Y1_N4
\ENTRADA[2]~reg0\ : maxii_lcell
-- Equation(s):
-- \ENTRADA[2]~reg0_regout\ = DFFEAS(((\ENTRADA[3]~reg0_regout\ $ (\ENTRADA[2]~reg0_regout\))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \ENTRADA[3]~reg0_regout\,
	datad => \ENTRADA[2]~reg0_regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ENTRADA[2]~reg0_regout\);

-- Location: LC_X4_Y1_N2
\ENTRADA[1]~reg0\ : maxii_lcell
-- Equation(s):
-- \ENTRADA[1]~reg0_regout\ = DFFEAS((\ENTRADA[1]~reg0_regout\ $ (((\ENTRADA[3]~reg0_regout\ & \ENTRADA[2]~reg0_regout\)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \ENTRADA[1]~reg0_regout\,
	datac => \ENTRADA[3]~reg0_regout\,
	datad => \ENTRADA[2]~reg0_regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ENTRADA[1]~reg0_regout\);

-- Location: LC_X4_Y1_N0
\ENTRADA[0]~reg0\ : maxii_lcell
-- Equation(s):
-- \ENTRADA[0]~reg0_regout\ = DFFEAS(\ENTRADA[0]~reg0_regout\ $ (((\ENTRADA[2]~reg0_regout\ & (\ENTRADA[3]~reg0_regout\ & \ENTRADA[1]~reg0_regout\)))), GLOBAL(\clk~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \ENTRADA[2]~reg0_regout\,
	datab => \ENTRADA[0]~reg0_regout\,
	datac => \ENTRADA[3]~reg0_regout\,
	datad => \ENTRADA[1]~reg0_regout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ENTRADA[0]~reg0_regout\);

-- Location: LC_X4_Y1_N6
\Mux0~0\ : maxii_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (\ENTRADA[3]~reg0_regout\ & (((\ENTRADA[0]~reg0_regout\ & \ENTRADA[1]~reg0_regout\)))) # (!\ENTRADA[3]~reg0_regout\ & ((\ENTRADA[2]~reg0_regout\ & ((\ENTRADA[1]~reg0_regout\))) # (!\ENTRADA[2]~reg0_regout\ & 
-- (\ENTRADA[0]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f410",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ENTRADA[3]~reg0_regout\,
	datab => \ENTRADA[2]~reg0_regout\,
	datac => \ENTRADA[0]~reg0_regout\,
	datad => \ENTRADA[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: LC_X4_Y1_N9
\Mux1~0\ : maxii_lcell
-- Equation(s):
-- \Mux1~0_combout\ = (!\ENTRADA[3]~reg0_regout\ & ((\ENTRADA[2]~reg0_regout\ & ((\ENTRADA[1]~reg0_regout\))) # (!\ENTRADA[2]~reg0_regout\ & (\ENTRADA[0]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5410",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ENTRADA[3]~reg0_regout\,
	datab => \ENTRADA[2]~reg0_regout\,
	datac => \ENTRADA[0]~reg0_regout\,
	datad => \ENTRADA[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0_combout\);

-- Location: LC_X4_Y1_N5
\Mux2~0\ : maxii_lcell
-- Equation(s):
-- \Mux2~0_combout\ = (\ENTRADA[3]~reg0_regout\ & (!\ENTRADA[1]~reg0_regout\ & ((\ENTRADA[2]~reg0_regout\) # (\ENTRADA[0]~reg0_regout\)))) # (!\ENTRADA[3]~reg0_regout\ & ((\ENTRADA[2]~reg0_regout\) # ((\ENTRADA[0]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "54fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ENTRADA[3]~reg0_regout\,
	datab => \ENTRADA[2]~reg0_regout\,
	datac => \ENTRADA[0]~reg0_regout\,
	datad => \ENTRADA[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~0_combout\);

-- Location: LC_X4_Y1_N8
\Mux3~0\ : maxii_lcell
-- Equation(s):
-- \Mux3~0_combout\ = (!\ENTRADA[2]~reg0_regout\ & (\ENTRADA[1]~reg0_regout\ & ((\ENTRADA[3]~reg0_regout\) # (!\ENTRADA[0]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ENTRADA[3]~reg0_regout\,
	datab => \ENTRADA[2]~reg0_regout\,
	datac => \ENTRADA[0]~reg0_regout\,
	datad => \ENTRADA[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~0_combout\);

-- Location: LC_X4_Y1_N3
\Mux4~0\ : maxii_lcell
-- Equation(s):
-- \Mux4~0_combout\ = ((\ENTRADA[2]~reg0_regout\ & ((\ENTRADA[1]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ENTRADA[2]~reg0_regout\,
	datad => \ENTRADA[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\av~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Mux0~0_combout\,
	oe => VCC,
	padio => ww_av);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\re~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux1~0_combout\,
	oe => VCC,
	padio => ww_re);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vd~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux2~0_combout\,
	oe => VCC,
	padio => ww_vd);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vi~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux3~0_combout\,
	oe => VCC,
	padio => ww_vi);

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\al~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux4~0_combout\,
	oe => VCC,
	padio => ww_al);

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ENTRADA[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \ENTRADA[3]~reg0_regout\,
	oe => VCC,
	padio => ENTRADA(3));

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ENTRADA[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \ENTRADA[2]~reg0_regout\,
	oe => VCC,
	padio => ENTRADA(2));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ENTRADA[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \ENTRADA[1]~reg0_regout\,
	oe => VCC,
	padio => ENTRADA(1));

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\ENTRADA[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \ENTRADA[0]~reg0_regout\,
	oe => VCC,
	padio => ENTRADA(0));
END structure;


