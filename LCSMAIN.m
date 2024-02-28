clear; close all; clc;

r = 0.085; % meters
d = 0.155; % meters
l = 0.255; % meters
theta = 90; % degrees
w = 180; % degrees/sec

%Converting to radians for math purposes
theta = theta*(pi/180);
w = w*(pi/180);

v_mod = LCSMODEL(r,d,l,theta,w);

%Get experimental value from each test
[theta_exp_5pt5,w_exp_5pt5,v_exp_5pt5,time_5pt5] = LCSDATA('Test1_5pt5V');
[theta_exp_6pt5,w_exp_6pt5,v_exp_6pt5,time_6pt5] = LCSDATA('Test1_6pt5V');
[theta_exp_7pt5,w_exp_7pt5,v_exp_7pt5,time_7pt5] = LCSDATA('Test1_7pt5V');
[theta_exp_8pt5,w_exp_8pt5,v_exp_8pt5,time_8pt5] = LCSDATA('Test1_8pt5V');
[theta_exp_9pt5,w_exp_9pt5,v_exp_9pt5,time_9pt5] = LCSDATA('Test1_9pt5V');
[theta_exp_10pt5,w_exp_10pt5,v_exp_10pt5,time_10pt5] = LCSDATA('Test1_10pt5V');


%Plotting velocity vs theta for each test
figure(1)
plot(theta_exp_5pt5,v_exp_5pt5);
xlabel('Experiment Theta Value');
ylabel('Experiment Velocity Value');
title('Velocoity vs Theta Graph for Experiment with 5.5V');
xlim([0,3600]);
ylim([-200,225]);

figure(2)
plot(theta_exp_6pt5,v_exp_6pt5);
xlabel('Experiment Theta Value');
ylabel('Experiment Velocity Value');
title('Velocoity vs Theta Graph for Experiment with 6.5V');
xlim([0,3600]);
ylim([-200,225]);

figure(3)
plot(theta_exp_7pt5,v_exp_7pt5);
xlabel('Experiment Theta Value');
ylabel('Experiment Velocity Value');
title('Velocoity vs Theta Graph for Experiment with 7.5V');
xlim([0,3600]);
ylim([-200,225]);

figure(4)
plot(theta_exp_8pt5,v_exp_8pt5);
xlabel('Experiment Theta Value');
ylabel('Experiment Velocity Value');
title('Velocoity vs Theta Graph for Experiment with 8.5V');
xlim([0,3600]);
ylim([-200,225]);

figure(5)
plot(theta_exp_9pt5,v_exp_9pt5);
xlabel('Experiment Theta Value');
ylabel('Experiment Velocity Value');
title('Velocoity vs Theta Graph for Experiment with 9.5V');
xlim([0,3600]);
ylim([-200,225]);

figure(6)
plot(theta_exp_10pt5,v_exp_10pt5);
xlabel('Experiment Theta Value');
ylabel('Experiment Velocity Value');
title('Velocoity vs Theta Graph for Experiment with 10.5V');
xlim([0,3600]);
ylim([-200,225]);