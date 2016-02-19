`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:17:16 06/10/2015
// Design Name:   testtt
// Module Name:   C:/Users/Muhsin/Desktop/140L/TinyCPU/TinyCPU/sds.v
// Project Name:  TinyCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: testtt
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sds;

	// Inputs
	reg a;
	reg b;
	reg c;

	// Outputs
	wire z;

	// Instantiate the Unit Under Test (UUT)
	testtt uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.z(z)
	);

	initial begin
		// Initialize Inputs
		a <= #100 0;
		b <= #50 0;
		
		// Wait 100 ns for global reset to finish

		c <= #10 0;
		
        
		// Add stimulus here

	end
      
endmodule

