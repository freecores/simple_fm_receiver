-- $Id: loop_filter.vhdl,v 1.2 2005-02-21 06:28:28 arif_endro Exp $
-------------------------------------------------------------------------------
-- Title       : Loop filter component
-- Project     : FM Receiver 
-------------------------------------------------------------------------------
-- File        : loop_filter.vhdl
-- Author      : "Arif E. Nugroho" <arif_endro@yahoo.com>
-- Created     : 2004/11/12
-- Last update : 
-- Simulators  : 
-- Synthesizers: 
-- Target      : 
-------------------------------------------------------------------------------
-- Description : loop filter in PLL loop
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
use IEEE.STD_LOGIC_arith.ALL;

entity loop_filter is
  port (
     input_loop   : in  bit_vector (07 downto 0);
     clock        : in  bit;
     output_loop  : out bit_vector (11 downto 0);
     clear        : in  bit
     );
end loop_filter;

architecture structural of loop_filter is

  component adder_12bit
     port (
     addend_12bit   : in  bit_vector (11 downto 0);
     augend_12bit   : in  bit_vector (11 downto 0);
     adder12_output : out bit_vector (12 downto 0)
     );
  end component;

  component sub_12bit
     port (
     addend_12bit        : in  bit_vector (11 downto 0);
     subtrahend_12bit    : in  bit_vector (11 downto 0);
     subtractor12_output : out bit_vector (11 downto 0)
     );
  end component;

  signal input_recv        : bit_vector (11 downto 0);
  signal loop_out          : bit_vector (11 downto 0);
  signal loop_out_div      : bit_vector (11 downto 0);
  signal loop_out_back1    : bit_vector (11 downto 0);
  signal multiply_output01 : bit_vector (11 downto 0);
  signal adder_output01    : bit_vector (12 downto 0);

  begin
 
  input_recv (11) <= input_loop (07); -- 1
  input_recv (10) <= input_loop (07); -- 1/2
  input_recv (09) <= input_loop (07); -- 1/4
  input_recv (08) <= input_loop (07); -- 1/8
  input_recv (07) <= input_loop (07); -- 1/16
  input_recv (06) <= input_loop (06);
  input_recv (05) <= input_loop (05);
  input_recv (04) <= input_loop (04);
  input_recv (03) <= input_loop (03);
  input_recv (02) <= input_loop (02);
  input_recv (01) <= input_loop (01);
  input_recv (00) <= input_loop (00);

adder01 : adder_12bit
  port map (
	  addend_12bit    => loop_out_div,
	  augend_12bit    => input_recv,
	  adder12_output  => adder_output01
	  );

  loop_out_back1(11)  <= loop_out(11); -- 1
  loop_out_back1(10)  <= loop_out(11); -- 1/2
  loop_out_back1(09)  <= loop_out(11); -- 1/4
  loop_out_back1(08)  <= loop_out(11); -- 1/8
  loop_out_back1(07)  <= loop_out(11); -- 1/16
  loop_out_back1(06)  <= loop_out(10);
  loop_out_back1(05)  <= loop_out(09);
  loop_out_back1(04)  <= loop_out(08);
  loop_out_back1(03)  <= loop_out(07);
  loop_out_back1(02)  <= loop_out(06);
  loop_out_back1(01)  <= loop_out(05);
  loop_out_back1(00)  <= loop_out(04);

multiply01 : sub_12bit
  port map (
	  addend_12bit               => loop_out,
	  subtrahend_12bit           => loop_out_back1,
	  subtractor12_output        => multiply_output01
	  );

  loop_out_div <= multiply_output01;

  process (clock, clear)

  begin

  if    (clear = '1') then

	loop_out      <= (others => '0');

  elsif (((clock = '1') and (not(clear) = '1')) and clock'event) then

	-- loop_out (11) <= adder_output01 (12);
	loop_out (11) <= adder_output01 (11);
	loop_out (10) <= adder_output01 (10);
	loop_out (09) <= adder_output01 (09);
	loop_out (08) <= adder_output01 (08);
	loop_out (07) <= adder_output01 (07);
	loop_out (06) <= adder_output01 (06);
	loop_out (05) <= adder_output01 (05);
	loop_out (04) <= adder_output01 (04);
	loop_out (03) <= adder_output01 (03);
	loop_out (02) <= adder_output01 (02);
	loop_out (01) <= adder_output01 (01);
	loop_out (00) <= adder_output01 (00);

  end if;

  end process;

  output_loop    <= loop_out;

end structural;
