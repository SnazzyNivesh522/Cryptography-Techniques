clc;
clear all;
close all;
prompt="Enter your message:";
X=input(prompt,'s');
A=1:1:26;
Y=randperm(length(A));
key=mod(Y-A,26);
for i=1:1:length(X)
    if double(X(i))>=65 && double(X(i))<=90
        new_X(i)=char(mod(double(X(i))-65+key(double(X(i))-65+1),26)+65);
    elseif double(X(i))>=97 && double(X(i))<=122
        new_X(i)=char(mod(double(X(i))-97+key(double(X(i))-97+1),26)+97);
    else
        new_X(i)=X(i);
    end 
    
end
disp("Encrypted Cipher:");
disp(new_X);
for i=1:1:length(new_X)
    if double(new_X(i))>=65 && double(new_X(i))<=90
        Z(i)=char(mod(double(new_X(i))-65-key(double(X(i))-65+1),26)+65);
    elseif double(new_X(i))>=97 && double(new_X(i))<=122
        Z(i)=char(mod(double(new_X(i))-97-key(double(X(i))-97+1),26)+97);
    else
       Z(i)=new_X(i);
    end 
    
end
disp("Decrypted Cipher:");
disp(Z);