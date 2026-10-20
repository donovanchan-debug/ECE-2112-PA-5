# ECE-2112-PA-5

Name: Donovan C. Chan  
Section: 2ECE-A 

# A. TRANSPOSE OPERATIONS
Define the following matrices exactly as shown:  
• R = [5 -2 0 7; 1 3 -4 2; 6 0 8 -1]  
• Z = [2+3i -1+4i 5-2i; -3+i 6 2+5i]  
  
For each matrix, compute and display all three expressions:  
• transpose(A)  
• A’  
• A.’  
where A is replaced by R and then by Z.  

Answer the following in MATLAB comments below your output:  
a. Which operations give identical results for the real matrix R?  
b. Which two operations give identical results for the complex matrix Z?  
c. What additional operation is performed by the apostrophe operator ’ when the matrix contains complex entries?  

**How it works:**  

For Matrix R:  
1. Define the Real Matrix R:  
`R = [5 -2 0 7; 1 3 -4 2; 6 0 8 -1]`  
2. Use transpose(A) and replace A with R:  
`transpose(R)`  
3. Use A' and replace A with R:  
`R'`  
4. Use A.' and replace A with R:  
`R.'`

For Matrix Z:  
1. Define the Real Matrix Z:  
`Z = [2+3i -1+4i 5-2i; -3+i 6 2+5i]`  
2. Use transpose(A) and replace A with Z:  
`transpose(Z)`  
3. Use A' and replace A with Z:  
`Z'`  
4. Use A.' and replace A with Z:  
`Z.'`  

Answers to Questions:  
a. Which operations give identical results for the real matrix R?  
• All three operations `transpose(R)`, `R'`, and `R.'` give identical results for the real matrix R because Matrix R contains only real numbers.  

b. Which two operations give identical results for the complex matrix Z?   
• The operations `transpose(Z)` and `Z.'` give identical results because both are non-conjugate transpose matrices.  

c. What additional operation is performed by the apostrophe operator ’ when the matrix contains complex entries?  
• The apostrophe operator ’ performs conjugate transpose if the matrix contains complex entries 

# B. TWO METHODS FOR A LINEAR SYSTEM
Solve the simultaneous system  

2x1 − x2 + 3x3 + 2x4 = 16,  
x1 + 4x2 − 2x3 + x4 = −7,  
3x1 + 2x2 + x3 − x4 = 6,  
−2x1 + 3x2 + 4x3 + 2x4 = 7.  

Create the coefficient matrix A and right-hand-side vector b. Then compute the solution in two ways.  
1. Inverse method: compute x inv using the inverse of A.  
2. Cramer’s Rule: replace one column of A at a time with b, use determinants, and store the result in x cramer. A loop is optional.  

Do not use MATLAB’s left-division operator as either of the two required methods.  
Required checks: Display both solution vectors and det(A). Also display norm(x inv-x cramer) and norm(A*x inv-b). The determinant must be nonzero. Both norm checks should be approximately
zero to numerical precision.

**How it works:**  

For Inverse Method:  
1. Define the coefficient matrix A and right-hand side vector b:  
`A = [2 -1 3 2; 1 4 -2 1; 3 2 1 -1; -2 3 4 2]`  
`b = [16; -7; 6; 7]`  

2. Use the inverse matrix formula (𝑋=𝐴^−1*B) and display the solution vector using x_inv:  
`x_inv = inv(A) * b`  

For Cramer's Rule:
1. Define the determinant of coefficient matrix A:  
`detA = det(A)`

2. Create 4 modified matrices by replacing one column with the right-hand side vector b at a time, from the leftmost column to the rightmost column:  
`A1 = [b, A(1:4, 2:4)]`  
`A2 = [A(1:4, 1), b, A(1:4, 3:4)]`  
`A3 = [A(1:4, 1:2), b, A(1:4, 4)]`  
`A4 = [A(1:4, 1:3), b]`  

3. Display solution vector x_cramer as a matrix:
`x_cramer = [det(A1)/detA; det(A2)/detA; det(A3)/detA; det(A4)/detA]`

4. Display norms:
`norm(x_inv - x_cramer)`
`norm(A*x_inv-b)`
