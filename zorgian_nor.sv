`default_nettype none
module zorgian_nor
  (input logic a, b, c, d, e, f,
   output logic valid, vowel);

   logic z1, z2, z3, z4, z5, z6, 
         z7, z8, z9, z10, z11, z12, z13,
         int1, int2, int3, int4, int5, int6,
         int7, int8, int9, int10, int11, int12,
         int13, int14, int15, int16, int17, int18,
         int19, int20, int21, int22, int23, int24,
         int25, int26, int27, int28, int29, int30,
         vo1, vo2, vo3, vo4, vo5, 
         vo6, vo7, vo8, vo9, vo10,
         vo11, vo12, vo13, nvo11, nvo12, nvo13,
         no1, no2, no3, no4,
         o1, o2, o3, o4,
         not_a, not_b, not_c, not_d, not_e, not_f;

   not (not_a, a),
       (not_b, b),
       (not_c, c),
       (not_d, d),
       (not_e, e),
       (not_f, f),
       (o1, no1),
       (o2, no2),
       (o3, no3),
       (o4, no4),
       (int19, int1),
       (int20, int2),
       (int21, int4),
       (int22, int5),
       (int23, int7),
       (int24, int8),
       (int25, int10),
       (int26, int11),
       (int27, int13),
       (int28, int14),
       (int29, int16),
       (int30, int17),
       (vo11, nvo11),
       (vo12, nvo12),
       (vo13, nvo13);
  
   nor (z1, not_d, not_e, not_f),
       
       (int1, a, b, not_c),
       (int2, d, not_e),
       // invert
       (z2, int20, int19),

       (z3, not_a, b, c),
       (z4, not_a, b, not_e, f),
       // invert
       (z5, a, not_b, not_e, not_f),

       (int4, a, c, d),
       (int5, e, not_f),
       // invert
       (z6, int21, int22),

       (int7, a, not_b, c),
       (int8, d, e),
       // invert
       (z7, int23, int24),

       (z8, not_a, c, not_e, f),
       (z9, not_d, e, f),
       (z10, not_a, not_d, not_e),

       (int10, not_a, not_b, not_c),
       (int11, d, e, not_f),
       // invert
       (z11, int25, int26),

       (int13, a, b, c),
       (int14, not_d, not_e),
       // invert
       (z12, int28, int27),

       (no1, z1, z2, z3, z4),
       (no2, z5, z6, z7, z8),
       (no3, z9, z10, z11, z12),
       
       (int16, a, not_b, not_c),
       (int17, not_d, not_e),
       // invert
       (no4, int30, int29),

       (valid, o1, o2, o3, no4),
       // (valid, a),


       (vo1, c, e),
       (vo2, not_e, not_f),
       (vo3, not_d, not_e),
       (vo4, not_c, not_d),
       (vo5, e, f),
       (vo6, not_a, e),
       (vo7, not_b, e),
       (vo8, not_a, c),
       (vo9, not_a, b, not_e),
       (vo10, b, not_c, not_e),

       (nvo11, vo1, vo2, vo3, vo4),
       (nvo12, vo5, vo6, vo7, vo8),
       (nvo13, vo9, vo10),

 
       (vowel, vo11, vo12, vo13);

endmodule: zorgian_nor
      





