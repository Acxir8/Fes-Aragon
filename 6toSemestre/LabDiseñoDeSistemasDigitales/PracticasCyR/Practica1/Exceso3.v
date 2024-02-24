module myAND(input a, input b, output z); //Modulo para generar la compuerta AND entre 2 valores
	assign z = a & b;
endmodule

module myOR(input a, input b, output z); //Modulo para generar la compuerta OR entre 2 valores
	assign z = a|b;
endmodule

module myNOT(input a, output z); //Modulo para generar la compuerta NOT de 1 valor
	assign z = ~a;
endmodule

module myNAND(input a, input b, output z); //Modulo para generar la compuerta NAND entre 2 valores
	assign z = ~a & ~b;
endmodule


module Exceso3 (input systemA, input systemB, input systemC, input systemD, output w, output x, output y, output z);
	wire ORtoAND;
	wire ANDtoOR;
	wire NOTtoAND1;
	wire NOTtoAND2;
	wire ANDtoOR2;
	wire ANDtoOR3;  //Declaramos las coneciones o cables, variables wire para almacenar datos entre operaciones
	wire NANDtoAND;
	wire ANDtoOR5;
	wire ORtoAND5;
	wire NOTtoAND5;
	wire ANDtoOR52;
	wire NANDtoOR;
	
	//Aqui empieza W
	myOR OR1(
	.a(systemD),
	.b(systemC),
	.z(ORtoAND)
	);
	
	myAND AND1(
	.a(ORtoAND),
	.b(systemB),
	.z(ANDtoOR)
	);
	
	myOR OR2(
	.a(ANDtoOR),
	.b(systemA),
	.z(w)
	);
	
	//Aqui empieza X
	myNAND NAND2(
	.a(systemC),
	.b(systemD),
	.z(NANDtoAND)
	);
	
	myAND AND4(
	.a(systemB),
	.b(NANDtoAND),
	.z(ANDtoOR5)
	);
	
	myOR OR4(
	.a(systemD),
	.b(systemC),
	.z(ORtoAND5)
	);
	
	myNOT NOT2(
	.a(systemB),
	.z(NOTtoAND5)
	);
	
	myAND AND5(
	.a(NOTtoAND5),
	.b(ORtoAND5),
	.z(ANDtoOR52)
	);
	
	myOR OR5(
	.a(ANDtoOR5),
	.b(ANDtoOR52),
	.z(x)
	);
	
	
	//Aqui empieza Y

	myNAND NAND1(
	.a(systemC),
	.b(systemD),
	.z(NANDtoOR)
	);
	
	myAND AND3(
	.a(systemC),
	.b(systemD),
	.z(ANDtoOR3)
	);
	
	myOR OR3(
	.a(NANDtoOR),
	.b(ANDtoOR3),
	.z(y)
	);
	
	//Aqui empieza Z
	myNOT NOT1(
	.a(systemD),
	.z(z)
	);

	
endmodule