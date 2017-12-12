function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples
n = size(theta);
% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
e=2.718281828;
tt= transpose(theta);
xt= transpose(X);
z = tt*xt;
val = ((1+e.^(-z)).^-1);
val = transpose(val);
reg = 0;

for j = 2:n;
    reg = reg +(theta(j))^2; 
end

    
for i = 1:m;
   J= J+(1/m)*(-y(i)*(log(val(i)))-(1-y(i))*(log(1-val(i))));
   for k = 1:n;
       grad(k) = grad(k) + (1/m)*(val(i)-y(i))*X(i,k);
   end;
end;


J = J+(lambda/(2*m))*reg;
for k = 2:n;
    grad(k)=grad(k)+(lambda/m)*(theta(k));
end;

% =============================================================

end
