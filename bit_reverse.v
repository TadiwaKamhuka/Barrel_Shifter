`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2026 12:08:55
// Design Name: 
// Module Name: bit_reverse
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


module bit_reverse(
    input [7:0] x,
    input en,
    output [7:0] y
    );
    
    assign y = en ? {x[0], x[1], x[2], x[3], x[4], x[5], x[6], x[7]} : x;
endmodule
