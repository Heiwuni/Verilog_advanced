`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/11/29 12:29:37
// Design Name: 
// Module Name: tb_Auto_LFSR_ALGO
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


module tb_Auto_LFSR_ALGO;

// Auto_LFSR_ALGO Parameters
parameter PERIOD           = 10          ;      
parameter Length           = 8           ;      
parameter Tap_Coefficient  = 8'b1100_1111;
parameter initial_state    = 8'b1001_001 ;      

// Auto_LFSR_ALGO Inputs
reg   Clock                                = 0 ;
reg   Reset                                = 0 ;

// Auto_LFSR_ALGO Outputs
wire  [1:Length]  Y                        ;    


initial
begin
    forever #(PERIOD/2)  Clock=~Clock;
end


Auto_LFSR_ALGO #(
    .Length          ( Length          ),
    .initial_state   ( initial_state   ),
    .Tap_Coefficient ( Tap_Coefficient ))
 u_Auto_LFSR_ALGO (
    .Clock                   ( Clock             ),
    .Reset                   ( Reset             ),

    .Y                       ( Y      [1:Length] )
);

initial
begin
    Reset = 0;
    #PERIOD
    Reset = 1;
    $finish;
end

endmodule