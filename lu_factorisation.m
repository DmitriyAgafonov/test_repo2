a = [ 4     3     2     1;
     3     6     4     2;
     2     4     6     3;
     1     2     3     4];
 disp(a);
 %% 
 
 b = [3; 6; 4; 7];
 disp(b);
 %% 
 
 [L, U] = lu(a);
 disp(L);
 disp(U);
 %% 
 
 y = L\b;
 disp(y);
 %% 
 
 x = U\y;
 disp(x);
 
 
 
 

 