`default_nettype none
module system();
  logic a, b, c, d, e, f, valid, vowel;
  
  zorgian_nand zNand1 (a, b, c, d, e, f, valid, vowel);
  Tester tNor (a, b, c, d, e, f, valid, vowel);

endmodule: system
