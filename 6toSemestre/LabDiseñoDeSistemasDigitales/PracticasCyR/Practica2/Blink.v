module Blink(clk, led);
	input clk;
	output led;
	
	reg [24:0] c = 25'b0;
	
always @ (posedge clk)
	begin 
		if (c<=50)
			begin
				c=c+1;
			end
			
		else
			begin 
				c<=0;
			end
	end 
assign led = (c<=(50/2)-1) ? 1'b1 : 1'b0;
endmodule