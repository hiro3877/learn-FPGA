`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/08/24 19:08:41
// Design Name: 
// Module Name: top_sim
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


module top_sim();

reg		clk;

reg signed [`InBus]		in_1_1_r;
reg signed [`InBus]		in_1_1_i;
reg signed [`InBus]		in_1_2_r;
reg signed [`InBus]		in_1_2_i;
reg signed [`InBus]		in_1_3_r;
reg signed [`InBus]		in_1_3_i;
reg signed [`InBus]		in_1_4_r;
reg signed [`InBus]		in_1_4_i;
reg signed [`InBus]		in_2_1_r;
reg signed [`InBus]		in_2_1_i;
reg signed [`InBus]		in_2_2_r;
reg signed [`InBus]		in_2_2_i;
reg signed [`InBus]		in_2_3_r;
reg signed [`InBus]		in_2_3_i;
reg signed [`InBus]		in_2_4_r;
reg signed [`InBus]		in_2_4_i;
reg signed [`InBus]		in_3_1_r;
reg signed [`InBus]		in_3_1_i;
reg signed [`InBus]		in_3_2_r;
reg signed [`InBus]		in_3_2_i;
reg signed [`InBus]		in_3_3_r;
reg signed [`InBus]		in_3_3_i;
reg signed [`InBus]		in_3_4_r;
reg signed [`InBus]		in_3_4_i;
reg signed [`InBus]		in_4_1_r;
reg signed [`InBus]		in_4_1_i;
reg signed [`InBus]		in_4_2_r;
reg signed [`InBus]		in_4_2_i;
reg signed [`InBus]		in_4_3_r;
reg signed [`InBus]		in_4_3_i;
reg signed [`InBus]		in_4_4_r;
reg signed [`InBus]		in_4_4_i;

wire signed [`OutBus]		out_1_1_r;
wire signed [`OutBus]		out_1_1_i;
wire signed [`OutBus]		out_1_2_r;
wire signed [`OutBus]		out_1_2_i;
wire signed [`OutBus]		out_1_3_r;
wire signed [`OutBus]		out_1_3_i;
wire signed [`OutBus]		out_1_4_r;
wire signed [`OutBus]		out_1_4_i;
wire signed [`OutBus]		out_2_1_r;
wire signed [`OutBus]		out_2_1_i;
wire signed [`OutBus]		out_2_2_r;
wire signed [`OutBus]		out_2_2_i;
wire signed [`OutBus]		out_2_3_r;
wire signed [`OutBus]		out_2_3_i;
wire signed [`OutBus]		out_2_4_r;
wire signed [`OutBus]		out_2_4_i;
wire signed [`OutBus]		out_3_1_r;
wire signed [`OutBus]		out_3_1_i;
wire signed [`OutBus]		out_3_2_r;
wire signed [`OutBus]		out_3_2_i;
wire signed [`OutBus]		out_3_3_r;
wire signed [`OutBus]		out_3_3_i;
wire signed [`OutBus]		out_3_4_r;
wire signed [`OutBus]		out_3_4_i;
wire signed [`OutBus]		out_4_1_r;
wire signed [`OutBus]		out_4_1_i;
wire signed [`OutBus]		out_4_2_r;
wire signed [`OutBus]		out_4_2_i;
wire signed [`OutBus]		out_4_3_r;
wire signed [`OutBus]		out_4_3_i;
wire signed [`OutBus]		out_4_4_r;
wire signed [`OutBus]		out_4_4_i;

top sim (clk,in_1_1_r,in_1_1_i,in_1_2_r,in_1_2_i,in_1_3_r,in_1_3_i,in_1_4_r,in_1_4_i,in_2_1_r,in_2_1_i,in_2_2_r,in_2_2_i,in_2_3_r,in_2_3_i,in_2_4_r,in_2_4_i,in_3_1_r,in_3_1_i,in_3_2_r,in_3_2_i,in_3_3_r,in_3_3_i,in_3_4_r,in_3_4_i,in_4_1_r,in_4_1_i,in_4_2_r,in_4_2_i,in_4_3_r,in_4_3_i,in_4_4_r,in_4_4_i,out_1_1_r,out_1_1_i,out_1_2_r,out_1_2_i,out_1_3_r,out_1_3_i,out_1_4_r,out_1_4_i,out_2_1_r,out_2_1_i,out_2_2_r,out_2_2_i,out_2_3_r,out_2_3_i,out_2_4_r,out_2_4_i,out_3_1_r,out_3_1_i,out_3_2_r,out_3_2_i,out_3_3_r,out_3_3_i,out_3_4_r,out_3_4_i,out_4_1_r,out_4_1_i,out_4_2_r,out_4_2_i,out_4_3_r,out_4_3_i,out_4_4_r,out_4_4_i);


initial begin
clk <= 1'b0;

in_1_1_r <= 16'sb0000001000000000;
in_1_1_i <= 16'sb0000001000000000;

in_1_2_r <= 16'sb0000001100000000;
in_1_2_i <= 16'sb0000001100000000;

in_1_3_r <= 16'sb0000010000000000;
in_1_3_i <= 16'sb0000010000000000;

in_1_4_r <= 16'sb0000010100000000;
in_1_4_i <= 16'sb0000010100000000;

in_2_1_r <= 16'sb0000001100000000;
in_2_1_i <= 16'sb0000001100000000;

in_2_2_r <= 16'sb0000010000000000;
in_2_2_i <= 16'sb0000010000000000;

in_2_3_r <= 16'sb0000010100000000;
in_2_3_i <= 16'sb0000010100000000;

in_2_4_r <= 16'sb0000011000000000;
in_2_4_i <= 16'sb0000011000000000;

in_3_1_r <= 16'sb0000010000000000;
in_3_1_i <= 16'sb0000010000000000;

in_3_2_r <= 16'sb0000010100000000;
in_3_2_i <= 16'sb0000010100000000;

in_3_3_r <= 16'sb0000011000000000;
in_3_3_i <= 16'sb0000011000000000;

in_3_4_r <= 16'sb0000011100000000;
in_3_4_i <= 16'sb0000011100000000;

in_4_1_r <= 16'sb0000010100000000;
in_4_1_i <= 16'sb0000010100000000;

in_4_2_r <= 16'sb0000011000000000;
in_4_2_i <= 16'sb0000011000000000;

in_4_3_r <= 16'sb0000011100000000;
in_4_3_i <= 16'sb0000011100000000;

in_4_4_r <= 16'sb0000100000000000;
in_4_4_i <= 16'sb0000100000000000;

#100
$finish;

end


always #5 begin
            clk <= ~clk;
        end

endmodule
