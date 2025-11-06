% population_growth.m
% Clean version of population growth simulation

% Parameters
P0 = 1000;        % Initial population
r = 0.03;         % Growth rate
K = 5000;         % Carrying capacity
t = 0:1:50;       % Time in years

% Exponential growth
P_exp = P0 * exp(r * t);

% Logistic growth
P_log = K ./ (1 + ((K - P0)/P0) * exp(-r * t));

% Plotting
figure
plot(t, P_exp, 'b-', 'LineWidth', 2)
hold on
plot(t, P_log, 'r--', 'LineWidth', 2)
xlabel('Time (years)')
ylabel('Population')
title('Exponential vs Logistic Growth')
legend('Exponential', 'Logistic')
grid on
