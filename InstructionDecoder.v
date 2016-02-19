`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:17:26 02/28/2015 
// Design Name: 
// Module Name:    InstructionDecoder 
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
module InstructionDecoder(
    input [3:0] instruction,
    output reg Clear,
    output reg  EnableA,
    output reg EnableB,
    output reg EnableOut,
    output reg S0,
    output reg S1,
    output reg S2,
    output reg S3
    );
	 
always@(*) begin

	if (instruction == 0 ) begin
		Clear <= 1;
		EnableA <= 1;
		EnableB <=1;
		EnableOut <= 1;
		S0 <= 1'bx;
		S1 <= 1'bx;
		S2 <= 1'bx;
		S3 <= 1'bx;
	end
	else if (instruction == 1 ) begin
		Clear <= 0;
		EnableA <= 1;
		EnableB <=0;
		EnableOut <= 0;
		S0 <= 1'bx;
		S1 <= 1'bx;
		S2 <= 1'bx;
		S3 <= 1'bx;
		end
		else if (instruction == 2 ) begin
		Clear <= 0;
		EnableA <= 0;
		EnableB <=1;
		EnableOut <= 0;
		S0 <= 0;
		S1 <= 1'bx;
		S2 <= 1'bx;
		S3 <= 1'bx;
		end
		else if (instruction == 3) begin
		Clear <= 0;
		EnableA <= 0;
		EnableB <=1;
		EnableOut <= 0;
		S0 <= 1;
		S1 <= 1'bx;
		S2 <= 1'bx;
		S3 <= 1'bx;
		end
			else if (instruction == 4 ) begin
		Clear <= 0;
		EnableA <= 0;
		EnableB <=0;
		EnableOut <= 1;
		S0 <= 1'bx;
		S1 <= 0;
		S2 <= 0;
		S3 <= 0;
		end
			else if (instruction == 5 ) begin
		Clear <= 0;
		EnableA <= 0;
		EnableB <=0;
		EnableOut <= 1;
		S0 <= 1'bx;
		S1 <= 0;
		S2 <= 0;
		S3 <= 1;
		end
			else if (instruction == 6 ) begin
		Clear <= 0;
		EnableA <= 0;
		EnableB <=0;
		EnableOut <= 1;
		S0 <= 1'bx;
		S1 <= 0;
		S2 <= 1;
		S3 <= 0;
		end
			else if (instruction == 7 ) begin
		Clear <= 0;
		EnableA <= 0;
		EnableB <=0;
		EnableOut <= 1;
		S0 <= 1'bx;
		S1 <= 0;
		S2 <= 1;
		S3 <= 1;
		end
			else if (instruction == 8 ) begin
		Clear <= 0;
		EnableA <= 0;
		EnableB <=0;
		EnableOut <= 1;
		S0 <= 1'bx;
		S1 <= 1;
		S2 <= 0;
		S3 <= 0;
		end
			else if (instruction == 9 ) begin
		Clear <= 0;
		EnableA <= 0;
		EnableB <=0;
		EnableOut <= 1;
		S0 <= 1'bx;
		S1 <= 1;
		S2 <= 0;
		S3 <= 1;
		end
			else if (instruction == 10 ) begin
		Clear <= 0;
		EnableA <= 0;
		EnableB <=0;
		EnableOut <= 1;
		S0 <= 1'bx;
		S1 <= 1;
		S2 <= 1;
		S3 <= 0;
		end
				else if (instruction == 11 ) begin
		Clear <= 0;
		EnableA <= 0;
		EnableB <=0;
		EnableOut <= 1;
		S0 <= 1'bx;
		S1 <= 1;
		S2 <= 1;
		S3 <= 1;
		end
		else begin
			Clear <= 0;
		EnableA <= 0;
		EnableB <=0;
		EnableOut <= 0;
		S0 <= 1'bx;
		S1 <= 1'bx;
		S2 <=1'bx;
		S3 <= 1'bx;
		end
	end
	endmodule
