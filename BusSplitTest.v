`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:48:13 02/28/2015
// Design Name:   BusSplit
// Module Name:   C:/Users/kedi/Desktop/TinyCPU/TinyCPU/BusSplitTest.v
// Project Name:  TinyCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: BusSplit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module BusSplitTest;

	// Inputs
	reg [11:0] K;

	// Outputs
	wire [7:0] G;
	wire [3:0] T;

	// Instantiate the Unit Under Test (UUT)
	BusSplit uut (
		.K(K), 
		.G(G), 
		.T(T)
	);

	initial begin
		// Initialize Inputs
		K = 5;

		// Wait 100 ns for global reset to finish
		#100;
				K = 12'b111111111111;

		// Wait 100 ns for global reset to finish
		#100;
				K = 12'b111111100111;

		// Wait 100 ns for global reset to finish
		#100;
				K = 12'b111111001011;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

