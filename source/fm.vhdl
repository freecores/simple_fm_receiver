-- $Id: fm.vhdl,v 1.2 2005-02-21 06:54:44 arif_endro Exp $
-------------------------------------------------------------------------------
-- Title       : FM core component
-- Project     : FM Receiver 
-------------------------------------------------------------------------------
-- File        : fm.vhdl
-- Author      : "Arif E. Nugroho" <arif_endro@yahoo.com>
-- Created     : 2004/12/06
-- Last update : 2005/01/03 
-- Simulators  : 
-- Synthesizers: 
-- Target      : 
-------------------------------------------------------------------------------
-- Description : FM core component to connect all other component
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

entity fm is
 port (
  CLK                     : in  bit;
  RESET                   : in  bit;
  FMIN                    : in  bit_vector (07 downto 0);
  DMOUT                   : out bit_vector (11 downto 0)
  );
end fm;

architecture structural of fm is
 component nco
  port (
       clock              : in  bit;
       clear              : in  bit;
       input_nco          : in  bit_vector (17 downto 0);
       offset             : in  bit_vector (17 downto 0);
       output_nco         : out bit_vector (07 downto 0)
       );
 end component;
 component loop_filter
  port (
       input_loop         : in  bit_vector (07 downto 0);
       clock              : in  bit;
       output_loop        : out bit_vector (11 downto 0);
       clear              : in  bit
       );
 end component;
 component phase_detector
  port (
       clock              : in  bit;
       signal_input       : in  bit_vector (07 downto 0);
       signal_nco         : in  bit_vector (07 downto 0);
       phase_output       : out bit_vector (07 downto 0)
       );
 end component;
 component fir
  port (
       clock              : in  bit;
       clear              : in  bit;
       fir_in             : in  bit_vector (11 downto 0);
       dmout              : out bit_vector (11 downto 0)
       );
 end component;
-- internal signal
signal loop_out           : bit_vector (11 downto 0);
signal input_nco          : bit_vector (17 downto 0);
signal offset             : bit_vector (17 downto 0);
signal output_nco         : bit_vector (07 downto 0);
signal phase_output       : bit_vector (07 downto 0);

begin
-- offset values 1/16 equ B"000100000000000000" <18,0,u>
offset (17) <= '0' ;
offset (16) <= '0' ;
offset (15) <= '0' ;
offset (14) <= '1' ;
offset (13) <= '0' ;
offset (12) <= '0' ;
offset (11) <= '0' ;
offset (10) <= '0' ;
offset (9)  <= '0' ;
offset (8)  <= '0' ;
offset (7)  <= '0' ;
offset (6)  <= '0' ;
offset (5)  <= '0' ;
offset (4)  <= '0' ;
offset (3)  <= '0' ;
offset (2)  <= '0' ;
offset (1)  <= '0' ;
offset (0)  <= '0' ;

-- The constant that have great effect on the loop
-- it's a 1/16 divider it's has 5 step to change the output state with little
-- oscillation. it's can be make good shape by reducing the constant e.g 1/32
-- but it's has slower response time than 1/16 about 2 times e.g approx 10 step
-- to change the output state. if it's too big e.g (1) then there is no output
-- only oscilation if it's is to small e.g (1/1024) then output never return to
-- zero, so it's didn't change the output state.

input_nco (17) <= loop_out(11); -- 1
input_nco (16) <= loop_out(11); -- 1/2
input_nco (15) <= loop_out(11); -- 1/4
input_nco (14) <= loop_out(11); -- 1/8
input_nco (13) <= loop_out(11); -- 1/16
input_nco (12) <= loop_out(10); -- 1/32
input_nco (11) <= loop_out(09); -- 1/64
input_nco (10) <= loop_out(08); -- 1/128
input_nco (09) <= loop_out(07); -- 1/256
input_nco (08) <= loop_out(06); -- 1/512
input_nco (07) <= loop_out(05); -- 1/1024
input_nco (06) <= loop_out(04);
input_nco (05) <= loop_out(03);
input_nco (04) <= loop_out(02);
input_nco (03) <= loop_out(01);
input_nco (02) <= loop_out(00);
input_nco (01) <= loop_out(11);
input_nco (00) <= loop_out(11);

-- end divider 
mynco : nco 
    port map (
    clock                      => CLK,
    clear                      => RESET,
    input_nco                  => input_nco,
    offset                     => offset,
    output_nco ( 7 downto 0)   => output_nco
    );
myfir : fir 
    port map (
    clock                      => CLK,
    clear                      => RESET,
    fir_in                     => loop_out,
    dmout (11 downto 0)        => DMOUT
    );
myphase : phase_detector 
    port map (
    clock                      => CLK,
    signal_input               => FMIN,
    signal_nco                 => output_nco,
    phase_output ( 7 downto 0) => phase_output
    );
myloop : loop_filter 
    port map (
    input_loop                 => phase_output,
    clock                      => CLK,
    output_loop (11 downto 0)  => loop_out,
    clear                      => RESET
    );
end structural;
