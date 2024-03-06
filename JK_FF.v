`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: JK Flip Flop
// Designed By: Jemmy Ashirwad Nag
// ModelType: Structural
//////////////////////////////////////////////////////////////////////////////////


module JK_FF(j,k,clk,q,qbar);
input j,k,clk; 
output q,qbar;
wire w1,w2;

//using NAND Latch
nand a1(w1,j,clk,qbar);
nand a2(w2,k,clk,q);
nand n1(q,w1,qbar);
nand n2(qbar,w2,q);

endmodule
