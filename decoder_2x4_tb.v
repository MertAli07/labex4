`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.12.2021 14:34:33
// Design Name: 
// Module Name: decoder_2x4_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module decoder_2x4_tb;
reg[1:0] A;
wire[3:0] D;
decoder_2x4 UUT(.A(A), .D(D));

initial begin
 A[1] = 0; A[0] = 0;
#5 A[1] = 0; A[0] = 1;
#5 A[1] = 1; A[0] = 0;
#5 A[1] = 1; A[0] = 1;
#5 $finish;
end
endmodule
