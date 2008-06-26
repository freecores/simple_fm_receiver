-- $Id: adder_11bit.vhdl,v 1.4 2008-06-26 06:12:29 arif_endro Exp $
-------------------------------------------------------------------------------
-- Title       : Adder 11 bit
-- Project     : FM Receiver 
-------------------------------------------------------------------------------
-- File        : adder_11bit.vhdl
-- Author      : "Arif E. Nugroho" <arif_endro@yahoo.com>
-- Created     : 2004/12/23
-- Last update : 
-- Simulators  : 
-- Synthesizers: 
-- Target      : 
-------------------------------------------------------------------------------
-- Description : Ripple carry adder 11 bit with output 12 bit
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

entity adder_11bit is
   port (
      addend_11bit  : in  bit_vector (10 downto 0);
      augend_11bit  : in  bit_vector (10 downto 0);
      adder11_output: out bit_vector (11 downto 0) -- 12 bit output
      );
end adder_11bit;

architecture structural of adder_11bit is

   component fulladder
      port (
      addend        : in   bit;
      augend        : in   bit;
      carry_in      : in   bit;
      sum           : out  bit;
      carry         : out  bit
      );
   end component;

-- internal signal
signal c00 : bit;
signal c01 : bit;
signal c02 : bit;
signal c03 : bit;
signal c04 : bit;
signal c05 : bit;
signal c06 : bit;
signal c07 : bit;
signal c08 : bit;
signal c09 : bit;
signal c10 : bit;
signal c11 : bit;
signal over11 : bit;
signal adder11_output_int : bit_vector (10 downto 0);
signal ov  : bit;

begin

c00                     <= '0';
over11                  <= (addend_11bit (10) xor augend_11bit (10));
ov                      <= ((adder11_output_int (10) and over11) or 
			   (c11 and (not (over11))));
adder11_output(10 downto 00) <= adder11_output_int;
adder11_output(11)           <= ov;

fa10 : fulladder
   port map (
      addend     => addend_11bit(10),
      augend     => augend_11bit(10),
      carry_in   => c10,
      sum        => adder11_output_int(10),
      carry      => c11
      );

fa09 : fulladder
   port map (
      addend     => addend_11bit(09),
      augend     => augend_11bit(09),
      carry_in   => c09,
      sum        => adder11_output_int(09),
      carry      => c10
      );

fa08 : fulladder
   port map (
      addend     => addend_11bit(08),
      augend     => augend_11bit(08),
      carry_in   => c08,
      sum        => adder11_output_int(08),
      carry      => c09
      );

fa07 : fulladder
   port map (
      addend     => addend_11bit(07),
      augend     => augend_11bit(07),
      carry_in   => c07,
      sum        => adder11_output_int(07),
      carry      => c08
      );

fa06 : fulladder
   port map (
      addend     => addend_11bit(06),
      augend     => augend_11bit(06),
      carry_in   => c06,
      sum        => adder11_output_int(06),
      carry      => c07
      );

fa05 : fulladder
   port map (
      addend     => addend_11bit(05),
      augend     => augend_11bit(05),
      carry_in   => c05,
      sum        => adder11_output_int(05),
      carry      => c06
      );

fa04 : fulladder
   port map (
      addend     => addend_11bit(04),
      augend     => augend_11bit(04),
      carry_in   => c04,
      sum        => adder11_output_int(04),
      carry      => c05
      );

fa03 : fulladder
   port map (
      addend     => addend_11bit(03),
      augend     => augend_11bit(03),
      carry_in   => c03,
      sum        => adder11_output_int(03),
      carry      => c04
      );

fa02 : fulladder
   port map (
      addend     => addend_11bit(02),
      augend     => augend_11bit(02),
      carry_in   => c02,
      sum        => adder11_output_int(02),
      carry      => c03
      );

fa01 : fulladder
   port map (
      addend     => addend_11bit(01),
      augend     => augend_11bit(01),
      carry_in   => c01,
      sum        => adder11_output_int(01),
      carry      => c02
      );

fa00 : fulladder
   port map (
      addend     => addend_11bit(00),
      augend     => augend_11bit(00),
      carry_in   => c00,
      sum        => adder11_output_int(00),
      carry      => c01
      );

end structural;
