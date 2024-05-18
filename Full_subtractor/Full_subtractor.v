`timescale 1ns / 1ps

module Full_subtractor(
    input A,
    input B,
    input Bin,
    output Diff,
    output Bout
    );

assign Diff= A^B^Bin;
assign Bout = (~A&B) | (~A&Bin) |(B&Bin);
endmodule
