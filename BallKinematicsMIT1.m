%%%input parameters
h = 1.5;
g = 9.8;
v0 = 4;
theta = 45;
time = linspace(0,1,1000);

%%%kinematic equations
xt = v0 * cos(theta * pi/180)*time;
yt = h + v0 * sin(theta * pi/180)*time - 0.5*g*time.^2;

% keep only the part above the ground
valid = yt >= 0 & isfinite(xt) & isfinite(yt);
x = xt(valid)';
y = yt(valid)';

%%%make plot
figure
plot(x,y,'b-','LineWidth',2)


xlabel('Distance (m)')             
ylabel('Height (m)')               
title('Ball Trajectory')           

hold on  

% (v) ground line
plot([0 max(x)], [0 0], 'k--', 'LineWidth', 1.5)