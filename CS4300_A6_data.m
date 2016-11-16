function data = CS4300_A6_data()
% CS4300_A6_driver_lin - driver function for linear Kalman Filter
% Call:
%     CS4300_A6_data()
% Author:
%     Rajul Ramchandani & Conan Zhang
%     UU
%     Fall 2016
[x_trace,a_trace,z_trace,Sigma2_trace] = CS4300_A6_driver_lin(0,0,1,1,1,0.1,pi/8);
plot(a_trace(:,1), a_trace(:,2), x_trace(:,1), x_trace(:,2));
%set(gca,'XTick',t_list );
%set(gca,'YTick', yticks);
% title('Figure 1: Steps vs KB Size')
% xlabel('No. of steps taken')
% ylabel('Size of KB')


[xt,at,zt,St] = CS4300_driver_proj(0.05,70,0.35,9.8,2,10);
plot(at(:,1), at(:,2), xt(:,1), xt(:,2));
%set(gca,'XTick',t_list );
%set(gca,'YTick', yticks);
% title('Figure 1: Steps vs KB Size')
% xlabel('No. of steps taken')
% ylabel('Size of KB')