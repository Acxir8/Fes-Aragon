module myAND(input a, input b, output z);
	assign z = a & b;
endmodule

module myOR(input a, input b, output z);
	assign z = a|b;
endmodule

module Exceso3 (input systemA, input systemB, input systemC, input systemD, output w);
	wire ORtoAND;
	wire ANDtoOR;
	
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
endmodule
