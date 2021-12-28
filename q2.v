module q2
    (output wire Z,
    input wire A, B, C, D);

    wire E;
    wire F;

    assign #10 E = (A & B & C) | D;
    assign #10 F = (A ~& (B ~| C));
    assign #7 Z = E^~F;

endmodule