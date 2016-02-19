`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:31:59 02/28/2015
// Design Name:   Mux8x1
// Module Name:   C:/Users/kedi/Desktop/TinyCPU/TinyCPU/Mux8x1Test.v
// Project Name:  TinyCPU
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux8x1
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mux8x1Test;

	// Inputs
	reg [7:0] a;
	reg [7:0] b;
	reg [7:0] c;
	reg [7:0] d;
	reg [7:0] e;
	reg [7:0] f;
	reg [7:0] g;
	reg [7:0] h;
	reg Select0;
	reg Select1;
	reg Select2;

	// Outputs
	wire [7:0] OutMux;

	// Instantiate the Unit Under Test (UUT)
	Mux8x1 uut (
		.a(a), 
		.b(b), 
		.c(c), 
		.d(d), 
		.e(e), 
		.f(f), 
		.g(g), 
		.h(h), 
		.Select0(Select0), 
		.Select1(Select1), 
		.Select2(Select2), 
		.OutMux(OutMux)
	);

	initial begin
		// Initialize Inputs
		a = 4;
		b = 5;
		c = 6;
		d = 7;
		e = 8;
		f = 9;
		g = 0;
		h = 0;
		Select0 = 0;
		Select1 = 0;
		Select2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
				a = 0;
		b = 0;
		c = 8;
		d = 14;
		e = 0;
		f = 0;
		g = 0;
		h = 0;
		Select0 = 1;
		Select1 = 1;
		Select2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
				a = 0;
		b = 7;
		c = 0;
		d = 12;
		e = 0;
		f = 0;
		g = 0;
		h = 0;
		Select0 = 1;
		Select1 = 0;
		Select2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		
				a = 0;
		b = 0;
		c = 0;
		d = 13;
		e = 3;
		f = 0;
		g = 0;
		h = 0;
		Select0 = 0;
		Select1 = 1;
		Select2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
				a = 0;
		b = 0;
		c = 0;
		d = 0;
		e = 0;
		f = 0;
		g = 0;
		h = 0;
		Select0 = 0;
		Select1 = 0;
		Select2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

