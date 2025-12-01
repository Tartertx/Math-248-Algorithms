function [x,A] = gauss_noswap(A)
% Performs Gaussian elimination with backwards substitution on the augmented matrix A (which is n x n+1).

% Use this as a test system.
% A = [1  1  1  2;
%      2 -1  1 -6;
%     -1  3 -2  9];

[n,m] = size(A);

if (m ~= n+1)
    disp('System must be square.')
    return
end



% Reduce the matrix to upper triangular.
for i=1:(n-1) % Loop over the first n-1 rows.    
    
    
    % Now we pivot.
    for j=(i+1):n % Loop over the last n-i columns.
        m = A(j,i)/A(i,i); % Determine the constant multiple for our row operation.
        for k=1:(n+1) % Do the row operation
            A(j,k) = A(j,k) - m*A(i,k);
        end
    end
end

% Now solve the system with back substitution.

if (A(n,n) == 0)
    if (A(n,n+1) == 0)
        disp('System has an infinite number of solutions.')
    else
        disp('System has no solution.')
    end
    return
end
x = zeros(n,1);
x(n) = A(n,n+1)/A(n,n);
for i=(n-1):-1:1
    x(i) = A(i,n+1);
    for j=(i+1):n
        x(i) = x(i) - A(i,j)*x(j);
    end
    x(i) = x(i)/A(i,i);
end


