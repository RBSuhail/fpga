module BRAM_1(
    input clk,
    input [2:0] MX1, MY1,
    input rd_v,
    output [7:0] gauss_data
);
reg [199:0] temp_sumit;
   reg [7:0] kernel [4:0][4:0] = {
       {4, 9, 12, 9, 4},
       {5, 12, 15, 12, 5},
       {2, 4, 5, 4, 2},
       {4, 9, 12, 9, 4},
       {2, 4, 5, 4, 2}};

//    always @(posedge clk or posedge rd_v) begin
       if (rd_v) begin
           temp_sumit <={kernel[4][4], kernel[4][3], kernel[4][2], kernel[4][1], kernel[4][0],
                       kernel[3][4], kernel[3][3], kernel[3][2], kernel[3][1], kernel[3][0],
                       kernel[2][4], kernel[2][3], kernel[2][2], kernel[2][1], kernel[2][0],
                       kernel[1][4], kernel[1][3], kernel[1][2], kernel[1][1], kernel[1][0],
                       kernel[0][4], kernel[0][3], kernel[0][2], kernel[0][1], kernel[0][0]};
    
    
       end
//    end
assign gauss_data= kernel[MX1][MY1][7:0];
endmodule


