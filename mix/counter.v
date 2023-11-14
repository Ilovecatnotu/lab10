`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2023 08:24:16 PM
// Design Name: 
// Module Name: counter
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


module counter(
    input clk_in,
    input sw,
    output reg[3:0] first,
    output reg[3:0] second
);
    initial first = 4'b0000;
    initial second = 4'b0000;
//    reg count_for_first = 0;
    
    always @(posedge clk_in)
        if (sw) begin
            first = 4'b0000;
            second = 4'b0000;
        end
        else if (first != 4'b1001)
            first <= first + 4'b0001;
        else if (second == 4'b0101) begin
            second <= 4'b0000;
            first = 4'b0000;
        end
        else if (first == 4'b1001) begin
            second = second + 4'b0001;
            first = 4'b0000;
        end
endmodule
