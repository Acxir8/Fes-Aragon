module luces(
    input clk,
    inout reg[2:0] counter,
    output [9:0] leds
    );
    reg [9:0]tmp;
    parameter tmp0 = 3'b000,
            tmp1 = 3'b001,
            tmp2 = 3'b010,
            tmp3 = 3'b011,
            tmp4 = 3'b100,
            tmp5 = 3'b101,
            tmp6 = 3'b110,
            tmp7 = 3'b111;
    reg[24:0] count = 0;
    initial counter = 0;

always @ (posedge clk)
    begin
        count = count + 1;
        if (count == 1) // CAMBIAR A 30_000_000 AL PONER EN LA FPGA
            begin
                count = 0;
                counter <= counter + 1'b1;
            end

    case (counter)
            //L9 L8 L7 L6 L5 L4 L3 L2 L1 L0
        tmp0 : tmp = 10'b1010101010; //impares
        tmp2 : tmp = 10'b1010101010;
        tmp4 : tmp = 10'b1010101010;
        tmp6 : tmp = 10'b1010101010;

        tmp1 : tmp = 10'b0101010101; // pares
        tmp3 : tmp = 10'b0101010101;
        tmp5 : tmp = 10'b0101010101;
        tmp7 : tmp = 10'b0101010101;
        endcase
    end
            assign leds = tmp;
endmodule