function P = lagrange_interp(nodes,data,x)
% Creates the highest degree possible interpolating polynomial, P(x), 
% using Lagrange's approach when given the nodes (x-values) and data (f(x) values)
% and then approximates f(x) by P(x).

for i = 1:length(nodes)
    L(i) = 1; % Initialize at 1.
end
P = 0; % Initialize at 0.
for i = 1:length(nodes)
    for j = 1:length(nodes)
        if (i ~= j)
            L(i) = L(i)*(x - nodes(j))/(nodes(i) - nodes(j));
        end
    end
    P = P + L(i)*data(i);
end