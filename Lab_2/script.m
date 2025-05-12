% Lab 2: Discrete Dirac, Dirac combs, sampling & ZOH

clear; close all; clc

%% Exercise 1: Discrete Dirac Sequences
T = 1;            % sampling period
k = -1:10;        % sample indices

% 1) Dirac impulse δ[k]
delta = (k == 0);

% 2) Delayed Dirac δ[k-1]
delta_delayed = (k == 1);

% 3) Dirac comb (period T=1)
comb = (mod(k, T) == 0);

% 4) Delayed comb (delay = 3 sec)
comb_delayed = (mod(k - 3/T, T) == 0);

figure('Name','Ex 1: Dirac & Combs');
subplot(2,2,1);
stem(k, delta, 'filled');
title('δ[k]'); xlabel('k'); ylabel('Amplitude'); grid on;

subplot(2,2,2);
stem(k, delta_delayed, 'filled');
title('δ[k-1]'); xlabel('k'); ylabel('Amplitude'); grid on;

subplot(2,2,3);
stem(k, comb, 'filled');
title('Comb: δ[k - nT]'); xlabel('k'); ylabel('Amplitude'); grid on;

subplot(2,2,4);
stem(k, comb_delayed, 'filled');
title('Delayed Comb (3 s)'); xlabel('k'); ylabel('Amplitude'); grid on;

%% Exercise 2: Continuous vs. Sampled vs. ZOH
t_cont = linspace(0,10,1001);    % fine time grid
y_cont = sin(t_cont);            % continuous signal

Ts = 0.25;                       % sampling period
n = 0:Ts:10;                     % discrete-time instants
y_samp = sin(n);                 % sampled values

% Zero-order hold: hold each sample until next
y_zoh = repelem(y_samp, 2);      % oversample for plotting
t_zoh = sort([n; n(2:end)]);     % create a piecewise-constant timeline
y_zoh = [y_samp; y_samp(1:end-1)];
t_zoh = [n; n(2:end)]';
t_zoh = t_zoh(:);
y_zoh = y_zoh(:);

figure('Name','Ex 2 (T=0.25s)');
plot(t_cont, y_cont, 'LineWidth',1); hold on;
stem(n, y_samp, 'filled');
stairs(t_zoh, y_zoh);
title('y(t)=sin(t): Continuous, Sampled & ZOH (T=0.25s)');
xlabel('Time (s)'); ylabel('Amplitude'); legend('Continuous','Sampled','ZOH');
grid on;

% Compare for T = 0.01 and T = 2
for Ts2 = [0.01, 2]
    n2 = 0:Ts2:10;
    y_s2 = sin(n2);
    % simple ZOH plotting via stairs:
    figure('Name',sprintf('Comparison T=%.2f',Ts2));
    plot(t_cont, y_cont); hold on;
    stem(n2,y_s2,'filled');
    title(sprintf('Sampling Comparison (T=%.2f s)',Ts2));
    xlabel('Time (s)'); ylabel('y(t)'); legend('Continuous','Sampled');
    grid on;
end
