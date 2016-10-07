`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
//Group no: 201501072
//Subject : LA
//NMatrixme : Janvi patels
//DMatrixte : 6/10/2016
//NMatrixme of code : Inverse of a Matrix
//Description : This code is about Matrixn inverter. Using logic ( Matrix A * I = I * Inverse A )
////////////////////////////////////////////////////////////////////////////////

module Inverse_matrix(clk);

input clk;		//Giving clock Matrix input 
real Matrix[0:4][0:9];		//taking 2-D Matrix of 5*10 Matrixs reMatrixl dMatrixtMatrixtype

always@(posedge clk)		//Value will change at the positive edge of the clock
	
begin

		//assigning value to the Matrix (5*10)
		Matrix[0][0]=16'd1;
		Matrix[0][1]=16'd3;
		Matrix[0][2]=16'd1;
		Matrix[0][3]=16'd0;
		Matrix[0][4]=16'd0;
		Matrix[0][5]=16'd1;
		Matrix[0][6]=16'd0;
		Matrix[0][7]=16'd0;
		Matrix[0][8]=16'd0;
		Matrix[0][9]=16'd0;
		
		Matrix[1][0]=16'd0;
	   Matrix[1][1]=16'd1;
      Matrix[1][2]=16'd3;
      Matrix[1][3]=16'd1;
      Matrix[1][4]=16'd0;
		Matrix[1][5]=16'd0;
		Matrix[1][6]=16'd1;
		Matrix[1][7]=16'd0;
		Matrix[1][8]=16'd0;
		Matrix[1][9]=16'd0;

		Matrix[2][0]=16'd0;
      Matrix[2][1]=16'd0;
		Matrix[2][2]=16'd1;
		Matrix[2][3]=16'd3;
		Matrix[2][4]=16'd1;
		Matrix[2][5]=16'd0;
		Matrix[2][6]=16'd0;
		Matrix[2][7]=16'd1;
		Matrix[2][8]=16'd0;
		Matrix[2][9]=16'd0;
		
		Matrix[3][0]=16'd0;
		Matrix[3][1]=16'd0;
		Matrix[3][2]=16'd0;
		Matrix[3][3]=16'd1;
		Matrix[3][4]=16'd3;
		Matrix[3][5]=16'd0;
		Matrix[3][6]=16'd0;
		Matrix[3][7]=16'd0;
		Matrix[3][8]=16'd1;
		Matrix[3][9]=16'd0;
		
		Matrix[4][0]=16'd0;
		Matrix[4][1]=16'd0;
		Matrix[4][2]=16'd0;
		Matrix[4][3]=16'd0;
		Matrix[4][4]=16'd1;
		Matrix[4][5]=16'd0;
		Matrix[4][6]=16'd0;
		Matrix[4][7]=16'd0;
		Matrix[4][8]=16'd0;
		Matrix[4][9]=16'd1;



/*logic for code starts from here*/

		//logic for making EF starts from here 
			
		
		if(Matrix[0][0]!=0) //if matrix[0][0] is not equal to zero then do this
		
		begin
				//dividing every elemnet of 0th row by matrix[0][0] to make 1st pivot
				Matrix[0][0]=Matrix[0][0]/Matrix[0][0];
				Matrix[0][1]=Matrix[0][1]/Matrix[0][0];
				Matrix[0][2]=Matrix[0][2]/Matrix[0][0];
				Matrix[0][3]=Matrix[0][3]/Matrix[0][0];
				Matrix[0][4]=Matrix[0][4]/Matrix[0][0];
				Matrix[0][5]=Matrix[0][5]/Matrix[0][0];
				Matrix[0][6]=Matrix[0][6]/Matrix[0][0];
				Matrix[0][7]=Matrix[0][7]/Matrix[0][0];
				Matrix[0][8]=Matrix[0][8]/Matrix[0][0];
				Matrix[0][9]=Matrix[0][9]/Matrix[0][0];
				
				//R2=R2+(-R1*R2)
				Matrix[1][0]=Matrix[1][0]+(-Matrix[1][0]*Matrix[0][0]);
				Matrix[1][1]=Matrix[1][1]+(-Matrix[1][0]*Matrix[0][1]);
				Matrix[1][2]=Matrix[1][2]+(-Matrix[1][0]*Matrix[0][2]);
				Matrix[1][3]=Matrix[1][3]+(-Matrix[1][0]*Matrix[0][3]);
				Matrix[1][4]=Matrix[1][4]+(-Matrix[1][0]*Matrix[0][4]);
				Matrix[1][5]=Matrix[1][5]+(-Matrix[1][0]*Matrix[0][5]);
				Matrix[1][6]=Matrix[1][6]+(-Matrix[1][0]*Matrix[0][6]);
				Matrix[1][7]=Matrix[1][7]+(-Matrix[1][0]*Matrix[0][7]);
				Matrix[1][8]=Matrix[1][8]+(-Matrix[1][0]*Matrix[0][8]);
				Matrix[1][9]=Matrix[1][9]+(-Matrix[1][0]*Matrix[0][9]);
				
				//R3=R3+(-R1*R3)
				Matrix[2][0]=Matrix[2][0]+(-Matrix[2][0]*Matrix[0][0]);
				Matrix[2][1]=Matrix[2][1]+(-Matrix[2][0]*Matrix[0][1]);
				Matrix[2][2]=Matrix[2][2]+(-Matrix[2][0]*Matrix[0][2]);
				Matrix[2][3]=Matrix[2][3]+(-Matrix[2][0]*Matrix[0][3]);
				Matrix[2][4]=Matrix[2][4]+(-Matrix[2][0]*Matrix[0][4]);
				Matrix[2][5]=Matrix[2][5]+(-Matrix[2][0]*Matrix[0][5]);
				Matrix[2][6]=Matrix[2][6]+(-Matrix[2][0]*Matrix[0][6]);
				Matrix[2][7]=Matrix[2][7]+(-Matrix[2][0]*Matrix[0][7]);
				Matrix[2][8]=Matrix[2][8]+(-Matrix[2][0]*Matrix[0][8]);
				Matrix[2][9]=Matrix[2][9]+(-Matrix[2][0]*Matrix[0][9]);
				
				//R4=R4+(-R1*R4)
				Matrix[3][0]=Matrix[3][0]+(-Matrix[3][0]*Matrix[0][0]);
				Matrix[3][1]=Matrix[3][1]+(-Matrix[3][0]*Matrix[0][1]);
				Matrix[3][2]=Matrix[3][2]+(-Matrix[3][0]*Matrix[0][2]);
				Matrix[3][3]=Matrix[3][3]+(-Matrix[3][0]*Matrix[0][3]);
				Matrix[3][4]=Matrix[3][4]+(-Matrix[3][0]*Matrix[0][4]);
				Matrix[3][5]=Matrix[3][5]+(-Matrix[3][0]*Matrix[0][5]);
				Matrix[3][6]=Matrix[3][6]+(-Matrix[3][0]*Matrix[0][6]);
				Matrix[3][7]=Matrix[3][7]+(-Matrix[3][0]*Matrix[0][7]);
				Matrix[3][8]=Matrix[3][8]+(-Matrix[3][0]*Matrix[0][8]);
				Matrix[3][9]=Matrix[3][9]+(-Matrix[3][0]*Matrix[0][9]);
				
				//R5=R5+(-R1*R5)
				Matrix[4][0]=Matrix[4][0]+(-Matrix[4][0]*Matrix[0][0]);
				Matrix[4][1]=Matrix[4][1]+(-Matrix[4][0]*Matrix[0][1]);
				Matrix[4][2]=Matrix[4][2]+(-Matrix[4][0]*Matrix[0][2]);
				Matrix[4][3]=Matrix[4][3]+(-Matrix[4][0]*Matrix[0][3]);
				Matrix[4][4]=Matrix[4][4]+(-Matrix[4][0]*Matrix[0][4]);
				Matrix[4][5]=Matrix[4][5]+(-Matrix[4][0]*Matrix[0][5]);
				Matrix[4][6]=Matrix[4][6]+(-Matrix[4][0]*Matrix[0][6]);
				Matrix[4][7]=Matrix[4][7]+(-Matrix[4][0]*Matrix[0][7]);
				Matrix[4][8]=Matrix[4][8]+(-Matrix[4][0]*Matrix[0][8]);
				Matrix[4][9]=Matrix[4][9]+(-Matrix[4][0]*Matrix[0][9]);

		end
		
		
		
		if(Matrix[1][1]!=0) 	 //if matrix[1][1] is not equal to zero then do this

		begin
		
					//dividing every elemnet of 1st row by matrix[1][1] to make 2nd pivot
					Matrix[1][0]=Matrix[1][0]/Matrix[1][1];
					Matrix[1][1]=Matrix[1][1]/Matrix[1][1];
					Matrix[1][2]=Matrix[1][2]/Matrix[1][1];
					Matrix[1][3]=Matrix[1][3]/Matrix[1][1];
					Matrix[1][4]=Matrix[1][4]/Matrix[1][1];
					Matrix[1][5]=Matrix[1][5]/Matrix[1][1];
					Matrix[1][6]=Matrix[1][6]/Matrix[1][1];
					Matrix[1][7]=Matrix[1][7]/Matrix[1][1];
					Matrix[1][8]=Matrix[1][8]/Matrix[1][1];
					Matrix[1][9]=Matrix[1][9]/Matrix[1][1];
					
					//R3=R3+(-R2*R3)
					Matrix[2][0]=Matrix[2][0]+(-Matrix[2][1]*Matrix[1][0]);
					Matrix[2][1]=Matrix[2][1]+(-Matrix[2][1]*Matrix[1][1]);
					Matrix[2][2]=Matrix[2][2]+(-Matrix[2][1]*Matrix[1][2]);
					Matrix[2][3]=Matrix[2][3]+(-Matrix[2][1]*Matrix[1][3]);
					Matrix[2][4]=Matrix[2][4]+(-Matrix[2][1]*Matrix[1][4]);
					Matrix[2][5]=Matrix[2][5]+(-Matrix[2][1]*Matrix[1][5]);
					Matrix[2][6]=Matrix[2][6]+(-Matrix[2][1]*Matrix[1][6]);
					Matrix[2][7]=Matrix[2][7]+(-Matrix[2][1]*Matrix[1][7]);
					Matrix[2][8]=Matrix[2][8]+(-Matrix[2][1]*Matrix[1][8]);
					Matrix[2][9]=Matrix[2][9]+(-Matrix[2][1]*Matrix[1][9]);
					
					//R4=R4+(-R2*R4)
					Matrix[3][0]=Matrix[3][0]+(-Matrix[3][1]*Matrix[1][0]);
					Matrix[3][1]=Matrix[3][1]+(-Matrix[3][1]*Matrix[1][1]);
					Matrix[3][2]=Matrix[3][2]+(-Matrix[3][1]*Matrix[1][2]);
					Matrix[3][3]=Matrix[3][3]+(-Matrix[3][1]*Matrix[1][3]);
					Matrix[3][4]=Matrix[3][4]+(-Matrix[3][1]*Matrix[1][4]);
					Matrix[3][5]=Matrix[3][5]+(-Matrix[3][1]*Matrix[1][5]);
					Matrix[3][6]=Matrix[3][6]+(-Matrix[3][1]*Matrix[1][6]);
					Matrix[3][7]=Matrix[3][7]+(-Matrix[3][1]*Matrix[1][7]);
					Matrix[3][8]=Matrix[3][8]+(-Matrix[3][1]*Matrix[1][8]);
					Matrix[3][9]=Matrix[3][9]+(-Matrix[3][1]*Matrix[1][9]);
				
					//R5=R5+(-R2*R5)
					Matrix[4][0]=Matrix[4][0]+(-Matrix[4][1]*Matrix[1][0]);
					Matrix[4][1]=Matrix[4][1]+(-Matrix[4][1]*Matrix[1][1]);
					Matrix[4][2]=Matrix[4][2]+(-Matrix[4][1]*Matrix[1][2]);
					Matrix[4][3]=Matrix[4][3]+(-Matrix[4][1]*Matrix[1][3]);
					Matrix[4][4]=Matrix[4][4]+(-Matrix[4][1]*Matrix[1][4]);
					Matrix[4][5]=Matrix[4][5]+(-Matrix[4][1]*Matrix[1][5]);
					Matrix[4][6]=Matrix[4][6]+(-Matrix[4][1]*Matrix[1][6]);
					Matrix[4][7]=Matrix[4][7]+(-Matrix[4][1]*Matrix[1][7]);
					Matrix[4][8]=Matrix[4][8]+(-Matrix[4][1]*Matrix[1][8]);
					Matrix[4][9]=Matrix[4][9]+(-Matrix[4][1]*Matrix[1][9]);
		end
		
		if(Matrix[2][2]!=0)		//if matrix[2][2] is not equal to zero then do this
		begin
			
					//dividing every elemnet of 2nd row by matrix[2][2] to make 3rd pivot
					Matrix[2][0]=Matrix[2][0]/Matrix[2][2];
					Matrix[2][1]=Matrix[2][1]/Matrix[2][2];
					Matrix[2][2]=Matrix[2][2]/Matrix[2][2];
					Matrix[2][3]=Matrix[2][3]/Matrix[2][2];
					Matrix[2][4]=Matrix[2][4]/Matrix[2][2];
					Matrix[2][5]=Matrix[2][5]/Matrix[2][2];
					Matrix[2][6]=Matrix[2][6]/Matrix[2][2];
					Matrix[2][7]=Matrix[2][7]/Matrix[2][2];
					Matrix[2][8]=Matrix[2][8]/Matrix[2][2];
					Matrix[2][9]=Matrix[2][9]/Matrix[2][2];
					
					//R4=R4+(-R3*R4)
					Matrix[3][0]=Matrix[3][0]+(-Matrix[3][2]*Matrix[2][0]);
					Matrix[3][1]=Matrix[3][1]+(-Matrix[3][2]*Matrix[2][1]);
					Matrix[3][2]=Matrix[3][2]+(-Matrix[3][2]*Matrix[2][2]);
					Matrix[3][3]=Matrix[3][3]+(-Matrix[3][2]*Matrix[2][3]);
					Matrix[3][4]=Matrix[3][4]+(-Matrix[3][2]*Matrix[2][4]);
					Matrix[3][5]=Matrix[3][5]+(-Matrix[3][2]*Matrix[2][5]);
					Matrix[3][6]=Matrix[3][6]+(-Matrix[3][2]*Matrix[2][6]);
					Matrix[3][7]=Matrix[3][7]+(-Matrix[3][2]*Matrix[2][7]);
					Matrix[3][8]=Matrix[3][8]+(-Matrix[3][2]*Matrix[2][8]);
					Matrix[3][9]=Matrix[3][9]+(-Matrix[3][2]*Matrix[2][9]);
					
					//R5=R5+(-R3*R5)
					Matrix[4][0]=Matrix[4][0]+(-Matrix[4][2]*Matrix[2][0]);
					Matrix[4][1]=Matrix[4][1]+(-Matrix[4][2]*Matrix[2][1]);
					Matrix[4][2]=Matrix[4][2]+(-Matrix[4][2]*Matrix[2][2]);
					Matrix[4][3]=Matrix[4][3]+(-Matrix[4][2]*Matrix[2][3]);
					Matrix[4][4]=Matrix[4][4]+(-Matrix[4][2]*Matrix[2][4]);
					Matrix[4][5]=Matrix[4][5]+(-Matrix[4][2]*Matrix[2][5]);
					Matrix[4][6]=Matrix[4][6]+(-Matrix[4][2]*Matrix[2][6]);
					Matrix[4][7]=Matrix[4][7]+(-Matrix[4][2]*Matrix[2][7]);
					Matrix[4][8]=Matrix[4][8]+(-Matrix[4][2]*Matrix[2][8]);
					Matrix[4][9]=Matrix[4][9]+(-Matrix[4][2]*Matrix[2][9]);
		end
		
		
		if(Matrix[3][3]!=0)		//if matrix[3][3] is not equal to zero then do this
		begin
		
					//dividing every elemnet of 4th row by matrix[3][3] to make 3rd pivot
					Matrix[3][0]=Matrix[3][0]/Matrix[3][3];
					Matrix[3][1]=Matrix[3][1]/Matrix[3][3];
					Matrix[3][2]=Matrix[3][2]/Matrix[3][3];
					Matrix[3][3]=Matrix[3][3]/Matrix[3][3];
					Matrix[3][4]=Matrix[3][4]/Matrix[3][3];
					Matrix[3][5]=Matrix[3][5]/Matrix[3][3];
					Matrix[3][6]=Matrix[3][6]/Matrix[3][3];
					Matrix[3][7]=Matrix[3][7]/Matrix[3][3];
					Matrix[3][8]=Matrix[3][8]/Matrix[3][3];
					Matrix[3][9]=Matrix[3][9]/Matrix[3][3];
					
					//R5=R5+(-R4*R5)
					Matrix[4][0]=Matrix[4][0]+(-Matrix[4][3]*Matrix[3][0]);
					Matrix[4][1]=Matrix[4][1]+(-Matrix[4][3]*Matrix[3][1]);
					Matrix[4][2]=Matrix[4][2]+(-Matrix[4][3]*Matrix[3][2]);
					Matrix[4][3]=Matrix[4][3]+(-Matrix[4][3]*Matrix[3][3]);
					Matrix[4][4]=Matrix[4][4]+(-Matrix[4][3]*Matrix[3][4]);
					Matrix[4][5]=Matrix[4][5]+(-Matrix[4][3]*Matrix[3][5]);
					Matrix[4][6]=Matrix[4][6]+(-Matrix[4][3]*Matrix[3][6]);
					Matrix[4][7]=Matrix[4][7]+(-Matrix[4][3]*Matrix[3][7]);
					Matrix[4][8]=Matrix[4][8]+(-Matrix[4][3]*Matrix[3][8]);
					Matrix[4][9]=Matrix[4][9]+(-Matrix[4][3]*Matrix[3][9]);
		end
		
		if(Matrix[4][4]!=0)//if matrix[4][4] is not equal to zero then do this
		begin
		
					//dividing every elemnet of 5th row by matrix[4][4] to make 4th pivot
					Matrix[4][0]=Matrix[4][0]/Matrix[4][4];
					Matrix[4][1]=Matrix[4][1]/Matrix[4][4];
					Matrix[4][2]=Matrix[4][2]/Matrix[4][4];
					Matrix[4][3]=Matrix[4][3]/Matrix[4][4];
					Matrix[4][4]=Matrix[4][4]/Matrix[4][4];
					Matrix[4][5]=Matrix[4][5]/Matrix[4][4];
					Matrix[4][6]=Matrix[4][6]/Matrix[4][4];
					Matrix[4][7]=Matrix[4][7]/Matrix[4][4];
					Matrix[4][8]=Matrix[4][8]/Matrix[4][4];
					Matrix[4][9]=Matrix[4][9]/Matrix[4][4];
		end
		
		//our EF form is ready now we have to make RREF form
		
		Matrix[0][0]=Matrix[0][0]+(-Matrix[0][1]*Matrix[1][0]);
		Matrix[0][1]=Matrix[0][1]+(-Matrix[0][1]*Matrix[1][1]);
		Matrix[0][2]=Matrix[0][2]+(-Matrix[0][1]*Matrix[1][2]);
		Matrix[0][3]=Matrix[0][3]+(-Matrix[0][1]*Matrix[1][3]);
		Matrix[0][4]=Matrix[0][4]+(-Matrix[0][1]*Matrix[1][4]);
		Matrix[0][5]=Matrix[0][5]+(-Matrix[0][1]*Matrix[1][5]);
		Matrix[0][6]=Matrix[0][6]+(-Matrix[0][1]*Matrix[1][6]);
		Matrix[0][7]=Matrix[0][7]+(-Matrix[0][1]*Matrix[1][7]);
		Matrix[0][8]=Matrix[0][8]+(-Matrix[0][1]*Matrix[1][8]);
		Matrix[0][9]=Matrix[0][9]+(-Matrix[0][1]*Matrix[1][9]);
		
		Matrix[1][0]=Matrix[1][0]+(-Matrix[1][2]*Matrix[2][0]);
		Matrix[1][1]=Matrix[1][1]+(-Matrix[1][2]*Matrix[2][1]);
		Matrix[1][2]=Matrix[1][2]+(-Matrix[1][2]*Matrix[2][2]);
		Matrix[1][3]=Matrix[1][3]+(-Matrix[1][2]*Matrix[2][3]);
		Matrix[1][4]=Matrix[1][4]+(-Matrix[1][2]*Matrix[2][4]);
		Matrix[1][5]=Matrix[1][5]+(-Matrix[1][2]*Matrix[2][5]);
		Matrix[1][6]=Matrix[1][6]+(-Matrix[1][2]*Matrix[2][6]);
		Matrix[1][7]=Matrix[1][7]+(-Matrix[1][2]*Matrix[2][7]);
		Matrix[1][8]=Matrix[1][8]+(-Matrix[1][2]*Matrix[2][8]);
		Matrix[1][9]=Matrix[1][9]+(-Matrix[1][2]*Matrix[2][9]);
		
		Matrix[0][0]=Matrix[0][0]+(-Matrix[0][2]*Matrix[2][0]);
		Matrix[0][1]=Matrix[0][1]+(-Matrix[0][2]*Matrix[2][1]);
		Matrix[0][2]=Matrix[0][2]+(-Matrix[0][2]*Matrix[2][2]);
		Matrix[0][3]=Matrix[0][3]+(-Matrix[0][2]*Matrix[2][3]);
		Matrix[0][4]=Matrix[0][4]+(-Matrix[0][2]*Matrix[2][4]);
		Matrix[0][5]=Matrix[0][5]+(-Matrix[0][2]*Matrix[2][5]);
		Matrix[0][6]=Matrix[0][6]+(-Matrix[0][2]*Matrix[2][6]);
		Matrix[0][7]=Matrix[0][7]+(-Matrix[0][2]*Matrix[2][7]);
		Matrix[0][8]=Matrix[0][8]+(-Matrix[0][2]*Matrix[2][8]);
		Matrix[0][9]=Matrix[0][9]+(-Matrix[0][2]*Matrix[2][9]);
		
		Matrix[0][0]=Matrix[0][0]+(-Matrix[0][3]*Matrix[3][0]);
		Matrix[0][1]=Matrix[0][1]+(-Matrix[0][3]*Matrix[3][1]);
		Matrix[0][2]=Matrix[0][2]+(-Matrix[0][3]*Matrix[3][2]);
		Matrix[0][3]=Matrix[0][3]+(-Matrix[0][3]*Matrix[3][3]);
		Matrix[0][4]=Matrix[0][4]+(-Matrix[0][3]*Matrix[3][4]);
		Matrix[0][5]=Matrix[0][5]+(-Matrix[0][3]*Matrix[3][5]);
		Matrix[0][6]=Matrix[0][6]+(-Matrix[0][3]*Matrix[3][6]);
		Matrix[0][7]=Matrix[0][7]+(-Matrix[0][3]*Matrix[3][7]);
		Matrix[0][8]=Matrix[0][8]+(-Matrix[0][3]*Matrix[3][8]);
		Matrix[0][9]=Matrix[0][9]+(-Matrix[0][3]*Matrix[3][9]);
		
		Matrix[1][0]=Matrix[1][0]+(-Matrix[1][3]*Matrix[3][0]);
		Matrix[1][1]=Matrix[1][1]+(-Matrix[1][3]*Matrix[3][1]);
		Matrix[1][2]=Matrix[1][2]+(-Matrix[1][3]*Matrix[3][2]);
		Matrix[1][3]=Matrix[1][3]+(-Matrix[1][3]*Matrix[3][3]);
		Matrix[1][4]=Matrix[1][4]+(-Matrix[1][3]*Matrix[3][4]);
		Matrix[1][5]=Matrix[1][5]+(-Matrix[1][3]*Matrix[3][5]);
		Matrix[1][6]=Matrix[1][6]+(-Matrix[1][3]*Matrix[3][6]);
		Matrix[1][7]=Matrix[1][7]+(-Matrix[1][3]*Matrix[3][7]);
		Matrix[1][8]=Matrix[1][8]+(-Matrix[1][3]*Matrix[3][8]);
		Matrix[1][9]=Matrix[1][9]+(-Matrix[1][3]*Matrix[3][9]);
		
		Matrix[2][0]=Matrix[2][0]+(-Matrix[2][3]*Matrix[3][0]);
		Matrix[2][1]=Matrix[2][1]+(-Matrix[2][3]*Matrix[3][1]);
		Matrix[2][2]=Matrix[2][2]+(-Matrix[2][3]*Matrix[3][2]);
		Matrix[2][3]=Matrix[2][3]+(-Matrix[2][3]*Matrix[3][3]);
		Matrix[2][4]=Matrix[2][4]+(-Matrix[2][3]*Matrix[3][4]);
		Matrix[2][5]=Matrix[2][5]+(-Matrix[2][3]*Matrix[3][5]);
		Matrix[2][6]=Matrix[2][6]+(-Matrix[2][3]*Matrix[3][6]);
		Matrix[2][7]=Matrix[2][7]+(-Matrix[2][3]*Matrix[3][7]);
		Matrix[2][8]=Matrix[2][8]+(-Matrix[2][3]*Matrix[3][8]);
		Matrix[2][9]=Matrix[2][9]+(-Matrix[2][3]*Matrix[3][9]);
				
		Matrix[0][0]=Matrix[0][0]+(-Matrix[0][4]*Matrix[4][0]);
		Matrix[0][1]=Matrix[0][1]+(-Matrix[0][4]*Matrix[4][1]);
		Matrix[0][2]=Matrix[0][2]+(-Matrix[0][4]*Matrix[4][2]);
		Matrix[0][3]=Matrix[0][3]+(-Matrix[0][4]*Matrix[4][3]);
		Matrix[0][4]=Matrix[0][4]+(-Matrix[0][4]*Matrix[4][4]);
		Matrix[0][5]=Matrix[0][5]+(-Matrix[0][4]*Matrix[4][5]);
		Matrix[0][6]=Matrix[0][6]+(-Matrix[0][4]*Matrix[4][6]);
		Matrix[0][7]=Matrix[0][7]+(-Matrix[0][4]*Matrix[4][7]);
		Matrix[0][8]=Matrix[0][8]+(-Matrix[0][4]*Matrix[4][8]);
		Matrix[0][9]=Matrix[0][9]+(-Matrix[0][4]*Matrix[4][9]);
		
		Matrix[1][0]=Matrix[1][0]+(-Matrix[1][4]*Matrix[4][0]);
		Matrix[1][1]=Matrix[1][1]+(-Matrix[1][4]*Matrix[4][1]);
		Matrix[1][2]=Matrix[1][2]+(-Matrix[1][4]*Matrix[4][2]);
		Matrix[1][3]=Matrix[1][3]+(-Matrix[1][4]*Matrix[4][3]);
		Matrix[1][4]=Matrix[1][4]+(-Matrix[1][4]*Matrix[4][4]);
		Matrix[1][5]=Matrix[1][5]+(-Matrix[1][4]*Matrix[4][5]);
		Matrix[1][6]=Matrix[1][6]+(-Matrix[1][4]*Matrix[4][6]);
		Matrix[1][7]=Matrix[1][7]+(-Matrix[1][4]*Matrix[4][7]);
		Matrix[1][8]=Matrix[1][8]+(-Matrix[1][4]*Matrix[4][8]);
		Matrix[1][9]=Matrix[1][9]+(-Matrix[1][4]*Matrix[4][9]);
		
		Matrix[2][0]=Matrix[2][0]+(-Matrix[2][4]*Matrix[4][0]);
		Matrix[2][1]=Matrix[2][1]+(-Matrix[2][4]*Matrix[4][1]);
		Matrix[2][2]=Matrix[2][2]+(-Matrix[2][4]*Matrix[4][2]);
		Matrix[2][3]=Matrix[2][3]+(-Matrix[2][4]*Matrix[4][3]);
		Matrix[2][4]=Matrix[2][4]+(-Matrix[2][4]*Matrix[4][4]);
		Matrix[2][5]=Matrix[2][5]+(-Matrix[2][4]*Matrix[4][5]);
		Matrix[2][6]=Matrix[2][6]+(-Matrix[2][4]*Matrix[4][6]);
		Matrix[2][7]=Matrix[2][7]+(-Matrix[2][4]*Matrix[4][7]);
		Matrix[2][8]=Matrix[2][8]+(-Matrix[2][4]*Matrix[4][8]);
		Matrix[2][9]=Matrix[2][9]+(-Matrix[2][4]*Matrix[4][9]);
		
		Matrix[3][0]=Matrix[3][0]+(-Matrix[3][4]*Matrix[4][0]);
		Matrix[3][1]=Matrix[3][1]+(-Matrix[3][4]*Matrix[4][1]);
		Matrix[3][2]=Matrix[3][2]+(-Matrix[3][4]*Matrix[4][2]);
		Matrix[3][3]=Matrix[3][3]+(-Matrix[3][4]*Matrix[4][3]);
		Matrix[3][4]=Matrix[3][4]+(-Matrix[3][4]*Matrix[4][4]);
		Matrix[3][5]=Matrix[3][5]+(-Matrix[3][4]*Matrix[4][5]);
		Matrix[3][6]=Matrix[3][6]+(-Matrix[3][4]*Matrix[4][6]);
		Matrix[3][7]=Matrix[3][7]+(-Matrix[3][4]*Matrix[4][7]);
		Matrix[3][8]=Matrix[3][8]+(-Matrix[3][4]*Matrix[4][8]);
		Matrix[3][9]=Matrix[3][9]+(-Matrix[3][4]*Matrix[4][9]);
		
		//our matrix of 5*10 is in form of I*inverse of A 
		
		
		$display("Invert of matrix is :");	//displaying inverse of matrix
				
		//first row of inverse of matrix
		$write("%f	",Matrix[0][5]);
		$write("%f	",Matrix[0][6]);
		$write("%f	",Matrix[0][7]);
		$write("%f	",Matrix[0][8]);
		$display("%f	",Matrix[0][9]);
		
		//Second row of inverse of matrix
		$write("%f	",Matrix[1][5]);
		$write("%f	",Matrix[1][6]);
		$write("%f	",Matrix[1][7]);
		$write("%f	",Matrix[1][8]);
		$display("%f	",Matrix[1][9]);
		
		//Third row of inverse of matrix
		$write("%f	",Matrix[2][5]);
		$write("%f	",Matrix[2][6]);
		$write("%f	",Matrix[2][7]);
		$write("%f	",Matrix[2][8]);
		$display("%f	",Matrix[2][9]);
		
		//fourth row of inverse of matrix
		$write("%f	",Matrix[3][5]);
		$write("%f	",Matrix[3][6]);
		$write("%f	",Matrix[3][7]);
		$write("%f	",Matrix[3][8]);
		$display("%f	",Matrix[3][9]);
		
		//fifth row of inverse of matrix
		$write("%f	",Matrix[4][5]);
		$write("%f	",Matrix[4][6]);
		$write("%f	",Matrix[4][7]);
		$write("%f	",Matrix[4][8]);
		$display("%f	",Matrix[4][9]);
		
end

endmodule
