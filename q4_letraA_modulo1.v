module module_1
    (output reg A,
    input wire B1, B2, B3, 
    input wire [2:0] C);

    always @ (A, B1, B2, B3, C) 
        begin
            if (C == 1)
                A = B1;
            else if (C == 2)
                A = B2;
            else if (C == 3)
                A = B3;
            else
                A = 1'b0;
        end

endmodule