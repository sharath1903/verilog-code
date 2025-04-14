module mux_2to1(input a, b, sel, output y);
  assign y = sel ? b : a;
endmodule

//test bench//
module tb_mux_2to1;
  reg a, b, sel;
  wire y;

  mux_2to1 m(a, b, sel, y);

  initial begin
    $display("A B SEL | Y");
    for (int i = 0; i < 8; i++) begin
      {a, b, sel} = i; #10;
      $display("%b %b  %b  | %b", a, b, sel, y);
    end
  end
endmodule
