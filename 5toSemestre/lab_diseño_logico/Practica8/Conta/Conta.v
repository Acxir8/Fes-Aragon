module Conta(clk, res, L1, L2);
   
	input clk;
	output[3:0] res;
	
	output[6:0] L1;
	output[6:0] L2;
	
	reg miniA = 1'b1;
	reg miniB = 1'b1;
	reg miniC = 1'b1;
	reg miniD = 1'b1;
	
	reg[6:0] tmp = 7'b000000;
	
	//Parametros para displays
	parameter
	  tmp0 = 4'b0001,
	  tmp1 = 4'b0010,
	  tmp2 = 4'b0011,
	  tmp3 = 4'b0100,
	  tmp4 = 4'b0101,
	  tmp5 = 4'b0110,
	  tmp6 = 4'b0111,
	  tmp7 = 4'b1000,
	  tmp8 = 4'b1001,
	  tmp9 = 4'b1010,
	  tmp10= 4'b1011;
	  
	  
parameter frecuencia = 50000000;
parameter f_out = 10000;
parameter max_f = frecuencia/(2*f_out);

		reg[25:0]c;
		
initial begin
c = 0;
end		
	
	always@(posedge clk)
	  //Reloj
	  begin
			if(c>=500000000)
			c=0;
			
			else 
				begin
				c=c+1;
				end
			//reset de 0 a 9
		   if(miniA== 1'b1 && miniB== 1'b0 && miniC== 1'b0 && miniD== 1'b1)
				begin
					c=0;
					miniA= 1'b1;
					miniB= 1'b1;
					miniC= 1'b1;
					miniD= 1'b1;
				end
			//numeracion binaria
			if(c%16==1&& miniA== 1'b0) miniA = 1'b1;
			else if(c%16==1 && miniA == 1'b1) miniA = 1'b0;
			
			if(c%16==1&& miniB== 1'b0) miniB = 1'b1;
			else if(c%16==1 && miniB == 1'b1) miniB = 1'b0;
			
			if(c%16==1&& miniC== 1'b0) miniC = 1'b1;
			else if(c%16==1 && miniC == 1'b1) miniC = 1'b0;
			
			if(c%16==1&& miniD== 1'b0) miniD = 1'b1;
			else if(c%16==1 && miniD == 1'b1) miniD = 1'b0;
		 
		   //Case para displays 
	   case (res)
	      tmp0: tmp = 7'b1111110;
	      tmp1: tmp = 7'b0110000;
	      tmp2: tmp = 7'b1101101;
	      tmp3: tmp = 7'b1111001;
	      tmp4: tmp = 7'b0110011;
	      tmp5: tmp = 7'b1011011;
	      tmp6: tmp = 7'b1011111;
	      tmp7: tmp = 7'b1110000;
	      tmp8: tmp = 7'b1111111;
	      tmp9: tmp = 7'b1111011;
			
		endcase
		end	
					assign res[3] = miniA;
					assign res[2] = miniB;
					assign res[1] = miniC;
					assign res[0] = miniD;
					//assign para displays
					assign L1 = tmp;
					assign L2 = ~tmp;

endmodule		