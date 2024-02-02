`timescale 1ns / 1ps
module arctan(input [0:3] x,y, output [0:7] tan);
//reg to assign values of look up table 
reg [7:0] tans [0:255];
//read values from arctan lookup table
initial $readmemb ("arctanLUT.mem",tans);
//assign output first 4 bits are y and second 4 bits are x 
assign tan = tans[{{y},{x}}];
endmodule

