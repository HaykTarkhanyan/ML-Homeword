function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

h = X * theta;

k = length(theta);


case_0 = - (y' * log(h));
case_1 = -(1-y)' * log(1-h);


% You need to return the following variables correctly 
hypot = sigmoid(h);


J = (1/m) * (-y'*log(hypot)-(1-y)'*log(1-hypot));

%disp(J)
%disp(size(X'))

theta(1) = 0
J = J + lambda * (sum(theta.^2 )- theta(1)^2) / (2*m);

grad = (1/m) .* (X'*(hypot-y)) + (1/m) * lambda * theta();

disp(grad())

%size(lambda)
%size(theta([2:k


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta






% =============================================================

end
