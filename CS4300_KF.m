function [mu_t,Sigma_t] =CS4300_KF(mu_tm1,Sigma_tm1,u_t,z_t,A_t,R_t,...
B_t,C_t,Q_t)
% CS4300_KF - one step in Kalman Filter
% On input:
%     mu_tm1 (nx1 vector): previous state estimate vector
%     Sigma_tm1 (nxn matrix): state covariance matrix
%     u_t (mx1 vector): control vector
%     z_t (kx1 vector): measurement vector
%     A_t (nxn matrix): state transition matrix
%     R_t (nxn matrix): state transition covariance matrix
%     B_t (nxm matrix): control matrix for proces equation
%     C_t (kxn matrix): linear transform for measurement equation
%     Q_t (kxk matrix): sensor noise covariance matrix
% On output:
%     mu_t (nx1 vector): next state estimate
%     Sigma_t (nxn matrix): state covariance matrix
% Call:
%     [x,Sigma2] = CS4300_KF(x,Sigma2,u,z,A,R,B,C,Q);
% Author:
%     Rajul Ramchandani & Conan Zhang
%     UU
%     Fall 2016