module luces(
	input clk,
	inout reg[2:0] counter,
	output [4:0] leds
	);
	reg[4:0] tmp;
	parameter tmp0 = 3'b000,
				tmp1 = 3'b001, 
				tmp2 = 3'b010,
				tmp3 = 3'b011,
				tmp4 = 3'b100,
				tmp5 = 3'b101,
				tmp6 = 3'b110,
				tmp7 = 3'b111 ;
	reg[24:0] count=0 ;
	initial counter =0;
	
	always @ (posedge clk)
		begin
			count = count +1;
			if(count == 1)
				begin
					count = 0;
					counter <= counter + 1'b1;
				end
				case (counter)
					tmp0: tmp = 5'b10000;
					tmp1: tmp = 5'b01000;
					tmp2: tmp = 5'b00100;
					tmp3: tmp = 5'b00010;
					tmp4: tmp = 5'b00001;
					tmp5: tmp = 5'b00010;
					tmp6: tmp = 5'b00100;
					tmp7: tmp = 5'b01000;
				endcase
			end
				assign leds= tmp;
	endmodule