`timescale 1ns / 1ps

module RCA( A,B,Cin,Sum,Cout);
input [3:0] A,B;
input Cin;
output [3:0] Sum;
output Cout;

wire C1,C2,C3;

full_adder fa0(A[0],B[0],Cin,Sum[0],C1);
full_adder fa1(A[1],B[1],C1,Sum[1],C2);
full_adder fa2(A[2],B[2],C2,Sum[2],C3);
full_adder fa3(A[3],B[3],C3,Sum[3],Cout);

endmodule
