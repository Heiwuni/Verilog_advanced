`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/28 14:42:57
// Design Name: 
// Module Name: Seven_Seg_Display
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


module Seven_Seg_Display(
    output reg [6:0] Display,
    input      [3:0] BCD
    );
    //                   abc_defg
    parameter BLANK = 7'b111_1111;
    parameter ZERO  = 7'b000_0001;  //h01
    parameter ONE   = 7'b100_1111;  //h4f
    parameter TWO   = 7'b001_0010;  //h12
    parameter THREE = 7'b000_0110;  //h06
    parameter FOUR  = 7'b100_1100;  //h4c
    parameter FIVE  = 7'b010_0100;  //h24
    parameter SIX   = 7'b010_0000;  //h20
    parameter SEVEN = 7'b000_1111;  //h0f
    parameter EIGHT = 7'b000_0000;  //h00
    parameter NINE  = 7'b000_0100;  //h04
    always @(BCD) begin
        case (BCD)
            0:        Display = ZERO;
            1:        Display = ONE;
            2:        Display = TWO;
            3:        Display = THREE;
            4:        Display = FOUR;
            5:        Display = FIVE;
            6:        Display = SIX;
            7:        Display = SEVEN;
            8:        Display = EIGHT;
            9:        Display = NINE; 
            default:  Display = BLANK;
        endcase
    end
endmodule
