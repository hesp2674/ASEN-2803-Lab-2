function [v_mod] = LCSMODEL(r,d,l,theta,w)


%beta = asin((d-r*cos(theta))/l);


%v_mod = w*r*cos(theta)-(w/l)*r*sin(theta)*tan(beta);

beta = asind((d-r.*cosd(theta))./l);
v_mod = -w.*r.*cosd(theta)-(w./l).*r.*sind(theta).*tand(beta);

