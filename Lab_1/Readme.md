# Lab 1: Familiarization with MATLAB & Simulink

## Objective

In this lab you will:
1. Define and analyze a continuous‐time transfer function in MATLAB.
2. Plot its step and impulse responses with proper labels and grids.
3. Automate the workflow in a MATLAB script (`.m` file).
4. Reproduce the same system in Simulink and observe its open‐loop response.

## Prerequisites

- MATLAB with Control System Toolbox
- Simulink
- Basic familiarity with the MATLAB command window and scripts
- Understanding of Laplace‐domain transfer functions

## Setup

1. **Create your lab folder**  
```matlab
   mkdir('lab1_SAN')
   cd('lab1_SAN')
````

2. **Add to MATLAB path**
   In MATLAB:
   *Home → Set Path…* → *Add with Subfolders…* → select your `lab1_SAN` folder → Save.
3. **Script file**
   In `lab1_SAN`, create `MyFirstScript.m` and paste the code below.

## Running the MATLAB Script

In the MATLAB Command Window:

```matlab
>> MyFirstScript
```

You should see two figures: the open‐loop step response and the impulse response, each with axes labeled “Time (s)” and “Amplitude (volt)”, and a grid.

## Simulink Model

1. Launch Simulink (`simulink` command or toolbar icon).
2. Create a new blank model.
3. From the **Sources** library, drag in a **Step** block.
4. From **Continuous**, add a **Transfer Fcn** block; set Numerator = `[2 1]`, Denominator = `[1 2 1]`.
5. From **Sinks**, add a **Scope** block.
6. Wire: **Step → Transfer Fcn → Scope**.
7. Run the simulation and open the Scope to view the response.
8. Save your model as `MyFirstModelSimulink.slx`.

## Deliverables

* `lab1/src/MyFirstScript.m`
* `lab1/diagrams/` (screenshots of plots & Simulink block diagram)
* `lab1/report.md` (explain zeros, poles, gain, and observations)
