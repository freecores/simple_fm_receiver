-- $Id: input.vhdl,v 1.1.1.1 2005-01-04 02:06:00 arif_endro Exp $
-- **************************************************************
-- Arif E. Nugroho
-- [20041110]
-- * Derived from testbench from modeltech
-- **************************************************************

library IEEE;
library STD;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use STD.TEXTIO.ALL;

entity input is
   port (
   clock_out        : out bit;
   test_signal_fm   : out bit_vector (07 downto 0);
   test_signal_fmTri: out bit_vector (07 downto 0);
   signal_fm_bit    : out bit;
   signal_fmTri_bit : out bit
   );
end input;

architecture test_bench of input is
type char_to_stdlogic_t is array (character) of std_logic;
file file_pointer_fm    : text open read_mode is "fm.txt";
file file_pointer_fmTri : text open read_mode is "fmTri.txt";
constant to_std_logic : char_to_stdlogic_t := (
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
-- signal test_signal_fm    : std_logic_vector ( 7 downto 0);
-- signal test_signal_fmTri : std_logic_vector ( 7 downto 0);
signal test_signal_fm_bit    : std_logic;
signal test_signal_fmTri_bit : std_logic;
signal clock             : std_logic;
begin
	process
	variable line_input_fm      : line;
	variable line_input_fmTri   : line;
--	variable first_char  : character := '#';
	variable test_vector_fm     : string(1 to 8) := "        ";
	variable test_vector_fmTri  : string(1 to 8) := "        ";
	variable input_length_fm    : integer;
	variable input_length_fmTri : integer;
	variable delay_time         : time := 1 ns;
	variable test_var_fm        : std_logic_vector ( 7 downto 0);
	variable test_var_fmTri     : std_logic_vector ( 7 downto 0);
	begin
		while not (endfile(file_pointer_fm) and endfile(file_pointer_fmTri)) loop
		readline(file_pointer_fm, line_input_fm);
		readline(file_pointer_fmTri, line_input_fmTri);
		if (line_input_fm /= NULL) and (line_input_fm'length > 0) and (line_input_fmTri /= NULL) and (line_input_fmTri'length > 0) then
--			read(line_number, first_char);
--			if (first_char /= '#') then
		read(line_input_fm, test_vector_fm);
		read(line_input_fmTri, test_vector_fmTri);
		input_length_fm := test_vector_fm'length - 1;
		input_length_fmTri := test_vector_fmTri'length - 1;
		for a in test_vector_fm'range loop
		  test_var_fm(input_length_fm) := to_std_logic(test_vector_fm(a));
		  test_signal_fm_bit <= to_std_logic(test_vector_fm(a));
		  input_length_fm := input_length_fm - 1;
		end loop;
		for a in test_vector_fmTri'range loop
		  test_var_fmTri(input_length_fmTri) := to_std_logic(test_vector_fmTri(a));
		  test_signal_fmTri_bit <= to_std_logic(test_vector_fmTri(a));
		  input_length_fmTri := input_length_fmTri - 1;
		end loop;
		test_signal_fm <= to_bitvector(test_var_fm);-- after 1 ns;
		test_signal_fmTri <= to_bitvector(test_var_fmTri);-- after 1 ns;
--			Show current progress
--			report "Current line input is: Vector values are : ";
--		end loop;
--		report "End of input test vector fm.txt";
--		wait;
		clock <= '1';
		wait for delay_time;
		clock <= '0';
		wait for delay_time;
		-- fmTri --START HERE--
--		while not endfile(file_pointer_fmTri) loop
--			read(line_number, first_char);
--			if (first_char /= '#') then
--		clock <= '1';
--		wait for delay_time;
--		clock <= '0';
--		wait for delay_time;
--			Show current progress
--			report "Current line input is: Vector values are : ";
		end if;
		end loop;
--		report "End of input test vector fmTri.txt";
		wait;
	end process;
signal_fm_bit    <= to_bit(test_signal_fm_bit);
signal_fmTri_bit <= to_bit(test_signal_fmTri_bit);
clock_out        <= to_bit(clock);
end test_bench;
