-- $Id: bench_xil.vhdl,v 1.1.1.1 2005-01-04 02:05:56 arif_endro Exp $
-------------------------------------------------------------------------------
-- Title       : Test Bench For Xilinx
-- Project     : FM Receiver 
-------------------------------------------------------------------------------
-- File        : bench.vhdl
-- Author      : "Arif E. Nugroho" <arif_endro@yahoo.com>
-- Created     : 2004/12/23
-- Last update : 2005/01/02
-- Simulators  : Modelsim 6.0
-- Synthesizers: Xilinx 6.3i
-- Target      : 
-------------------------------------------------------------------------------
-- Description : Test bench for FM receiver
-------------------------------------------------------------------------------
-- Copyright (c) 2004 Arif E. Nugroho
-- This VHDL design file is an open design; you can redistribute it and/or
-- modify it and/or implement it after contacting the author
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity bench is
port (
    clock               : in  std_logic;
    reset               : in  std_logic
    );
end bench;

architecture structural of bench is
  component fm
  port (
    CLK              : in  std_logic;
    RESET            : in  std_logic;
    FMIN             : in  std_logic_vector (07 downto 0);
    DMOUT            : out std_logic_vector (11 downto 0)
    );
  end component;
  
  component input_fm
  port (
    clock            : in  std_logic;
    clear            : in  std_logic;
    test_signal_fm   : out bit_vector (07 downto 0);
    test_signal_fmTri: out bit_vector (07 downto 0)
    );
  end component;

  signal test_signal_fm        : bit_vector (07 downto 0);
  signal test_signal_fm_std    : std_logic_vector (07 downto 0);
  signal test_signal_fmTri     : bit_vector (07 downto 0);
  signal test_signal_fmTri_std : std_logic_vector (07 downto 0);
  signal output_fm_std         : std_logic_vector (11 downto 0);

  begin
 test_signal_fm_std    <= to_stdlogicvector (test_signal_fm);
 test_signal_fmTri_std <= to_stdlogicvector (test_signal_fmTri);

 myinput : input_fm
   port map (
    clock            => clock,
    clear            => reset,
    test_signal_fm   => test_signal_fm,
    test_signal_fmTri=> test_signal_fmTri
    );
  myfm : fm
   port map (
    CLK                  => clock,
    RESET                => reset,
    FMIN                 => test_signal_fm_std,
    DMOUT (11 downto 0)  => output_fm_std
    );
end structural;
