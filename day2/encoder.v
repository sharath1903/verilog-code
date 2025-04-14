module encoder_4to2(input [3:0] in, output reg [1:0] out);
  always @(*) begin
    case (in)
      4'b0001: out = 2'b00;
      4'b0010: out = 2'b01;
      4'b0100: out = 2'b10;
      4'b1000: out = 2'b11;
      default: out = 2'bxx;
    endcase
  end
endmodule

//test bench//

module tb_encoder_4to2;
  reg [3:0] in;
  wire [1:0] out;

  encoder_4to2 enc(in, out);

  initial begin
    $display("IN     | OUT");
    in = 4'b0001; #10;
    $display("%b | %b", in, out);
    in = 4'b0010; #10;
    $display("%b | %b", in, out);
    in = 4'b0100; #10;
    $display("%b | %b", in, out);
    in = 4'b1000; #10;
    $display("%b | %b", in, out);
  end
endmodule
