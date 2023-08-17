clc;
clear all;
close all;
prompt="Enter your message:";
X=input(prompt,'s');
Lx=length(X);
key=[6 4 3 1 2 5];
L=length(key);
row=ceil(Lx/L);
if (mod(Lx,L)~=0)
    L_pad=row*L-Lx;
    X=[X 'z'*ones(1,L_pad)];
end
temp1=reshape(X,row,L);
temp2=temp1(:,key);
temp3=transpose(temp2);
cipher=reshape(temp3,1,[]);

disp(cipher);

%decryption
n=length(cipher);
[k1,k2]=sort(key);
temp1=reshape(cipher,L,row);
temp2=transpose(temp1);
temp3=temp2(:,k2);
decipher=reshape(temp3,1,[]);
disp(decipher);

