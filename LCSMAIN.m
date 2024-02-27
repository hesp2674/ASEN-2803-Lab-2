clear; close all; clc;

%Values are in meters and degrees

r = 0.085;
d = 0.155;
l = 0.255;
theta = 90;
w = 180;

%Converting to radians for math purposes
theta = theta*(pi/180);
w = w*(pi/180);

v_mod = LCSMODEL(r,d,l,theta,w);