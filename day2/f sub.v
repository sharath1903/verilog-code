module full_subtractor(input a, b, bin, output diff, borrow);
  assign diff = a ^ b ^ bin;
  assign borrow = (~a & b) | (~(a ^ b) & bin);
endmodule


// test bench//

module tb_full_subtractor;
  reg a, b, bin;
  wire diff, borrow;

  full_subtractor fs(a, b, bin, diff, borrow);

  initial begin
    $display("A B BIN | DIFF BORROW");
    for (int i = 0; i < 8; i++) begin
      {a, b, bin} = i; #10;
      $display("%b %b  %b  |  %b     %b", a, b, bin, diff, borrow);
    end
  end
endmodule
