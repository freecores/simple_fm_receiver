-- $Id: addacc.vhdl,v 1.2 2005-02-21 06:54:22 arif_endro Exp $
-------------------------------------------------------------------------------
-- Title       : Accumulator and Adder
-- Project     : FM Receiver 
-------------------------------------------------------------------------------
-- File        : addacc.vhdl
-- Author      : "Arif E. Nugroho" <arif_endro@yahoo.com>
-- Created     : 2004/10/25
-- Last update : 
-- Simulators  : 
-- Synthesizers: 
-- Target      : 
-------------------------------------------------------------------------------
-- Description : Accumulator used in NCO of PLL in FM Receiver
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
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_arith.all;

entity addacc is
   port (
    clock  : in  bit;
    acc    : in  bit_vector (17 downto 0);
    result : out bit_vector (17 downto 0);
    offset : in  bit_vector (17 downto 0)
    );
end addacc;

architecture structural of addacc is
   component adder_18bit
      port (
      addend_18bit   : in  bit_vector (17 downto 0);
      augend_18bit   : in  bit_vector (17 downto 0);
      adder18_output : out bit_vector (17 downto 0)
      );
   end component;

signal result_adder01     : bit_vector (17 downto 0);
signal result_adder02     : bit_vector (17 downto 0);
signal result_adder02_reg : bit_vector (17 downto 0);

begin
adder01 : adder_18bit
  port map (
  addend_18bit     => offset,
  augend_18bit     => acc,
  adder18_output   => result_adder01
  );
adder02 : adder_18bit
  port map (
  addend_18bit     => result_adder01,
  augend_18bit     => result_adder02_reg,
  adder18_output   => result_adder02
  );
  process (clock)
  begin
	  if ((clock = '1') and clock'event) then
		  result_adder02_reg <= result_adder02;
		  result <= result_adder02;
	  end if;
  end process;
end structural; 
