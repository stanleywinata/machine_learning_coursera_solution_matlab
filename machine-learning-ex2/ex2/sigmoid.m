function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.
e = 2.718281828;
% You need to return the following variables correctly 
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).

g= ((1+e.^(-z)).^-1);




% =============================================================

end
