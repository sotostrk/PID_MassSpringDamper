# PID Control of a Mass-Spring-Damper System

This project simulates a classic control system using MATLAB: a mass-spring-damper system with a PID controller. The goal is to tune the controller to achieve a stable and fast response to a step input.

##  Overview

The system is modeled by the second-order differential equation:

\[
m\ddot{x} + c\dot{x} + kx = F(t)
\]

Where:
- \( m \): mass (kg)
- \( c \): damping coefficient (N·s/m)
- \( k \): spring constant (N/m)
- \( F(t) \): force input (control input)
- \( x \): displacement (output)

##  What This Project Includes

- System modeling using MATLAB's Control System Toolbox
- PID controller design using manual tuning
- Closed-loop simulation of system response
- Step response analysis (overshoot, settling time, rise time)
##  Sample Output

![Step Response](figures/step_response.png)
