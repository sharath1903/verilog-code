module or_gate (
    input wire a,
    input wire b,
    output wire y
);
    assign y = a | b;
endmodule


//test bench//

`timescale 1ns / 1ps

module or_gate_tb;

    // Testbench signals
    reg a, b;
    wire y;

    // Instantiate the OR gate module
    or_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        // Monitor outputs
        $monitor("Time = %0t | a = %b, b = %b | y = %b", $time, a, b, y);

        // Test all input combinations
        a = 0; b = 0; #10; // Expect y = 0
        a = 0; b = 1; #10; // Expect y = 1
        a = 1; b = 0; #10; // Expect y = 1
        a = 1; b = 1; #10; // Expect y = 1

        $finish;
    end

endmodule
