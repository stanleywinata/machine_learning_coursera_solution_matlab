function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

%cost
theta_2 = theta(2:end,:);
theta_2s = theta_2.^2
h = X*theta;
J = 1/(2*m)*((h-y).^2)
J= sum(J(:));
J = J+lambda/(2*m)*sum(theta_2s);

theta_3 = theta;
theta_3(1) = 0;
%gradient
grad = 1/m*(X'*(h-y))+lambda/m*theta_3;



% =========================================================================

grad = grad(:);

end
