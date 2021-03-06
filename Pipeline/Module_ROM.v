`timescale 1ns / 1ps
`include "Defintions.v"

`define LOOP1 8'd8
`define LOOP2 8'd5
module ROM
(
	input  wire[15:0]  		iAddress,
	output reg [27:0] 		oInstruction
);	
always @ ( iAddress )
begin
	case (iAddress)
	0: oInstruction = { `STO ,`R1,16'd1};
	1: oInstruction = { `STO ,`R1,16'd1};
	2: oInstruction = { `STO ,`R2,16'd1};
	3: oInstruction = { `NOP, 24'd4000};
	4: oInstruction = { `ADD, `R1, `R1,`R2}; 
	5: oInstruction = { `JMP, 8'd5, 16'b0};
	default:
		oInstruction = { `LED ,  24'b10101010 };		//NOP
	endcase	
end
	
endmodule
