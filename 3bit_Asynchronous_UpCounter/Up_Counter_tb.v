`timescale 1ns / 1ps

module Up_Counter_tb();
	reg clk,reset;
	wire [2:0] Q;

//module instantiation 
Up_Counter dut(clk,reset,Q);

//generating clock
	initial begin
		clk = 1; reset = 1;
		#10; clk=1; reset=0;
	end
	
	always begin
	forever #5 clk=~clk;
	end
      
endmodule
