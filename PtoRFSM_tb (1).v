`timescale 1ns / 1ps

module PtoRFSM_tb();
//inputs
reg RST,CLK;
reg [7:0] Ain,Anglein;
//outputs
wire [1:0] outbit;

//inputs set by user in test bench
initial begin
Ain = 8'd4;
Anglein = 8'd30;
end

//mdoule instantiation
PtoR_SM s2 (.CLK(CLK),.RST(RST),.A_in(Ain),.Angle_in(Anglein),.outbit(outbit));

parameter HCP=5;
integer CP = HCP*2;

//clock 
initial begin: ClockGenerator
CLK = 1'b0;
forever #HCP CLK=~CLK;
end

//reset signal
initial begin
RST=1; forever #(6*CP) RST=~RST;
end

endmodule
