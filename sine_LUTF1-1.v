`timescale 1ns / 1ps

module sine_LUTF1(input [0:7] angle, output [7:0] sine);

//reg to assign values of look up table 
reg [7:0] sangle [0:90];

//read values from sine lookup table
initial $readmemb ("sine_lookup.mem",sangle);

//assign output 
assign sine = sangle[angle];

endmodule
