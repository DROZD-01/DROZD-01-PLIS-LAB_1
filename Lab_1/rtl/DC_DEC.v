`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.02.2020 14:43:01
// Design Name: 
// Module Name: DC_DEC
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


module DC_DEC(
  input [9:0] sw,
  output reg [3:0]  dc_dec
    );
    
  wire [3:0]dc1;
  wire [3:0]dc2;
    
  assign f = sw[0]|sw[1]&sw[2]|sw[3];  
  
  always @(*) begin
    case (sw[9:8])
      2'd0 : dc_dec = dc1;
      2'd1 : dc_dec = dc2;
      2'd2 : dc_dec = f;
      2'd3 : dc_dec = sw[3:0];
    endcase
  end
    
  DC1 u1(
    .sw(sw[3:0]),
    .dc1(dc1)
  );
  
  DC2 u2(
    .sw(sw[7:4]),
    .dc2(dc2)
  );
endmodule
