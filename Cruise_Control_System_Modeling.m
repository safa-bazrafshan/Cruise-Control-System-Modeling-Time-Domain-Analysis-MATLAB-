% Cruise Control System Modeling

% Define parameters
m = 1000; % mass of the car (kg)
b = 50;   % damping coefficient (N·s/m)

% Define the transfer function variable
s = tf('s');

% Define the transfer function G(s) = 1 / (m*s + b)
G = 1 / (m*s + b);

% Display the transfer function
disp('Cruise Control Transfer Function:');
G

% Plot step response (simulate applying a constant force)
figure;
step(G);
title('Step Response of Cruise Control System');
xlabel('Time (seconds)');
ylabel('Speed (m/s)');
grid on;