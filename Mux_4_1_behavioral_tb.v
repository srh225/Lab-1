`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2024 03:26:15 PM
// Design Name: 
// Module Name: Mux_4_1_behavioral_tb
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


module Mux_4_1_behavioral_tb;
reg[1:0] i0, i1, i2, i3;
reg[1:0] s;

wire [1:0] o;

Mux_4_1_behavioral uut (.i0(i0), .i1(i1), .i2(i2), .i3(i3), .s(s), .o(o));

initial begin

	#10 i0=2'b00;i1=2'b01;i2=2'b10;i3=2'b11;s=2'b00;
	#10 i0=2'b00;i1=2'b01;i2=2'b10;i3=2'b11;s=2'b01;
	#10 i0=2'b00;i1=2'b01;i2=2'b10;i3=2'b11;s=2'b10;
	#10 i0=2'b00;i1=2'b01;i2=2'b10;i3=2'b11;s=2'b11;
	#10 $stop;
end

endmodule
