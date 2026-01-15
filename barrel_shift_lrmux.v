`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2026 18:25:18
// Design Name: 
// Module Name: barrel_shift_lrmux
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


module barrel_shift_lrmux(
    input [7:0] x,
    input [2:0] shift,
    input lr,
    output [7:0] y
    );
    
    wire [7:0] yl, yr;
    
    lshift left(.x(x), .shift(shift), .y(yl));
    rshift right(.x(x), .shift(shift), .y(yr));
    
    mux2_1 lrmux(.x(yr), .y(yl), .s(lr), .m(y));
endmodule
