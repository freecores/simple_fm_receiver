-- $Id: xilinx_fpga.vhdl,v 1.3 2005-03-04 08:04:00 arif_endro Exp $
-------------------------------------------------------------------------------
-- Title       : Xilinx FPGA Implementation
-- Project     : FM Receiver 
-------------------------------------------------------------------------------
-- File        : xilinx_fpga.vhdl
-- Author      : "Arif E. Nugroho" <arif_endro@yahoo.com>
-- Created     : 2005/01/04
-- Last update :
-- Simulators  : 
-- Synthesizers: Xilinx 6.3i
-- Target      : 
-------------------------------------------------------------------------------
-- Description : Xilinx Connector to ILA, ICON, VIO
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

-------------------------------------------------------------------------------
-- Notes on Implementations
-- Generates ILA, ICON, and VIO cores using Xilinx ChipScope with
-- following options:
-- ICON => generates to control two devices (e.g. two control port)
-- ILA  => generates to capture two output signal (e.g. two trigger)
-- VIO  => generates one async control output to control reset signal on design
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity xilinx_fpga is
   port (
   clock             : in bit
   );
end xilinx_fpga;

architecture structural of xilinx_fpga is
  -------------------------------------------------------------------
  --
  --  Design Under Test
  --
  -------------------------------------------------------------------
  component bench
  port (
  clock              : in  bit;
  reset              : in  bit;
  output_fm          : out bit_vector (11 downto 0);
  output_fmTri       : out bit_vector (11 downto 0)
  );
  end component;

  -------------------------------------------------------------------
  --
  --  DUT Signal declaration
  --
  -------------------------------------------------------------------
  signal reset          : bit;
  signal output_fm      : bit_vector       (11 downto 0);
  signal output_fmTri   : bit_vector       (11 downto 0);
  
  -------------------------------------------------------------------
  --
  --  ICON core component declaration
  --
  -------------------------------------------------------------------
  component icon
    port
    (
      control0    :   out std_logic_vector(35 downto 0);
      control1    :   out std_logic_vector(35 downto 0)
    );
  end component;


  -------------------------------------------------------------------
  --
  --  ICON core signal declarations
  --
  -------------------------------------------------------------------
  signal control0       : std_logic_vector(35 downto 0);
  signal control1       : std_logic_vector(35 downto 0);


  -------------------------------------------------------------------
  --
  --  ILA core component declaration
  --
  -------------------------------------------------------------------
  component ila
    port
    (
      control     : in    std_logic_vector(35 downto 0);
      clk         : in    std_logic;
      trig0       : in    std_logic_vector(11 downto 0);
      trig1       : in    std_logic_vector(11 downto 0)
    );
  end component;


  -------------------------------------------------------------------
  --
  --  ILA core signal declarations
  --
  -------------------------------------------------------------------
--  signal control    : std_logic_vector(35 downto 0);
  signal clk        : std_logic;
  signal trig0      : std_logic_vector(11 downto 0);
  signal trig1      : std_logic_vector(11 downto 0);

  -------------------------------------------------------------------
  --
  --  VIO core component declaration
  --
  -------------------------------------------------------------------
  component vio
    port
    (
      control     : in    std_logic_vector(35 downto 0);
      async_out   : out   std_logic_vector(0 downto 0)
    );
  end component;


  -------------------------------------------------------------------
  --
  --  VIO core signal declarations
  --
  -------------------------------------------------------------------
--  signal control    : std_logic_vector(35 downto 0);
  signal async_out    : std_logic_vector(0 downto 0);


begin

  -------------------------------------------------------------------
  --  Design Under Test 
  --  Design + Test bench to make easy input date (lazy person)
  -------------------------------------------------------------------
  my_design : bench
  port map
  (
  clock        => clock,
  reset        => reset,
  output_fm    => output_fm,
  output_fmTri => output_fmTri
  );
  
  -------------------------------------------------------------------
  --
  --  ICON core instance
  --
  -------------------------------------------------------------------
  i_icon : icon
    port map
    (
      control0    => control0,
      control1    => control1
    );

  -------------------------------------------------------------------
  --
  --  ILA core instance
  --
  -------------------------------------------------------------------
  i_ila : ila
    port map
    (
      control   => control0,
      clk       => clk,
      trig0     => trig0,
      trig1     => trig1
    );

  clk          <= to_stdulogic (clock);
  trig0        <= to_stdlogicvector (output_fm);
  trig1        <= to_stdlogicvector (output_fmTri);
  
  -------------------------------------------------------------------
  --
  --  VIO core instance
  --
  -------------------------------------------------------------------
  i_vio : vio
    port map
    (
      control   => control1,
      async_out => async_out
    );
  reset <= to_bit (async_out(0));

end structural;
