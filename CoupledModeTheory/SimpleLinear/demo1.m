clc
clear all
syms d_omega C0
N = 7
C0 = sym('C0','real'); % ,'real'
C = sym('C',[1,N-1])

for m = 1:N
    C(m) = C0; 
end

sym A
for m=1:N
    for n = 1:N
        if m == n-1
            A(m,n) = C(m);
        elseif n == m-1
            A(m,n) = - conj(C(n));
        elseif n == m
            A(m,m) = 1i *  d_omega;
        end
    end
end
A

det(A)
solve(det(A))
