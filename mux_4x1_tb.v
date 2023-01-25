`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.12.2021 15:06:37
// Design Name: 
// Module Name: mux_4x1_tb
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


module mux_4x1_tb;
reg[3:0] i;
reg[1:0] s;
wire F;
mux_4x1 UUT(.i(i), .s(s), .F(F));

initial begin
// 0 selected
 s[1]=0; s[0]=0; i[3]=0; i[2]=0; i[1]=0; i[0]=1;
#5 s[1]=0; s[0]=0; i[3]=1; i[2]=1; i[1]=1; i[0]=0;
// 1 selected
#5 s[1]=0; s[0]=1; i[3]=0; i[2]=0; i[1]=1; i[0]=0;
#5 s[1]=0; s[0]=1; i[3]=1; i[2]=1; i[1]=0; i[0]=1;
// 2 selected
#5 s[1]=1; s[0]=0; i[3]=0; i[2]=1; i[1]=0; i[0]=0;
#5 s[1]=1; s[0]=0; i[3]=1; i[2]=0; i[1]=1; i[0]=1;
// 3 selected
#5 s[1]=1; s[0]=1; i[3]=1; i[2]=0; i[1]=0; i[0]=0;
#5 s[1]=1; s[0]=1; i[3]=0; i[2]=1; i[1]=1; i[0]=1;
#5 $finish;
end
endmodule
