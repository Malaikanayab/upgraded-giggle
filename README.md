# Parallel RL Circuit Simulation

This repository contains a MATLAB Simulink model (`parallel_rl_circuit.slx`) designed to analyze the dynamic response, power characteristics, and root-mean-square (RMS) values of a parallel Resistor-Inductor (RL) network.

## Circuit Block Overview
The simulation model is constructed using the following core Simscape / Specialized Power Systems components:
* **AC Voltage Source:** Supplies the sinusoidal excitation voltage to the parallel branches.
* **Parallel R-L Network:** 
  * A resistive branch featuring a linear resistor in series with a current measurement block.
  * An inductive branch featuring a linear inductor connected to its own dedicated ground.
* **Measurement & Instrumentation:**
  * **Voltage Measurement Blocks:** Main source voltage monitoring and branch voltage tracking.
  * **Current Measurement Blocks:** Installed on individual branches and the main line to monitor current splits (\(I_R\), \(I_L\), and \(I_{Total}\)).
* **Signal Processing & Display:**
  * **RMS Blocks:** Converts instantaneous AC signals to Root-Mean-Square values for clear steady-state evaluation.
  * **Power Measurement Block (P-Q):** Computes Active Power (P in Watts) and Reactive Power (Q in VAR) directly from the source voltage and current.
  * **Scopes & Displays:** Visualization blocks for plotting waveform transients and digital displays for real-time numerical readings.
  * **Powergui Block:** Configured in **Discrete mode** with a fixed sample time step of **5e-05 seconds** (50 μs) to optimize solver execution.

## Simulation Parameters
* **Solver Type:** Discrete 
* **Sample Time (\(T_s\)):** 5e-05 s
