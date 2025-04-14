module full_adder(input a, b, cin, output sum, carry);
  assign sum = a ^ b ^ cin;
  assign carry = (a & b) | (b & cin) | (a & cin);
endmodule

//test bench//

module tb_full_adder;
  reg a, b, cin;
  wire sum, carry;

  full_adder fa(a, b, cin, sum, carry);

  initial begin
    $display("A B CIN | SUM CARRY");
    for (int i = 0; i < 8; i = i + 1) begin
      {a, b, cin} = i; #10;
      $display("%b %b  %b  |  %b    %b", a, b, cin, sum, carry);
    end
  end
endmodule
