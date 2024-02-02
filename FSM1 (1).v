`timescale 1ns / 1ps


module FSM1(input CLK,RST,[3:0] x_in,y_in, output reg outbit);
//state register
reg [1:0] state;
//outputs
wire [7:0] A,Angle;
//inputs
reg [3:0] X,Y;

//instantiation of rectangular to polar module 
RtoPF s1 (.X(X),.Y(Y),.A(A),.Angle(Angle));

//one big always block at posedge CLK or posedge RST
always @(posedge CLK or posedge RST) begin
if(RST) begin 
state = 2'b00; //at state 0 outbit,and inputs are 0
X = 0;
Y = 0;
outbit = 0;
end
else begin
case(state)
2'b00:
begin
state = 2'b01;  //go to state 1
end
2'b01:
begin
X = x_in; //recieve inputs and go to state 2
Y = y_in;
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