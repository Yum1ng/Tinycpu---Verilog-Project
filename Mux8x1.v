`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:25:37 02/28/2015 
// Design Name: 
// Module Name:    Mux8x1 
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
module Mux8x1(
    input [7:0] a,
    input [7:0] b,
    input [7:0] c,
    input [7:0] d,
    input [7:0] e,
    input [7:0] f,
    input [7:0] g,
    input [7:0] h,
    input Select0,
    input Select1,
    input Select2,
    output reg [7:0]  OutMux
    );
	 
	 always @ (*) begin
	 
	 case ( {Select2,Select1,Select0} )
	 
0 : OutMux <= a;
1 : OutMux <= b;
2 : OutMux <= c;
3 : OutMux <= d;
4 : OutMux <= e;
5 : OutMux <= f;
6 : OutMux <= g;
7 : OutMux <= h;
endcase
end
endmodule
