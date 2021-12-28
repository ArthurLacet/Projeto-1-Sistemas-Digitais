module module_2
    (output reg A,
    input wire B1, B2, B3, 
    input wire [2:0] C);

    always @ (B1, B2, B3, C) 
        begin
            case ( {C} )
                1 : A = B1;
                2 : A = B2;
                3 : A = B3;
                default : A = 1'b0;
            endcase
        end

endmodule