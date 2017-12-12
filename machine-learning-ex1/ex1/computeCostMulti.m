function J = computeCostMulti(X, y, theta)
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
sigma1 = 0;
xt1 = transpose(X);
tt1 = transpose(theta);
tot = tt1*xt1; 
for i = 1:m;
    sigma1 = sigma1 + ((tot(i) - y(i))^2);
end

J = 1/(2*m)*sigma1;



% =========================================================================

end
