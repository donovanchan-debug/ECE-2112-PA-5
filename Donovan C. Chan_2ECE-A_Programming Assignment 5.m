% A. TRANSPOSE OPERATIONS
% For Matrix R:
R = [5 -2 0 7; 1 3 -4 2; 6 0 8 -1]
transpose(R)
R'
R.'

%For Matrix Z:
Z = [2+3i -1+4i 5-2i; -3+i 6 2+5i]
transpose(Z)
Z'
Z.'

% Answers to Questions:

% a. Which operations give identical results for the real matrix R?
% • All three operations transpose(R), R', and R.' give identical results for the real matrix R because Matrix R contains only real numbers.

% b. Which two operations give identical results for the complex matrix Z?
% • The operations transpose(Z) and Z.' give identical results because both are non-conjugate transpose matrices.

% c. What additional operation is performed by the apostrophe operator ' when the matrix contains complex entries?
% • The apostrophe operator ' performs conjugate transpose if the matrix contains complex entries

% B. TWO METHODS FOR A LINEAR SYSTEM
% For Inverse Method:
A = [2 -1 3 2; 1 4 -2 1; 3 2 1 -1; -2 3 4 2]
b = [16; -7; 6; 7]

x_inv = inv(A) * b

% For Cramer's Rule:
A1 = [b, A(1:4, 2:4)]
A2 = [A(1:4, 1), b, A(1:4, 3:4)]
A3 = [A(1:4, 1:2), b, A(1:4, 4)]
A4 = [A(1:4, 1:3), b]

x_cramer = [det(A1)/detA; det(A2)/detA; det(A3)/detA; det(A4)/detA]

% Displaying Norms:
norm(x_inv - x_cramer)
norm(A*x_inv-b)