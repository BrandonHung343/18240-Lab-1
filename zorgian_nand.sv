`default_nettype none

module zorgian_nand
  (input logic a, b, c, d, e, f,
   output logic valid, vowel);

   logic va1, va2, va3, va4, va5, va6, va7,
         va8, va9, va10, va11, va12, va13, va14,
         int1, int2, nint1, nint2, int3, int4, 
         int5, nint4, nint5, int6, nint6, int7,
         nint7, int8, nint8, int9, nint9, int10, 
         int11, nint10, nint11, int12, nint12, int13, 
         int14, nint13, nint14, int15, nint15,
         int16, nint16, int17, nint17, int18, nint18,
         int19, nint19, int20, nint20, int21, nint21,
         int22, nint22, int23, nint23,
         vo1, vo2, vo3,
         nvo1, nvo2, nvo3,
         intv1, nintv1, intv2, nintv2, intv3, nintv3, 
         intv4, nintv4, intv5, nintv5, intv6, nintv6, 
         no1, no2, no3, no4,
         o1, o2, o3, o4,
         not_a, not_b, not_c, not_d, not_e, not_f;

   not (not_a, a),
       (not_b, b),
       (not_c, c),
       (not_d, d),
       (not_e, e),
       (not_f, f),

       (no1, o1),
       (no2, o2),
       (no3, o3),
       (no4, o4),

       (nint1, int1),
       (nint2, int2),
       (nint4, int4),
       (nint5, int5),
       (nint6, int6),
       (nint7, int7),
       (nint8, int8),
       (nint9, int9),
       (nint10, int10),
       (nint11, int11),
       (nint12, int12),
       (nint13, int13),
       (nint14, int14),
       (nint15, int15),
       (nint16, int16),
       (nint17, int17),
       (nint18, int18),
       (nint19, int19),
       (nint20, int20),
       (nint21, int21),
       (nint22, int22),
       (nint23, int23),

       (nintv1, intv1),
       (nintv2, intv2),
       (nintv3, intv3),
       (nintv4, intv4),
       (nintv5, intv5),
       (nintv6, intv6);

 
   nand (va1, not_b, c, not_e, f),
        (va2, b, d, not_e, f),
        
        (int1, a, b, c),
        (int2, not_d, e),
        (va3, nint1, nint2),

        (int4, a, not_b, c),
        (int5, not_d, f),
        (va4, nint4, nint5),
  
        (int6, a, c, not_d),
        (int7, not_e, not_f),
        (va5, nint6, nint7),
       
        (int8, not_a, b, not_c), 
        (int9, e, not_f),
        (va6, nint8, nint9),

        (int10, not_a, b, c),
        (int11, not_d, not_e),
        (va7, nint10, nint11),
      
        (int12, a, b, not_c),
        (int13, not_d, f),
        (va8, nint12, nint13),
  
        (int14, a, b, not_c),
        (int15, not_d, not_e),
        (va9, nint14, nint15),

        (int16, not_a, not_b, not_c),
        (int17, not_d, e),
        (va10, nint16, nint17),
  
        (va11, not_a, d, not_e, f),
        
        (int18, b, c, not_d),
        (int19, e, not_f),
        (va12, nint18, nint19),
  
        (int20, not_a, not_b, not_d),
        (int21, not_d, not_e),
        (va13, nint20, nint21),

        (int22, not_a, not_b, c),
        (int23, d, e, not_f),
        (va14, nint22, nint23),

        (o1, va1, va2, va3, va4),
        (o2, va5, va6, va7, va8),
        (o3, va9, va10, va11, va12),
        (o4, va13, va14),

        (valid, no1, no2, no3, no4),
        
        (intv1, not_a, not_c, not_d),
        (intv2, e, not_f),
        (vo1, nintv1, nintv2),
        
        (intv3, b, c, not_d),
        (intv4, e, not_f),
        (vo2, nintv3, nintv4),
   
        (intv5, a, not_b, c),
        (intv6, not_d, not_e, f),
        (vo3, nintv5, nintv6), 

        (vowel, vo1, vo2, vo3);

endmodule: zorgian_nand
      





