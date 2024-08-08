/*`timescale 1ns / 1ps

module vga_test_tb;

    // Inputs
    reg clk;
    reg reset;
    reg [11:0] sw;

    // Outputs
    wire hsync;
    wire vsync;
    wire [11:0] rgb;

    // Instantiate the Unit Under Test (UUT)
    vga_test uut (
        .clk(clk),
        .reset(reset),
        .sw(sw),
        .hsync(hsync),
        .vsync(vsync),
        .rgb(rgb)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 100 MHz clock (10ns period)
    end

    // Testbench sequence
    initial begin
        // Initialize Inputs
        reset = 1;
        sw = 12'h000;

        // Wait for the global reset
        #100;

        // Release reset
        reset = 0;

        // Test different switch inputs
        #100 sw = 12'hFFF; // All bits high
        #200 sw = 12'hF00; // Red color
        #200 sw = 12'h0F0; // Green color
        #200 sw = 12'h00F; // Blue color
        #200 sw = 12'h000; // All bits low

        // Run the simulation for some more time to observe signals
        #1000;

        // End simulation
        $stop;
    end

endmodule
