module decoder_2to4(input [1:0] in, output reg [3:0] out);
  always @(*) begin
    case (in)
      2'b00: out = 4'b0001;
      2'b01: out = 4'b0010;
      2'b10: out = 4'b0100;
      2'b11: out = 4'b1000;
    endcase
  end
endmodule

//test bench//

module tb_decoder_2to4;
  reg [1:0] in;
  wire [3:0] out;

  decoder_2to4 dec(in, out);

  initial begin
    $display("IN | OUT");
    for (int i = 0; i < 4; i++) begin
      in = i; #10;
      $display("%b | %b", in, out);
    end
  end
endmodule
