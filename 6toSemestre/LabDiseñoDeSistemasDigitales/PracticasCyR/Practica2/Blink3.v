module Blink3(input clk, output led, output led2, output led3);
	reg [29:0] c = 30'b0; //Se llama c por contador
	reg [26:0] c2 = 27'b0; //Se llama c por contador
	reg [25:0] c3 = 26'b0; //Se llama c por contador
always @ (posedge clk) //Si queremos usar contadores de flanco de bajada usamos el nededge
	begin 
		if (c<=1_000_000_000) //50 para simulacion, 50 millones para la fpga
			begin
				c<= c+1;
			end
			
		else
			begin 
				c<= 0;
			end
	end 
always @ (posedge clk) //Si queremos usar contadores de flanco de bajada usamos el nededge
	begin 
		if (c2<=200_000_000) //50 para simulacion, 50 millones para la fpga
			begin
				c2<= c2+1;
			end
			
		else
			begin 
				c2<= 0;
			end
	end 
always @ (posedge clk) //Si queremos usar contadores de flanco de bajada usamos el nededge
	begin 
		if (c3<=50_000_000) //50 para simulacion, 50 millones para la fpga
			begin
				c3<= c3+1;
			end
			
		else
			begin 
				c3<= 0;
			end
	end 
		assign led = (c3<=(50_000_000)/2) ? 1'b1 : 1'b0;
		assign led2 = (c2<=100_000_000) ? 1'b1 : 1'b0;
		assign led3 = (c<=500_000_000) ? 1'b1 : 1'b0;
endmodule
