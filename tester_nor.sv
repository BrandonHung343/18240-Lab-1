module Tester (output logic a, b, c, d, e, f,
               input logic valid, vowel);

  // Valid
  // abc=100 --> 0
  // def=100 --> 0
  // def=111 --> 0
  // def=101 --> 1 (so long as abc isn't 100)
  //  

  // Vowel
  // 0 wherever Valid is 0
  // def=010 --> 1 for all valid
  // abc=110 or 001 --> 0 for all valid
 
  initial begin
    $monitor($time,,
     "a = %b, b = %b, c = %b, d = %b, e = %b, f = %b, valid = %b, vowel = %b",
      a, b, c, d, e, f, valid, vowel);
        {a, b, c} = 3'b100;
        {d, e, f} = 3'b111; //also def=111 test //because in 3 k-groups

    #10 {d, e, f} = 3'b010;
    #10 {a, b, c} = 3'b011; // vowel=1

    #10 {d, e, f} = 3'b100;
    #10 {a, b, c} = 3'b100; //also abc=100 test //k-groups
    #10 {a, b, c} = 3'b101; //k-groups

    #10 {d, e, f} = 3'b111; 
    #10 {a, b, c} = 3'b011; //k-groups

    #10 {d, e, f} = 3'b101;
    #10 {a, b, c} = 3'b101;
    #10 {a, b, c} = 3'b000;

    // valid=1, vowel=0
    #10 {a, b, c} = 3'b110;
    #10 {d, e, f} = 3'b011;
    #10 {a, b, c} = 3'b001;
    #10 {d, e, f} = 3'b110;
 
    #10 $finish;
  end

endmodule: Tester
