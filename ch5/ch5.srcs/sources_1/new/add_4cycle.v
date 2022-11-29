`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/29 14:28:51
// Design Name: 
// Module Name: add_4cycle
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


module add_4cycle(
    output reg [5:0] sum,
    input      [3:0] data,
    input            clk,
                     reset
    );
    always @(posedge clk) begin:add_loop
        if (reset == 1'b1) disable add_loop; else sum <= data;
        @(posedge clk) if (reset == 1'b1) disable add_loop; else sum <= sum+data;
        @(posedge clk) if (reset == 1'b1) disable add_loop; else sum <= sum+data;
        @(posedge clk) if (reset == 1'b1) disable add_loop; else sum <= sum+data;
    end
endmodule
