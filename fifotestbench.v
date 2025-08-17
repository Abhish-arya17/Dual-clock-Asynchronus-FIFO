`timescale 1ps/1ps
module fifotestbench;
reg  wreq, wclk, wrst_n,rreq, rclk, rrst_n;
reg [7:0] wdata;
wire [7:0] rdata;
wire wfull;
wire rempty;
async_fifo  f1(wreq,wclk,wrst_n,rreq,rclk,rrst_n,wdata,rdata,wfull,rempty);
initial wclk=1'b0;
initial rclk=1'b0;
always #10 wclk=~wclk;
always #50 rclk=~rclk;
initial
begin
#5 wrst_n=0;rrst_n=0;wdata=8'd4;wreq=1;rreq=1;
#15 wrst_n=1;rrst_n=1;wdata=8'd15;
#10 wdata=8'd19;
#10 wdata=8'd107;
#10 wdata=8'd5;
#10 wdata=8'd8;
#10 wdata=8'd50;
#10 wdata=8'd500;
#10 wdata=8'd67;
#10 wdata=8'd500;
#10 wdata=8'd600;
#10 wdata=8'd700;
#10 wdata=8'd800;
#10 wdata=8'd900;
#10 wdata=8'd1000;

end
endmodule
