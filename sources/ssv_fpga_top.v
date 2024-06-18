`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.03.2024 10:49:46
// Design Name: 
// Module Name: SSV_FPGA_top
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


module SSV_FPGA(clk,rst,start_p,filtered_image,done);

input clk,rst,start_p;
output done;
output [7:0] filtered_image ;


CONTROL(clk,rst,sop_fait,sop_in,rd_v,MX1,MY1,MX2,MY2,,i,j,fil_image,done );
BOOTH(clk,rst,start,X,Y,valid,Z);

BRAM_1(clk,MX1,MY1,rd_v,gauss_data );
BRAM_2(clk,MX2,MY2,rd_v,image_out ,i,j);
 BRAM_3(clk,i,j,fil_image,last_filter);




// assign filtered_image=(done)?last_filter:0;
endmodule
