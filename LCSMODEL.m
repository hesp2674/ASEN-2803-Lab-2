function [v_mod] = LCSMODEL(r,d,l,theta,w)


%beta = asin((d-r*cos(theta))/l);


%v_mod = w*r*cos(theta)-(w/l)*r*sin(theta)*tan(beta);
w = w.*pi/180;


beta = asind((d-r.*sind(theta))./l);
v_mod = -w.*r.*(sind(theta)+cosd(theta).*tand(beta));

end