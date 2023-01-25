`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.12.2021 16:42:04
// Design Name: 
// Module Name: circuit_tb
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


module circuit_tb;
reg a,b,c,d;
wire F;
circuit UUT(.a(a), .b(b), .c(c), .d(d), .F(F));

initial begin
 a=0; b=0; c=0; d=0;
#5 a=0; b=0; c=0; d=1; 
#5 a=0; b=0; c=1; d=0; 
#5 a=0; b=0; c=1; d=1; 
#5 a=0; b=1; c=0; d=0; 
#5 a=0; b=1; c=0; d=1; 
#5 a=0; b=1; c=1; d=0; 
#5 a=0; b=1; c=1; d=1; 
#5 a=1; b=0; c=0; d=0; 
#5 a=1; b=0; c=0; d=1; 
#5 a=1; b=0; c=1; d=0; 
#5 a=1; b=0; c=1; d=1; 
#5 a=1; b=1; c=0; d=0; 
#5 a=1; b=1; c=0; d=1; 
#5 a=1; b=1; c=1; d=0; 
#5 a=1; b=1; c=1; d=1; 
#5 $finish;
end
endmodule
