%Problem 1:  Use commands to produce the following:
%a) a 2×4matrix of all zeros
zeros(2, 4)
%b) a 3×2matrix of all ones
ones(3, 2)
%c) the 3×3 identity matrix
eye(3)
%d)  a 4×4 diagonal matrix with diagonal entries 1, –2, 4, 3
diag([1; -2; 4; 3])

%Problem 2: Use several commands similar to those in problem #1 to construct matrix M as efficiently as possible:
M = [ones(2) eye(2, 3) 
diag([2, 3, 4]) zeros(3, 2)]

%Problem 3
%a) compute LU factorization of A
A = [-1 0 1 0; 2 3 -2 6; 0 -1 2 0; 0 0 1 5]
b = [5; -1; 3; 7]
[L, U] = lu(A)
%b)Use the LU-factorization to solve bxA.(Use the command for solving a matrix equation from the first overviewand solvebyLfory and yxUfor x
y = rref([L b])
y = y(:,end:end)

x = rref([U y])
x = x(:, end:end)

%Problem 4:  Investigate the truth of the following statements by generating pairs of random matrices and testing the equality, as in the example on the overview.  See the example and discussion about what you should do to draw a reasonable conclusion.  State your conclusions
A = rand(4)
B = rand(4)
%a)
isequal((A+B)', A' + B')
%b)
isequal((A*B)', A'*B')


%Problem 1:  Use commands to produce the following:
%a) a 2×4matrix of all zeros
ans =

       0              0              0              0       
       0              0              0              0       

%b) a 3×2matrix of all ones
ans =

       1              1       
       1              1       
       1              1       

%c) the 3×3 identity matrix
ans =

       1              0              0       
       0              1              0       
       0              0              1       

%d)  a 4×4 diagonal matrix with diagonal entries 1, –2, 4, 3
ans =

       1              0              0              0       
       0             -2              0              0       
       0              0              4              0       
       0              0              0              3       


%Problem 2: Use several commands similar to those in problem #1 to construct matrix M as efficiently as possible:
M =

       1              1              1              0              0       
       1              1              0              1              0       
       2              0              0              0              0       
       0              3              0              0              0       
       0              0              4              0              0       


%Problem 3
A =

      -1              0              1              0       
       2              3             -2              6       
       0             -1              2              0       
       0              0              1              5       


b =

       5       
      -1       
       3       
       7       

%a) compute LU factorization of A
L =

      -1/2            1              0              0       
       1              0              0              0       
       0             -2/3            1              0       
       0              0              1/2            1       


U =

       2              3             -2              6       
       0              3/2            0              3       
       0              0              2              2       
       0              0              0              4       

%b)Use the LU-factorization to solve bxA.(Use the command for solving a matrix equation from the first overviewand solvebyLfory and yxUfor x
y =

       1              0              0              0             -1       
       0              1              0              0              9/2     
       0              0              1              0              6       
       0              0              0              1              4       


y =

      -1       
       9/2     
       6       
       4       


x =

       1              0              0              0             -3       
       0              1              0              0              1       
       0              0              1              0              2       
       0              0              0              1              1       


x =

      -3       
       1       
       2       
       1       

%Problem 4:  Investigate the truth of the following statements by generating pairs of random matrices and testing the equality, as in the example on the overview.  See the example and discussion about what you should do to draw a reasonable conclusion.  State your conclusions
A =

      18/65         954/1373       573/1306       242/1295  
     243/5263       293/924       1469/3850      1268/2589  
     701/7217      1069/1125       111/145        954/2141  
     681/827        259/7519       497/625        561/868   


B =

     659/929        302/461       1049/1093      1927/2565  
    1409/1867       655/4028       547/1607       388/1521  
     175/634       1078/9059       580/991        637/1259  
     365/537        457/917        438/1957      1287/1841  

%a)
ans =

  logical

   1

%b)
ans =

  logical

   0



