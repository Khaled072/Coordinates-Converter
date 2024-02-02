`timescale 1ns / 1ps


module PtoR_SM(input CLK,RST,[7:0] A_in,Angle_in, output reg [1:0] outbit);

//state register
reg [1:0] state;
//inputs
reg [7:0] A,Angle;
//outputs
wire [15:0] MC,MS;


//instantiation of polar to rectangular module 
P_to_RF s1 (.A(A),.Angle(Angle),.MC(MC),.MS(MS));


//one big always block at posedge CLK or posedge RST
always @(posedge CLK or posedge RST) begin
if(RST) begin 
state = 2'b00; //at state 0 outbit,and inputs are 0
A = 0;
Angle = 0;
outbit = 0;
end
else begin
case(state)
2'b00:
begin
state = 2'b01; //go to state 1
end
2'b01:
begin
A = A_in;
Angle = Angle_in;  //recieve inputs and go to state 2
state = 2'b10;
end
2'b10:
begin
outbit = 1;  //set outbit to 1
end 
default: state = 2'b00;
endcase
end
end



endmodule
