`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:17:16 02/28/2015
// Design Name:   ALU
// Module Name:   C:/Users/kedi/Desktop/TinyCPU/TinyCPU/ALUTest.v
// Project Name:  TinyCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALUTest;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;

	// Outputs
	wire [7:0] Out0;
	wire [7:0] Out1;
	wire [7:0] Out2;
	wire [7:0] Out3;
	wire [7:0] Out4;
	wire [7:0] Out5;
	wire [7:0] Out6;
	wire [7:0] Out7;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.A(A), 
		.B(B), 
		.Out0(Out0), 
		.Out1(Out1), 
		.Out2(Out2), 
		.Out3(Out3), 
		.Out4(Out4), 
		.Out5(Out5), 
		.Out6(Out6), 
		.Out7(Out7)
	);

	initial begin
		// Initialize Inputs
		A = 5;
		B = 6;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

