`timescale 1ns / 1ps

module ysquare(input [3:0] y, output wire [7:0] ys);

//multiply y input by itself and assign output to ys
assign ys=y*y;

endmodule
