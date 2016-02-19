`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:45:19 02/28/2015 
// Design Name: 
// Module Name:    BusSplit 
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
module BusSplit(
    input [11:0] K,
    output [7:0] G,
    output [3:0] T
    );
	 
	 assign G [7:0] = K [7:0];
	 assign T[3:0] = K [11:8];


endmodule
