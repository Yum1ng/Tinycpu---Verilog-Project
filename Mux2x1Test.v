`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:42:25 02/28/2015
// Design Name:   Mux2x1
// Module Name:   C:/Users/kedi/Desktop/TinyCPU/TinyCPU/Mux2x1Test.v
// Project Name:  TinyCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux2x1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mux2x1Test;

	// Inputs
	reg muhsin;
	reg adithya;
	reg ss;

	// Outputs
	wire outsmall;

	// Instantiate the Unit Under Test (UUT)
	Mux2x1 uut (
		.muhsin(muhsin), 
		.adithya(adithya), 
		.ss(ss), 
		.outsmall(outsmall)
	);

	initial begin
		// Initialize Inputs
		muhsin = 11;
		adithya = 13;
		ss = 0;
#100
	muhsin = 32;
		adithya = 41;
		ss = 0;
		#100
			muhsin =12;
		adithya = 22;
		ss = 1;
		#100
			muhsin = 1;
		adithya = 0;
		ss = 1;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

