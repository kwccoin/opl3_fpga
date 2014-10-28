/*******************************************************************************
#   +html+<pre>
#
#   FILENAME: opl3_pkg.sv
#   AUTHOR: Greg Taylor     CREATION DATE: 13 Oct 2014
#
#   DESCRIPTION:
#   Generates a clk enable pulse based on the frequency specified by
#   OUTPUT_CLK_EN_FREQ.
#
#   CHANGE HISTORY:
#   13 Oct 2014        Greg Taylor
#       Initial version
#
#   SVN Identification
#   $Id$
#******************************************************************************/

package opl3_pkg;
    /*
     * Original OPL3 used a 14.31818MHz master clock, divided by 288 giving a
     * sample clock of 49.7159KHz. Since our SSM2603 DAC uses fixed 256
     * oversampling, we'll use a 12.727MHz master clock which is the closest
     * value we can generate using an MMCM and 125MHz input clock. This will
     * give us a 49.7148KHz sample clock. We don't have to worry about clock
     * domain crossings.
     */
    parameter CLK_FREQ = 12.727e6;
    parameter DAC_OVERSAMPLE = 256;
    parameter SAMPLE_FREQ = CLK_FREQ/DAC_OVERSAMPLE;
    
    parameter REG_MULT_WIDTH = 4;
    parameter REG_FNUM_WIDTH = 10;
    parameter REG_BLOCK_WIDTH = 3;
    parameter REG_WS_WIDTH = 3;
    
    parameter SAMPLE_WIDTH = 16;
    parameter ENV_WIDTH = 9;

endpackage
