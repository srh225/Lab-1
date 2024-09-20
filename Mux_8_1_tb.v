`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2024 02:34:16 PM
// Design Name: 
// Module Name: Mux_8_1_tb
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


module Mux_8_1_tb;
reg[7:0] i;
reg[2:0] s;

wire o;

Mux_8_1 uut (.i(i), .s(s), .o(o));

initial begin

	#10 i=8'b00000001;s=3'b000;
	#10 i=8'b00000010;s=3'b001;
	#10 i=8'b00000100;s=3'b010;
	#10 i=8'b00010000;s=3'b011;
	#10 i=8'b00000100;s=3'b100;
	#10 i=8'b00000011;s=3'b101;
	#10 i=8'b00000101;s=3'b110;
	#10 i=8'b00100010;s=3'b111;
	#10 $stop;

end

endmodule
