module MUX_4_to_1
    (output wire F,
    input wire A, B, C, D);

    assign #10 F = (C == 0 && D == 0) ? ~A :
                   (C == 0 && D == 1) ? B :
                   (C == 1 && D == 0) ? ~B :
                   (C == 1 && D == 1) ? 0 :
                   1'bX;
endmodule