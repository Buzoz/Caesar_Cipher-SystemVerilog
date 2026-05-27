# Caesar Cipher SystemVerilog Implementation

A modular, hardware-based implementation of the Caesar Cipher algorithm using SystemVerilog. This project features independent encryption and decryption paths controlled by a central multiplexer, ensuring efficient real-time character processing for FPGA or ASIC targets.

## Features
* **Modular Design**: Separate, reusable modules for encoding, decoding, and signal selection.
* **Bidirectional Processing**: Easily switch between encryption and decryption using a selection (`sel`) signal.
* **Case Sensitivity**: Independent logic for uppercase (`A-Z`) and lowercase (`a-z`) ASCII ranges.

* ##  Architecture

The system is organized into a hierarchical structure to separate the mathematical transformation from the control flow:

1.  **`Caesar_encoder`**: Shifts characters forward by a user-defined value.
2.  **`Caesar_decoder`**: Shifts characters backward, reversing the encryption.
3.  **`Choice`**: A 2-to-1 Multiplexer (MUX) that selects the final output based on the `sel` signal.
4.  **`TOP`**: The top-level module that instantiates the components and manages internal signal routing via logic wires.

##  Simulation & Verification

The design was verified using the `TOP_TB` testbench. The simulation results demonstrate the system performing as intended:

* **Encoding Phase (0ns - 40ns)**: 
    * Inputting **'a'** with a shift of **3** results in **'d'**.
    * Inputting **'c'** with a shift of **3** results in **'f'**.
* **Decoding Phase (40ns - 60ns)**: 
    * Inputting **'d'** with a shift of **3** and `sel=0` (decoder mode) successfully returns the original character **'a'**.


 
##  File Structure
* `Caesar_encoder.sv`: Forward shift logic.
* `Caesar_decoder.sv`: Reverse shift logic.
* `Choice.sv`: Selection (MUX) logic.
* `TOP.sv`: Top-level hardware wrapper.
* `TOP_TB.sv`: Functional testbench.

##  How to Run
1.  Import all `.sv` files into your preferred simulation environment (e.g., Vivado, ModelSim, or Quartus).
2.  Compile the files.
3.  Set `TOP_TB` as the top-level module for simulation.
4.  Run the simulation to view the waveform results and verify the ASCII character transformations.


##  License
This project is licensed under the **MIT License** — feel free to use, modify, and distribute this code for your own learning or projects.
