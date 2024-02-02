`timescale 1ns / 1ps
module sine_MULF1(input [7:0] A,S, output wire[15:0] MS);
//multiply amplitude with sine look up table output and assign to MS
assign MS = A*S;
endmodule
