`timescale 1ns/1ps
`include "q5_letraD.v"

module comparador_8_bits_tb();

    reg [7:0] A_TB, B_TB;
    wire G_TB, E_TB, L_TB;

    comparador_8_bits UUT(.A(A_TB), .B(B_TB), .G(G_TB), .L(L_TB), .E(E_TB));

    initial 
        begin
            $dumpfile("q5_letraE_tb.vcd");
            $dumpvars(0,comparador_8_bits_tb);

                A_TB=8'b01000000; B_TB=8'b01000000;
            #10 A_TB=8'b01000001; B_TB=8'b01000000;
            #10 A_TB=8'b01000000; B_TB=8'b01000001;
            #10;
        end
endmodule