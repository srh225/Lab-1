`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2024 02:04:10 PM
// Design Name: 
// Module Name: Mux_4_1
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

module MUX_4_1(
    input [1:0] i0, i1, i2, i3,
    input [1:0] s,
    output [1:0] o);

wire NS0, NS1;
wire [1:0] Y0, Y1, Y2, Y3;

not N1(NS0, s[0]);
not N2(NS1,s[1]);

and A1(Y0[0], i0[0], NS0, NS1);
and A2(Y1[0], i1[0], NS0, s[1]);
and A3(Y2[0], i2[0], s[0], NS1);
and A4(Y3[0], i3[0], s[0], s[1]);
and A5(Y0[1], i0[1], NS0, NS1);
and A6(Y1[1], i1[1], NS0, s[1]);
and A7(Y2[1], i2[1], s[0], NS1);
and A8(Y3[1], i3[1], s[0], s[1]);

or O1(o[0], Y0[0], Y1[0], Y2[0], Y3[0]);
or O2(o[1], Y0[1], Y1[1], Y2[1], Y3[1]);
 
endmodule
