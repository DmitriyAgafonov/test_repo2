X = [0 0 0 0;
    0 0 0 0];

e = 0.001;
%% Начальные приближения

x1=b(1)/a(1,1);

x2=b(2)/a(2,2);

x3=b(3)/a(3,3);

x4=b(4)/a(4,4);

disp([x1 x2 x3 x4]);
%% 

m = max([abs(x1), abs(x2), abs(x3), abs(x4)]);
disp(m);

if m<e
    disp([x1 x2 x3 x4])
end;
%% 

while m>e
    X (1,1) =x1;
    X (1,2) =x2;
    X (1,3) =x3;
    X (1,4) =x4;
    
    x1= ( (b(1) - a(1,2)*x2 - a(1,3)*x3 - a(1,4)*x4) / a(1,1));
    x2= ( (b(2) - a(2,1)*x1 - a(2,3)*x3 - a(2,4)*x4) / a(2,2));
    x3= ( (b(3) - a(3,1)*x1 - a(3,2)*x2 - a(3,4)*x4)/ a(3,3));
    x4= ( (b(4) - a(4,1)*x1 - a(4,2)*x2 - a(4,3)*x3) / a(4,4));
    
    X(2,1) = (x1 - X(1,1));
    X(2,2) = (x2 - X(1,2));
    X(2,3) = (x3 - X(1,3));
    X(2,4) = (x3 - X(1,3));
    
    disp([X(2,1) X(2,2) X(2,3) X(2,4)]);
    
    m = max([abs(X(2,1)), abs(X(2,2)), abs(X(2,3)), abs(X(2,4))]);
    disp(m);
end;

x_iter = [x1 x2 x3 x4];
disp(x_iter);
%% точность
x_real = x.';
   
delta = max(abs(x_iter - x_real)); format short
disp(['Accuracy']);
disp(delta);
if delta<e
    disp('ok')
end;


