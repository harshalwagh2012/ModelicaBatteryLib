# ModelicaBatteryLib
A Modelica-based library that provides researchers and engineers with a platform to model and experiment with different battery chemistries.
The library is designed to make it easier to simulate custom battery models, validate new chemistries, and analyze performance within system-level simulations.

## Features
This library comes with two built-in chemistries — LFP (Lithium Iron Phosphate) and NMC (Nickel Manganese Cobalt Oxide). allowing users to quickly simulate well-known batteries. It is designed to be easily extensible, so researchers can implement their own chemistries by defining new OCV–SoC relationships and parameter sets, such as for LTO or NaB cells. Once connected into a system, the library provides direct outputs such as state of charge, terminal voltage, power, and current, enabling fast performance evaluation. Since it is developed in Modelica, the components can be seamlessly integrated with existing system models in environments like Dymola or OpenModelica, making it a flexible foundation for both academic research and practical applications.

## Getting Started
1. Install the Library: clone or download this repository into your Modelica/Library folder.
2. Open in Modelica Tool: Load the library in Dymola, OpenModelica, or your preferred Modelica environment.
3. Choose a Battery Model: Drag-and-drop the LFP or NMC battery model into your system & Configure the desired current draw as input
4. Run Simulation: Observe outputs such as SoC, voltage, and power consumption & Compare different chemistries by swapping battery models.
