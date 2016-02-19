`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:38:57 02/28/2015 
// Design Name: 
// Module Name:    Mux2x1 
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
module Mux2x1(
    input [7:0] muhsin,
    input [7:0] adithya,
    input ss,
    output reg [7:0] outsmall
    );
 always @ (*) begin
	 
	 case ( ss )
	 
0 : outsmall <= muhsin;
1 : outsmall <= adithya;

endcase
end
endmodule
