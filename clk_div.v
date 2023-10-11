`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2023 00:01:18
// Design Name: 
// Module Name: clk_div
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


module slow_clk(input clk_in, output slow_clk);
reg[25:0] count=0;
reg clk_out;
always @(posedge clk_in)
begin
count<=count+1;
if(count == 50000000)
begin
count<=0;
clk_out = ~clk_out;
end
end

assign slow_clk= clk_out;

endmodule