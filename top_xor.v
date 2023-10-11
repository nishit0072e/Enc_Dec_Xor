`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.10.2023 21:38:08
// Design Name: 
// Module Name: xor_gate
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


module top_module(
    input [0:7] enc_ip,
    output [0:7] dec_op,
    output [0:7] xor_res
    );

wire [0:2] ot;

Encoder8_3 encoder(.IN(enc_ip),.out(ot));
Decoder3_8 decoder(.i(ot),.y(dec_op));
    
    assign xor_res[0] = enc_ip[0] ^ dec_op[0];
    assign xor_res[1] = enc_ip[1] ^ dec_op[1];
    assign xor_res[2] = enc_ip[2] ^ dec_op[2];
    assign xor_res[3] = enc_ip[3] ^ dec_op[3];
    assign xor_res[4] = enc_ip[4] ^ dec_op[4];
    assign xor_res[5] = enc_ip[5] ^ dec_op[5];
    assign xor_res[6] = enc_ip[6] ^ dec_op[6];
    assign xor_res[7] = enc_ip[7] ^ dec_op[7];
//    xor(xor_res,enc_ip,dec_ip);
endmodule
