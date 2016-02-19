`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:02:05 02/28/2015 
// Design Name: 
// Module Name:    TinyCPU 
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
module TinyCPU(
    input [11:0] In,
    input Clk,
    output [7:0] Result,
	 output [7:0] RegA,
	 output [7:0] RegB
    );

wire [7:0] data;
wire [3:0] instructionwire ;

BusSplit F1 (.K(In),.G(data),.T(instructionwire));

wire Clearwire,EnableAwire,EnableBwire,EnableOutwire,S0wire,S1wire,S2wire,S3wire;

InstructionDecoder F2(.instruction(instructionwire),.Clear(Clearwire),.EnableA(EnableAwire),.EnableB(EnableBwire),.EnableOut(EnableOutwire),.S0(S0wire),.S1(S1wire),.S2(S2wire),.S3(S3wire));

wire mux2x1outwire;
wire [7:0]  RegisterBinwire;
wire [7:0]  RegisterOutoutwire;

Mux2x1 F3 (.muhsin(data),.adithya(RegisterOutoutwire),.ss(S0wire),.outsmall(RegisterBinwire));

wire [7:0]  RegisterAoutwire, RegisterBoutwire;

Registers F4 (.H(data),.Hout(RegisterAoutwire),.Clr(Clearwire),.Enable(EnableAwire),.Clock(Clk));
Registers F5 (.H(RegisterBinwire),.Hout(RegisterBoutwire),.Clr(Clearwire),.Enable(EnableBwire),.Clock(Clk));

wire [7:0]  ALUtoMux0,ALUtoMux1,ALUtoMux2,ALUtoMux3,ALUtoMux4,ALUtoMux5,ALUtoMux6,ALUtoMux7;
wire [7:0]  Mux8x1toRegOut;

ALU F6 (.A(RegisterAoutwire),.B(RegisterBoutwire),.Out0(ALUtoMux0),.Out1(ALUtoMux1), .Out2(ALUtoMux2), .Out3(ALUtoMux3),.Out4(ALUtoMux4),.Out5(ALUtoMux5), .Out6(ALUtoMux6),.Out7(ALUtoMux7) );
Mux8x1 F7 (.a(ALUtoMux0),.b(ALUtoMux1),.c(ALUtoMux2),.d(ALUtoMux3),.e(ALUtoMux4),.f(ALUtoMux5),.g(ALUtoMux6),.h(ALUtoMux7),.Select0(S1wire),.Select1(S2wire),.Select2(S3wire),.OutMux(Mux8x1toRegOut));

Registers F8 (.H(Mux8x1toRegOut),.Hout(RegisterOutoutwire),.Clr(Clearwire),.Enable(EnableOutwire),.Clock(Clk));
assign Result = RegisterOutoutwire;
assign RegA = RegisterAoutwire;
assign RegB = RegisterBoutwire;
endmodule
