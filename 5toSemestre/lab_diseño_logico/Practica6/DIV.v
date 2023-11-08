module DIV (clk, periodo);
//declaración del modulo con sus entrada y salidas.	
	input clk; //declaración de entrada.
	output periodo; //declaración de salida. 
	
	reg[5:0]c=6'b00000; //Para 50 clk.
	
	always@(posedge clk) //Siempre que el clk detecte un flanco de subida.
		begin	
			if(c>=50)
			//Si el registro es mayor igual a 50
			//el registro sera igual a cero.
			c=0;
			else 
				begin
				//Si no se cumple la condición el
				//registro se estara incrementando en 1.
				c=c+1;
				end
		end
		
	assign periodo=(c<=(50/2)-1) ? 1'b1 : 1'b0;
	//Asignación continua.
	//La mitad de periodo tendra un flanco de subida si es la mitad de 50 ciclos,
	//de lo contrario tendra un flanco de bajada.
endmodule
