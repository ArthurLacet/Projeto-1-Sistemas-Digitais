`include "q5_letraC.v"
module comparador_8_bits 
    (output wire G, L, E,
    input wire [7:0] A, B);

    wire [3:0] a1, a2, b1, b2;
    wire E1, E2, G1, G2, L1, L2;

    assign a1 = {A[3:0]};
    assign a2 = {A[7:4]};
    assign b1 = {B[3:0]};
    assign b2 = {B[7:4]};

    comparador_4_bits LSB(G1, E1, L1, a1, b1);
    comparador_4_bits MSB(G2, E2, L2, a2, b2);

    assign E = (E1 && E2);
    assign L = (L2 || (L1 && E2));
    assign G = (~L && ~E);
endmodule