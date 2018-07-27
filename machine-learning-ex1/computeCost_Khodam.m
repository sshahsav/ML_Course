function J = computeCost_khodam(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

%prediction = theta' * X;
%X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
%theta = zeros(2, 1); % initialize fitting parameters
iterations = 1500;
alpha = 0.01;
j =1;
while j <= iterations,
    theta(1) = theta(1) - alpha * (1./m)*((theta' * X')'-y)'*X(:,1);
    theta(2) = theta(2) - alpha * (1./m)*((theta' * X')'-y)'*X(:,2);
    j = j+1;
end;
J = (1/2.*m)*((theta' * X)-y)^2


% =========================================================================

end
