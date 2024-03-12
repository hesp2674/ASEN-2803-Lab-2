clear; close all; clc;

r = 8.5; % cm
d = 15.5; % cm
l = 25.5; % cm
theta = 0:360*6; % degrees
w = 600; % degrees/sec

%Converting to radians for math purposes
%theta = theta*(pi/180);
%w = w*(pi/180);

v_mod = LCSMODEL(r,d,l,theta,w);


%Get experimental value from each test
[theta_exp_5pt5,w_exp_5pt5,v_exp_5pt5,time_5pt5] = LCSDATA('Test1_5pt5V');
[theta_exp_6pt5,w_exp_6pt5,v_exp_6pt5,time_6pt5] = LCSDATA('Test1_6pt5V');
[theta_exp_7pt5,w_exp_7pt5,v_exp_7pt5,time_7pt5] = LCSDATA('Test1_7pt5V');
[theta_exp_8pt5,w_exp_8pt5,v_exp_8pt5,time_8pt5] = LCSDATA('Test1_8pt5V');
[theta_exp_9pt5,w_exp_9pt5,v_exp_9pt5,time_9pt5] = LCSDATA('Test1_9pt5V');
[theta_exp_10pt5,w_exp_10pt5,v_exp_10pt5,time_10pt5] = LCSDATA('Test1_10pt5V');

v_mod_5pt5 = LCSMODEL(r,d,l,theta_exp_5pt5,w_exp_5pt5);
v_mod_6pt5 = LCSMODEL(r,d,l,theta_exp_6pt5,w_exp_6pt5);
v_mod_7pt5 = LCSMODEL(r,d,l,theta_exp_7pt5,w_exp_7pt5);
v_mod_8pt5 = LCSMODEL(r,d,l,theta_exp_8pt5,w_exp_8pt5);
v_mod_9pt5 = LCSMODEL(r,d,l,theta_exp_9pt5,w_exp_9pt5);
v_mod_10pt5 = LCSMODEL(r,d,l,theta_exp_10pt5,w_exp_10pt5);



figure(1)
plot(theta_exp_5pt5,v_mod_5pt5, "-o", "LineWidth", 1, MarkerFaceColor="blue", MarkerSize=2);
xlabel('Theta (deg)');
ylabel('Velocity (cm/s)');


%Plotting velocity vs theta for each test
figure(2)
plot(theta_exp_5pt5,v_exp_5pt5, "-o", "LineWidth", 1, MarkerFaceColor="blue", MarkerSize=2);
xlabel('Experiment Theta Value (deg)');
ylabel('Experiment Velocity Value (cm/s)');
title('Velocoity vs Theta Graph for Experiment with 5.5V');
xlim([0,3600]);
ylim([-200,300]);
hold on
plot(theta_exp_5pt5,v_mod_5pt5, "-o", "LineWidth", 1, MarkerFaceColor="red", MarkerSize=2);
legend('Exp','Model');
hold off

figure(3)
plot(theta_exp_6pt5,v_exp_6pt5, "-o", "LineWidth", 1, MarkerFaceColor="blue", MarkerSize=2);
xlabel('Experiment Theta Value (deg)');
ylabel('Experiment Velocity Value (cm/s)');
title('Velocoity vs Theta Graph for Experiment with 6.5V');
xlim([0,3600]);
ylim([-200,300]);
hold on
plot(theta_exp_6pt5,v_mod_6pt5, "-o", "LineWidth", 1, MarkerFaceColor="red", MarkerSize=2);
legend('Exp','Model');

figure(4)
plot(theta_exp_7pt5,v_exp_7pt5, "-o", "LineWidth", 1, MarkerFaceColor="blue", MarkerSize=2);
xlabel('Experiment Theta Value (deg)');
ylabel('Experiment Velocity Value (cm/s)');
title('Velocoity vs Theta Graph for Experiment with 7.5V');
xlim([0,3600]);
ylim([-200,300]);
hold on
plot(theta_exp_7pt5,v_mod_7pt5, "-o", "LineWidth", 1, MarkerFaceColor="red", MarkerSize=2);
legend('Exp','Model');

figure(5)
plot(theta_exp_8pt5,v_exp_8pt5, "-o", "LineWidth", 1, MarkerFaceColor="blue", MarkerSize=2);
xlabel('Experiment Theta Value (deg)');
ylabel('Experiment Velocity Value (cm/s)');
title('Velocoity vs Theta Graph for Experiment with 8.5V');
xlim([0,3600]);
ylim([-200,300]);
hold on
plot(theta_exp_8pt5,v_mod_8pt5, "-o", "LineWidth", 1, MarkerFaceColor="red", MarkerSize=2);
legend('Exp','Model');

figure(6)
plot(theta_exp_9pt5,v_exp_9pt5, "-o", "LineWidth", 1, MarkerFaceColor="blue", MarkerSize=2);
xlabel('Experiment Theta Value (deg)');
ylabel('Experiment Velocity Value (cm/s)');
title('Velocoity vs Theta Graph for Experiment with 9.5V');
xlim([0,3600]);
ylim([-200,300]);
hold on
plot(theta_exp_9pt5,v_mod_9pt5, "-o", "LineWidth", 1, MarkerFaceColor="red", MarkerSize=2);
legend('Exp','Model');

figure(7)
plot(theta_exp_10pt5,v_exp_10pt5, "-o", "LineWidth", 1, MarkerFaceColor="blue", MarkerSize=2);
xlabel('Experiment Theta Value (deg)');
ylabel('Experiment Velocity Value (cm/s)');
title('Velocoity vs Theta Graph for Experiment with 10.5V');
xlim([0,3600]);
ylim([-200,300]);
hold on
plot(theta_exp_10pt5,v_mod_10pt5, "-o", "LineWidth", 1, MarkerFaceColor="red", MarkerSize=2);
legend('Exp','Model');

figure(8)
plot(time_5pt5,(v_exp_5pt5-v_mod_5pt5), "-o", "LineWidth", 1, MarkerFaceColor="blue", MarkerSize=2);
xlabel('Time (s)');
ylabel('Residuals (cm/s)');
title('Residual vs Time for 5.5V');

figure(9)
plot(time_6pt5,(v_exp_6pt5-v_mod_6pt5), "-o", "LineWidth", 1, MarkerFaceColor="blue", MarkerSize=2);
xlabel('Time (s)');
ylabel('Residuals (cm/s)');
title('Residual vs Time for 6.5V');

figure(10)
plot(time_7pt5,(v_exp_7pt5-v_mod_7pt5), "-o", "LineWidth", 1, MarkerFaceColor="blue", MarkerSize=2);
xlabel('Time (s)');
ylabel('Residuals (cm/s)');
title('Residual vs Time for 7.5V');

figure(11)
plot(time_8pt5,(v_exp_8pt5-v_mod_8pt5), "-o", "LineWidth", 1, MarkerFaceColor="blue", MarkerSize=2);
xlabel('Time (s)');
ylabel('Residuals (cm/s)');
title('Residual vs Time for 8.5V');

figure(12)
plot(time_9pt5,(v_exp_9pt5-v_mod_9pt5), "-o", "LineWidth", 1, MarkerFaceColor="blue", MarkerSize=2);
xlabel('Time (s)');
ylabel('Residuals (cm/s)');
title('Residual vs Time for 9.5V');

figure(13)
plot(time_10pt5,(v_exp_10pt5-v_mod_10pt5), "-o", "LineWidth", 1, MarkerFaceColor="blue", MarkerSize=2);
xlabel('Time (s)');
ylabel('Residuals (cm/s)');
title('Residual vs Time for 10.5V');