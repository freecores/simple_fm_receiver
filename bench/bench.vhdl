-- $Id: bench.vhdl,v 1.2 2005-01-10 02:33:54 arif_endro Exp $
-------------------------------------------------------------------------------
-- Title       : Test Bench
-- Project     : FM Receiver 
-------------------------------------------------------------------------------
-- File        : bench.vhdl
-- Author      : "Arif E. Nugroho" <arif_endro@yahoo.com>
-- Created     : 2004/12/23
-- Last update : 2005/01/08
-- Simulators  : Modelsim 6.0
-- Synthesizers: 
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
    clock               : in  bit;
    reset               : in  bit;
    output_fm           : out bit_vector (11 downto 0);
    output_fmTri        : out bit_vector (11 downto 0)
    );
end bench;

architecture structural of bench is
  component fm
  port (
    CLK              : in  bit;
    RESET            : in  bit;
    FMIN             : in  bit_vector (07 downto 0);
    DMOUT            : out bit_vector (11 downto 0)
    );
  end component;
  
  component input_fm
  port (
    clock            : in  bit;
    clear            : in  bit;
    test_signal_fm   : out bit_vector (07 downto 0);
    test_signal_fmTri: out bit_vector (07 downto 0)
    );
  end component;

  signal test_signal_fm : bit_vector (07 downto 0);
  signal test_signal_fmTri : bit_vector (07 downto 0);

  begin

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
    FMIN                 => test_signal_fm,
    DMOUT (11 downto 0)  => output_fm
    );

  myfmTri : fm
   port map (
    CLK                  => clock,
    RESET                => reset,
    FMIN                 => test_signal_fmTri,
    DMOUT (11 downto 0)  => output_fmTri
    );


end structural;
