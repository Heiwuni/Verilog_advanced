`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/29 11:52:55
// Design Name: 
// Module Name: Auto_LFSR_ALGO
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


module Auto_LFSR_ALGO#
(
    parameter                 Length = 8,
                              initial_state = 8'b1001_001,
    parameter [Length:1]      Tap_Coefficient = 8'b1100_1111
)
(
    input                     Clock, Reset,
    output reg [1:Length]     Y
);
    integer                   Cell_ptr;
    always @(posedge Clock) begin
        if(Reset == 1'b0) Y<=initial_state;
        else begin
            for (Cell_ptr=2;Cell_ptr<=Length;Cell_ptr=Cell_ptr+1) begin
                if(Tap_Coefficient[Length-Cell_ptr+1] == 1) Y[Cell_ptr]<=Y[Cell_ptr-1]^Y[Length];
                else Y[Cell_ptr]<=Y[Cell_ptr-1];
                Y[1]<=Y[Length];
            end
        end
    end
endmodule
