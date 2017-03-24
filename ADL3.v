`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:25:11 09/13/2015 
// Design Name: 
// Module Name:    ADL3 
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
module ADL3(f1,f2,f3,A);

input [3:0]A;
output reg f1,f2,f3;

always@(*)
begin
case(A)

4'b0000:begin 
     f1=1'b0;
     f2=1'b0;
     f3=1'b0;
     end	  
4'b0001:begin 
     f1=1'b1;
     f2=1'b0;
     f3=1'b0;
     end	
4'b0010:begin 
     f1=1'b0;
     f2=1'b0;
     f3=1'b0;
     end	
4'b0011:begin 
     f1=1'bz;
     f2=1'b1;
     f3=1'b1;
     end	
4'b0100:begin 
     f1=1'b1;
     f2=1'b0;
     f3=1'b1;
     end	
4'b0101:begin 
     f1=1'b1; 
     f2=1'b1;
     f3=1'bz;
     end	
4'b0110:begin 
     f1=1'bz;
     f2=1'bz;
     f3=1'b0;
     end	
4'b0111:begin 
     f1=1'b1;
     f2=1'b1;
     f3=1'b0;
     end	
4'b1000:begin 
     f1=1'b0;
     f2=1'b0;
     f3=1'b0;
     end	
4'b1001:begin 
     f1=1'b0;
     f2=1'b0;
     f3=1'bz;
     end
4'b1010:begin 
     f1=1'b0;
     f2=1'b0;
     f3=1'b0;
     end	
4'b1011:begin 
     f1=1'b0;
     f2=1'b0;
     f3=1'b1;
     end	
4'b1100:begin 
     f1=1'b0;
     f2=1'b0;
     f3=1'b0;
     end	
4'b1101:begin 
     f1=1'b1;
     f2=1'b0;
     f3=1'b1;
     end	
4'b1110:begin 
     f1=1'b0;
     f2=1'b0;
     f3=1'bz;
     end	
4'b111:begin 
     f1=1'b0;
     f2=1'b0;
     f3=1'b1;
     end	
endcase
end
endmodule