-- $Id: phase_detector.vhdl,v 1.3 2005-03-04 08:06:20 arif_endro Exp $
-------------------------------------------------------------------------------
-- Title       : Phase detector
-- Project     : FM Receiver 
-------------------------------------------------------------------------------
-- File        : phase_detector.vhdl
-- Author      : "Arif E. Nugroho" <arif_endro@yahoo.com>
-- Created     : 2004/12/18
-- Last update : 
-- Simulators  : 
-- Synthesizers: 
-- Target      : 
-------------------------------------------------------------------------------
-- Description : multiply input signal with signal nco
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

entity phase_detector is
   port (
   clock        : in  bit;
   signal_input : in  bit_vector (07 downto 0);
   signal_nco   : in  bit_vector (07 downto 0);
   phase_output : out bit_vector (07 downto 0)
   );
end phase_detector;

architecture structural of phase_detector is
   component mult_8bit
   port (
   mult_01    : in  bit_vector (07 downto 00);
   mult_02    : in  bit_vector (07 downto 00);
   result_mult: out bit_vector (15 downto 00)
   );
   end component;
   
   signal output_mult  : bit_vector (15 downto 0);

   begin

phase_mult: mult_8bit
   port map (
   mult_01     (07 downto 0)  => signal_input,
   mult_02     (07 downto 0)  => signal_nco,
   result_mult (15 downto 0)  => output_mult
   );

   process (clock)
   
   begin

   if ((clock = '1') and clock'event) then

	phase_output <= output_mult(15 downto 8);

   end if;

   end process;
   
end structural;
