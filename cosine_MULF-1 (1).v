`timescale 1ns / 1ps

module cosine_MULF(input [7:0] A,C, output wire[15:0] MC);

//multiply amplitude with cosine look up table output and assign to MC
assign MC = A*C;

endmodule
