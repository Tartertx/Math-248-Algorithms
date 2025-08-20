%%%input parameters
h = 1.5
g = 9.8
v0 = 4
theta = 45
time = linspace(0,1,1000)

%%%kinematic equations
xt = v0 * cos(theta * pi/180)*time
yt = h + v0 * sin(theta * pi/180)*time - 0.5*g*time.^2

%%%finding when the ball hit the ground
[row, col, val] = find(yt < 0)