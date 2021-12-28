module MUX_4_to_1_Declaracao_de_Caso
    (output reg F,
    input wire A, B, C, D);

    always @ (A, B, C, D) 
        begin
            case ( {C, D} )
                2'b00 : #10 F = ~A;
                2'b01 : #10 F = B;
                2'b10 : #10 F = ~B;
                2'b11 : #10 F = 1'b0;
                default : #10 F = 1'bX;
            endcase        
        end
endmodule