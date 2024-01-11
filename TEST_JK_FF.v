`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: Testbench JK Flip Flop
// Designed By: Jemmy Ashirwad Nag
//////////////////////////////////////////////////////////////////////////////////

module TEST_JK_FF;
reg j,k,clk;
wire q,qbar;

JK_FF DUT(.j(j),.k(k),.clk(clk),.q(q),.qbar(qbar));

initial
begin
clk=0;
j=1'b0;
k=1'b0;
force q=1'b1;
#1 release q;
end

always #5 clk=~clk;
always #10 j=~j;
always #20 k=~k;
initial $monitor($time,"j=%b,k=%b,clk=%b,q=%b,qbar=%b",j,k,clk,q,qbar);
endmodule
