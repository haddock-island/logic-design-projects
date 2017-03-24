`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:06:13 09/13/2015 
// Design Name: 
// Module Name:    ADL1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ADL1(f,A);

input [3:0]A;
output reg f;

always@(*)
begin
case(A)

4'b0000: f=1'b0;
4'b0001: f=1'b0;
4'b0010: f=1'b0;
4'b0011: f=1'b0;
4'b0100: f=1'b1;
4'b0101: f=1'bz;
4'b0110: f=1'b0;
4'b0111: f=1'b1;
4'b1000: f=1'b0;
4'b1001: f=1'b0;
4'b1010: f=1'bz;
4'b1011: f=1'bz;
4'b1010: f=1'b1;
4'b1101: f=1'b0;
4'b1110: f=1'b1;
4'b1111: f=1'b1;

endcase
end
endmodule

	 


