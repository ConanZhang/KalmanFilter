
%Projectile Trajectory
 time = [];
 hold on
 [xt,at,zt,St] = CS4300_driver_proj(0.5, 20, 2,9.8,0.02,3);
 for t= [0.5:0.5:21]
     time(end+1) = t;
 end
 plot(time, at(:,3), 'DisplayName', 'Actual vel in x');
 hold on
 plot(time, at(:,4),  'DisplayName', 'Actual vel in y');
 hold on
 plot(time, xt(:,3), 'DisplayName', 'Estimated vel in x');
 hold on
 plot(time, xt(:,4),  'DisplayName', 'Estimated vel in y');

% 
% %plot(xt(:,3), xt(:,4), '.r', 'DisplayName', 'Estimated Trajectory');
legend('show');
xlabel('X')
ylabel('Y')