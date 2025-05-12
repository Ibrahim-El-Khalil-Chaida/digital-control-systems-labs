% Lab 1 Define and analyze G(s) = (2s+1)(s^2+2s+1)

clear; close all; clc

% 1) Define the transfer function G(s)
num = [2 1];        % Numerator coefficients 2s + 1
den = [1 2 1];      % Denominator coefficients s^2 + 2s + 1
G = tf(num, den);   % Create transfer function model

% 2) Display canonical form
%    G(s) = 2(s + 0.5)(s + 1)^2
fprintf('Canonical form G(s) = 2(s + 0.5)(s + 1)^2nn');

% 3) Extract system properties
z = zero(G);        % Zeros of G(s)
p = pole(G);        % Poles of G(s)
K = dcgain(G);      % Static gain (DC gain)

fprintf('Zeros  %sn', mat2str(z.'));
fprintf('Poles  %sn', mat2str(p.'));
fprintf('DC Gain %.3fnn', K);

% 4) Plot step and impulse responses
figure;
subplot(2,1,1);
step(G);
title('Step Response of G(s) (Open Loop)');
xlabel('Time (s)');
ylabel('Amplitude (volt)');
grid on;

subplot(2,1,2);
impulse(G);
title('Impulse Response of G(s) (Open Loop)');
xlabel('Time (s)');
ylabel('Amplitude (volt)');
grid on;

% End of script
