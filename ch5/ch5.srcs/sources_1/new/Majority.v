`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/29 13:01:21
// Design Name: 
// Module Name: Majority
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

module Majority_4b (
    output reg Y,
    input  A,B,C,D
);
    always @(A,B,C,D) begin
        case ({A,B,C,D})
            7, 11, 13, 14, 15:    Y=1; 
            default:              Y=0;
        endcase    
    end
endmodule

module Majority #(
    parameter size = 8,
    max = 3,
    majority = 5  //size/2 + 1 >= majority >= size/2
) (
    input    [size-1:0]    Data,
    output   reg           Y
);
    reg      [max-1:0]     count;
    integer                k;
    always @(Data) begin
        count = 0;
        for(k=0;k<size;k=k+1)begin
            if(Data[k]==1) count=count+1;
        end
        Y = (count>=majority);
    end
endmodule