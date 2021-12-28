module MUX_4_to_1_IF_ELSE
    (output reg F,
    input wire A, B, C, D);

    always @ (A, B, C, D) 
        begin
            if (C == 0 && D == 0)
                #10 F = ~A;
            else if (C == 0 && D == 1)
                #10 F = B;
            else if (C == 1 && D == 0)
                #10 F = ~B;
            else if (C == 1 && D == 1)
                #10 F = 1'b0;
            else
                #10 F = 1'bX;
        end

endmodule