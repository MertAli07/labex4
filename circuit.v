`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.12.2021 15:44:07
// Design Name: 
// Module Name: circuit
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


module circuit(
    input a,
    input b,
    input c,
    input d,
    output F
    );
    wire[3:0] link;
    decoder_2x4 dec(.A({b,a}), .D(link));
    mux_4x1 mux(.i({link[3], link[1], link[2], link[0]}), .s({c,d}), .F(F));
endmodule
