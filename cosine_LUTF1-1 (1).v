`timescale 1ns / 1ps

module cosine_LUTF1(input [0:7] angle, output [7:0] cosine);

//reg to assign values of look up table
reg [7:0] cangle [0:90];
//read values from cosine lookup table
initial $readmemb ("cosine_lookup.mem",cangle);
//assign output 
assign cosine = cangle[angle];

endmodule
