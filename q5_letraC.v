module comparador_4_bits
    (output wire G, E, L,
    input wire [3:0] A, B);

    assign G = (A > B);
    assign E = (A == B);
    assign L = (A < B);
endmodule