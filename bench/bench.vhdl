-- $Id: bench.vhdl,v 1.4 2005-03-04 08:03:56 arif_endro Exp $
-------------------------------------------------------------------------------
-- Title       : Test Bench
-- Project     : FM Receiver 
-------------------------------------------------------------------------------
-- File        : bench.vhdl
-- Author      : "Arif E. Nugroho" <arif_endro@yahoo.com>
-- Created     : 2004/12/23
-- Last update : 2005/01/08
-- Simulators  : 
-- Synthesizers: 
-- Target      : 
-------------------------------------------------------------------------------
-- Description : Test bench for FM receiver
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
