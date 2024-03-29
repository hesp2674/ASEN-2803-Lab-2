clear; close all; clc;

%the measured dimensions for r,d, and l
r = 7.5; % cm
d = 15.5; % cm
l = 26; % cm

%theta and omega to check our idealized model
theta = 0:360*6; % degrees
w = 600; % degrees/sec

%get the model velocity
v_mod = LCSMODEL(r,d,l,theta,w);


%Get experimental value from each test
[theta_exp_5pt5,w_exp_5pt5,v_exp_5pt5,time_5pt5] = LCSDATA('Test1_5pt5V');
[theta_exp_6pt5,w_exp_6pt5,v_exp_6pt5,time_6pt5] = LCSDATA('Test1_6pt5V');
[theta_exp_7pt5,w_exp_7pt5,v_exp_7pt5,time_7pt5] = LCSDATA('Test1_7pt5V');
[theta_exp_8pt5,w_exp_8pt5,v_exp_8pt5,time_8pt5] = LCSDATA('Test1_8pt5V');
[theta_exp_9pt5,w_exp_9pt5,v_exp_9pt5,time_9pt5] = LCSDATA('Test1_9pt5V');
[theta_exp_10pt5,w_exp_10pt5,v_exp_10pt5,time_10pt5] = LCSDATA('Test1_10pt5V');

%get model velocity from the experimental theta and omega values
v_mod_5pt5 = LCSMODEL(r,d,l,theta_exp_5pt5,w_exp_5pt5);
v_mod_6pt5 = LCSMODEL(r,d,l,theta_exp_6pt5,w_exp_6pt5);
v_mod_7pt5 = LCSMODEL(r,d,l,theta_exp_7pt5,w_exp_7pt5);
v_mod_8pt5 = LCSMODEL(r,d,l,theta_exp_8pt5,w_exp_8pt5);
v_mod_9pt5 = LCSMODEL(r,d,l,theta_exp_9pt5,w_exp_9pt5);
v_mod_10pt5 = LCSMODEL(r,d,l,theta_exp_10pt5,w_exp_10pt5);

%get residual for each tests
residual_5pt5 = v_exp_5pt5-v_mod_5pt5;
residual_6pt5 = v_exp_6pt5-v_mod_6pt5;
residual_7pt5 = v_exp_7pt5-v_mod_7pt5;
residual_8pt5 = v_exp_8pt5-v_mod_8pt5;
residual_9pt5 = v_exp_9pt5-v_mod_9pt5;
residual_10pt5 = v_exp_10pt5-v_mod_10pt5;

%calculate std for signed residuals and mean for signed and absolute residuals
residual_stds = [std(residual_5pt5);std(residual_6pt5);std(residual_7pt5);std(residual_8pt5);std(residual_9pt5);std(residual_10pt5)];
residual_means = [mean(residual_5pt5);mean(residual_6pt5);mean(residual_7pt5);mean(residual_8pt5);mean(residual_9pt5);mean(residual_10pt5)];
abs_residual_means = [mean(abs(residual_5pt5));mean(abs(residual_6pt5));mean(abs(residual_7pt5));mean(abs(residual_8pt5));mean(abs(residual_9pt5));mean(abs(residual_10pt5))];
%place mean and std in table
mean_and_std = table(residual_means,abs_residual_means,residual_stds);

%plot of test model
figure(1)
plot(theta,v_mod, "-o", "LineWidth", 1, MarkerFaceColor="blue", MarkerSize=2);
xlabel('Theta (deg)');
ylabel('Velocity (cm/s)');
title('Test Model');


%Plotting velocity vs theta for each test in 2 by 3 subplot
figure(2)
subplot(2,3,1);
plot(theta_exp_5pt5,v_exp_5pt5,'-o', 'LineWidth',1, MarkerFaceColor='red',MarkerSize=2);
xlabel('Experiment Theta Value (deg)');
ylabel('Experiment Velocity Value (cm/s)');
title('Velocoity vs Theta Graph for Experiment with 5.5V');
xlim([0,3600]);
ylim([-200,300]);
hold on
plot(theta_exp_5pt5,v_mod_5pt5,'-o', 'LineWidth',1, MarkerFaceColor='blue',MarkerSize=2);
legend('Exp','Model');
hold off

subplot(2,3,2);
plot(theta_exp_6pt5,v_exp_6pt5,'-o', 'LineWidth',1, MarkerFaceColor='red',MarkerSize=2);
xlabel('Experiment Theta Value (deg)');
ylabel('Experiment Velocity Value (cm/s)');
title('Velocoity vs Theta Graph for Experiment with 6.5V');
xlim([0,3600]);
ylim([-200,300]);
hold on
plot(theta_exp_6pt5,v_mod_6pt5,'-o', 'LineWidth',1, MarkerFaceColor='blue',MarkerSize=2);
legend('Exp','Model');
hold off

subplot(2,3,3);
plot(theta_exp_7pt5,v_exp_7pt5,'-o', 'LineWidth',1, MarkerFaceColor='red',MarkerSize=2);
xlabel('Experiment Theta Value (deg)');
ylabel('Experiment Velocity Value (cm/s)');
title('Velocoity vs Theta Graph for Experiment with 7.5V');
xlim([0,3600]);
ylim([-200,300]);
hold on
plot(theta_exp_7pt5,v_mod_7pt5,'-o', 'LineWidth',1, MarkerFaceColor='blue',MarkerSize=2);
legend('Exp','Model');
hold off

subplot(2,3,4);
plot(theta_exp_8pt5,v_exp_8pt5,'-o', 'LineWidth',1, MarkerFaceColor='red',MarkerSize=2);
xlabel('Experiment Theta Value (deg)');
ylabel('Experiment Velocity Value (cm/s)');
title('Velocoity vs Theta Graph for Experiment with 8.5V');
xlim([0,3600]);
ylim([-200,300]);
hold on
plot(theta_exp_8pt5,v_mod_8pt5,'-o', 'LineWidth',1, MarkerFaceColor='blue',MarkerSize=2);
legend('Exp','Model');
hold off

subplot(2,3,5);
plot(theta_exp_9pt5,v_exp_9pt5,'-o', 'LineWidth',1, MarkerFaceColor='red',MarkerSize=2);
xlabel('Experiment Theta Value (deg)');
ylabel('Experiment Velocity Value (cm/s)');
title('Velocoity vs Theta Graph for Experiment with 9.5V');
xlim([0,3600]);
ylim([-200,300]);
hold on
plot(theta_exp_9pt5,v_mod_9pt5,'-o', 'LineWidth',1, MarkerFaceColor='blue',MarkerSize=2);
legend('Exp','Model');
hold off

subplot(2,3,6);
plot(theta_exp_10pt5,v_exp_10pt5,'-o', 'LineWidth',1, MarkerFaceColor='red',MarkerSize=2);
xlabel('Experiment Theta Value (deg)');
ylabel('Experiment Velocity Value (cm/s)');
title('Velocoity vs Theta Graph for Experiment with 10.5V');
xlim([0,3600]);
ylim([-200,300]);
hold on
plot(theta_exp_10pt5,v_mod_10pt5, "-o", "LineWidth", 1, MarkerFaceColor="blue", MarkerSize=2);
legend('Exp','Model');
hold off

%plotting signed residual vs time for each test in 2 by 3 subplots
figure(3)
subplot(2,3,1);
plot(time_5pt5,residual_5pt5, "-o", "LineWidth", 1, MarkerFaceColor="blue", MarkerSize=2);
hold on
yline(residual_means(1), "LineWidth", 1,"Color","red")
xlabel('Time (s)');
ylabel('Residuals (cm/s)');
title('Signed Residual vs Time for 5.5V');
xlim([0,12]);
ylim([-30,30]);
hold off

subplot(2,3,2);
plot(time_6pt5,residual_6pt5, "-o", "LineWidth", 1, MarkerFaceColor="blue", MarkerSize=2);
hold on
yline(residual_means(2), "LineWidth", 1,"Color","red")
xlabel('Time (s)');
ylabel('Residuals (cm/s)');
title('Signed Residual vs Time for 6.5V');
xlim([0,12]);
ylim([-30,30]);
hold off

subplot(2,3,3);
plot(time_7pt5,residual_7pt5, "-o", "LineWidth", 1, MarkerFaceColor="blue", MarkerSize=2);
hold on
yline(residual_means(3), "LineWidth", 1,"Color","red")
xlabel('Time (s)');
ylabel('Residuals (cm/s)');
title('Signed Residual vs Time for 7.5V');
xlim([0,12]);
ylim([-30,30]);
hold off

subplot(2,3,4);
plot(time_8pt5,residual_8pt5, "-o", "LineWidth", 1, MarkerFaceColor="blue", MarkerSize=2);
hold on
yline(residual_means(4), "LineWidth", 1,"Color","red")
xlabel('Time (s)');
ylabel('Residuals (cm/s)');
title('Signed Residual vs Time for 8.5V');
xlim([0,12]);
ylim([-30,30]);
hold off

subplot(2,3,5);
plot(time_9pt5,residual_9pt5, "-o", "LineWidth", 1, MarkerFaceColor="blue", MarkerSize=2);
hold on
yline(residual_means(5), "LineWidth", 1,"Color","red")
xlabel('Time (s)');
ylabel('Residuals (cm/s)');
title('Signed Residual vs Time for 9.5V');
xlim([0,12]);
ylim([-30,30]);
hold off

subplot(2,3,6);
plot(time_10pt5,residual_10pt5, "-o", "LineWidth", 1, MarkerFaceColor="blue", MarkerSize=2);
hold on
yline(residual_means(6), "LineWidth", 1,"Color","red")
xlabel('Time (s)');
ylabel('Residuals (cm/s)');
title('Signed Residual vs Time for 10.5V');
xlim([0,12]);
ylim([-30,30]);
hold off

%plotting absolute residual vs time for each test in 2 by 3 subplots
figure(4)
subplot(2,3,1);
plot(time_5pt5,abs(residual_5pt5), "-o", "LineWidth", 1, MarkerFaceColor="blue", MarkerSize=2);
hold on
yline(abs_residual_means(1), "LineWidth", 1,"Color","red")
xlabel('Time (s)');
ylabel('Residuals (cm/s)');
title('Absolute Residual vs Time for 5.5V');
xlim([0,12]);
ylim([0,30]);
hold off

subplot(2,3,2);
plot(time_6pt5,abs(residual_6pt5), "-o", "LineWidth", 1, MarkerFaceColor="blue", MarkerSize=2);
hold on
yline(abs_residual_means(2), "LineWidth", 1,"Color","red")
xlabel('Time (s)');
ylabel('Residuals (cm/s)');
title('Absolute Residual vs Time for 6.5V');
xlim([0,12]);
ylim([0,30]);
hold off

subplot(2,3,3);
plot(time_7pt5,abs(residual_7pt5), "-o", "LineWidth", 1, MarkerFaceColor="blue", MarkerSize=2);
hold on
yline(abs_residual_means(3), "LineWidth", 1,"Color","red")
xlabel('Time (s)');
ylabel('Residuals (cm/s)');
title('Absolute Residual vs Time for 7.5V');
xlim([0,12]);
ylim([0,30]);
hold off 

subplot(2,3,4);
plot(time_8pt5,abs(residual_8pt5), "-o", "LineWidth", 1, MarkerFaceColor="blue", MarkerSize=2);
hold on
yline(abs_residual_means(4), "LineWidth", 1,"Color","red")
xlabel('Time (s)');
ylabel('Residuals (cm/s)');
title('Absolute Residual vs Time for 8.5V');
xlim([0,12]);
ylim([0,30]);
hold off

subplot(2,3,5);
plot(time_9pt5,abs(residual_9pt5), "-o", "LineWidth", 1, MarkerFaceColor="blue", MarkerSize=2);
hold on
yline(abs_residual_means(5), "LineWidth", 1,"Color","red")
xlabel('Time (s)');
ylabel('Residuals (cm/s)');
title('Absolute Residual vs Time for 9.5V');
xlim([0,12]);
ylim([0,30]);
hold off

subplot(2,3,6);
plot(time_10pt5,abs(residual_10pt5), "-o", "LineWidth", 1, MarkerFaceColor="blue", MarkerSize=2);
hold on
yline(abs_residual_means(6), "LineWidth", 1,"Color","red")
xlabel('Time (s)');
ylabel('Residuals (cm/s)');
title('Absolute Residual vs Time for 10.5V');
xlim([0,12]);
ylim([0,30]);
hold off

%plot signed residuals vs time and absolute residual vs time for 10.5V in
%same figure
figure(5)
plot(time_10pt5,residual_10pt5, "-o", "LineWidth", 1, MarkerFaceColor="blue", MarkerSize=2);
hold on 
plot(time_10pt5,abs(residual_10pt5), "-o", "LineWidth", 1, MarkerFaceColor="red", MarkerSize=2);
xlabel('Time (s)');
ylabel('Residuals (cm/s)');
legend('Signed Residuals','Absolute Residuals','Location','southwest')
title('Comparison of Signed Residuals and Absolute Residuals for 10.5V')
hold off

%plot signed residuals vs time for all tests in one figure
figure(6)
plot(time_5pt5,residual_5pt5,'-o', 'LineWidth',1, MarkerFaceColor='red',MarkerSize=2);
xlabel('Time (s)');
ylabel('Residuals (cm/s)');
title('Residual vs Time for All Voltages')
hold on
plot(time_6pt5,residual_6pt5,'-o', 'LineWidth',1, MarkerFaceColor='y',MarkerSize=2);
plot(time_7pt5,residual_7pt5,'-o', 'LineWidth',1, MarkerFaceColor='red',MarkerSize=2);
plot(time_8pt5,residual_8pt5,'-o', 'LineWidth',1, MarkerFaceColor='red',MarkerSize=2);
plot(time_9pt5,residual_9pt5,'-o', 'LineWidth',1, MarkerFaceColor='red',MarkerSize=2);
plot(time_10pt5,residual_10pt5,'-o', 'LineWidth',1, MarkerFaceColor='red',MarkerSize=2);
legend('5.5V','6.5V','7.5V','8.5V','9.5V','10.5V',Location='southeast');
hold off

%plot signed residuals vs theta for all tests in one figure
figure(6)
plot(theta_exp_5pt5,residual_5pt5,'-o', 'LineWidth',1, MarkerFaceColor='red',MarkerSize=2);
xlabel('Theta (degrees)');
ylabel('Residuals (cm/s)');
title('Residual vs Theta for All Voltages')
hold on
plot(theta_exp_6pt5,residual_6pt5,'-o', 'LineWidth',1, MarkerFaceColor='y',MarkerSize=2);
plot(theta_exp_7pt5,residual_7pt5,'-o', 'LineWidth',1, MarkerFaceColor='red',MarkerSize=2);
plot(theta_exp_8pt5,residual_8pt5,'-o', 'LineWidth',1, MarkerFaceColor='red',MarkerSize=2);
plot(theta_exp_9pt5,residual_9pt5,'-o', 'LineWidth',1, MarkerFaceColor='red',MarkerSize=2);
plot(theta_exp_10pt5,residual_10pt5,'-o', 'LineWidth',1, MarkerFaceColor='red',MarkerSize=2);
legend('5.5V','6.5V','7.5V','8.5V','9.5V','10.5V',Location='southeast');
hold off
