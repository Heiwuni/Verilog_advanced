`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/29 13:15:31
// Design Name: 
// Module Name: tb_majority
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


module tb_majority;

//Majority Parameters
parameter PERIOD  = 10;
parameter size = 8,
          max = 3,
          majority = 5; 
parameter clk = 1;

//Majority Inputs
reg [size-1:0] Data;
//Majority Outputs
wire Y;

initial begin
    
end


endmodule
