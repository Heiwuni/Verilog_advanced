`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/29 01:06:41
// Design Name: 
// Module Name: AUTO_LSFR_RTL
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


module AUTO_LSFR_RTL#
(
    parameter                 Length = 8,
                              initial_state = 8'b1001_001,
    parameter [Length:1]      Tap_Coefficient = 8'b1100_1111
)
(
    input                     clock, reset_b,
    output reg [1:Length]     Y
);
    always @(posedge clock) begin
        if(reset_b == 1'b0) Y <= initial_state;
        else begin
            Y[1] <= Y[8];
            Y[2] <= Tap_Coefficient[7]?Y[1]^Y[8]:Y[1];
            Y[3] <= Tap_Coefficient[6]?Y[2]^Y[8]:Y[2];
            Y[4] <= Tap_Coefficient[5]?Y[3]^Y[8]:Y[3];
            Y[5] <= Tap_Coefficient[4]?Y[4]^Y[8]:Y[4];
            Y[6] <= Tap_Coefficient[3]?Y[5]^Y[8]:Y[5];
            Y[7] <= Tap_Coefficient[2]?Y[6]^Y[8]:Y[6];
            Y[8] <= Tap_Coefficient[1]?Y[7]^Y[8]:Y[7];
        end
    end
endmodule
