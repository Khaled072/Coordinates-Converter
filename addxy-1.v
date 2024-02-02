`timescale 1ns / 1ps

module addxy(input [7:0] x,y, output wire [15:0] xy);

//add the outputs of xsquare and ysquare and assign to xy
assign xy = x+y;

endmodule
