-- $Id: chipscope_modelsim_view.vhdl,v 1.1 2005-01-11 03:52:22 arif_endro Exp $
-------------------------------------------------------------------------------
-- Title      :  Viewer Chipscope output to modelsim
-- Project    :  FM Receiver
-------------------------------------------------------------------------------
-- File        : chipscope_modelsim_view.vhdl
-- Author      : Arif E. Nugroho
-- Created     : 2005/01/10
-- Last update : 
-- Simulators  : Modelsim 6.0
-- Synthesizers: 
-- Target      : 
-------------------------------------------------------------------------------
-- Description : To analyze exported ASCII output of ChipScope Analyser to 
--               Modelsim
-------------------------------------------------------------------------------
-- Copyright (c) 2005 Arif E. Nugroho
-- This VHDL design file is an open design; you can redistribute it and/or
-- modify it and/or implement it after contacting the author
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;


library IEEE;
library STD;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use STD.TEXTIO.ALL;

entity chip_view is
   port (
   clock_out        : out bit;
   DMOUT_FM         : out bit_vector (11 downto 0);
   DMOUT_FMTRI      : out bit_vector (11 downto 0);
   DMOUT_FM_BIT     : out bit;
   DMOUT_FMTRI_BIT  : out bit
   );
end chip_view;

architecture viewer of chip_view is

type char_to_stdlogic_t is array (character) of std_logic;
file file_pointer_fm    : text open read_mode is "fm_square_fpga.txt";
file file_pointer_fmTri : text open read_mode is "fm_triangular_fpga.txt";

constant to_std_logic   : char_to_stdlogic_t := (
	'U' => 'U',
	'X' => 'X',
	'0' => '0',
	'1' => '1',
	'Z' => 'Z',
	'W' => 'W',
	'L' => 'L',
	'H' => 'H',
	'-' => '-',
	others => 'X'
	);

signal signal_fm_bit     : std_logic;
signal signal_fmTri_bit  : std_logic;
signal clock             : std_logic;

begin
	process

	variable line_input_fm      : line;
	variable line_input_fmTri   : line;
	variable vector_fm          : string(1 to 12) := "            ";
	variable vector_fmTri       : string(1 to 12) := "            ";
	variable input_length_fm    : integer;
	variable input_length_fmTri : integer;
	variable delay_time         : time := 1 ns;
	variable var_fm             : std_logic_vector (11 downto 0);
	variable var_fmTri          : std_logic_vector (11 downto 0);

	begin
		while not (endfile(file_pointer_fm) and endfile(file_pointer_fmTri)) loop
		
		readline(file_pointer_fm, line_input_fm);
		readline(file_pointer_fmTri, line_input_fmTri);
		
		if (line_input_fm /= NULL) and (line_input_fm'length > 0) and (line_input_fmTri /= NULL) and (line_input_fmTri'length > 0) then
	
			read(line_input_fm, vector_fm);
			read(line_input_fmTri, vector_fmTri);
			input_length_fm    := vector_fm'length - 1;
			input_length_fmTri := vector_fmTri'length - 1;

				for a in vector_fm'range loop
				  var_fm(input_length_fm)       := to_std_logic(vector_fm(a));
				  signal_fm_bit                 <= to_std_logic(vector_fm(a));
				  input_length_fm               := input_length_fm - 1;
				end loop;

				for a in vector_fmTri'range loop
				  var_fmTri(input_length_fmTri) := to_std_logic(vector_fmTri(a));
				  signal_fmTri_bit              <= to_std_logic(vector_fmTri(a));
				  input_length_fmTri            := input_length_fmTri - 1;
				end loop;

			DMOUT_FM    <= to_bitvector(var_fm);
			DMOUT_FMTRI <= to_bitvector(var_fmTri);
			clock <= '1';

			wait for delay_time;
			clock <= '0';

			wait for delay_time;
		end if;
		
		end loop;
		
		wait;
	end process;

DMOUT_FM_BIT     <= to_bit(signal_fm_bit);
DMOUT_FMTRI_BIT  <= to_bit(signal_fmTri_bit);
clock_out        <= to_bit(clock);

end viewer;
