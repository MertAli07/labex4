`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.12.2021 14:25:40
// Design Name: 
// Module Name: decoder_2x4
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


module decoder_2x4(
    input[1:0] A,
    output[3:0] D
    );
    assign D[0] = !A[1] && !A[0];
    assign D[1] = !A[1] && A[0]; 
    assign D[2] = A[1] && !A[0];
    assign D[3] = A[1] && A[0];
endmodule
