# $Id: modelsim.do,v 1.2 2005-03-12 04:18:38 arif_endro Exp $
# -----------------------------------------------------------------------------
#  Title       : ModelSim do file 
#  Project     : FM Receiver
# -----------------------------------------------------------------------------
#  File        : ModelSim do file
#  Author      : "Arif E. Nugroho" <arif_endro@yahoo.com>
#  Created     : 
#  Last update : 
#  Simulators  : Modelsim 6.0
#  Synthesizers: 
#  Target      : 
# -----------------------------------------------------------------------------
#  Description : modelsim do file
# -----------------------------------------------------------------------------
#  Copyright (C) 2005 Arif E. Nugroho
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
#  
#  	THIS SOURCE FILE MAY BE USED AND DISTRIBUTED WITHOUT RESTRICTION
#  PROVIDED THAT THIS COPYRIGHT STATEMENT IS NOT REMOVED FROM THE FILE AND THAT
#  ANY DERIVATIVE WORK CONTAINS THE ORIGINAL COPYRIGHT NOTICE AND THE
#  ASSOCIATED DISCLAIMER.
#  
# -----------------------------------------------------------------------------
#  
#  	THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
#  IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
#  MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO
#  EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
#  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
#  PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
#  OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
#  WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
#  OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
#  ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#  
# -----------------------------------------------------------------------------

# Destroy output window
destroy .wave;
destroy .list;

# Create work library
vlib work;

# Compile all source
vcom *.vhdl;

# Simulate the design
vsim bench;

# Show the output signal to wave window
add wave /bench/clock;
add wave /bench/reset;
add wave -height 80 -scale .1 -format Analog-Step /bench/myfm/fmin
add wave -height 80 -scale .1 -format Analog-Step /bench/myfm/output_nco
add wave -height 80 -scale 1. -format Analog-Step /bench/myfm/phase_output 
add wave -height 80 -scale .0002 -format Analog-Step /bench/myfm/mynco/myaddacc/result
add wave -height 80 -scale .1 -format Analog-Step /bench/myfm/loop_out
add wave -height 80 -scale 1. -format Analog-Step /bench/myfm/dmout 


# force -freeze sim:/bench/clock 1 0, 0 {50 ns} -r 100
# force -freeze sim:/bench/reset 0 0
# run -all
# run 102400ns
