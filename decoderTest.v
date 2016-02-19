`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:35:26 02/28/2015
// Design Name:   InstructionDecoder
// Module Name:   C:/Users/kedi/Desktop/TinyCPU/TinyCPU/decoderTest.v
// Project Name:  TinyCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: InstructionDecoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decoderTest;

	// Inputs
	reg [3:0] instruction;

	// Outputs
	wire Clear;
	wire EnableA;
	wire EnableB;
	wire EnableOut;
	wire S0;
	wire S1;
	wire S2;
	wire S3;

	// Instantiate the Unit Under Test (UUT)
	InstructionDecoder uut (
		.instruction(instruction), 
		.Clear(Clear), 
		.EnableA(EnableA), 
		.EnableB(EnableB), 
		.EnableOut(EnableOut), 
		.S0(S0), 
		.S1(S1), 
		.S2(S2), 
		.S3(S3)
	);

	initial begin
		// Initialize Inputs
		instruction = 0;

		// Wait 100 ns for global reset to finish
		#100;
				instruction = 1;

		// Wait 100 ns for global reset to finish
		#100;
				instruction = 2;

		// Wait 100 ns for global reset to finish
		#100;
				instruction = 3;

		// Wait 100 ns for global reset to finish
		#100;
				instruction = 4;

		// Wait 100 ns for global reset to finish
		#100;
				instruction = 5;

		// Wait 100 ns for global reset to finish
		#100;
				instruction = 6;

		// Wait 100 ns for global reset to finish
		#100;
				instruction = 7;

		// Wait 100 ns for global reset to finish
		#100;
				instruction = 8;

		// Wait 100 ns for global reset to finish
		#100;
				instruction = 9;

		// Wait 100 ns for global reset to finish
		#100;
		
        
		// Add stimulus here

	end
      
endmodule

