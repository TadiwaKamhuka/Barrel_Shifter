`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2026 11:47:07
// Design Name: 
// Module Name: rshift
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


module rshift(
    input [7:0] x,
    input [2:0] shift,
    output [7:0] y
    );
    
    wire [7:0] s0, s1;
    
    assign s0 = (shift[0]) ? {x[0], x[7:1]} : x;
    assign s1 = (shift[1]) ? {s0[1:0], s0[7:2]} : s0;
    assign y = (shift[2]) ? {s1[3:0], s1[7:4]} : s1;    
endmodule
