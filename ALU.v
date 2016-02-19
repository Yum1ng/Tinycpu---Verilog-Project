`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:42:54 02/28/2015 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [7:0] A,
    input [7:0] B,
    output [7:0] Out0,
    output [7:0] Out1,
    output [7:0] Out2,
    output [7:0] Out3,
    output [7:0] Out4,
    output [7:0] Out5,
    output [7:0] Out6,
    output [7:0] Out7
    );

Adder 		M1	(.AAdder(A),	.BAdder(B),		.Out0Adder(Out0));
ShiftLeft 	M2	(.ASL(A),							.Out1SL(Out1));
ShiftRight 	M3	(.ASR(A),							.Out2SR(Out2));
And 			M4 (.AAnd(A), 		.BAnd(B),		.Out3And(Out3));
Or 			M5 (.AOr(A), 		.BOr(B), 		.Out4Or(Out4));
Xor 			M6 (.AXor(A), 		.BXor(B), 		.Out5Xor(Out5));
Nand 			M7 (.ANand(A), 	.BNand(B) ,		.Out6Nand(Out6));
Compare 		M8 (.ACompare(A),	.BCompare(B), 	.Out7Compare(Out7));

endmodule

module Adder( input [7:0] AAdder,
    input [7:0] BAdder,
	 output reg [7:0] Out0Adder);
	 always @ (*) begin
	 Out0Adder <= AAdder + BAdder;
	 end
endmodule

module ShiftLeft( input [7:0] ASL,
	 output reg [7:0] Out1SL);
	 	 always @ (*) begin
	 Out1SL <= ASL<<1;
	 end
endmodule
	 
module ShiftRight ( input [7:0] ASR,
	 output reg [7:0] Out2SR);
	 	 always @ (*) begin
	 Out2SR <= ASR>>1;
	 end
endmodule	 
	 
module And ( input [7:0] AAnd,  input [7:0] BAnd,
	 output reg [7:0] Out3And);
	 	 always @ (*) begin
	 Out3And <= AAnd&BAnd;
	 end
endmodule	 

module Or ( input [7:0] AOr,  input [7:0] BOr,
	 output reg [7:0] Out4Or);
	 	 always @ (*) begin
	 Out4Or <= AOr|BOr;
	 end
endmodule	
	 
module Xor ( input [7:0] AXor,  input [7:0] BXor,
	 output reg [7:0] Out5Xor);
	 	 always @ (*) begin
	 Out5Xor <= AXor^BXor;
	 end
endmodule	

module Nand ( input [7:0] ANand,  input [7:0] BNand,
	 output reg [7:0] Out6Nand);
	 	 always @ (*) begin
	 Out6Nand <= ~(ANand&BNand);
	 end
endmodule	

module Compare ( input [7:0] ACompare,  input [7:0] BCompare,
	 output reg [7:0] Out7Compare);
	 	 always @ (*) begin
	if(ACompare >= BCompare) begin
	Out7Compare <= 255;
	end
	else begin
	Out7Compare<= 0;
	end
	end
endmodule	