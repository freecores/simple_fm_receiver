-- $Id: fir.vhdl,v 1.4 2005-03-12 04:18:38 arif_endro Exp $
-------------------------------------------------------------------------------
-- Title       : FIR Low pass filter
-- Project     : FM Receiver 
-------------------------------------------------------------------------------
-- File        : fir.vhdl
-- Author      : "Arif E. Nugroho" <arif_endro@yahoo.com>
-- Created     : 2004/10/30
-- Last update : 2005/03/11
-- Simulators  : 
-- Synthesizers: 
-- Target      : 
-------------------------------------------------------------------------------
-- Description : FIR low pass filter
-------------------------------------------------------------------------------
-- Copyright (C) 2004 Arif E. Nugroho
-- This VHDL design file is an open design; you can redistribute it and/or
-- modify it and/or implement it after contacting the author
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-- 
-- 	THIS SOURCE FILE MAY BE USED AND DISTRIBUTED WITHOUT RESTRICTION
-- PROVIDED THAT THIS COPYRIGHT STATEMENT IS NOT REMOVED FROM THE FILE AND THAT
-- ANY DERIVATIVE WORK CONTAINS THE ORIGINAL COPYRIGHT NOTICE AND THE
-- ASSOCIATED DISCLAIMER.
-- 
-------------------------------------------------------------------------------
-- 
-- 	THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
-- IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
-- MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO
-- EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
-- SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
-- PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
-- OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
-- WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
-- OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
-- ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
-- 
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fir is
  port(
  clock  : in  bit;
  clear  : in  bit;
  fir_in : in  bit_vector (11 downto 0); -- <12,4,t>
  dmout  : out bit_vector (11 downto 0)  -- <12,4,t>
  );
end fir;

architecture structural of fir is
  component adder_15bit
  port (
  addend_15bit   : in  bit_vector (14 downto 0);
  augend_15bit   : in  bit_vector (14 downto 0);
  adder15_output : out bit_vector (15 downto 0)
  );
  end component;
  component adder_14bit
  port (
  addend_14bit   : in  bit_vector (13 downto 0);
  augend_14bit   : in  bit_vector (13 downto 0);
  adder14_output : out bit_vector (14 downto 0)
  );
  end component;
  component adder_13bit
  port (
  addend_13bit   : in  bit_vector (12 downto 0);
  augend_13bit   : in  bit_vector (12 downto 0);
  adder13_output : out bit_vector (13 downto 0)
  );
  end component;
  component adder_12bit
  port (
  addend_12bit   : in  bit_vector (11 downto 0);
  augend_12bit   : in  bit_vector (11 downto 0);
  adder12_output : out bit_vector (12 downto 0)
  );
  end component;

  signal  fir_out        : bit_vector (11 downto 0);
  signal  fir_in_01      : bit_vector (11 downto 0);
  signal  fir_in_02      : bit_vector (11 downto 0);
  signal  fir_in_03      : bit_vector (11 downto 0);
  signal  fir_in_04      : bit_vector (11 downto 0);
  signal  fir_in_05      : bit_vector (11 downto 0);
  signal  fir_in_06      : bit_vector (11 downto 0);
  signal  fir_in_07      : bit_vector (11 downto 0);
  signal  fir_in_08      : bit_vector (11 downto 0);
  signal  fir_in_09      : bit_vector (11 downto 0);
  signal  fir_in_10      : bit_vector (11 downto 0);
  signal  fir_in_11      : bit_vector (11 downto 0);
  signal  fir_in_12      : bit_vector (11 downto 0);
  signal  fir_in_13      : bit_vector (11 downto 0);
  signal  fir_in_14      : bit_vector (11 downto 0);
  signal  fir_in_15      : bit_vector (11 downto 0);
  signal  fir_in_16      : bit_vector (11 downto 0);
  signal  result_adder01 : bit_vector (12 downto 0);
  signal  result_adder02 : bit_vector (12 downto 0);
  signal  result_adder03 : bit_vector (12 downto 0);
  signal  result_adder04 : bit_vector (12 downto 0);
  signal  result_adder05 : bit_vector (12 downto 0);
  signal  result_adder06 : bit_vector (12 downto 0);
  signal  result_adder07 : bit_vector (12 downto 0);
  signal  result_adder08 : bit_vector (12 downto 0);
  signal  result_adder09 : bit_vector (13 downto 0);
  signal  result_adder10 : bit_vector (13 downto 0);
  signal  result_adder11 : bit_vector (13 downto 0);
  signal  result_adder12 : bit_vector (13 downto 0);
  signal  result_adder13 : bit_vector (14 downto 0);
  signal  result_adder14 : bit_vector (14 downto 0);
  signal  result_adder15 : bit_vector (15 downto 0);
  

begin
  fir_in_01  <= fir_in;

adder01 : adder_12bit
  port map (
  addend_12bit(11 downto 0)   => fir_in_01,
  augend_12bit(11 downto 0)   => fir_in_02,
  adder12_output              => result_adder01
  );

adder02 : adder_12bit
  port map (
  addend_12bit(11 downto 0)   => fir_in_03,
  augend_12bit(11 downto 0)   => fir_in_04,
  adder12_output              => result_adder02
  );

adder03 : adder_12bit
  port map (
  addend_12bit(11 downto 0)   => fir_in_05,
  augend_12bit(11 downto 0)   => fir_in_06,
  adder12_output              => result_adder03
  );

adder04 : adder_12bit
  port map (
  addend_12bit(11 downto 0)   => fir_in_07,
  augend_12bit(11 downto 0)   => fir_in_08,
  adder12_output              => result_adder04
  );

adder05 : adder_12bit
  port map (
  addend_12bit(11 downto 0)   => fir_in_09,
  augend_12bit(11 downto 0)   => fir_in_10,
  adder12_output              => result_adder05
  );

adder06 : adder_12bit
  port map (
  addend_12bit(11 downto 0)   => fir_in_11,
  augend_12bit(11 downto 0)   => fir_in_12,
  adder12_output              => result_adder06
  );

adder07 : adder_12bit
  port map (
  addend_12bit(11 downto 0)   => fir_in_13,
  augend_12bit(11 downto 0)   => fir_in_14,
  adder12_output              => result_adder07
  );

adder08 : adder_12bit
  port map (
  addend_12bit(11 downto 0)   => fir_in_15,
  augend_12bit(11 downto 0)   => fir_in_16,
  adder12_output              => result_adder08
  );

adder09 : adder_13bit
  port map (
  addend_13bit(12 downto 0)   => result_adder01,
  augend_13bit(12 downto 0)   => result_adder02,
  adder13_output              => result_adder09
  );

adder10 : adder_13bit
  port map (
  addend_13bit(12 downto 0)   => result_adder03,
  augend_13bit(12 downto 0)   => result_adder04,
  adder13_output              => result_adder10
  );

adder11 : adder_13bit
  port map (
  addend_13bit(12 downto 0)   => result_adder05,
  augend_13bit(12 downto 0)   => result_adder06,
  adder13_output              => result_adder11
  );

adder12 : adder_13bit
  port map (
  addend_13bit(12 downto 0)   => result_adder07,
  augend_13bit(12 downto 0)   => result_adder08,
  adder13_output              => result_adder12
  );

adder13 : adder_14bit
  port map (
  addend_14bit(13 downto 0)   => result_adder09,
  augend_14bit(13 downto 0)   => result_adder10,
  adder14_output              => result_adder13
  );

adder14 : adder_14bit
  port map (
  addend_14bit(13 downto 0)   => result_adder11,
  augend_14bit(13 downto 0)   => result_adder12,
  adder14_output              => result_adder14
  );

adder15 : adder_15bit
  port map (
  addend_15bit(14 downto 0)   => result_adder13,
  augend_15bit(14 downto 0)   => result_adder14,
  adder15_output              => result_adder15
  );

-- FIR constants that have effect on output trasition.
-- This constant if set to low values (e.g x < 1/8 ) will make 
-- the transition output more looks like steps, noise will be reduced
-- but it's loss of fidelity of output signal.
-- for example:
-- set values to 1/16 will make the output trasition more look's like step
-- than an curve.
-- Just try another values to see the result. ^_^

fir_out(11)    <= (result_adder15(15)); -- 1
fir_out(10)    <= (result_adder15(14)); -- 1/2
fir_out(09)    <= (result_adder15(13)); -- 1/4
fir_out(08)    <= (result_adder15(12)); -- 1/8
fir_out(07)    <= (result_adder15(11)); -- 1/16
fir_out(06)    <= (result_adder15(10));
fir_out(05)    <= (result_adder15(09));
fir_out(04)    <= (result_adder15(08));
fir_out(03)    <= (result_adder15(07));
fir_out(02)    <= (result_adder15(06));
fir_out(01)    <= (result_adder15(05));
fir_out(00)    <= (result_adder15(04));

   process (clock, clear)

   begin
 
   if    (clear = '1') then

	dmout     <= (others => '0');

   elsif (((clock = '1') and (not(clear) = '1')) and clock'event) then

	fir_in_02 <= fir_in_01;
	fir_in_03 <= fir_in_02;
	fir_in_04 <= fir_in_03;
	fir_in_05 <= fir_in_04;
	fir_in_06 <= fir_in_05;
	fir_in_07 <= fir_in_06;
	fir_in_08 <= fir_in_07;
	fir_in_09 <= fir_in_08;
	fir_in_10 <= fir_in_09;
	fir_in_11 <= fir_in_10;
	fir_in_12 <= fir_in_11;
	fir_in_13 <= fir_in_12;
	fir_in_14 <= fir_in_13;
	fir_in_15 <= fir_in_14;
	fir_in_16 <= fir_in_15;

	dmout     <= fir_out;

   end if;
   
   end process;
   
end structural;
