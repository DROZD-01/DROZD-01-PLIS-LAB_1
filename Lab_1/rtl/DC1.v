`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.02.2020 14:30:31
// Design Name: 
// Module Name: DC1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module DC1(
  input      [3:0] sw,
  output reg [3:0]  dc1
    );
  always @(*) begin
    case (sw[3:0])
    4'b0000 : dc1 = 4'b0000;
    
    4'b0001 : dc1 = 4'b0001;
    4'b0010 : dc1 = 4'b0001;
    4'b0100 : dc1 = 4'b0001;
    4'b1000 : dc1 = 4'b0001; 
       
    4'b0011 : dc1 = 4'b0010;
    4'b0101 : dc1 = 4'b0010;
    4'b1001 : dc1 = 4'b0010;
    4'b0110 : dc1 = 4'b0010;
    4'b1010 : dc1 = 4'b0010; 
    4'b1100 : dc1 = 4'b0010; 
    
    4'b0111 : dc1 = 4'b0011;
    4'b1011 : dc1 = 4'b0011;
    4'b1110 : dc1 = 4'b0011;
    4'b1101 : dc1 = 4'b0011;
    
    4'b1111 : dc1 = 4'b0100;
    endcase
  end  
endmodule
