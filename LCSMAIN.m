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