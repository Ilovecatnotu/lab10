`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2023 08:22:50 PM
// Design Name: 
// Module Name: divide
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



module divide(
    input clock,
    output clk_out, 
    output reg [3:0] an
);
    reg elapsed; //elapsed time 1 second
    reg [27:0] state;
    
    always @ (posedge clock)
        if (state == 100000000) state <= 0;
        else state <= state + 1;
    always @(state)
        if (state == 100000000) elapsed = 1;
        else elapsed = 0;
    assign clk_out = elapsed;
    always @(state)begin
        case(state[15])
        1'b0: an <= 4'b1101;
        1'b1: an <= 4'b1110;
    endcase
    end
endmodule