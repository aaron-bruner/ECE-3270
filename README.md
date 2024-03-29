# ECE-3270 [Digital Computer Design]
 Course material for ECE-3270 at Clemson University for the Spring semester of 2022.

## Course Description
Design of high-speed ALUs, control and timing circuitry, and asynchronous systems; hands-
on  system  prototyping  with  HDLs  for  FPGA  devices;  current  hardware  topics  related  to 
computer design using modern design methodologies and CAD tools; and principles of system 
design for testability.

## Learning Outcomes
- utilize modern design methodologies (CAD and HDL) 
- design for FPGA devices 
- design finite state machines such as but not limited to control and timing circuitry 
- design high-speed ALUs 
- demonstrate Asynchronous Systems Design principles 
- demonstrate Design for Testability concepts

###### Lab 0
The purpose of this lab is to give hands-on experience working with FPGAs for hardware prototyping and algorithm acceleration. In addition, installing all software and ensuring hardware is functional are lab 0 goals.

###### Lab 1
The purpose of this lab is to learn how to connect simple input and output devices to an FPGA chip and implement a circuit that uses these devices. Overall, the circuitry will display either the current Fibonacci number or the next. The input will be provided using a 4-Bit binary input through switches.

###### Lab 2
The purpose of this lab is to implement a state machine that keeps track of the current signal status. The plane controller will transistion from being on the ground to an altitude of 10k and then 25k. If the plane stays at 25k for 5 clock cycles then the passangers can remove their seatbelts. This is all displayed through a 

###### Lab 3
The purpose of this lab is to design a simple processor. This includes things such as registers and operations on these registers. In addition, this lab will include many parts from previous labs such as our Multiplexer and FSM from lab 2.

###### Lab 4
The purpose of this lab is to implement a Bit-pair Recoded fixed point multiplier in VHDL. The top
level entity should be a structural design, and all lower level components should be kept completely **modular** and
**generic**.
