module xnor_gate (
    input wire A,
    input wire B,
    output wire Y
);
    assign Y = ~(A ^ B);
endmodule

//test bench//

`timescale 1ns / 1ps

module xnor_gate_tb;
    // Testbench signals
    reg A, B;
    wire Y;

    // Instantiate the Unit Under Test (UUT)
    xnor_gate uut (
        .A(A),
        .B(B),
        .Y(Y)
    );

    initial begin
        $display("Time\tA B | Y");
        $monitor("%g\t%b %b | %b", $time, A, B, Y);

        // Test all input combinations
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;

        $finish;
    end
endmodule

