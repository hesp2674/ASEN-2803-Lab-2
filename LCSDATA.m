function [theta_exp,w_exp,v_exp,time] = LCSDATA(filename)
%load in the inputed filename and convert it to array
exp_data = load(filename);

theta_exp = exp_data(:,2) - exp_data(1,2); %delete all value with first index of theta to make it start from 0
time = exp_data(:,1); %take measured time from experiment
w_exp = exp_data(:,4); %take measured omega from experiment
v_exp = exp_data(:,5)./10; %covert mm/s to cm/s
end