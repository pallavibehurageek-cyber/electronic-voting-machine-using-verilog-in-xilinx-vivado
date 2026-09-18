# Verilog-Based Digital Voting Machine 🗳️

## Project Overview

This project implements a digital voting machine using **Verilog HDL** and **Xilinx Vivado**.

The system allows users to select candidates through digital inputs and maintains separate vote counts for each candidate. The design is simulated in Vivado to verify the functionality of the voting logic and vote-counting process.

## Features

- Digital candidate selection
- Individual vote counting
- Multiple candidate support
- Clock-based synchronous operation
- Reset functionality
- Candidate vote status monitoring
- Simulation using Vivado
- RTL schematic generation
- Waveform-based functional verification

## Technologies Used

- **Verilog HDL**
- **Xilinx Vivado**
- **Digital Logic Design**
- **FPGA-based Design and Simulation**

## Project Structure

```text
Verilog-Voting-Machine/
│
├── README.md
├── votingmachinemodulecode.v
├── votingmachinetestbench.v
│
├── schematic diagram.png
├── waveform.png
├── waveform1.png
│
└── screenshots/
    ├── Screenshot (1).png
    ├── Screenshot (2).png
    ├── Screenshot (3).png
    ├── Screenshot (4).png
    ├── Screenshot (5).png
    ├── Screenshot (6).png
    └── Screenshot (7).png

Working Principle

The voting machine receives a candidate-selection input from the user.

When a valid voting input is detected:

1. The selected candidate is identified.


2. The corresponding vote counter is updated.


3. The vote count is stored in the appropriate register.


4. The updated count can be observed during simulation.


5. The control logic prevents unintended counting of the same input.



The complete digital logic is described using Verilog HDL and analyzed using Xilinx Vivado.

Design Flow

Candidate Input
       ↓
Candidate Selection Logic
       ↓
Vote Validation
       ↓
Vote Counter
       ↓
Register / Storage
       ↓
Output / Result

Verilog Module

The main Verilog module contains the logic required for:

Candidate selection

Vote counting

Control signals

Registers

Reset operation

Output generation


File:

votingmachinemodulecode.v

Testbench

A Verilog testbench is used to provide input conditions to the voting-machine module and verify its behavior.

The testbench generates:

Clock signal

Reset signal

Candidate selection inputs

Voting events


File:

votingmachinetestbench.v

Simulation and Verification

The design is simulated in Xilinx Vivado.

The generated waveforms are used to verify that:

Inputs are detected correctly.

Votes are registered correctly.

Candidate counters are updated.

Reset works correctly.

The circuit responds according to the expected timing.


RTL Schematic

Vivado is used to generate the elaborated RTL schematic of the Verilog design.

The schematic provides a graphical representation of the internal digital logic, including registers, multiplexers, counters, logic gates, and signal connections.

Vivado Results

The project includes screenshots of the Vivado-generated design at different levels of schematic expansion.

Screenshots 1–7 show different portions of the internal voting-machine logic and its interconnected modules.

The project also includes simulation waveform images for functional verification.

Applications

Digital voting system demonstration

FPGA-based digital system design

Verilog HDL learning

RTL design practice

Digital logic and hardware verification

Educational FPGA projects


Future Improvements

Seven-segment display for vote results

LCD/OLED result display

Password or voter authentication

Vote memory using FPGA block RAM

More advanced anti-repeat voting logic

Physical FPGA-board implementation

Hardware-based result visualization


Learning Outcomes

Through this project, the following concepts can be explored:

Verilog HDL

Combinational and sequential logic

Counters and registers

Multiplexers

Clocked digital circuits

Testbench development

RTL design

Simulation and waveform analysis

FPGA design flow using Vivado


Author

Your Name

B.Tech – Electronics and Communication Engineering
