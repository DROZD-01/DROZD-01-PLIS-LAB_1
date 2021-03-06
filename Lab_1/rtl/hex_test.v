`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.02.2020 13:43:29
// Design Name: 
// Module Name: hex_test
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


module hex_test(
  input      [15:0] sw,
  output     [15:0] led,
  output reg [6:0]  hex,
  output     [7:0]  hex_on
    );
    
  wire [3:0]dc_dec;
  
  
  assign hex_on = 8'b1111_1110;
  assign led    = sw;

  always @(*) begin
    case (dc_dec[3:0])
      4'd0 : hex = 7'b100_0000;
      4'd1 : hex = 7'b111_1001;
      4'd2 : hex = 7'b010_0100;
      4'd3 : hex = 7'b011_0000;
      4'd4 : hex = 7'b001_1001;
      4'd5 : hex = 7'b001_0010;
      4'd6 : hex = 7'b000_0010;
      4'd7 : hex = 7'b111_1000;
      4'd8 : hex = 7'b000_0000;
      4'd9 : hex = 7'b001_0000;
      4'd10 : hex = 7'b000_1000;
      4'd11 : hex = 7'b000_0011;
      4'd12 : hex = 7'b100_0110;
      4'd13 : hex = 7'b010_0001;
      4'd14 : hex = 7'b000_0110;
      4'd15 : hex = 7'b000_1110;
    endcase
  end 
  
  DC_DEC u3(
    .sw(sw[9:0]),
    .dc_dec(dc_dec)
  );
endmodule

