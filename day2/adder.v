module half_adder(input a, b, output sum, carry);
  assign sum = a ^ b;
  assign carry = a & b;
endmodule

//test bench//

module tb_half_adder;
  reg a, b;
  wire sum, carry;

  half_adder ha(a, b, sum, carry);

  initial begin
    $display("A B | SUM CARRY");
    a = 0; b = 0; #10;
    $display("%b %b |  %b    %b", a, b, sum, carry);
    a = 0; b = 1; #10;
    $display("%b %b |  %b    %b", a, b, sum, carry);
    a = 1; b = 0; #10;
    $display("%b %b |  %b    %b", a, b, sum, carry);
    a = 1; b = 1; #10;
    $display("%b %b |  %b    %b", a, b, sum, carry);
  end
endmodule
