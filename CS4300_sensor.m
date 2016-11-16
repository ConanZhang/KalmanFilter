function z = CS4300_sensor(xa, C, Q)
% CS4300_fall_sensor - observes falling object
% On input:
%     xa : position and velocity of object
%     C : sensor process model
%     Q : variance of Gaussian noise for sensor
% On output:
%     z (float): sensed height of object
% Call:
%     z = CS4300_fall_sensor(y,1,0.1);
% Author:
%     T. Henderson
%     UU
%     Fall 2016
%
epsilon = zeros(2,1);

for i = 1:2
    epsilon(i,1) = sqrt(Q(i,i))*randn;
end

z = (C*xa) + epsilon;