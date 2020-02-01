`default_nettype none

module chipInterface
  (input logic SW[5:0],
   output logic LEDR[17:16]);

   zorgian_nor zorgnor (.a(SW[5]), .b(SW[4]), .c(SW[3]), .d(SW[2]),
                        .e(SW[1]), .f(SW[0]),
                        .valid(LEDR[17]), .vowel(LEDR[16]));

endmodule: chipInterface
 
                         
