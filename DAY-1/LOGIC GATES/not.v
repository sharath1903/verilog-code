module not_gate (
    input wire a,
    output wire y
);
    assign y = ~a;
endmodule


//testbench
`timescale 1ns / 1ps

module not_gate_tb;

    // Testbench signals
    reg a;
    wire y;

    // Instantiate the NOT gate module
    not_gate uut (
        .a(a),
        .y(y)
    );

    initial begin
        // Monitor the output
        $monitor("Time = %0t | a = %b | y = %b", $time, a, y);

        // Test cases
        a = 0; #10; // Expect y = 1
        a = 1; #10; // Expect y = 0

        // Finish simulation
        $finish;
    end

endmodule
