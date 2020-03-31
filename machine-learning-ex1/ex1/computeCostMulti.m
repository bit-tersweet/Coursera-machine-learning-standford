function J = computeCostMulti(X, y, theta, num_iters)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

J_history = zeros(num_iters, 1);

for iter = 1:num_iters
    theta = theta - alpha * (1/m) * (((X*theta) - y)' * X)'; % Vectorized  
    J_history(iter) = computeCostMulti(X, y, theta);
end


% =========================================================================

end
