# VGA Controller in Verilog

## Overview

This project marks our first attempt at implementing a basic VGA controller in Verilog. The primary goal was to test functionality and familiarize ourselves with VGA timing signals. The project includes two main modules:

- **vga_sync**: Responsible for generating VGA timing signals (`hsync`, `vsync`), pixel coordinates, and a video-on signal.
- **vga_test**: A simple test module that outputs RGB colors based on switch inputs using the `vga_sync` module.

## Files
-**vga_test.v**: Contains both the `vga_sync` module and the `vga_test` module.

           - **vga_sync**: VGA synchronization module.
           - **vga_test**: Test module to drive RGB output.
- **vga_test_tb.v**: Testbench for simulating `vga_test`.

## 12-Bit RGB Value

The 12-bit RGB value used in this project represents the color displayed on the VGA monitor, with each color channel (Red, Green, Blue) allocated 4 bits:

- **4 bits for Red (R)**
- **4 bits for Green (G)**
- **4 bits for Blue (B)**

Each channel's value can range from `0000` to `1111`, corresponding to a decimal range of `0` to `15`, where a higher value means a more intense color. For example:

- `0000 0000 0000`: Black (no color, all channels off).
- `1111 0000 0000`: Bright Red.
- `0000 1111 0000`: Bright Green.
- `0000 0000 1111`: Bright Blue.
- `1111 1111 1111`: White (maximum intensity for all channels).

In the `vga_test` module, the 12-bit input `sw` determines the color output on the VGA monitor. The color is displayed when `video_on` is high, and the pixel is turned off (black) when `video_on` is low.

## Purpose

This project was created as a foundational step to understand VGA signal timing and basic video output functionality on FPGA.

