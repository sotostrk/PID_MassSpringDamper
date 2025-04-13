%% PID Control of a Mass-Spring-Damper System
clear; clc; close all;

% System parameters
m = 1;      % mass (kg)
c = 2;      % damping coefficient (N·s/m)
k = 20;     % spring constant (N/m)

% Transfer function of the plant: 
num = 1;
den = [m c k];
plant = tf(num, den);

% Manual PID gains (adjust if needed)
Kp = 350;
Ki = 300;
Kd = 50;

% Create PID controller
controller = pid(Kp, Ki, Kd);

% Closed-loop system with unity feedback
closed_loop_sys = feedback(controller * plant, 1);

% Step response
figure;
step(closed_loop_sys, 5);  % simulate for 5 seconds
title('Step Response with Manual PID Control');
xlabel('Time (s)');
ylabel('Displacement');
grid on;

% Analyze performance
info = stepinfo(closed_loop_sys);
disp('Step Response Performance (Manual PID):');
disp(info);
