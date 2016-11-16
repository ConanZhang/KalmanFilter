function xa = CS4300_process(xa, A, B, u, R)
% CS4300_process - process values
% On input:
%     xa (1x4 array): x_location, y_location, x_velocity, y_velocity
%     A (nxn matrix): state transition matrix
%     B (nxm matrix): control matrix for proces equation
%     u (mx1 vector): control vector
%     R (nxn matrix): state transition covariance matrix
% On output:
%     xa (1x4 array): x_location, y_location, x_velocity, y_velocity
% Call:
%    xa = CS4300_process(xa, A, B, u, R);
% Author:
%     Rajul Ramchandani & Conan Zhang
%     UU
%     Fall 2016
xa = (A * xa) + (B * u);

[rows,cols] = size(R);
n = zeros(rows,1);

for t = 1:rows
   n(t) = sqrt(R(t,t))*randn; 
end

xa = xa + n;