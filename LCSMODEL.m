function [v_mod] = LCSMODEL(r,d,l,theta,w)


beta = asin((d-r*cos(theta))/l);


v_mod = w*r*cos(theta)-(w/l)*r*sin(theta)*tan(beta);