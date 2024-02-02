`timescale 1ns / 1ps
module squareroot(input [15:0] s, output[7:0] sq);
//reg to assign values of look up table 
reg [7:0] sqs [0:65535];
//read values from square rootlookup table
initial $readmemh ("squarerootLUT.mem",sqs);
//assign output
assign sq = sqs[s];
endmodule
