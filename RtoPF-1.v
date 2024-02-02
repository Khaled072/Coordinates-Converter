`timescale 1ns / 1ps

module RtoPF(input [3:0] X,Y, output [7:0] A,Angle);

//wires to connect modules
wire [7:0] X1,Y1;
wire [15:0] XY;

//modules instantiations
xsquare t1 (.x(X),.xs(X1));
ysquare t2 (.y(Y),.ys(Y1));
addxy t3 (.x(X1),.y(Y1),.xy(XY));
squareroot t4(.s(XY),.sq(A));
arctan t5 (.x(X),.y(Y),.tan(Angle));

endmodule
