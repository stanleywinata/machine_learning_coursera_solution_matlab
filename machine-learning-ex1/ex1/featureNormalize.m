function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = mean(1, size(X, 2));
sigma = std(1, size(X, 2));
av1 = mean(X(:,1));
av2= mean(X(:,2));
std1 = std(X(:,1));
std2 = std(X(:,2));
m = length(X)

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%  
for j = 1:size(X,2);
 for i = 1:m;
     X_norm(i,j) = (X(i,1)-av1)/std1;
     X_norm(i,2) = (X(i,2)-av2)/std2;
 end






% ============================================================

end
