`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/29 14:19:18
// Design Name: 
// Module Name: find_first_one
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


module find_first_one(
    output reg [3:0] index_value,
    input     [15:0] A_word,
    input            trigger
    );
    always @(posedge trigger) begin:search_for_1
        for (index_value = 0; index_value<15; index_value=index_value+1) begin
            if (A_word[index_value] == 1) begin
                disable search_for_1;
            end
        end
    end
endmodule
