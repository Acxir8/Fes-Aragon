module DivFrec(clk, periodo);

	input clk;
	output periodo;
	
	reg[5:0]c=6'b000000;
	
	always@(posedge clk)
		begin
			if(c>=50)
				c=0;
			else
				begin
					c=c+1;
				end
		end
	assign periodo = (c<=(50/2)-1) ? 1'b1 : 1'b0;
endmodule
