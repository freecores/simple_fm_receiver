-- $Id: bench.vhdl,v 1.1.1.1 2005-01-04 02:06:01 arif_endro Exp $
-- **************************************************************
-- Arif E. Nugroho
-- **************************************************************

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity bench is
--  port (
--   clock : out bit;
--   fmout : out bit;
--   reset : out bit;
-- );
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
  
  component input
  port (
    clock_out        : out bit;
    test_signal_fm   : out bit_vector (07 downto 0);
    test_signal_fmTri: out bit_vector (07 downto 0);
    signal_fm_bit    : out bit;
    signal_fmTri_bit : out bit
    );
  end component;
  signal clock       : bit;
  signal reset       : bit;
  signal signal_fm   : bit;
  signal signal_fmTri: bit;
  signal test_signal_fm : bit_vector (07 downto 0);
  signal test_signal_fmTri : bit_vector (07 downto 0);
  signal output_fm   : bit_vector (11 downto 0);
  begin
  reset <= '0';
  myinput : input
   port map (
    clock_out        => clock,
    test_signal_fm   => test_signal_fm,
    test_signal_fmTri=> test_signal_fmTri,
    signal_fm_bit    => signal_fm,
    signal_fmTri_bit => signal_fmTri
    );
  myfm : fm
   port map (
    CLK                  => clock,
    RESET                => reset,
    FMIN                 => test_signal_fm,
    DMOUT (11 downto 0)  => output_fm
    );
end structural;
