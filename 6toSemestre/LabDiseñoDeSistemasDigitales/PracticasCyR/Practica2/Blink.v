module Blink(input clk, output led);
	reg [25:0] c = 26'b0; //Se llama c por contador
	
always @ (posedge clk) //Si queremos usar contadores de flanco de bajada usamos el nededge
	begin 
		if (c<=50_000_000) //50 para simulacion, 50 millones para la fpga
			begin
				c<= c+1;
			end
			
		else
			begin 
				c<= 0;
			end
	end 
		assign led = (c<=(50_000_000/2)-1) ? 1'b1 : 1'b0;
endmodule
