clc
clear
A=input(’Enter the Matrix: ’);
%Characteristic Equation
cf=poly(A);
disp(’Characteristic Equations’)
disp(cf)
%Eigenvalues
EV=eig(A);
disp(’Eigenvalues’)
disp(EV)
%Eigenvectors
[P D]=eig(A);
disp(’Eigenvectors’)
disp(P)


clc
clear
Page 3A=input(’Enter the Matrix: ’);
%Determinant
detA=det(A);
disp(’Determinant of A:’)
disp(detA)
%Eigenvalues
EV=eig(A);
disp(’Eigenvalues:’)
disp(EV)
%Product of eigenvalues
prev=prod(EV);
disp(’Product of Eigenvalues:’)
disp(prev)


clc
clear
A=input(’Enter the Matrix: ’);
%Verification of Cayley-Hamilton theorem
cf=poly(A);
n=length(cf);
CHT=cf(1)*Aˆ (n-1);
for i=2:n
CHT=CHT+cf(i)*Aˆ (n-i);
end
disp(’R.H.S of C-H Theorem: ’)
disp(round(CHT))
%To find the inverse
INV=cf(1)*Aˆ (n-2);
for i=2:n-1
INV=INV+cf(i)*Aˆ (n-i-1);
end
INV=INV/(-cf(n));
disp(’Inverse of A: ’)
disp(INV)