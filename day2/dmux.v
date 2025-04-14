module demux_1to2(input din, sel, output y0, y1);
  assign y0 = ~sel & din;
  assign y1 = sel & din;
endmodule

//test bench//

module tb_demux_1to2;
  reg din, sel;
  wire y0, y1;

  demux_1to2 d(din, sel, y0, y1);

  initial begin
    $display("DIN SEL | Y0 Y1");
    for (int i = 0; i < 4; i++) begin
      {din, sel} = i; #10;
      $display(" %b   %b  |  %b  %b", din, sel, y0, y1);
    end
  end
endmodule
