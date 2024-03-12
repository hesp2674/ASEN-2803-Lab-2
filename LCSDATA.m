function [theta_exp,w_exp,v_exp,time] = LCSDATA(filename)
%load in the inputed filename and convert it to array
exp_data = load(filename);

theta_exp = exp_data(:,2);%take measured theta from experiment

%since experiment data with 9.5V does not line up with first cycle, we take
%data from second cycle
if filename == "Test1_9pt5V"
    theta_logical = theta_exp > (theta_exp(1)+720-mod(theta_exp(1),360));
else
    theta_logical = theta_exp > (theta_exp(1)+360-mod(theta_exp(1),360));
end
theta_exp = theta_exp(theta_logical);%only take measurements that is after founded index
time = exp_data(theta_logical,1); %take measured time from experiment
w_exp = exp_data(theta_logical,4); %take measured omega from experiment
v_exp = exp_data(theta_logical,5)./10; %covert mm/s to cm/s
theta_exp = theta_exp - theta_exp(1); %subtract all value with first index of theta to make it start from 0
end