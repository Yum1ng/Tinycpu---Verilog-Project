`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:56:49 02/28/2015
// Design Name:   Registers
// Module Name:   C:/Users/kedi/Desktop/TinyCPU/TinyCPU/RegistersTest.v
// Project Name:  TinyCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Registers
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RegistersTest;

	// Inputs
	reg [7:0] H;
	reg Clr;
	reg Enable;
	reg Clock;

	// Outputs
	wire [7:0] Hout;

	// Instantiate the Unit Under Test (UUT)
	Registers uut (
		.H(H), 
		.Hout(Hout), 
		.Clr(Clr), 
		.Enable(Enable), 
		.Clock(Clock)
	);

	initial begin
		// Initialize Inputs
		H = 0;
		Clr = 0;
		Enable = 0;
		Clock = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
				H = 7;
		Clr = 0;
		Enable = 1;
		

		// Wait 100 ns for global reset to finish
		#100;
		
				
				H = 7;
		Clr = 1;
		Enable = 1;
		

		// Wait 100 ns for global reset to finish
		#100;
						H = 8;
		Clr = 0;
		Enable = 1;
		

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here


	end

		always begin
		#5;
		Clock =~Clock;
		end      
endmodule

