module half_subtractor(input a, b, output diff, borrow);
  assign diff = a ^ b;
  assign borrow = ~a & b;
endmodule

// tast bench//

module tb_half_subtractor;
  reg a, b;
  wire diff, borrow;

  half_subtractor hs(a, b, diff, borrow);

  initial begin
    $display("A B | DIFF BORROW");
    a = 0; b = 0; #10;
    $display("%b %b |  %b     %b", a, b, diff, borrow);
    a = 0; b = 1; #10;
    $display("%b %b |  %b     %b", a, b, diff, borrow);
    a = 1; b = 0; #10;
    $display("%b %b |  %b     %b", a, b, diff, borrow);
    a = 1; b = 1; #10;
    $display("%b %b |  %b     %b", a, b, diff, borrow);
  end
endmodule
