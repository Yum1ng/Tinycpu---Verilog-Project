`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:51:15 02/28/2015 
// Design Name: 
// Module Name:    Registers 
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
module Registers(
    input [7:0] H,
    output reg [7:0] Hout,
    input Clr,
    input Enable,
    input Clock
    );
	 
	 always @(posedge Clock) begin
	 
	 if (Enable)
	 begin
	
	if(Clr) begin
		Hout <= 0;
		end
	else begin
		Hout <=H;
		end
	end
	end
endmodule
