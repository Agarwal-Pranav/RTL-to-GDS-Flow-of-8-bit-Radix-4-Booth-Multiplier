# RTL-to-GDS-Flow-of-8-bit-Radix-4-Booth-Multiplier
This repository presents the complete design flow of an 8-bit Booth Multiplier using Radix-4 encoding, implemented from RTL (Register Transfer Level) to GDSII (layout level). The design focuses on efficient multiplication with reduced partial products and optimized hardware utilization, making it suitable for high-performance and low-power VLSI systems.

**Features**

**Radix-4 Booth Encoding:**
Reduces the number of partial products by encoding the multiplier in groups of 2 bits, improving speed and efficiency.

**8-bit Multiplier Design:**
Implements signed multiplication for 8-bit operands with accurate handling of negative numbers using Booth’s algorithm.

**Optimized Partial Product Generation:**
Minimizes the number of addition stages compared to conventional multipliers.

**Complete RTL-to-GDSII Flow:**
Covers the full ASIC design cycle including:

RTL design (Verilog)

Functional simulation

Synthesis

Floorplanning

Placement & Routing

GDSII generation

**Area and Power Efficient:**
Reduction in switching activity and hardware resources due to fewer partial products.

**Modular Design:**
Separate modules for encoder, partial product generator, and adder tree for easy customization and scalability.

Usage

Use the provided RTL modules to simulate and verify multiplier functionality.

Modify bit-width or architecture (e.g., extend to 16-bit or higher).

Integrate into larger datapath designs such as ALUs, DSP blocks, or MAC units.

Run through synthesis and physical design tools to generate final GDSII layout.
