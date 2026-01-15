`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2026 18:45:55
// Design Name: 
// Module Name: barrel_shift_tb
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


module barrel_shift_tb;
    reg [7:0] x;
    reg [2:0] shift;
    reg lr;
    wire [7:0] y;
    
    barrel_shift_prepost uut(.x(x), .shift(shift), .lr(lr), .y(y));
    
    initial begin
        x = 10110011;
        lr = 1'b0;
        shift = 3'b000; #50;
        shift = 3'b001; #50;
        shift = 3'b010; #50;
        shift = 3'b011; #50;
        shift = 3'b100; #50;
        shift = 3'b101; #50;
        shift = 3'b110; #50;
        shift = 3'b111; #50;
        
        lr = 1'b1;
        shift = 3'b000; #50;
        shift = 3'b001; #50;
        shift = 3'b010; #50;
        shift = 3'b011; #50;
        shift = 3'b100; #50;
        shift = 3'b101; #50;
        shift = 3'b110; #50;
        shift = 3'b111; #50;

        x = 8'b00000000;
        shift = 3'd3;
        lr = 1'b0; #100;

        x = 8'b11111111;
        shift = 3'd5;
        lr = 1'b1; #100;
    end
endmodule
