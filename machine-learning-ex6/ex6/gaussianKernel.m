function sim = gaussianKernel(x1, x2, sigma)
%RBFKERNEL returns a radial basis function kernel between x1 and x2
%   sim = gaussianKernel(x1, x2) returns a gaussian kernel between x1 and x2
%   and returns the value in sim

% Ensure that x1 and x2 are column vectors
x1 = x1(:); x2 = x2(:);

% You need to return the following variables correctly.
sim = 0;
e= exp(1);
% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the similarity between x1
%               and x2 computed using a Gaussian kernel with bandwidth
%               sigma
%
%mail = stanleyw9709@gmail.com
%code = twr5xyBushpO0x24


v = x1-x2;
v= v.^2
num= sum(v(:));
den = 2*sigma^2;
sim = exp(-num/den); 





% =============================================================
    
end
