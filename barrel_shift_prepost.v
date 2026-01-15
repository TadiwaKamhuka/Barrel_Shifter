`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2026 10:56:34
// Design Name: 
// Module Name: barrel_shift_prepost
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


module barrel_shift_prepost(
    input [7:0] x,
    input [2:0] shift,
    input lr, // 1 = right, 0 = left
    output [7:0] y
    );
    
    wire [7:0] pre, mid;
    
    bit_reverse arrange(.x(x), .en(~lr), .y(pre));
    right_shift shift_bits(.x(pre), .shift(shift), .y(mid));
    bit_reverse order(.x(mid), .en(~lr), .y(y));
endmodule
