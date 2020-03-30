`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.02.2020 14:35:30
// Design Name: 
// Module Name: DC2
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


module DC2(
  input      [7:4] sw,
  output reg [3:0]  dc2
    );
  always @(*) begin
    case (sw[7:4])
      default: dc2 = sw[7:4] ^ 4'b0011;
    endcase
  end  
endmodule
