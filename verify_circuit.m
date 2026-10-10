%% Parallel RL Circuit Verification Script
% This script calculates the theoretical steady-state parameters
% of a parallel RL circuit to verify the Simulink model.

clear; clc;

%% 1. Define Circuit Parameters (Adjust these values to match your model)
V_rms = 100;        % Source Voltage (RMS Volts)
f = 50;             % Frequency (Hz)
R = 10;             % Resistance (Ohms)
L = 0.01;           % Inductance (Henries)

%% 2. Theoretical Calculations
omega = 2*pi*f;     % Angular frequency (rad/s)
X_L = omega * L;    % Inductive Reactance (Ohms)

% Branch Currents (RMS)
I_R = V_rms / R;
I_L = V_rms / X_L;

% Total Current (Phasor magnitude)
I_total = sqrt(I_R^2 + I_L^2);

% Equivalent Impedance (Z)
Z = 1 / sqrt((1/R)^2 + (1/X_L)^2);

% Power Calculations
P = V_rms * I_R;    % Active Power (Watts)
Q = V_rms * I_L;    % Reactive Power (VAR)
S = V_rms * I_total;% Apparent Power (VA)
PF = P / S;         % Power Factor

%% 3. Display Results in Command Window
fprintf('========================================\n');
fprintf('     Parallel RL Circuit Results        \n');
fprintf('========================================\n');
fprintf('Source Voltage:       %.2f V (RMS)\n', V_rms);
fprintf('Reactance (X_L):      %.2f Ohms\n', X_L);
fprintf('Resistor Current:     %.2f A (RMS)\n', I_R);
fprintf('Inductor Current:     %.2f A (RMS)\n', I_L);
fprintf('Total Line Current:   %.2f A (RMS)\n', I_total);
fprintf('Total Impedance (Z):  %.2f Ohms\n', Z);
fprintf('----------------------------------------\n');
fprintf('Active Power (P):     %.2f W\n', P);
fprintf('Reactive Power (Q):   %.2f VAR\n', Q);
fprintf('Power Factor (PF):    %.3f (Lagging)\n', PF);
fprintf('========================================\n');
