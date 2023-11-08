module ALU(input[3:0]X,Y,
				input enable,
				input[1:0] op,
				output[5:0] z);
			
			reg[15:0] tmp;
			
			parameter sum = 4'b00,
						 res = 4'b01,
						 oro = 4'b10,
						 sun = 4'b11;
			
			always@(X,Y,op)
				begin
					case (op)
						sum : tmp = X+Y;
						res : tmp = X-Y;
						oro : tmp = X|Y;
						sun : tmp = X+~(Y);
					endcase
				end
				
				assign z= (enable)? tmp: 16'dz;
endmodule
