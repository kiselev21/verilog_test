`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.03.2020 13:28:55
// Design Name: 
// Module Name: lb_1tb
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


module lb_1tb(

    );
    reg [9:0] sw;
wire [6:0] hex;
wire [7:0] AN;
lb_1 DUT
(
.sw(sw),
.hex(hex),
.AN(AN)
);
initial begin
sw[9:8]=2'd0;
#400;
sw[9:8]=2'd1;
#400;
sw[9:8]=2'd2;
#400;
sw[9:8]=2'd3;
#400;
$stop;
end
initial begin
sw[3:0]=4'd0;
sw[7:4]=4'd0;
repeat(16) begin
#100;
sw[3:0]=$random();
sw[7:4]=$random();
end
end
endmodule
