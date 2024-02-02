`timescale 1ns / 1ps

module P_to_RF (input [7:0] A,Angle, output [15:0] MC,MS);

wire [7:0] S,C;

//modules instantiations
sine_LUTF1 t1 (.angle(Angle),.sine(S));
cosine_LUTF1 t2 (.angle(Angle),.cosine(C));
cosine_MULF t3 (.A(A),.C(C),.MC(MC));
sine_MULF1 t4 (.A(A),.S(S),.MS(MS));

endmodule
