`default_nettype none
module zorgian_nor
  (input logic a, b, c, d, e, f,
   output logic valid, vowel);

   logic z1, z2, z3, z4, z5, z6, 
         z7, z8, z9, z10, z11, z12,
         int1, int2, int3, int4, int5, int6,
         int7, int8, int9, int10, int11, int12,
         int13, int14, int15, int16, int17, int18,
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
       (not_f, f);
  
   nor (z1, not_d, not_e, not_f),
       
       (int1, a, b, not_c),
       (int2, d, not_e),
       (int3, int1, int2),
       (z2, int3, int3),

       (z3, not_a, b, c),
       (z4, not_a, b, not_e, f),
       (z5, a, not_b, not_e, not_f),

       (int4, a, c, d),
       (int5, e, not_f),
       (int6, int1, int2),
       (z6, int6, int6),

       (int7, a, not_b, c),
       (int8, d, e),
       (int9, int7, int8),
       (z7, int9, int9),

       (z8, not_a, c, not_e, f),
       (z9, not_d, e, f),
       (z10, not_a, not_d, not_e),

       (int10, not_a, not_b, not_c),
       (int11, d, e, not_f),
       (int12, int10, int11),
       (z11, int10, int11),

       (int13, a, b, c),
       (int14, not_d, not_e),
       (int15, int13, int14),
       (z12, int15, int15),

       (no1, z1, z2, z3, z4),
       (no2, z5, z6, z7, z8),
       (no3, z9, z10, z11, z12),
       
       (int16, a, not_b, not_c),
       (int17, not_d, not_e),
       (int18, int16, int17),
       (no4, int18, int18),

       (o1, no1, no1),
       (o2, no2, no2),
       (o3, no3, no3),
       (o4, no4, no4),

       (valid, o1, o2, o3, o4),

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

       (vo11, nvo11, nvo11),
       (vo12, nvo12, nvo12),
       (vo13, nvo13, nvo13),
  
       (vowel, vo11, vo12, vo13);

endmodule: zorgian_nor
      





