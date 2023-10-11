`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.10.2023 23:17:43
// Design Name: 
// Module Name: PIPO
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


module pipo_8bit(
    input [7:0] in,
    input clk,rst,
    output [7:0] y
    );
    wire w1;
    slow_clk clock(.clk_in(clk), .slow_clk(w1));
    d_ff d1(in[0],w1,rst,y[0]);
    d_ff d2(in[1],w1,rst,y[1]);
    d_ff d3(in[2],w1,rst,y[2]);
    d_ff d4(in[3],w1,rst,y[3]);
    d_ff d5(in[4],w1,rst,y[4]);
    d_ff d6(in[5],w1,rst,y[5]);
    d_ff d7(in[6],w1,rst,y[6]);
    d_ff d8(in[7],w1,rst,y[7]);
    
endmodule