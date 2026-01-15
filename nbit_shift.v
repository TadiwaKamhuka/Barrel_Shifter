`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2026 13:26:54
// Design Name: 
// Module Name: nbit_shift
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


module nbit_shift 
    #(parameter N = 4)
    (
    input [(2**N)-1:0] x,
    input [N-1:0] shift,
    input lr,
    output [(2**N)-1:0] y
    );
    
    wire [(2**N)-1:0] yl, yr;
    
    lshift #(.N(4)) left(.x(x), .shift(shift), .y(yl));
    rshift #(.N(4)) right(.x(x), .shift(shift), .y(yr));
    
    mux2_1 #(.N(4)) lrmux(.x(yr), .y(yl), .s(lr), .m(y));
endmodule
