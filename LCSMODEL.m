function [v_mod] = LCSMODEL(r,d,l,theta,w)

w = w.*pi/180; %convert rad/sec to deg/sec

beta = asind((d-r.*sind(theta))./l); %calculate beta using derived equation. unit in degrees
v_mod = -w.*r.*(sind(theta)+cosd(theta).*tand(beta)); %calculate model velocity in cm/s using derived equations
end