`timescale 1ns / 1ps

module xsquare(input [3:0] x, output wire [7:0] xs);

//multiply x input by itself and assign output to xs
assign xs=x*x;

endmodule
