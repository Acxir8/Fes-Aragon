module semaforo(clk, semaforoRojo, semaforoAmarillo, semaforoVerde);

	input clk;
	output reg semaforoVerde;
	output reg semaforoAmarillo;
	output reg semaforoRojo;
	
	reg [5:0] c=6'b000000;
	
	always@ (posedge clk)
		begin
			if(c>=50)
			c=0;
			else	
				begin
					c=c+1;
				end
		end
		
	always@ (posedge clk)
		begin 
			if(c>=0&&c<=20)
				begin 
					semaforoVerde=1'b1;
					semaforoAmarillo=1'b0;
					semaforoRojo=1'b0;
				end
			else if(c>=21&&c<=38)
				begin 
					semaforoVerde=1'b0;
					semaforoAmarillo=1'b1;
					semaforoRojo=1'b0;
				end
			else
				begin 
					semaforoVerde=1'b0;
					semaforoAmarillo=1'b0;
					semaforoRojo=1'b1;
				end
		end
endmodule