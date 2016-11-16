function [x_trace,a_trace,z_trace,Sigma2_trace] = CS4300_A6_driver_lin(...
x0,y0,vx0,vy0,max_time,del_t,theta)
% CS4300_A6_driver_lin - driver function for linear Kalman Filter
% On input:
%     x0 (float): initial x location
%     y0 (float): initial y location
%     vx0 (float): initial x velocity
%     vy0 (float): initial y velocity
%     max_time (float): max time for tracking
%     del_t (float): time step size
%     theta (float): angle of line (in radians)
% On output:
%     x_trace (nx4 array): each row has estimated pose (x,y vals)
%     a_trace (nx4 array): actual location at each time step
%     z_trace (nx2 array): sensed location at each time step
%     Sigma2_trace (struct array): covariance of estimated location
%       (i).Sigma2 (4x4 array): covariance matrix for i_th step
% Call:
%     [xt,at,zt,St] = CS4300_A6_driver_lin(0,0,1,1,1,0.1,pi/4);
% Author:
%     Rajul Ramchandani & Conan Zhang
%     UU
%     Fall 2016
u = [0,0];
xa = [x0; y0; vx0; vy0];

A = [1,0,del_t,0;0,1,0,del_t;0,0,1,0;0,0,0,1];
B = [(del_t*del_t)/2,0;0,(del_t*del_t);del_t,0;0,del_t];
C = eye(2,4);
Q = zeros(2,2);
R = zeros(4,4);
Z = CS4300_fall_sensor(xa, C, Q);
Z_t = Z';
x = [Z(1); Z(2); 0; 0];
Sigma2 = zeros(4,4);
xt = x';

t_vals = [0:del_t:max_time];
num_steps = length(t_vals);
a_trace = xa';

for t = 1:num_steps
    xa = CS4300_process(xa, A, B, u, R);
    a_trace(t+1,:) = xa';
    Z = CS4300_fall_sensor(xa[1,2], C, Q);
    Z_t(t+1,:) = Z';
    [x, Sigma2] = CS4300_KF(x, Sigma2, u, Z_t, A, R, B, C, Q);
    x_trace = x';
end