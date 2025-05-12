# Lab 2: Signal Definition, Sampling & Zero-Order Hold

## Objective

In this lab, you will use MATLAB and Simulink to:
1. Generate discrete-time Dirac impulses and Dirac combs (and their delayed versions).
2. Define and sample a continuous-time signal \(y(t)=\sin(t)\), compare continuous, sampled, and zero-order-held signals for different sampling periods.
3. Build equivalent models in Simulink (discrete impulses/combs and ZOH blocks) and visualize their responses.

## Prerequisites

- MATLAB (core)  
- Control System Toolbox (for “stairs” & “stem” plotting, optional)  
- Simulink  
- Basic MATLAB scripting skills and familiarity with sampling theory  
- Git & GitHub basics

## MATLAB Exercises

### 2.1 From the MATLAB Editor

1. Open `lab2/src/lab2_script.m` and run it.  
2. It will produce:
   - **Ex 1**: Four discrete sequences (Dirac, delayed Dirac, Dirac comb, delayed comb), plotted with `stem`.  
   - **Ex 2**: Continuous \(y(t)=\sin t\), its sampled version (stem), and zero-order-held version (stairs) for:
     - \(T=0.25\) s  
     - Additionally compares continuous vs. sampled vs. ZOH at \(T=0.01\) s and \(T=2\) s.

### 2.2 In Simulink

#### Application 1: Discrete Impulses & Combs

- **Model A**:  
  - Use **Discrete Pulse** blocks (or **Impulse Generator** set to sample time =1) to create δ[k] and δ[k–1].  
  - Use two **Scopes** or a **Mux + Scope** to view both signals.
- **Model B**:  
  - Use a **Repeating Sequence** or **Pulse Generator** (period =1) to make a Dirac comb; duplicate and delay one branch by 3 s.

Save them under `lab2/diagrams/` as e.g. `impulses_model.slx` & `combs_model.slx`.

#### Application 2: Zero-Order Hold

- **Model C**:  
  - **Step** → **Zero-Order Hold** (sample time =1 s) → **Scope** to see the held impulse response.
- **Model D**:  
  - **Ramp** (slope=1, sample time =0.1 s) → **Zero-Order Hold** → **Scope**.

Save as `zoh_impulse.slx` and `zoh_ramp.slx`.

## Deliverables

1. **MATLAB script**: `lab2/src/lab2_script.m`  
2. **Diagrams**:  
   - MATLAB plots (in `lab2/diagrams/`)  
   - Simulink model screenshots (`.slx` files)  
3. **Report**: `lab2/report.md` with:
   - Definitions & plots from Ex 1 & 2  
   - Observations on the effect of the sampling period (Shannon theorem)  
   - Screenshots and commentary on your Simulink models
