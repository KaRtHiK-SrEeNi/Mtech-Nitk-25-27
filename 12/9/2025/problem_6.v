module circuit (
    input A, B, C,
    output F1, F2
);
    // Internal wires
    wire T1, T2, T3, F2_not;
    wire AB, AC, BC;

    // Top part (for F1)
    and  G1 (T1, A, B, C);        // T1 = A & B & C
    and  G2 (T2, A, B, C);        // T2 = A & B & C
    and  G6 (AB, A, B);
    and  G7 (AC, A, C);
    and  G8 (BC, B, C);
    or   G9 (F2, AB, AC, BC);     // F2 = AB | AC | BC
    not  G3 (F2_not, F2);
    and  G4 (T3, F2_not, T1);     // T3 = (~F2) & T1
    or   G5 (F1, T2, T3);         // F1 = T2 | T3

endmodule
