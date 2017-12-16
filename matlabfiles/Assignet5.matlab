%=========================Problem1==========================%
A = pascal(4)

% a) Show that column of a for a basis for R^4. If a matrix
% invertable, then it formas a basis of R^n. In our case
% matrix is in R^4 so if matrix is invertable then it forms
% a basis in R^4
det(A)
ans =
     1
% determinant is not zero so matrix is invertable

%b) Use the Gram-Schmidt process (as described in the overview) to 
% find a matrix U whose columns form an orthonormal basis for ℝ4
U = A(:,1)/norm(A(:, 1));
for k=2:4
z = A(:,k)-U*(U'*A(:,k));
u = z/norm(z); U=[U,u];
end

>> U

U =

    0.5000   -0.6708    0.5000   -0.2236
    0.5000   -0.2236   -0.5000    0.6708
    0.5000    0.2236   -0.5000   -0.6708
    0.5000    0.6708    0.5000    0.2236

%c) From your result in part (b), find a QR factorization of A QT*A = I*R
Q = U

Q =

    0.5000   -0.6708    0.5000   -0.2236
    0.5000   -0.2236   -0.5000    0.6708
    0.5000    0.2236   -0.5000   -0.6708
    0.5000    0.6708    0.5000    0.2236


>> QT = transpose(Q)

QT =

    0.5000    0.5000    0.5000    0.5000
   -0.6708   -0.2236    0.2236    0.6708
    0.5000   -0.5000   -0.5000    0.5000
   -0.2236    0.6708   -0.6708    0.2236


>> R = QT*A*eye(4)

R =

    2.0000    5.0000   10.0000   17.5000
         0    2.2361    6.7082   14.0872
   -0.0000   -0.0000    1.0000    3.5000
    0.0000    0.0000    0.0000    0.2236



%d) se qr comand and compare the results
[Q, R] = qr(A)

Q =

   -0.5000    0.6708    0.5000    0.2236
   -0.5000    0.2236   -0.5000   -0.6708
   -0.5000   -0.2236   -0.5000    0.6708
   -0.5000   -0.6708    0.5000   -0.2236


R =

   -2.0000   -5.0000  -10.0000  -17.5000
         0   -2.2361   -6.7082  -14.0872
         0         0    1.0000    3.5000
         0         0         0   -0.2236

%Q and R values are the same but the signs are different in both matrices

%e)Use the orthogonal matrix command orth(A) to produce an 
%orthogonal basis for ℝ4
orth(A)

ans =

   -0.0602   -0.5304    0.7873   -0.3087
   -0.2012   -0.6403   -0.1632    0.7231
   -0.4581   -0.3918   -0.5321   -0.5946
   -0.8638    0.3939    0.2654    0.1684

%f) Check if vectors of basis are orthonormal. To be orthonormal
% dot product of all vectors in the matrix must = 0. Use 2 nested 
% for loops to check all the vectors
for i = 1:4
	for j = i+1:4
		disp(round(dot(Q(:,i), Q(:,j))));
	end
end
       0       

       0       

       0       

       0       

       0       

       0    

% dot product of every possible combination of vectors = 0 so matrix
% is orthanormal


%============================Problem2================================%
X = [0 0 0; 
	2 4 8; 
	4 4^2 4^3; 
	6 6^2 6^3; 
	8 8^2 8^3; 
	10 10^2 10^3; 
	12 12^2 12^3]

X =

           0           0           0
           2           4           8
           4          16          64
           6          36         216
           8          64         512
          10         100        1000
          12         144        1728


>> Y = [0; 29.9; 104.7; 222.0; 380.4; 571.7; 809.2]

Y =

         0
   29.9000
  104.7000
  222.0000
  380.4000
  571.7000
  809.2000

beta = X'*X\X'*Y

beta =

    4.2611
    5.6236
   -0.0305













