`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2024 03:25:34 PM
// Design Name: 
// Module Name: Mux_4_1_behavioral
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


module Mux_4_1_behavioral(i0, i1, i2, i3, s, o);
    input [1:0] i0, i1, i2, i3;
    input [1:0] s;
    output reg [1:0] o;

wire NS0, NS1;
wire [1:0] Y0, Y1, Y2, Y3;

always@(*)
begin
    case(s)
        2'b00: o = i0;
        2'b01: o = i1;
        2'b10: o = i2;
        2'b11: o = i3;
    endcase
end
 
endmodule
