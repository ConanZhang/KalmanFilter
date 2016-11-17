function data = CS4300_A6_data()
% CS4300_A6_driver_lin - driver function for linear Kalman Filter
% Call:
%     CS4300_A6_data()
% Author:
%     Rajul Ramchandani & Conan Zhang
%     UU
%     Fall 2016

% Linear Trajectory
% hold on
% [x_trace,a_trace,z_trace,Sigma2_trace] = CS4300_A6_driver_lin(0,0,1,1,1,0.1,pi/8);
% 
% dif = abs(a_trace(:,2) - x_trace(:,2));
% M = mean(dif);
% V = var(dif);
% CI1 = M - 1.96*sqrt(V/length(dif));
% CI2 = M + 1.96*sqrt(V/length(dif));
%
% plot(a_trace(:,1), a_trace(:,2), 'DisplayName', 'Actual');
% plot(x_trace(:,1), x_trace(:,2), 'r', 'DisplayName', 'Estimated (connected)');
% plot(x_trace(:,1), x_trace(:,2), 'rx', 'DisplayName', 'Estimated (points)');
% plot(z_trace(:,1), z_trace(:,2), 'go', 'DisplayName', 'Sensors');
% legend('show', 'Location', 'northwest');
% xlabel('X(m)')
% ylabel('Y(m)')
% 
% C = eye(2,2);
% [r,c] = size(Sigma2_trace);
% 
% for t= [1:3:c]
%     temp = Sigma2_trace(t).Sigma2;
%     C(1,1) = temp(1,1);
%     C(2,2) = temp(2,2);
%     
%     error_ellipse(C, x_trace(t,:)');
% end

% Projectile Trajectory
% hold on
% [xt,at,zt,St] = CS4300_driver_proj(0.5, 20, 2,9.8,0.02,3);
%  
% dif = abs(at(:,2) - xt(:,2));
% M = mean(dif);
% V = var(dif);
% CI1 = M - 1.96*sqrt(V/length(dif));
% CI2 = M + 1.96*sqrt(V/length(dif));
%
% plot(at(:,1), at(:,2), '.k', 'DisplayName', 'Actual Trajectory');
% plot(zt(:,1), zt(:,2), 'go', 'DisplayName', 'Observed Trajectory');
% plot(xt(:,1), xt(:,2), '.r', 'DisplayName', 'Estimated Trajectory');
% legend('show');
% xlabel('X')
% ylabel('Y')

%Projectile Trajectory Velocities
 time = [];
 hold on
 [xt,at,zt,St] = CS4300_driver_proj(0.5, 20, 2,9.8,0.02,3);
 
dif = abs(at(:,4) - xt(:,4));
M = mean(dif);
V = var(dif);
CI1 = M - 1.96*sqrt(V/length(dif));
CI2 = M + 1.96*sqrt(V/length(dif));

%  for t= [0.5:0.5:21]
%      time(end+1) = t;
%  end
%  plot(time, at(:,3), 'DisplayName', 'Actual vel in x');
%  plot(time, at(:,4),  'DisplayName', 'Actual vel in y');
%  plot(time, xt(:,3), 'DisplayName', 'Estimated vel in x');
%  plot(time, xt(:,4),  'DisplayName', 'Estimated vel in y');
% 
% legend('show');
% xlabel('X')
% ylabel('Y')

