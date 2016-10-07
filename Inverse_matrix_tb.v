`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//Group no: 201501072
//Subject : LA
//NMatrixme : Janvi patels
//DMatrixte : 6/10/2016
//NMatrixme of code : Test banch
//Description : input clock is given to test banch
////////////////////////////////////////////////////////////////////////////////

module Inverse_matrix_tb;

	// Inputs
	reg clk;

	// Instantiate the Unit Under Test (UUT)
	Inverse_matrix uut (
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		clk = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

